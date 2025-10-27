// ignore_for_file: use_build_context_synchronously
part of 'splash_imports.dart';

class SplashController {
  SplashController() {
    // seeData();
  }

  void manipulateSaveData(BuildContext context) async {
    AppTrackingTransparency.requestTrackingAuthorization();
    await updateLang(context);
    await updateCurrency(context);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try{
      var userStr = preferences.getString("user");
      var profileStr = preferences.getString("profile");
      var userToken = preferences.getString("token");
      await Future.wait([
        context.read<ServiceFilterCubit>().callFilterTags(),
        context.read<ServiceFilterCubit>().getFilterCategories(),
      ]);
      if (userStr != null && userToken != null) {
        context.read<DeviceCubit>().updateUserAuth(true);
        UserModel user = UserModel.fromJson(json.decode(userStr));
        context.read<UserCubit>().onUpdateUserData(user);
        GlobalState.instance.set("token", userToken);
        if (profileStr == null) {
        _getUserProfile(context, preferences);
        }else{
          ProfileModel profileData = ProfileModel.fromJson(json.decode(profileStr));
          context.read<ProfileCubit>().onUpdateProfileData(profileData);
        }
        onSwitchPage(context, 0);
      } else {
        context.read<DeviceCubit>().updateUserAuth(false);
        await Future.delayed(const Duration(milliseconds: 2000));
        AutoRouter.of(context).pushAndPopUntil(
          HomePageRoute(),
          predicate: (route) => false,
        );
      }
    }catch(e){
      preferences.clear();
      context.read<DeviceCubit>().updateUserAuth(false);
      await Future.delayed(const Duration(milliseconds: 2000));
      AutoRouter.of(context).pushAndPopUntil(
        HomePageRoute(),
        predicate: (route) => false,
      );
    }

  }

  Future<void> _getUserProfile(BuildContext context, SharedPreferences preferences)async{
    var result = await getIt<AuthRepository>().getProfileInfo();
    result.when(
      isSuccess: (data) async {
        getIt<UserServicesHelper>().saveUserData(context, data ?? '');
        Map<String, dynamic> dec = JwtDecoder.decode(data ?? '');
        var profileData = ProfileModel.fromJson(dec);
        getIt<UserServicesHelper>().updateAccountProfileModel(profileData);
        preferences.setString("profile", json.encode(profileData.toJson()));
        context.read<ProfileCubit>().onUpdateProfileData(profileData);
      },
      isError: (error) {
        log("Error fetching profile: $error");
      },
    );
  }

  Future<void> updateLang(BuildContext context) async {
    await SharedPreferences.getInstance().then(
      (lang) {
        String? value = lang.getString("lang");
        GlobalState.instance.set("lang", value ?? "en");
        context.read<DeviceCubit>().updateLanguage(
              Locale(
                value ?? "en",
                value == "en" ? 'EG' : 'US',
              ),
            );
      },
    );
  }

  Future<void> updateCurrency(BuildContext context) async {
    await SharedPreferences.getInstance().then(
      (currency) {
        String? value = currency.getString("currency");
        GlobalState.instance.set("currency", value ?? "en");
        context.read<DeviceCubit>().updateCurrency(value == "\$" ? "\$" : "SAR");
      },
    );
  }

  Future<dynamic> onSwitchPage(BuildContext context, int step) {
    switch (step) {
      case 1:
        return AutoRouter.of(context).pushAndPopUntil(
          CompleteSignUpPageRoute(isBackLogin: true),
          predicate: (route) => false,
        );
      // return AutoRouter.of(context)
      //     .push(CompleteSignUpPageRoute(isBackLogin: true));
      // case 2:
      //   return AutoRouter.of(context)
      //       .push(SelectLocationPageRoute(isBackLogin: true));
      // case 3:
      //   return AutoRouter.of(context)
      //       .push(SelectGenderPageRoute(isBackLogin: true));
      // case 4:
      //   return AutoRouter.of(context)
      //       .push(AddYourSocialsPageRoute(isBackLogin: true));
      // case 5:
      //   return AutoRouter.of(context)
      //       .push(AddProfilePicturePageRoute(isBackLogin: true));
      // case 6:
      //   return AutoRouter.of(context)
      //       .push(ClaimUserLinkPageRoute(isBackLogin: true));

      default:
        return AutoRouter.of(context).pushAndPopUntil(HomePageRoute(), predicate: (route) => false);
    }
  }
}