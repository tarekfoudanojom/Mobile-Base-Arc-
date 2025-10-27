part of 'change_password_widgets_imports.dart';

class NewPasswordWidget extends StatelessWidget {
  final ChangePasswordController controller;
  const NewPasswordWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.newPasswordVisibleObs,
      builder: (context, value) {
        return GenericTextField(
          controller: controller.newPasswordController,
          validate: (value) => value?.noValidate(),
          label: Translate.s.new_password,
          onChange: (value)=>controller.enableButton(),
          fillColor: context.colors.mystic,
          type: TextInputType.text,
          action: TextInputAction.next,
          fieldTypes: value ? FieldTypes.normal : FieldTypes.password,
          contentPadding:Dimens.paddingH16V10PX ,
          margin: Dimens.paddingBottom12PX,
          enableBorderColor: context.colors.appColorBlue,
          cursorColor: context.colors.appColorBlue,
        );
      },
    );
  }
}
