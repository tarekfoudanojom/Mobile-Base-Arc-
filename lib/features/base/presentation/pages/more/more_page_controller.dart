// ignore_for_file: avoid_dynamic_calls

part of 'more_page_imports.dart';

class MorePageController {
  final ObsValue<bool> themeModeSwitchObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final GlobalKey<CustomButtonState> sendBtnKey =
      GlobalKey<CustomButtonState>();
  final ObsValue<CurrencyEnum> currencyObs =
      ObsValue<CurrencyEnum>.withInit(CurrencyEnum.sar);
  final ObsValue<String> langObs = ObsValue<String>.withInit("en");
  final ObsValue<bool> signOutLoadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> changeLangLoadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> absorbObs = ObsValue<bool>.withInit(false);
  final BaseBloc<List<SwitchAccountModel>> switchAccountsBloc = BaseBloc();
  final TextEditingController feedBackController = TextEditingController();
  String appVersion = "";
  final BaseBloc<List<SwitchAccountModel>> myAccountsBloc = BaseBloc();
  final questionsBloc = BaseBloc<List<PartnerQuestion>>();
  final partnersLoadingObs = ObsValue<bool>.withInit(false);
  bool newPartner = false;

  MorePageController(BuildContext context) {
    if (context.read<DeviceCubit>().state.model.auth) {
      getWalletBalance();
      getMultiAccounts();
    }
    getAppVersion();
  }

  Future<void> getWalletBalance() async {
    // balanceBloc.loadingState();
    // var result = await getIt<WalletRepository>().getWalletBalance();
    // result.whenOrNull(
    //   isSuccess: (data) => balanceBloc.successState(data),
    //   isError: (error) => balanceBloc.failedState(error, () {}),
    // );
  }

  Future<void> getApplicationQuestions(BuildContext context) async {
    // partnersLoadingObs.setValue(true);
    // partnersLoadingObs.refresh();
    // var result = await getIt<ProfileRepository>().getApplicationQuestions();
    // result.when(
    //   isSuccess: (data) {
    //     questionsBloc.successState(data);
    //     partnersLoadingObs.setValue(false);
    //     partnersLoadingObs.refresh();
    //     PartnerProfileModel partnerProfileData = checkPartnerDataView();
    //     AutoRouter.of(context).push(
    //       PartnersPageRoute(
    //         profileModel: partnerProfileData,
    //         newPartner: newPartner,
    //       ),
    //     );
    //   },
    //   isError: (error) {},
    // );
  }

  PartnerProfileModel checkPartnerDataView() {
    bool applicationAnswersCompleted = questionsBloc.state.data!
        .where((element) => element.answer != null && element.page == 1)
        .isNotEmpty;
    bool aboutMeAnswersCompleted = questionsBloc.state.data!
        .where((element) => element.answer != null && element.page == 2)
        .isNotEmpty;
    newPartner = !applicationAnswersCompleted && !aboutMeAnswersCompleted;
    return PartnerProfileModel(
      applicationAnswers: applicationAnswersCompleted
          ? CompleteStatusEnum.completed
          : CompleteStatusEnum.start,
      aboutMeAnswers: aboutMeAnswersCompleted
          ? CompleteStatusEnum.completed
          : CompleteStatusEnum.start,
      allDataAnswers: applicationAnswersCompleted && aboutMeAnswersCompleted
          ? CompleteStatusEnum.completed
          : CompleteStatusEnum.start,
    );
  }

  void getMultiAccounts() async {
    var accounts = await getIt<UserServicesHelper>().getMultiAccounts();
    var result = accounts != null ? json.decode(accounts) : [];
    if (result != null && result.isNotEmpty) {
      List<SwitchAccountModel> myAccounts = List<SwitchAccountModel>.from(
              json.decode(accounts!).map((e) => SwitchAccountModel.fromJson(e)))
          .toList();
      myAccountsBloc.successState(myAccounts.reversed.toList());
    }
  }

  void removeAccount(BuildContext context, SwitchAccountModel model) async {
    var accounts = await getIt<UserServicesHelper>().getMultiAccounts();
    var result = accounts != null ? json.decode(accounts) : [];
    if (result != null && result.isNotEmpty) {
      List<SwitchAccountModel> myAccounts = List<SwitchAccountModel>.from(
              json.decode(accounts!).map((e) => SwitchAccountModel.fromJson(e)))
          .toList();
      if (model.isSelected == false) {
        myAccounts.removeWhere(
            (element) => element.userModel?.id == model.userModel?.id);
        myAccountsBloc.successState(myAccounts);
        await getIt<UserServicesHelper>()
            .saveMultiAccounts(json.encode(myAccounts));
        Navigator.of(context).pop();
      } else {
        myAccounts.removeWhere(
            (element) => element.userModel?.id == model.userModel?.id);
        myAccountsBloc.successState(myAccounts);
        await getIt<UserServicesHelper>()
            .saveMultiAccounts(json.encode(myAccounts));
        await getIt<UserServicesHelper>()
            .setCurrentAccount(myAccounts.first.userModel!.id)
            .then(
          (value) {
            AutoRouter.of(context).push(const Splash());
          },
        );
      }
    }
  }

  void onSwitchAccount(BuildContext context, SwitchAccountModel model) {
    if (model.isSelected == false) {
      getIt<UserServicesHelper>()
          .setCurrentAccount(model.userModel?.id ?? 0)
          .then((value) {
        AutoRouter.of(context).push(const Splash());
      });
    }
  }

  Future<void> addFeedback(BuildContext context) async {
    if (feedBackController.text.isEmpty) {
      return;
    }
    var params = await _addFeedbackParams();
    var result = await getIt<BaseRepository>().setAddFeedback(params);
    result.whenOrNull(
      isSuccess: (data) async {
        AppSnackBar.showSimpleToast(
            msg: Translate.s.feedback_sent, type: ToastType.success);
        Future.delayed(const Duration(milliseconds: 600)).then((value) {
          Navigator.pop(context);
          feedBackController.clear();
        });
      },
    );
  }

  Future<AddFeedbackParams> _addFeedbackParams() async {
    return AddFeedbackParams(
      note: feedBackController.text,
      appVersion: await getAppVersion(),
      deviceType: "${Platform.isAndroid ? 1 : 2}",
    );
  }

  Future<String> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    appVersion = version;
    return version;
  }

  void switchAccountsBottomSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (ctx) {
        return SwitchAccountsBottomSheetWidget(
          controller: this,
        );
      },
    );
  }

  void showAddLogOutBottomSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (ctx) {
        return LogoutBottomSheetWidget(
          controller: this,
        );
      },
    );
  }

  void showCurrencyBottomSheet(BuildContext context) {
    var currentCurrency = context.read<DeviceCubit>().state.model.currency;
    currencyObs.setValue(CurrencyEnum.getCurrencyEnumByName(currentCurrency));
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (ctx) {
        return SelectCurrencyBottomSheetWidget(currencyObs: currencyObs);
      },
    );
  }

  String getCurrencyTitle(BuildContext context) {
    var currentCurrency = context.read<DeviceCubit>().state.model.currency;
    if (currentCurrency == "\$") {
      return "\$";
    } else {
      return Translate.s.sar;
    }
  }

  void changeLangBottomSheet(BuildContext context) {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    langObs.setValue(currentLang);
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (ctx) {
        return LangBottomSheetWidget(
          langObs: langObs,
          onChangeLang: () => changeLanguage(context),
        );
      },
    );
  }

  void showFeedBackBottomSheet(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (ctx) {
        return FeedBackBottomSheetWidget(controller: this);
      },
    );
  }

  void enableButton() {
    if (feedBackController.text.length > 5) {
      activeButtonObs.setValue(true);
    } else {
      activeButtonObs.setValue(false);
    }
    activeButtonObs.refresh();
  }

  void addAccount(BuildContext context) {
    AutoRouter.of(context).push(AuthPageRoute(fromMore: true));
  }

  void shareApp() async {
    if (Platform.isIOS) {
      getIt<Utilities>().onShare(
          url:
              "https://apps.apple.com/ae/app/nojom-app-for-brands/id1488448062");
    } else {
      getIt<Utilities>().onShare(
          url: "https://play.google.com/store/apps/details?id=com.nojom.stars");
    }
  }

  void rateApp() async {
    if (Platform.isIOS) {
      getIt<Utilities>().launchUrlLauncher(
          url:
              "https://apps.apple.com/ae/app/nojom-app-for-brands/id1488448062");
    } else {
      getIt<Utilities>().launchUrlLauncher(
          url: "https://play.google.com/store/apps/details?id=com.nojom.stars");
    }
  }

  void changeLanguageLocal(BuildContext context) async {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    await getIt<Utilities>()
        .changeLanguage(currentLang == "ar" ? "en" : "ar", context)
        .then((value) {
      AutoRouter.of(context).push(HomePageRoute());
    });
  }

  String setLangItemEndTitle(BuildContext context) {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    if (currentLang == "ar" || langObs.getValue() == "ar") {
      return "العربية";
    } else {
      return "English";
    }
  }

  void showLogoutDialog(BuildContext context) {
    // showAdaptiveDialog(
    //   barrierDismissible: true,
    //   context: context,
    //   builder: (ctx) =>
    //       SignOutDialog(confirmLogout: () => confirmLogout(context)),
    // );
  }

  Future<void> confirmLogout(BuildContext context) async {
    signOutLoadingObs.setValue(true);
    absorbObs.setValue(true);
    await getIt<UserServicesHelper>().onPressLogout(context).then((value) {
      signOutLoadingObs.setValue(false);
      absorbObs.setValue(false);
    });
  }

  void changeLanguage(BuildContext context) async {
    saveLanguage(context);
  }

  /// api calling methods
  Future<void> saveLanguage(BuildContext context) async {
    final params = getLanguageParams(context);
    print(params.toJson());
    changeLangLoadingObs.setValue(true);
    absorbObs.setValue(true);
    var result = await getIt<AuthRepository>().updateLanguage(params);
    result.whenOrNull(
      isSuccess: (data) async {
        var currentLang =
            context.read<DeviceCubit>().state.model.locale.languageCode;
        await getIt<Utilities>()
            .changeLanguage(currentLang == "ar" ? "en" : "ar", context)
            .then((value) {
          AutoRouter.of(context).push(HomePageRoute());
        });
      },
      isError: (error) {
        changeLangLoadingObs.setValue(false);
        absorbObs.setValue(false);
      },
    );
  }

  ProfileParamsList getLanguageParams(BuildContext context) {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    final model = context.read<ProfileCubit>().state.model!;
    var countryCode = model.phone?.split(".").first;
    var phoneNumber = model.phone?.split(".").last;
    String companyName = model.companyName ?? "";
    String brandName = model.brandName ?? "";
    String firstName = model.firstName ?? "";
    String lastName = model.lastName ?? "";
    String email = model.email ?? "";
    String contactNo = phoneNumber == 'null' ? "" : phoneNumber ?? '';
    String mobilePrefix = countryCode == 'null' ? "" : countryCode ?? "";

    String userName = model.username ?? "";
    String website = model.website ?? "";
    int isVerified = model.isVerified ?? 0;

    String language = currentLang == "ar" ? "en" : "ar";
    return ProfileParamsList(
        language: language,
        userName: userName,
        firstName: firstName,
        lastName: lastName,
        email: email,
        mobilePrefix: mobilePrefix,
        contactNo: contactNo,
        brandName: brandName,
        companyName: companyName,
        isVerified: isVerified,
        website: website);
  }
}
