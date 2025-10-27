part of 'more_widgets_imports.dart';

class PleaseSignInWidget extends StatelessWidget {
  final String title;
  final String subTitleText;

  const PleaseSignInWidget({
    super.key,
    required this.title,
    required this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll20PX,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyle.s20_w600(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap10,
            Text(
              subTitleText,
              style: AppTextStyle.s16_w400(color: context.colors.textTertiary)
                  .copyWith(
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap32,
            const AskLoginButtonWidget(),
          ],
        ),
      ),
    );
  }
}
