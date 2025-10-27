part of 'active_account_widgets_imports.dart';

class ActiveCodeWidget extends StatelessWidget {
  final ActiveAccountController controller;

  const ActiveCodeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinFieldWidget(
          controller: controller.pinFieldController,
          onComplete: (value) => controller.onComplete(value),
          onChanged: (value) => controller.onChange(),
          margin: const EdgeInsets.only(top: 30),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ObsValueConsumer(
              observable: controller.showReSendWarningObs,
              builder: (context, value) {
                return Visibility(
                  visible: value,
                  replacement: Gaps.empty,
                  child: Text(
                    Translate.s.wrong_code,
                    style: AppTextStyle.s13_w400(color: context.colors.red).copyWith(height: 1.2),
                  ),
                );
              },
            ),
            Gaps.vGap27,
            Column(
              children: [
                Text(
                  Translate.s.Dont_receive_code,
                  style: AppTextStyle.s17_w400(color: context.colors.black),
                ),
                Gaps.vGap10,
                InkWell(
                  onTap: () => controller.onPressReSend(),
                  child: Text(
                    Translate.s.re_send_code,
                    style: AppTextStyle.s17_w400(color: context.colors.appColorBlue,),
                  ),
                ),
                // ObsValueConsumer(
                //   observable: controller.showReSendObs,
                //   builder: (context, value) {
                //     return Visibility(
                //       visible: !value,
                //       replacement: ResendAgainWidget(controller: controller),
                //       child: InkWell(
                //         onTap: () => controller.onPressReSend(),
                //         child: Text(
                //           Translate.s.re_send_code,
                //           style: AppTextStyle.s17_w400(color: context.colors.appColorBlue,),
                //         ),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
