part of 'change_password_imports.dart';

class ChangePasswordController {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> oldPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> newPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> confirmPasswordVisibleObs = ObsValue<bool>.withInit(false);
  final GlobalKey<CustomButtonState> btnKey = GlobalKey<CustomButtonState>();

  void enableButton() {
    if (_checkPassword() && _checkPasswordLength() && (newPasswordController.text == confirmPasswordController.text)) {
      activeButtonObs.setValue(true);
    } else {
      activeButtonObs.setValue(false);
    }
    activeButtonObs.refresh();
  }

  bool _checkPassword() {
    if (oldPasswordController.text != newPasswordController.text) {
      return true;
    } else {
      return false;
    }
  }

  bool _checkPasswordLength() {
    if (newPasswordController.text.length >= 8 && confirmPasswordController.text.length >= 8) {
      return true;
    } else {
      return false;
    }
  }

  void onPressCancel(BuildContext context){
    clearData();
    Navigator.pop(context);
  }

  void clearData(){
    confirmPasswordController.clear();
    newPasswordController.clear();
    oldPasswordController.clear();
    confirmPasswordVisibleObs.setValue(false);
    activeButtonObs.setValue(false);
    oldPasswordVisibleObs.setValue(false);
    newPasswordVisibleObs.setValue(false);
  }

  Future<void> onPressUpdatePass(BuildContext context) async {

    // var params = _updatePassParams();
    // var data = await getIt<AccountRepository>().updatePass(params);
    // data.whenOrNull(isSuccess: (data) {
    //   AppSnackBar.showSimpleToast(msg: "Password updated successfully", type: ToastType.success);
    //   Navigator.pop(context);
    // });
  }

  // UpdatePassParams _updatePassParams() {
  //   return UpdatePassParams(oldPass: oldPasswordController.text, newPass: newPasswordController.text);
  // }
}
