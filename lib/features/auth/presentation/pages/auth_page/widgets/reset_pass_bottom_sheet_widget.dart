part of 'login_widgets_imports.dart';

class ResetPassBottomSheet extends StatelessWidget {
  final LoginViewController controller;

  const ResetPassBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      padding: Dimens.paddingAll10PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap20,
          Padding(
            padding: Dimens.paddingH16V18PX,
            child: Text(
              Translate.s.enter_security_code,
              style: AppTextStyle.s20_w600(color: context.colors.black),
            ),
          ),
          Padding(
            padding: Dimens.paddingH16V10PX,
            child: Text(
              Translate.s.security_code_verify,
              style: AppTextStyle.s15_w400(color: context.colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          GenericTextField(
            controller: controller.securityCodeController,
            textAlign: lang == "en" ? TextAlign.left : TextAlign.right,
            textDirection: TextDirection.ltr,
            fieldTypes: FieldTypes.normal,
            fillColor: context.colors.white,
            action: TextInputAction.next,
            label: Translate.s.security_code,
            type: TextInputType.number,
            margin: EdgeInsets.only(right: 16, left: 16, top: 20.sp, bottom: 10.sp),
            contentPadding: Dimens.paddingH16V10PX,
            validate: (value) => value?.noValidate(),
          ),
          PasswordFieldWidget(
            horizontalMargin: 16,
            controller: controller.newPassController,
            passwordVisibleObs: controller.passWordVisibleObs,
            validate: (value) => value?.noValidate(),
          ),
          Padding(
            padding: Dimens.paddingV5PX,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Translate.s.code_not_received,
                  style: AppTextStyle.s13_w400(color: context.colors.blackOpacity),
                ),
                Gaps.hGap5,
                Text(
                  Translate.s.resend_code,
                  style: AppTextStyle.s13_w400(color: context.colors.red),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => AutoRouter.of(context).pop(),
                  child: Container(
                    height: 35,
                    margin: Dimens.paddingH10V24PX,
                    decoration: BoxDecoration(
                      color: context.colors.activeColor.withValues(alpha:.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      Translate.s.cancel,
                      style: AppTextStyle.s16_w400(color: context.colors.mintGreenColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: LoadingButton(
                  title: Translate.s.reset_pass,
                  onTap: () => controller.onConfirmResetPass(context),
                  color: context.colors.activeColor.withValues(alpha:.7),
                  textColor: context.colors.white,
                  btnKey: controller.resetPassBtnKey,
                  borderRadius: 5,
                  height: 35,
                  margin: Dimens.paddingH10V24PX,
                  titleTextStyle: AppTextStyle.s14_w600(color: context.colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
