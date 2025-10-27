part of 'login_widgets_imports.dart';

class FooterTextWidget extends StatelessWidget {
  const FooterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text(
          Translate.s.download_company_app,
          style: AppTextStyle.s15_w450(color: context.colors.textColor),
        ),
      ),
    );
  }
}
