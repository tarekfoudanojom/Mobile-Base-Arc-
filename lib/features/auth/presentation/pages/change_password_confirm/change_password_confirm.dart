part of 'change_password_confirm_imports.dart';

@RoutePage(name: "ChangePasswordConfirmPageRoute")
class ChangePasswordConfirm extends StatefulWidget {
  const ChangePasswordConfirm({super.key});

  @override
  State<ChangePasswordConfirm> createState() => _ChangePasswordConfirmState();
}

class _ChangePasswordConfirmState extends State<ChangePasswordConfirm> {
  final ChangePasswordConfirmController controller = ChangePasswordConfirmController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Gaps.vGap(134),
          SvgPicture.asset(Res.confirmImage,
            width: 188, height: 166,
          ),
          Gaps.vGap40,
        RichText(
          textAlign: TextAlign.center,
            text: TextSpan(
          children: [
            TextSpan(
              text: "Got it, your password is now",
              style: AppTextStyle.s28_w700(color: context.colors.textColor).copyWith()
            ),
            TextSpan(
                text: '"update"',
                style: AppTextStyle.s28_w700(color: context.colors.appColorBlue,).copyWith(
                  height: 1.2
                )
            ),
            TextSpan(
                text: ".",
                style: AppTextStyle.s28_w700(color: context.colors.textColor)
            ),


          ]
        ))
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: HomeButtonWidget(controller: controller,),
      ),
    ) ;
  }
}
