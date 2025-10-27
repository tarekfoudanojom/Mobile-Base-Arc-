part of 'change_password_widgets_imports.dart';

class CurrentPasswordWidget extends StatelessWidget {
  final ChangePasswordController controller;
  const CurrentPasswordWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.oldPasswordVisibleObs,
      builder: (context, value) {
        return GenericTextField(
          controller: controller.oldPasswordController,
          validate: (value) => value?.noValidate(),
          label: Translate.s.current_password,
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
