part of 'login_widgets_imports.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginController controller;

  const LoginFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          ChangeFieldTypeTabBarWidget(changeSelectedItemObs: controller.changeFieldTypeObs),
          ObsValueConsumer(
            observable: controller.changeFieldTypeObs,
            builder: (context, value) {
              return Visibility(
                visible: value,
                replacement: const LoginView(),
                child: const SignUpView(),
              );
            },
          ),
        ],
      ),
    );
  }
}
