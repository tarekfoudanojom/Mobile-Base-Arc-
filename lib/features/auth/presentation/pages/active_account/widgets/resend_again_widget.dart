part of 'active_account_widgets_imports.dart';

class ResendAgainWidget extends StatelessWidget {
  final ActiveAccountController controller;

  const ResendAgainWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        Translate.s.send_again,
        style: AppTextStyle.s17_w450(
            color: context.colors.textGrayOpacity),
      ),
      Gaps.hGap4,
      ObsValueConsumer(
        observable: controller.secondsObs,
        builder: (context, value) {
          return Text(
            "$value${Translate.s.seconds}",
            style: AppTextStyle.s15_w600(color: context.colors.textColor),
          );
        },
      )
    ]);
  }
}
