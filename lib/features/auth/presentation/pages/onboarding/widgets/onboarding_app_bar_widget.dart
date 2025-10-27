part of 'onboarding_widgets_imports.dart';

class OnboardingAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final OnboardingController controller;
  const OnboardingAppBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const StarLogoWidget(),
          GestureDetector(
            onTap: ()=>controller.changeLanguage(context),
            child: Container(
              height: 32,
              padding: const EdgeInsets.symmetric(horizontal:16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.slightBlueGray,
                borderRadius: BorderRadius.circular(42)
              ),
              child: Text(Translate.of(context).lang,
              style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
