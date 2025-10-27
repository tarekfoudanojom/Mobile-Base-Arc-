part of'reset_password_imports.dart';

class ResetPasswordController{
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController password=TextEditingController();
  final TextEditingController confirmPassword=TextEditingController();
  final ObsValue<bool> passWordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPassWordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> checkPinCodeObs= ObsValue<bool>.withInit(false);
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  // final BaseBloc<ResetPasswordModel> resetPasswordCubit = BaseBloc();

  
  void enableButton() {
    var isActive =  password.text.validatePassword()==null&& password.text == confirmPassword.text;
    activeButtonObs.setValue(isActive);
    activeButtonObs.refresh();
    }

    Future<void> onConfirm(BuildContext context)async{

    // var params = _resetPasswordParams();
    // var data = await getIt<AuthRepository>().resetPassword(params);
    // data.whenOrNull(
    //     isSuccess: (data) {
    //       AutoRouter.of(context).push(const ConfirmPageRoute());
    //     });
    }

    // ResetPasswordParams _resetPasswordParams(){
    // return ResetPasswordParams(password: password.text);
    // }



}