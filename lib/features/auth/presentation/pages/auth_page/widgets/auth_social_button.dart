part of 'login_widgets_imports.dart';

class AuthSocialButton extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onTap;
  final Color? color;
  final Color? textColor;

  const AuthSocialButton({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 33.h,
        alignment: Alignment.center,
        margin: Dimens.paddingV7PX,
        decoration: BoxDecoration(
          color: color ?? context.colors.black,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: context.colors.black,
            width: .5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              width: 33.w,
              height: 33.w,
            ),
            Text(
              title,
              style: AppTextStyle.s17_w600(
                color: textColor ?? context.colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
