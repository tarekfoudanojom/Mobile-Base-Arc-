part of'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordForm({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          PasswordFieldWidget(
            horizontalMargin: 0,
            controller: controller.password,
            passwordVisibleObs: controller.passWordVisibleObs,
            validate: (value)=> value?.noValidate(),
            onChange: (value)=>controller.enableButton(),
          ),
          PasswordFieldWidget(
            horizontalMargin: 0,
              controller: controller.confirmPassword,
              passwordVisibleObs: controller.confirmPassWordVisibleObs,
              validate: (value)=> value?.noValidate(),
            onChange: (value)=>controller.enableButton(),
          ),
        ],
      ),
    );
  }
}
