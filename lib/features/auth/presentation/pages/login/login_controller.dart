part of 'login_imports.dart';

class LoginController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ObsValue<String> countryCode = ObsValue<String>.withInit('+966');
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> isErrorNumber = ObsValue<bool>.withInit(false);
  final BaseBloc<String> loginBloc = BaseBloc<String>();

  final repository = getIt.get<AuthRepository>();

  void enableButton() {
    isErrorNumber.setValue(false);
  }

  void login(BuildContext context) {
    final phone = phoneController.text.replaceAll(' ', '');
    
    // Validate phone number
    if (phone.isEmpty || phone.length < 9) {
      isErrorNumber.setValue(true);
      return;
    }

    isErrorNumber.setValue(false);
    loginBloc.loadingState();
    loadingObs.setValue(true);

    final params = LoginParams(
      phoneNumber: phone,
      countryCode: countryCode.getValue(),
    );

    repository.loginWithPhone(params).then((result) {
      loadingObs.setValue(false);
      result.whenOrNull(
        isSuccess: (data) {
          loginBloc.successState(data);
          AppSnackBar.showSuccessSnackBar('Login successful');
          context.router.replace(const HomeRoute());
        },
        isError: (error) {
          loginBloc.failedState(error, () => login(context));
          AppSnackBar.showErrorSnackBar(error: error);
        },
      );
    });
  }

  void dispose() {
    phoneController.dispose();
    loginBloc.close();
  }
}

