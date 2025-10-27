part of'reset_password_imports.dart';

@RoutePage(name: "ResetPasswordPageRoute")
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<StatefulWidget> createState() => _ResetPasswordState();

}

class _ResetPasswordState extends State<ResetPassword> {
  final ResetPasswordController controller=ResetPasswordController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      appBar: const AuthAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
        children: [
           AuthHeaderTitleWidget(
            title: Translate.s.reset_pass,
            subTitle: Translate.s.new_pass_message,
            paddingFromStart: 0,
          ),
          ResetPasswordForm(controller: controller),
      ]),
      bottomNavigationBar: ResetPasswordButton(controller: controller,),
    );
  }
}
