part of 'sign_up_widgets_imports.dart';

class DoneButtonWidget extends StatelessWidget {
  final GlobalKey<CustomButtonState> doneBtnKey = GlobalKey();
  final dynamic Function() onTap;
   DoneButtonWidget({super.key, required this.onTap, });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: Translate.s.done,
      onTap: onTap,
      color: context.colors.black,
      btnKey: doneBtnKey,
      borderRadius: 100,
      margin:  const EdgeInsets.symmetric(vertical: 12),
      height: 48,
      titleTextStyle: AppTextStyle.s14_w600(color:  context.colors.white ),
    );
  }
}
