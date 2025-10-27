part of 'active_account_imports.dart';

class ActiveAccountController {
  final ActiveAccountEntity activeAccountEntity;
  late ProfileRequester _profileRequester;

  ActiveAccountController({required this.activeAccountEntity}) {
    _profileRequester = ProfileRequester();
    runTimer();
  }

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final BaseBloc<bool> codeCubit = BaseBloc(false);
  final ObsValue<bool> showReSendWarningObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showReSendObs = ObsValue<bool>.withInit(false);
  final TextEditingController pinFieldController = TextEditingController();
  final ObsValue<int> secondsObs = ObsValue<int>.withInit(50);
  final BaseBloc<VerifyCodeModel> verifyCodeCubit = BaseBloc<VerifyCodeModel>();
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);

  void onComplete(String value) {
    codeCubit.successState(value.length == 4);
  }

  void onPressNext(ActiveAccTypes type, BuildContext context) async {
    if (type == ActiveAccTypes.signUp) {
      onConfirmSignUp(context);
    } else if (type == ActiveAccTypes.forgetPass) {
      var params = _verifyCodeParams();
      var result = await getIt<AuthRepository>().verifyCode(params);
      result.when(isSuccess: (data) async {
        GlobalState.instance.set(ApplicationConstants.keyToken, data?.token);
        AutoRouter.of(context).push(const ResetPasswordPageRoute());
      }, isError: (error) {
        pinFieldController.clear();
        showReSendWarningObs.setValue(true);
        showReSendWarningObs.refresh();
      });
    } else {
      AutoRouter.of(context).push(const CongratulationsUpdatePhoneRoute());
    }
  }

  void onConfirmSignUp(BuildContext context) async {
    var params = _verifyPhoneParams();
    loadingObs.setValue(true);
    var result = await getIt<AuthRepository>().verifyCodeByPhone(params);
    result.whenOrNull(
      isSuccess: (data) async {
        if (data == true) {
          var result = await getIt<AuthRepository>().signup(activeAccountEntity.signUpParams!);
          result.whenOrNull(isSuccess: (loginData) async {
            getIt<UserServicesHelper>().saveUserData(context, loginData!).then((val) async {
              _profileRequester.request().then((value) async {
                var params = _profileVerifyParams(2);
                await getIt<AuthRepository>().profileVerification(params);
                AutoRouter.of(context).push(CompleteSignUpPageRoute());
              });
            });
          });
        } else {
          AppSnackBar.showSimpleToast(msg: Translate.s.something_went_wrong, color: Colors.black);
        }
      },
    );
  }

  void onChange() {
    var warningObs = showReSendWarningObs;
    if (warningObs.getValue() == true) {
      warningObs.setValue(false);
      warningObs.refresh();
    }
  }

  Future<void> onPressReSend() async {
    if (activeAccountEntity.type == ActiveAccTypes.signUp) {
      var params = _otpPhoneParams();
      var result = await getIt.get<AuthRepository>().sendOtpPhone(params);
      result.whenOrNull(isSuccess: (data) {
        AppSnackBar.showSimpleToast(msg: Translate.s.otp_send, type: ToastType.success);
      });
    } else {
      var result = await getIt<AuthRepository>().forgetPassword(_forgetPassParams());
      result.whenOrNull(isSuccess: (data) {
        AppSnackBar.showSimpleToast(msg: Translate.s.otp_send, type: ToastType.success);
      });
    }
    runTimer();
  }

  Future<void> runTimer() async {
    secondsObs.setValue(50);
    showReSendObs.setValue(true);
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      var newValue = secondsObs.getValue() - 1;
      secondsObs.setValue(newValue);
      if (newValue == 0) {
        timer.cancel();
        showReSendObs.setValue(false);
        showReSendObs.refresh();
      }
    });
  }

  ForgetPasswordParams _forgetPassParams() => ForgetPasswordParams(
        email: !activeAccountEntity.usePhoneNumber ? activeAccountEntity.emailOrPhone : null,
        phone: activeAccountEntity.usePhoneNumber ? activeAccountEntity.emailOrPhone : null,
      );

  SendOtpPhoneParams _otpPhoneParams() {
    return SendOtpPhoneParams(
      phone: activeAccountEntity.emailOrPhone,
    );
  }

  ProfileVerificationParams _profileVerifyParams(int type) {
    return ProfileVerificationParams(type: type);
  }

  VerifyPhoneParams _verifyPhoneParams() {
    return VerifyPhoneParams(
      binCode: pinFieldController.text,
      emailOrPhone: activeAccountEntity.emailOrPhone,
    );
  }

  VerifyEmailParams _verifyCodeParams() => VerifyEmailParams(
        binCode: pinFieldController.text,
        email: !activeAccountEntity.usePhoneNumber ? activeAccountEntity.emailOrPhone : null,
        phone: activeAccountEntity.usePhoneNumber ? activeAccountEntity.emailOrPhone : null,
      );
}
