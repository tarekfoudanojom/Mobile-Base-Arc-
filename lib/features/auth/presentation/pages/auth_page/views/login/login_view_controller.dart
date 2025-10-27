part of 'login_view_imports.dart';

class LoginViewController {
  late ProfileRequester _profileRequester;

  LoginViewController() {
    _profileRequester = ProfileRequester();
  }

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String email = '';

  /// controllers
  final TextEditingController emailPhoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordFiledController = TextEditingController();
  final TextEditingController securityCodeController = TextEditingController();
  final TextEditingController newPassController = TextEditingController();

  /// keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<CustomButtonState> forgetPassBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> resetPassBtnKey = GlobalKey();

  /// observables
  final ObsValue<bool> passWordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);

  /// params
  Future<LoginParams> _loginParams() async {
    return LoginParams(
      deviceToken: await getIt<Utilities>().deviceToken,
      deviceType: Platform.isIOS ? 2 : 1,
      userName: emailPhoneController.text,
      password: passWordFiledController.text,
      profileTypeId: 1,
      loginMethod: "normal_login",
    );
  }

  Future<LoginParams> _facebookAndGoogleLoginParams(User user) async {
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

  ForgetPasswordParams _forgetPassParams() {
    return ForgetPasswordParams(
      email: emailController.text.trim(),
    );
  }

  ResetPasswordParams _resetPasswordParams() {
    return ResetPasswordParams(password: newPassController.text, otp: securityCodeController.text, email: email);
  }

  /// methods
  void showForgetPassBottomSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      constraints: BoxConstraints(maxHeight: 400.h.toDouble()),
      builder: (ctx) {
        return ForgetPassBottomSheet(controller: this);
      },
    );
  }

  void showResetPassBottomSheet(BuildContext context) {
    email = emailController.text.trim();
    AutoRouter.of(context).popForced();
    AppBottomSheets.showScrollableBody(
      context: context,
      constraints: BoxConstraints(maxHeight: 450.h.toDouble()),
      builder: (ctx) {
        return ResetPassBottomSheet(controller: this);
      },
    );
  }

  void enableButton() {
    var isActive = passWordFiledController.text.validatePassword() == null;
    activeButtonObs.setValue(isActive);
    activeButtonObs.refresh();
  }

  /// api methods
  Future<void> onPressSignIn(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (emailPhoneController.text.isEmpty) {
      AppSnackBar.showSimpleToast(msg: Translate.s.enter_email_or_phone, type: ToastType.info, color: Colors.black);
      return;
    } else if (passWordFiledController.text.isEmpty) {
      AppSnackBar.showSimpleToast(msg: Translate.s.enter_pass, type: ToastType.info, color: Colors.black);
      return;
    } else {
      var params = await _loginParams();
      onSaveLoginData(context, params);
    }
  }

  void onSaveLoginData(BuildContext context, LoginParams params) async {
    FocusScope.of(context).requestFocus(FocusNode());
    loadingObs.setValue(true);
    var data = await getIt<AuthRepository>().login(params);
    loadingObs.setValue(false);
    data.whenOrNull(
      isSuccess: (data) async {
        context.read<DeviceCubit>().updateWhatsAppMode(false);
        getIt<UserServicesHelper>().saveUserData(context, data!).then((val) async {
          await _profileRequester.request().then(
            (value) async {
              Future.delayed(const Duration(milliseconds: 500)).then(
                (value) async {
                  final userData = context.read<ProfileCubit>().state.model;
                  if (userData?.isVerified == 0) {
                    AutoRouter.of(context).push(CompleteSignUpPageRoute());
                  } else {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const Home()));
                  }
                },
              );
            },
          );
        });
      },
      isError: (error) {
        // AppSnackBar.showSimpleToast(msg: Translate.s.something_went_wrong,textColor: context.colors.white, color: context.colors.black);
      },
    );
  }

  /// social login
  Future<User?> signInWithGoogle(BuildContext context) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ["profile", "email"]);
    try {
      bool isLogged = await googleSignIn.isSignedIn();
      if (isLogged) {
        await googleSignIn.disconnect();
        await auth.signOut();
      }
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCredential = await auth.signInWithCredential(credential);
        var params = await _facebookAndGoogleLoginParams(userCredential.user!);
        onSaveLoginData(context, params);
        return userCredential.user;
      }
    } catch (e) {
      print("error=======>>>> $e");
      return null;
    }
    return null;
  }

  void signInWithApple(BuildContext context) async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        // nonce: nonce,
      );
      final OAuthCredential oauthCredential = OAuthProvider("apple.com")
          .credential(idToken: appleCredential.identityToken, accessToken: appleCredential.authorizationCode);
      await FirebaseAuth.instance.signInWithCredential(oauthCredential).then((value) async {
        _appleLoginParams(value.user!).then((params) {
          onSaveLoginData(context, params);
        });
      });
    } catch (e) {
      log("error=====>>>$e");
      // return false;
    }
    // return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
    // return false;
  }

  Future<UserCredential?> getFacebookUserCredential() async {
    try {
      final facebook = FacebookAuth.instance;
      // Trigger the sign-in flow
      final LoginResult loginResult = await facebook.login();

      // Create a credential from the access token
      final token = loginResult.accessToken!.tokenString;
      final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(token);
      log("facebookAuthCredential $facebookAuthCredential");
      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      log("Facebook User Credential=========ERROR=======>>$e");
      return null;
    }
  }

  /// forget password
  Future<void> onPressSendCode(BuildContext context) async {
    if (emailController.text.isEmpty) {
      AppSnackBar.showSimpleToast(msg: Translate.s.enter_email, type: ToastType.info, color: Colors.black);
      return;
    }
    var params = _forgetPassParams();
    print("params=====>>>${params.toJson()}");
    btnKey.currentState!.animateReverse();
    var result = await getIt<AuthRepository>().forgetPassword(params);
    result.whenOrNull(
      isSuccess: (data) {
        AppSnackBar.showSimpleToast(msg: Translate.s.otp_send, type: ToastType.success);
        showResetPassBottomSheet(context);
        emailController.clear();
        // AutoRouter.of(context).push(
        //   ActiveAccount(
        //     activeAccountEntity: _accountEntity(),
        //   ),
        // );
      },
    );
  }

  /// reset password
  void enableResetButton() {
    var isActive = newPassController.text.validatePassword() != null && securityCodeController.text != "";
    activeButtonObs.setValue(isActive);
    activeButtonObs.refresh();
  }

  Future<void> onConfirmResetPass(BuildContext context) async {
    var params = _resetPasswordParams();
    print("params=====>>>${params.toJson()}");
    var data = await getIt<AuthRepository>().resetPassword(params);
    data.whenOrNull(isSuccess: (data) {
      AutoRouter.of(context).push(const ConfirmPageRoute());
    });
  }
}
