part of 'sign_up_view_imports.dart';

class SignUpViewController {
  late ProfileRequester _profileRequester;

  SignUpViewController() {
    _profileRequester = ProfileRequester();
  }

  /// keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  /// controllers
  final TextEditingController passWordFiledController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  /// observables
  final ObsValue<Country> countryCodeObs = ObsValue<Country>.withInit(Country(
    name: "المملكة العربية السعودية",
    dialCode: "+966",
    nameEn: "Saudi Arabia",
    flag: "🇸🇦",
    isoCode: "SA",
    cities: [],
    phoneDigitsLength: 10,
    phoneDigitsLengthMax: 10,
  ));
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> passWordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);



  /// methods
  Future<void> showCountryBottomSheet(BuildContext context) async {
    var country = await AppBottomSheets.showScrollableBody<Country>(
        context: context, builder: (ctx) => const CallingCodesBottomSheetWidget());
    countryCodeObs.setValue(country ?? countryCodeObs.getValue());
    enableButton();
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void enableButton() {
    final code = countryCodeObs.getValue().dialCode;
    var isActive =
        passWordFiledController.text.validatePassword() == null && (_validatePhoneAndEmail(code));
    activeButtonObs.setValue(isActive);
    activeButtonObs.refresh();
  }

  bool _validatePhoneAndEmail(String code) {
    return ((emailController.text.isNotEmpty &&
            emailController.text.validateEmailORNull() == null) ||
        _validatePhone());
  }

  bool _validatePhone() {
    final code = countryCodeObs.getValue();
    return phoneController.text.validateOnCode(code.dialCode);
  }

  /// params
  CheckUniquenessParams _checkUniquenessParams() {
    return CheckUniquenessParams(
      email: emailController.text,
      contact: "${countryCodeObs.getValue().dialCode}.${phoneController.text.reFormatToNormal}",
    );
  }

  SendOtpPhoneParams _otpPhoneParams() {
    return SendOtpPhoneParams(
      phone: "${countryCodeObs.getValue().dialCode}.${phoneController.text.reFormatToNormal}",
    );
  }

  Future<SignUpParams> _signupParams() async {
    return SignUpParams(
      deviceToken: (await getIt<Utilities>().deviceToken)?? "deviceId",
      platform: Platform.isIOS ? 2 : 1,
      deviceType: Platform.isIOS ? 0 : 1,
      password: passWordFiledController.text,
      profileTypeId: 1,
      contactNo: phoneController.text.reFormatToNormal,
      mobilePrefix: countryCodeObs.getValue().dialCode,
      email: emailController.text,
      username: "",
    );
  }

  Future<ActiveAccountEntity> _accountEntity() async {
    return ActiveAccountEntity(
      type: ActiveAccTypes.signUp,
      emailOrPhone:
          "${countryCodeObs.getValue().dialCode}.${phoneController.text.reFormatToNormal}",
      signUpParams: await _signupParams(),
      usePhoneNumber: true,
    );
  }

  Future<LoginParams> _googleLoginParams(User user) async {
    return LoginParams(
      deviceToken: (await getIt<Utilities>().deviceToken) ?? "deviceId",
      deviceType: Platform.isIOS ? 2 : 1,
      userName: "",
      profileTypeId: 1,
      googleId: user.providerData.first.uid,
      firstName: user.displayName?.split(" ").first,
      lastName: user.displayName?.split(" ").last,
      email: user.email,
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
      email: user.email,
      loginMethod: "social_media_login",
    );
  }

  ProfileVerificationParams _profileVerifyParams(int type) {
    return ProfileVerificationParams(type: type);
  }

  /// api methods
  void onSignUp(BuildContext context) async {
    if (emailController.text.isEmpty) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.enter_email, type: ToastType.info, color: Colors.black);
      return;
    } else if (phoneController.text.isEmpty) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.phoneValidation, type: ToastType.info, color: Colors.black);
      return;
    } else if (passWordFiledController.text.isEmpty) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.enter_pass, type: ToastType.info, color: Colors.black);
      return;
    }
    if(emailController.text.validateEmailORNull() != null) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.mailValidation, type: ToastType.info, color: Colors.black);
      return;
    }
    if(!_validatePhone()) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.phoneValidation, type: ToastType.info, color: Colors.black);
      return;
    }
    var params = _checkUniquenessParams();
    var otpPhoneParams = _otpPhoneParams();
    FocusScope.of(context).requestFocus(FocusNode());
    loadingObs.setValue(true);
    var result = await getIt.get<AuthRepository>().checkUniqueness(params);
    loadingObs.setValue(false);

    result.whenOrNull(
      isSuccess: (data) async {
        var result = await getIt.get<AuthRepository>().sendOtpPhone(otpPhoneParams);
        var accountParams = await _accountEntity();
        result.whenOrNull(
          isSuccess: (data) {
            AutoRouter.of(context).push(ActiveAccount(activeAccountEntity: accountParams));
          },
        );
      },
      isError: (error) {
        AppSnackBar.showSimpleToast(
            msg: error.message,
            type: ToastType.info,
            color: Colors.black
        );
      },
    );
  }

  Future<User?> signUpWithGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ["profile", "email"]);
    try {
      bool isLogged = await googleSignIn.isSignedIn();
      if (isLogged) {
        await googleSignIn.disconnect();
        await firebaseAuth.signOut();
      }
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
        var params = await _googleLoginParams(userCredential.user!);
        var data = await getIt<AuthRepository>().login(params);
        data.whenOrNull(
          isSuccess: (data) => getIt<UserServicesHelper>().saveUserData(context, data!).then(
            (val) async {
              _profileRequester.request().then(
                (value) async {
                  var params = _profileVerifyParams(2);
                  await getIt<AuthRepository>().profileVerification(params);
                  AutoRouter.of(context).push(CompleteSignUpPageRoute());
                },
              );
            },
          ),
        );
        return userCredential.user;
      }
    } catch (error) {
      print("error=====>>> $error");
    }
    return null;
  }

  void signUpWithApple(BuildContext context) async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        // nonce: nonce,
      );
      final OAuthCredential oauthCredential = OAuthProvider("apple.com").credential(
          idToken: appleCredential.identityToken, accessToken: appleCredential.authorizationCode);
      UserCredential userCredential = await firebaseAuth.signInWithCredential(oauthCredential);
      var params = await _appleLoginParams(userCredential.user!);
      var data = await getIt<AuthRepository>().login(params);
      var accountParams = await _accountEntity();
      data.whenOrNull(
        isSuccess: (data) => getIt<UserServicesHelper>().saveUserData(context, data!).then(
          (val) async {
            _profileRequester.request().then(
              (value) async {
                // print("====step>>>>${userData.registrationStep}");
                // AutoRouter.of(context).push(ActiveAccount(activeAccountEntity: accountParams));
                var params = _profileVerifyParams(2);
                await getIt<AuthRepository>().profileVerification(params);
                AutoRouter.of(context).push(CompleteSignUpPageRoute());
              },
            );
          },
        ),
      );
    } catch (error) {
      log("error=====>>>$error");
    }
  }
}
