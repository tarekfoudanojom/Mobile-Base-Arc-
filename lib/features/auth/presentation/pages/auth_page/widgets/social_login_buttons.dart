part of 'login_widgets_imports.dart';

class SocialLoginButtons extends StatelessWidget {
  final Function()? googleLogin;
  final Function()? appleLogin;
  final Function()? appleSignup;
  final Function()? googleSignup;
  final bool isSignUp;

  const SocialLoginButtons({
    super.key,
    this.googleLogin,
    this.appleLogin,
    this.appleSignup,
    this.googleSignup,
    required this.isSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthSocialButton(
            image: Res.googleIcon,
            title: isSignUp ? Translate.s.sign_up_with_google : Translate.s.login_with_google,
            color: context.colors.white,
            textColor: context.colors.black.withValues(alpha:.7),
            onTap: () {
              if (isSignUp) {
                if (googleSignup != null) googleSignup!();
              } else {
                if (googleLogin != null) googleLogin!();
              }
            },
          ),
          Visibility(
            visible: Platform.isIOS,
            child: AuthSocialButton(
              image: Res.appleIcon,
              title: isSignUp ? Translate.s.sign_up_with_apple : Translate.s.login_with_apple,
              onTap: () {
                if (isSignUp) {
                  if (appleSignup != null) appleSignup!();
                } else {
                  if (appleLogin != null) appleLogin!();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
