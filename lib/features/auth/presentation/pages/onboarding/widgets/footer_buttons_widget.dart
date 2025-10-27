part of 'onboarding_widgets_imports.dart';

class FooterButtonsWidget extends StatelessWidget {
  final OnboardingController controller;

  const FooterButtonsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
      child: Row(
        children: [
          FooterButtonItemWidget(
            text: Translate.of(context).skip,
            onTap: () => AutoRouter.of(context).push( AuthPageRoute()),
            textColor: context.colors.textColor,
            bgColor: Colors.transparent,
          ),
          Gaps.hGap9,
          FooterButtonItemWidget(
            text: Translate.s.next,
            onTap: () => controller.moveToNextPage(context),
            textColor: context.colors.white,
            bgColor: context.colors.black,
          ),
        ],
      ),
    );
  }
}
