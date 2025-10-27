part of 'onboarding_widgets_imports.dart';

class WalkThroughIndicatorWidget extends StatelessWidget {
   final int activeIndex;
  const WalkThroughIndicatorWidget({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 3,
      duration: const Duration(milliseconds: 300),
      effect: WormEffect(
        activeDotColor: context.colors.black,
        dotColor: context.colors.dotColor,
        spacing: 20,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
