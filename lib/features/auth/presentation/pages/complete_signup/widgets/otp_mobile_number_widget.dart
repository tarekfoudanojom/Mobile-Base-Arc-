part of 'complete_signup_widgets_imports.dart';

class OTPMobileNumberWidget extends StatelessWidget {
  final CompleteSignUpController controller;
  final SignupInfoEntity infoEntity;

  OTPMobileNumberWidget(
      {super.key, required this.controller, required this.infoEntity});

  @override
  Widget build(BuildContext context) {
    controller.phoneNumber = infoEntity.secondValue ?? "";
    print(infoEntity.secondValue ?? "");
    return Container(
      // padding: Dimens.paddingH15V24PX,
      // margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.background1,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Text(
                  infoEntity.secondValue ?? "",
                  style:
                      AppTextStyle.s16_w600(color: context.colors.textTertiary),
                ),
              ),
              Gaps.hGap5,
              InkWell(
                onTap: () => controller.onPressCloseInfoPopup(context),
                child: Text(
                  Translate.s.edit,
                  style:
                      AppTextStyle.s16_w600(color: context.colors.appColorBlue),
                ),
              ),
            ],
          ),
          PinFieldWidget(
            controller: controller.pinOTPFieldController,
            onComplete: (value) => controller.onComplete(value),
            onChanged: (value) => _onChange(),
            margin: const EdgeInsets.only(top: 32),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ObsValueConsumer(
                observable: controller.showReSendObs,
                builder: (context, value) {
                  return Visibility(
                    visible: !value,
                    replacement: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          Translate.s.send_again,
                          style: AppTextStyle.s14_w400(
                              color: context.colors.textGrayOpacity),
                        ),
                        Gaps.hGap4,
                        ObsValueConsumer(
                          observable: controller.secondsObs,
                          builder: (context, value) {
                            return Text(
                              "00:$value",
                              style: AppTextStyle.s14_w400(
                                  color: context.colors.textColor),
                            );
                          },
                        )
                      ],
                    ),
                    child: InkWell(
                      onTap: () => controller.onPressReSend(),
                      child: Text(
                        Translate.s.re_send_code,
                        style: AppTextStyle.s17_w450(
                            color: context.colors.appColorBlue),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onChange() {
    var warningObs = controller.showReSendWarningObs;
    if (warningObs.getValue() == true) {
      warningObs.setValue(false);
      warningObs.refresh();
    }
  }
}
