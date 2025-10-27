part of 'auth_page_imports.dart';

@RoutePage(name: "AuthPageRoute")
class Login extends StatefulWidget {
  final bool fromMore;
  final bool initialTab;
  const Login({super.key, this.fromMore = false, this.initialTab = false});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(widget.initialTab);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AutoRouter.of(context).canPop();
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AuthAppBarWidget(
          showBack: true,
          leading: Icon(Icons.arrow_back, size: 20, color: context.colors.black),
        ),
        body: ObsValueConsumer(
            observable: controller.changeFieldTypeObs,
          builder: (context,value) {
            return ListView(
              children: [
                LoginFormWidget(controller: controller),
                // LoginButtonWidget(controller: controller),
              ],
            );
          }
        ),
        // bottomNavigationBar: SocialLoginButtons(controller: controller),
      ),
    );
  }
}
