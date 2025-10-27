part of 'login_widgets_imports.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Translate.s.new_account,
              style: AppTextStyle.s17_w400(color: context.colors.textGrayOpacity),
            ),
            Gaps.hGap5,
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(const SignUpPageRoute()),
              child: Text(
                Translate.s.sign_up,
                style: AppTextStyle.s17_w450(color: context.colors.textColor),
              ),
            ),
          ],
        ),
        Gaps.vGap24,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                endIndent: 8,
                indent: 16,
                color: context.colors.slightBlueGray,
              ),
            ),
            Text(
              Translate.s.or,
              style: AppTextStyle.s17_w400(color: context.colors.slightGray),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                endIndent: 16,
                indent: 8,
                color: context.colors.slightBlueGray,
              ),
            )
          ],
        ),
        Gaps.vGap24,
      ],
    );
  }
}
