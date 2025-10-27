part of 'change_password_widgets_imports.dart';

class HomeButtonWidget extends StatelessWidget {
  final ChangePasswordConfirmController controller;
  const HomeButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: "Go to Home",
      onTap: ()=>AutoRouter.of(context).popUntilRouteWithName("HomePageRoute"),
      color: context.colors.black,
      btnKey: controller.btnKey,
      margin: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
      borderRadius: 100,
      titleTextStyle: AppTextStyle.s14_w600(color:  context.colors.white ),
    );
  }
}
