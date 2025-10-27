part of 'sign_up_widgets_imports.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Translate.s.have_account,
              style: AppTextStyle.s17_w400(color: context.colors.textGaryColor.withValues(alpha:0.4)),
            ),
            Gaps.hGap8,
            GestureDetector(
              onTap: () => AutoRouter.of(context).pop(),
              child: Text(
                Translate.s.login,
                style: AppTextStyle.s17_w450(color: context.colors.textColor),
              ),
            ),
          ],
        ),
        Gaps.vGap24,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Divider(thickness: 1, endIndent: 8,color:context.colors.slightBlueGray ,)),
            Text(Translate.s.or,
                style: AppTextStyle.s16_w400(color: context.colors.slightGray,)
            ),
            Expanded(child: Divider(thickness: 1,indent: 8,color:context.colors.slightBlueGray ,))
          ],
        ),
        Gaps.vGap24,
      ],
    );
  }
}
