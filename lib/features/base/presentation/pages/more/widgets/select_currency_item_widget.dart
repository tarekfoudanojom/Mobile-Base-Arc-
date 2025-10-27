part of 'more_widgets_imports.dart';

class SelectCurrencyItemWidget extends StatelessWidget {
  final CurrencyEnum value;
  final CurrencyEnum? changedValue;
  final void Function() onTap;

  const SelectCurrencyItemWidget({
    super.key,
    required this.value,
    this.changedValue,
    required this.onTap
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
              child: Text(value.getEnumName(),
              style: AppTextStyle.s16_w400(color: context.colors.textColor),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: value==changedValue
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
