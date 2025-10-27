part of 'confirm_page_imports.dart';


@RoutePage(name: "ConfirmPageRoute")
class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  final ConfirmPageController controller = ConfirmPageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      body: ListView(
        children: [
          Gaps.vGap(134),
          SvgPicture.asset(Res.confirmImage,
          width: 188, height: 166,
          ),
          Gaps.vGap40,
          Text(Translate.s.pass_reset_success,
            textAlign: TextAlign.center,
            style: AppTextStyle.s36_w700(color: context.colors.textColor).copyWith(height: 1.2)
          ),
          Gaps.vGap22,
         Text(Translate.s.confirm_message,
           textAlign: TextAlign.center,
           style: AppTextStyle.s15_w400(color: context.colors.textGaryColor.withValues(alpha:0.4)).copyWith(height: 1.4),
         )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 110,
        child: LoginButtonWidget(controller: controller,),
      ),
    );
  }
}
