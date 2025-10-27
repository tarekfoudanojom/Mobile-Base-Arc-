part of 'sign_up_imports.dart';

class SignUpController {
  late ProfileRequester _profileRequester;

  SignUpController() {
    _profileRequester = ProfileRequester();
  }

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  final ObsValue<bool> passwordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<String> countryCodeObs = ObsValue<String>.withInit("+966");
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final BaseBloc<List<CountriesModel>> countriesBloc = BaseBloc<List<CountriesModel>>();

  Future<void> showCountryBottomSheet(BuildContext context) async {
    var country = await AppBottomSheets.showScrollableBody<Country>(
        context: context,
        builder: (ctx) {
          return const CallingCodesBottomSheetWidget();
        });
    countryCodeObs.setValue(country?.dialCode ?? countryCodeObs.getValue());
    enableButton();
  }

  void enableButton() {
    var formValidate = formKey.currentState?.validate() ?? false;
    final code = countryCodeObs.getValue();
    var isActive = formValidate &&
        passwordController.text.validatePassword() == null &&
        (emailController.text.isNotEmpty && emailController.text.validateEmailORNull() == null) &&
        (phoneController.text.isNotEmpty && phoneController.text.validateOnCode(code));
    activeButtonObs.setValue(isActive);
    activeButtonObs.refresh();
  }

  void onPressNext(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    var params = _checkUniquenessParams();
    var otpPhoneParams = _otpPhoneParams();
    var result = await getIt.get<AuthRepository>().checkUniqueness(params);
    result.whenOrNull(
      isSuccess: (data) async {
        var result = await getIt.get<AuthRepository>().sendOtpPhone(otpPhoneParams);
        var accountParams = await _accountEntity();
        result.whenOrNull(
          isSuccess: (data) {
            if (data == true) {
              AutoRouter.of(context).push(ActiveAccount(activeAccountEntity: accountParams));
            } else {
              AppSnackBar.showSimpleToast(msg: Translate.s.something_went_wrong);
            }
          },
        );
      },
    );
  }

  // Future<User?> signUpWithGoogle(BuildContext context) async {
  //   final GoogleSignIn googleSignIn =
  //       GoogleSignIn(scopes: ["profile", "email"]);
  //   try {
  //     bool isLogged = await googleSignIn.isSignedIn();
  //     if (isLogged) {
  //       await googleSignIn.disconnect();
  //       await firebaseAuth.signOut();
  //     }
  //     final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //     if (googleUser != null) {
  //       final GoogleSignInAuthentication googleAuth =
  //           await googleUser.authentication;
  //       final AuthCredential credential = GoogleAuthProvider.credential(
  //         accessToken: googleAuth.accessToken,
  //         idToken: googleAuth.idToken,
  //       );
  //       UserCredential userCredential =
  //           await firebaseAuth.signInWithCredential(credential);
  //       var params = await _googleLoginParams(userCredential.user!);
  //       var data = await getIt<AuthRepository>().login(params);
  //       data.whenOrNull(
  //         isSuccess: (data) =>
  //             getIt<UserServicesHelper>().saveUserData(context, data!).then(
  //           (val) async {
  //             _profileRequester.request().then(
  //               (value) async {
  //                 AutoRouter.of(context)
  //                     .push(EnterUSerNamePageRoute(isBackLogin: true));
  //               },
  //             );
  //           },
  //         ),
  //       );
  //       return userCredential.user;
  //     }
  //   } catch (error) {
  //     print("error=====>>> $error");
  //   }
  //   return null;
  // }
  //
  // void signInWithApple(BuildContext context) async {
  //   try {
  //     final appleCredential = await SignInWithApple.getAppleIDCredential(
  //       scopes: [
  //         AppleIDAuthorizationScopes.email,
  //         AppleIDAuthorizationScopes.fullName,
  //       ],
  //       // nonce: nonce,
  //     );
  //     final OAuthCredential oauthCredential = OAuthProvider("apple.com")
  //         .credential(
  //         idToken: appleCredential.identityToken,
  //         accessToken: appleCredential.authorizationCode);
  //     UserCredential userCredential =
  //         await firebaseAuth.signInWithCredential(oauthCredential);
  //     var params = await _appleLoginParams(userCredential.user!);
  //     var data = await getIt<AuthRepository>().login(params);
  //     data.whenOrNull(
  //       isSuccess: (data) =>
  //           getIt<UserServicesHelper>().saveUserData(context, data!).then(
  //         (val) async {
  //           _profileRequester.request().then(
  //             (value) async {
  //               // print("====step>>>>${userData.registrationStep}");
  //               AutoRouter.of(context).push(
  //                 EnterUSerNamePageRoute(isBackLogin: true),
  //               );
  //             },
  //           );
  //         },
  //       ),
  //     );
  //   } catch (error) {
  //     log("error=====>>>$error");
  //   }
  // }

  Future<LoginParams> _googleLoginParams(User user) async {
    return LoginParams(
      deviceToken: await getIt<Utilities>().deviceToken,
      deviceType: Platform.isIOS ? 2 : 1,
      userName: "",
      profileTypeId: 1,
      googleId: user.providerData.first.uid,
      firstName: user.displayName?.split(" ").first,
      lastName: user.displayName?.split(" ").last,
      email: user.email ?? '',
      loginMethod: "social_media_login",
    );
  }

  Future<LoginParams> _appleLoginParams(User user) async {
    return LoginParams(
      deviceToken: await getIt<Utilities>().deviceToken,
      deviceType: Platform.isIOS ? 2 : 1,
      userName: "",
      profileTypeId: 1,
      appleId: user.uid,
      firstName: user.displayName?.split(" ").first,
      lastName: user.displayName?.split(" ").last,
      email: user.email ?? '',
      loginMethod: "social_media_login",
    );
  }

  CheckUniquenessParams _checkUniquenessParams() {
    return CheckUniquenessParams(
      email: emailController.text,
      contact: "${countryCodeObs.getValue()}.${phoneController.text.reFormatToNormal}",
    );
  }

  SendOtpPhoneParams _otpPhoneParams() {
    return SendOtpPhoneParams(
      phone: "${countryCodeObs.getValue()}.${phoneController.text.reFormatToNormal}",
    );
  }

  Future<ActiveAccountEntity> _accountEntity() async {
    return ActiveAccountEntity(
      type: ActiveAccTypes.signUp,
      emailOrPhone: "${countryCodeObs.getValue()}.${phoneController.text.reFormatToNormal}",
      signUpParams: await _signUpParams(),
      usePhoneNumber: true,
    );
  }

  Future<SignUpParams> _signUpParams() async {
    return SignUpParams(
      deviceToken: await getIt<Utilities>().deviceToken,
      deviceType: Platform.isIOS ? 2 : 1,
      password: passwordController.text,
      contactNo: phoneController.text.reFormatToNormal,
      mobilePrefix: countryCodeObs.getValue(),
      email: emailController.text,
      profileTypeId: 1,
    );
  }
}
