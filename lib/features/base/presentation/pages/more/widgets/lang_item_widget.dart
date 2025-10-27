part of 'more_widgets_imports.dart';

class LangItemWidget extends StatelessWidget {
  final String value;
  final String changedValue;
  final VoidCallback onTap;

  const LangItemWidget({
    super.key,
    required this.value,
    required this.changedValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingH16PX,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Text(
                value == "en" ? "English" : "العربية",
                style: AppTextStyle.s16_w400(color: context.colors.textColor),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: value == changedValue
                      ? context.colors.textColor
                      : context.colors.white),
              child: Icon(
                Icons.check,
                color: context.colors.white,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
