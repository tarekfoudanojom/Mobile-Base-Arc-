part of 'onboarding_widgets_imports.dart';

class FooterButtonItemWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final Function() onTap;

  const FooterButtonItemWidget(
      {super.key,
      required this.text,
      required this.onTap,
      required this.textColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextButton.minCustom(
        maxHeight: 48,
        borderRadius: 52,
        text: text,
        onPressed: onTap,
        textStyle: AppTextStyle.s16_w600(color: textColor),
        bgColor: bgColor,
        borderColor: context.colors.black,
      ),
    );
  }
}
