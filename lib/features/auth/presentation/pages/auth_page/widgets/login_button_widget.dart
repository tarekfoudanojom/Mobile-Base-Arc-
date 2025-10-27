part of 'login_widgets_imports.dart';

class LoginButtonWidget extends StatelessWidget {
  final LoginController controller;

  const LoginButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.changeFieldTypeObs,
      builder: (context, pageValue) {
        return Visibility(visible: pageValue, child: const SizedBox());
      },
    );
  }
}
