part of'reset_password_widgets_imports.dart';

class ResetPasswordButton extends StatelessWidget {
  final ResetPasswordController controller;
  const ResetPasswordButton({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.activeButtonObs,
      builder: (context,value) {
        return AbsorbPointer(
          absorbing: !value,
          child: LoadingButton(
              title: Translate.s.confirm,
              onTap: () => controller.onConfirm(context),
              color: !value ? context.colors.slightBlueGray:context.colors.black,
              textColor: !value ? context.colors.lightGray : context.colors.white,
              btnKey: controller.btnKey,
              margin: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
              titleTextStyle: AppTextStyle.s14_w600(color: !value ? context.colors.lightGray : context.colors.white ),
              borderRadius: 100,
              height: 48
          ),
        );
      }
    );
  }
}
