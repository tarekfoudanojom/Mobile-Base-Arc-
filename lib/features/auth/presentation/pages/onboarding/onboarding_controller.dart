part of 'onboarding_imports.dart';

class OnboardingController {
  final PageController pageController = PageController();
  ObsValue<int> currentPageObs = ObsValue<int>.withInit(0);


  void moveToNextPage(BuildContext context) {
    var currentPageIndex = currentPageObs.getValue();
    if (currentPageIndex < 2) {
      currentPageObs.setValue(currentPageIndex + 1);
      pageController.animateToPage(currentPageIndex + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      AutoRouter.of(context).push( AuthPageRoute());
    }
  }

  // void saveLang(String lang, BuildContext context) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var user = prefs.getString("user");
  //   UserModel userData = UserModel.fromJson(json.decode(user!));
  //   // userData.lang = lang;
  //   // context.read<UserCubit>().onUpdateUserData(userData);
  //   prefs.setString("user", json.encode(userData));
  // }

  void changeLanguage(BuildContext context) async {
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    // print("=====currentLang====${currentLang}");
    getIt<Utilities>().changeLanguage(currentLang == "ar" ? "en" : "ar", context);
  }
}