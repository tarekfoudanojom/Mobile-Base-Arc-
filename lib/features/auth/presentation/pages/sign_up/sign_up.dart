part of 'sign_up_imports.dart';

@RoutePage(name: "SignUpPageRoute")
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final SignUpController controller = SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      appBar: const AuthAppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: [
          AuthHeaderTitleWidget(
            title: Translate.s.create_star_account,
            subTitle: Translate.s.enter_number_or_phone,
            visibleText: Translate.s.private_to_me,
            paddingFromStart: 0,
          ),
          SignUpFormWidget(controller: controller),
          NavButtonWidget(
              horizontalMargin: 0,
              activeButtonObs: controller.activeButtonObs,
              btnKey: controller.btnKey,
              onTap: () => controller.onPressNext(context)),
          const LoginWidget(),
          Gaps.vGap24,
          ContinueWithSocialMediaWidget(
            onSelectApple: () {},
            onSelectGoogle: () {},
            // onSelectGoogle: () => controller.signUpWithGoogle(context),
            onSelectFacebook: () {},
          )
        ],
      ),
    );
  }
}
