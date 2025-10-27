part of 'confirm_page_widgets_imports.dart';


class LoginButtonWidget extends StatelessWidget {
  final ConfirmPageController controller;
  const LoginButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: Translate.s.label_Login,
      onTap: ()=>AutoRouter.of(context).popUntilRouteWithName("AuthPageRoute"),
      color: context.colors.black,
      btnKey: controller.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      borderRadius: 100,
      titleTextStyle: AppTextStyle.s14_w600(color:  context.colors.white ),
    );
  }
}
