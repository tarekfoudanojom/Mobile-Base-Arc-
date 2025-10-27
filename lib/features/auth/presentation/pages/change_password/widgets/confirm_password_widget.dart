part of 'change_password_widgets_imports.dart';

class ConfirmPasswordWidget extends StatelessWidget {
  final ChangePasswordController controller;

  const ConfirmPasswordWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.confirmPasswordVisibleObs,
      builder: (context, value) {
        return GenericTextField(
          controller: controller.confirmPasswordController,
          validate: (value) => value?.noValidate(),
          label: Translate.s.confirm_new_password,
          onChange: (value) => controller.enableButton(),
          fillColor: context.colors.mystic,
          type: TextInputType.text,
          action: TextInputAction.next,
          fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
          contentPadding: Dimens.paddingH16V10PX,
          margin: Dimens.paddingBottom12PX,
          enableBorderColor: context.colors.appColorBlue,
          cursorColor: context.colors.appColorBlue,
        );
      },
    );
  }
}
