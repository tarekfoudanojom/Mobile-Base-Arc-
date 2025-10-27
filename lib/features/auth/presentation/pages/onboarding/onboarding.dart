part of 'onboarding_imports.dart';

@RoutePage(name: "OnboardingPageRoute")
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with WidgetsBindingObserver {
  final OnboardingController controller = OnboardingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentLang =
        context.watch<DeviceCubit>().state.model.locale.languageCode;
    return PopScope(
      canPop: false,
      onPopInvoked: (pop) {
        SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: context.colors.white,
        appBar: OnboardingAppBarWidget(controller: controller),
        body: ObsValueConsumer(
          observable: controller.currentPageObs,
          builder: (context, value) {
            return Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.currentPageObs.setValue(index);
                    },
                    children: [
                      WalkThroughCurrentPageWidget(
                          text: Translate.s.shine_with_stars,
                          description: Translate.s.join_platform,
                          imagePath:currentLang == "ar"
                              ? Res.onboardingFirstPageImageAr
                              : Res.onboardingFirstPageImage,
                          topPosition: 70,
                          width: MediaQuery.of(context).size.width - 70),
                      WalkThroughCurrentPageWidget(
                        text: Translate.s.exceptional_exp,
                        description: Translate.s.enjoy_outstanding,
                        imagePath: currentLang == "ar"
                            ?Res.onboardingSecondPageImageAr
                            :Res.onboardingSecondPageImage,
                        topPosition: 10,
                        width: MediaQuery.of(context).size.width,
                      ),
                      WalkThroughCurrentPageWidget(
                        text: Translate.of(context).new_opportunities,
                        description: Translate.s.join_us,
                        imagePath: currentLang == "ar"
                            ? Res.onboardingThirdPageArImage
                            : Res.onboardingThirdPageImage,
                        topPosition: 60,
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                WalkThroughIndicatorWidget(activeIndex: value),
                Gaps.vGap36,
              ],
            );
          },
        ),
        bottomNavigationBar: FooterButtonsWidget(controller: controller),
      ),
    );
  }
}
