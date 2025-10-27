part of 'login_widgets_imports.dart';

class ForgetPasswordWidget extends StatelessWidget {
  final LoginViewController controller;
  const ForgetPasswordWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => controller.showForgetPassBottomSheet(context),
            child: Text(
              Translate.s.label_forget_pass,
              style: AppTextStyle.s14_w450(color: context.colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
