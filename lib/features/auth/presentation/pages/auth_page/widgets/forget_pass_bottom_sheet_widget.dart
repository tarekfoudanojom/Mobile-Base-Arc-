part of 'login_widgets_imports.dart';

class ForgetPassBottomSheet extends StatelessWidget {
  final LoginViewController controller;

  const ForgetPassBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      padding: Dimens.paddingAll10PX,
      decoration: BoxDecoration(
        color: context.colors.whiteOpacity,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap20,
          Padding(
            padding: Dimens.paddingH16V5PX,
            child: Text(
              Translate.s.reset_pass,
              style: AppTextStyle.s20_w600(color: context.colors.textColor),
            ),
          ),
          Padding(
            padding: Dimens.paddingH16V10PX,
            child: Text(
              Translate.s.type_email,
              style: AppTextStyle.s13_w400(color: context.colors.blackOpacity),
            ),
          ),
          GenericTextField(
            controller: controller.emailController,
            onChange: (value) => controller.enableButton(),
            textAlign: lang == "en" ? TextAlign.left : TextAlign.right,
            textDirection: TextDirection.ltr,
            fieldTypes: FieldTypes.normal,
            fillColor: Colors.transparent,
            action: TextInputAction.next,
            hint: Translate.s.email,
            type: TextInputType.emailAddress,
            margin: EdgeInsets.only(right: 16, left: 16, top: 30.sp, bottom: 20.sp),
            contentPadding: Dimens.paddingH16V10PX,
            validate: (value) => value?.noValidate(),
            enableBorderColor: Colors.transparent,
            focusBorderColor: Colors.transparent,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).pop();
                    controller.emailController.clear();
                  },
                  child: Container(
                    height: 30.h,
                    margin: Dimens.paddingH10V24PX,
                    decoration: BoxDecoration(
                      color: context.colors.lightRed,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      Translate.s.cancel,
                      style: AppTextStyle.s16_w400(color: context.colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: LoadingButton(
                  title: Translate.s.reset_pass,
                  onTap: () => controller.onPressSendCode(context),
                  // onTap: () => controller.showResetPassBottomSheet(context),
                  color: context.colors.red.withValues(alpha:.7),
                  textColor: context.colors.white,
                  btnKey: controller.forgetPassBtnKey,
                  borderRadius: 5,
                  height: 30.h,
                  margin: Dimens.paddingH10V24PX,
                  titleTextStyle: AppTextStyle.s14_w500(color: context.colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
