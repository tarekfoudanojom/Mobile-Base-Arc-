part of 'sign_up_widgets_imports.dart';

class SignUpFormWidget extends StatelessWidget {
  final SignUpController controller;

  const SignUpFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: controller.emailController,
            onChange: (value) => controller.enableButton(),
            fieldTypes: FieldTypes.normal,
            fillColor: context.colors.white,
            action: TextInputAction.next,
            label: Translate.s.email_address,
            contentPadding: Dimens.paddingH16V10PX,
            type: TextInputType.emailAddress,
            margin: const EdgeInsets.only(top: 24, bottom: 12),
            validate: (value) => value?.noValidate(),
          ),
          ObsValueConsumer(
            observable: controller.countryCodeObs,
            builder: (context, value) {
              return Directionality(
                textDirection: TextDirection.ltr,
                child: GenericTextField(
                    controller: controller.phoneController,
                    onChange: (value) => controller.enableButton(),
                    fieldTypes: FieldTypes.normal,
                    fillColor: context.colors.white,
                    action: TextInputAction.next,
                    hint: Translate.s.label_phone,
                    type: TextInputType.phone,
                    validate: (val) => ("$value$val").noValidate(),
                    prefixIcon: prefixIcon(context),
                    inputFormatters: [PhoneNumberInputFormatter()]),
              );
            },
          ),
          PasswordFieldWidget(
            horizontalMargin: 0,
            onChange: (value) => controller.enableButton(),
            controller: controller.passwordController,
            passwordVisibleObs: controller.passwordVisibleObs,
            validate: (value) => value?.noValidate(),
          ),
          Gaps.vGap48,
        ],
      ),
    );
  }

  Widget prefixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showCountryBottomSheet(context),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 18, 10, 18),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          ObsValueConsumer(
            observable: controller.countryCodeObs,
            builder: (context, value) {
              return Text(
                value,
                style: AppTextStyle.s16_w400(color: context.colors.textColor),
              );
            },
          ),
          Gaps.hGap2,
          Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 15,
            color: context.colors.textGaryColor.withValues(alpha:0.6),
          ),
          Gaps.hGap10,
          Container(
            width: 1,
            height: 20,
            color: context.colors.slightGray,
          )
        ]),
      ),
    );
  }

  Widget arSuffixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showCountryBottomSheet(context),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 18, 16, 18),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
            width: 1,
            height: 20,
            color: context.colors.slightGray,
          ),
          Gaps.hGap10,
          Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 15,
            color: context.colors.textGaryColor.withValues(alpha:0.6),
          ),
          Gaps.hGap2,
          ObsValueConsumer(
            observable: controller.countryCodeObs,
            builder: (context, value) {
              return Text(
                value,
                style: AppTextStyle.s16_w400(color: context.colors.textColor),
              );
            },
          )
        ]),
      ),
    );
  }
}
