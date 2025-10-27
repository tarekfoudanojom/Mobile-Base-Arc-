part of 'complete_signup_imports.dart';

class CompleteSignUpController {
  late ProfileRequester _profileRequester;

  CompleteSignUpController() {
    _profileRequester = ProfileRequester();
    getCountries();
  }

  final ProfileRequester profileRequester = ProfileRequester();
  final ObsValue<bool> showReSendWarningObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> showReSendObs = ObsValue<bool>.withInit(false);
  final ObsValue<int> secondsObs = ObsValue<int>.withInit(50);

  /// keys
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnSave = GlobalKey();
  final GlobalKey<CustomButtonState> sendCodeBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> vatNumBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> crBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> emailVerifyBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> phoneVerifyBtnKey = GlobalKey();

  /// controllers
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();
  final TextEditingController pinFieldController = TextEditingController();
  TextEditingController pinOTPFieldController = TextEditingController();

  /// observables
  final ObsValue<bool> activeButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> submitButtonLoadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<Country> countryCodeObs = ObsValue<Country>.withInit(Country(
    name: "المملكة العربية السعودية",
    dialCode: "+966",
    nameEn: "Saudi Arabia",
    flag: "🇸🇦",
    isoCode: "SA",
    cities: [],
    phoneDigitsLength: 10,
    phoneDigitsLengthMax: 10,
  ));
  final ObsValue<File?> crFileObs = ObsValue<File?>.withInit(null);
  final ObsValue<File?> vatFileObs = ObsValue<File?>.withInit(null);
  final ObsValue<File?> profileObs = ObsValue<File?>.withInit(null);
  final ObsValue<List<SignupInfoEntity>> brandInfoObs =
      ObsValue<List<SignupInfoEntity>>.withInit([]);
  final ObsValue<List<SignupInfoEntity>> userInfoObs =
      ObsValue<List<SignupInfoEntity>>.withInit([]);
  final ObsValue<List<SignupInfoEntity>> commercialInfoObs =
      ObsValue<List<SignupInfoEntity>>.withInit([]);
  final ObsValue<List<AboutUsItemModel>> aboutUsObs =
      ObsValue<List<AboutUsItemModel>>.withInit([]);
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<List<Country>> countriesObs =
      ObsValue<List<Country>>.withInit([]);
  Timer? timerForOpt;

  void updateDataFromUserCubit(BuildContext context) {
    final user = context.read<UserCubit>().state.model;
    brandInfoObs.getValue().forEach(
      (element) {
        if (element.title == Translate.s.company_name) {
          element.subTitle = user?.companyName ?? "";
        }
        if (element.title == Translate.s.brand_name) {
          element.subTitle = user?.brandName ?? "";
        }
        if (element.title == Translate.s.your_name) {
          element.subTitle = "${user?.firstName ?? ""} ${user?.lastName ?? ""}";
        }
      },
    );
    brandInfoObs.refresh();
    userInfoObs.getValue().forEach((element) {
      if (element.title == Translate.s.label_email) {
        element.subTitle = user?.email ?? "";
      }
      if (element.title == Translate.s.user_name) {
        element.subTitle = user?.username ?? "";
      }
      if (element.title == Translate.s.mobil) {
        element.subTitle = (user?.mobilePrefix + user?.contact) ?? "";
      }
    });
    userInfoObs.refresh();
    // commercialInfoObs.getValue().forEach((element) {
    //   if (element.title == Translate.s.commercial_register_number) {
    //     element.subTitle = user?. ?? "";
    //   }
    // });
    // commercialInfoObs.refresh();
  }

  final ObsValue<String> profileUrlObs = ObsValue<String>.withInit("");
  final TextEditingController phoneController = TextEditingController();

  ProfileModel? userProfileModel;
  String phoneNumber = "";

  /// variables
  String? phone, countryCode, email;
  int? profileId, profileTypeId;

  SignupInfoEntity verification = SignupInfoEntity(
    title: Translate.s.verifications,
    showSubTitle: false,
    type: SignupInfoType.name,
    keyName: '',
  );

  List<SignupInfoEntity> brandInfoList(BuildContext context) => [
        SignupInfoEntity(
          title: Translate.s.company_name,
          keyName: 'company_name',
          type: SignupInfoType.campaignName,
          headerTitle: Translate.s.company_name,
          headerSubTitle: Translate.s.enter_official_trade_name,
          headerLogo: Res.regIconBuilding,
          pleaseHolder: Translate.s.company_name_as_in_record,
        ),
        SignupInfoEntity(
          title: Translate.s.brand_name,
          keyName: 'brand_name',
          type: SignupInfoType.brandName,
          headerTitle: Translate.s.brand_name,
          headerSubTitle: Translate.s.enter_brand_name,
          headerLogo: Res.regIconStars,
          pleaseHolder: Translate.s.project_or_store_name,
        ),
        SignupInfoEntity(
          title: Translate.s.company_link,
          type: SignupInfoType.link,
          keyName: 'website',
          headerTitle: Translate.s.company_link,
          headerSubTitle: Translate.s.enter_company_link,
          headerLogo: Res.regIconLink,
          pleaseHolder: Translate.s.enter_your_link_here,
        ),
      ];

  List<SignupInfoEntity> userInfoList(BuildContext context) => [
        SignupInfoEntity(
          title: Translate.s.your_name,
          keyName: 'first_name',
          keyName2: 'last_name',
          type: SignupInfoType.name,
          headerTitle: Translate.s.contact_name,
          headerSubTitle: Translate.s.enter_contact_name,
          headerLogo: Res.regIconProfile,
          pleaseHolder: Translate.s.first_name,
        ),
        SignupInfoEntity(
          title: Translate.s.label_email,
          type: SignupInfoType.email,
          keyName: 'email',
          hintColor: context.colors.black,
          headerTitle: Translate.s.email,
          headerSubTitle: Translate.s.email_verification_notice,
          headerLogo: Res.regIconMail,
          pleaseHolder: "example@email.com",
        ),
        // SignupInfoEntity(
        //     title: Translate.s.user_name,
        //     type: SignupInfoType.username,
        //     keyName: 'username',
        //     subTitle: Translate.s.add_username,
        //     hintColor: context.colors.grey),
        SignupInfoEntity(
          title: Translate.s.mobil,
          type: SignupInfoType.phone,
          keyName: 'contactNo',
          hintColor: context.colors.black,
          headerTitle: Translate.s.phone_number,
          headerSubTitle: Translate.s.enter_phone_number,
          headerLogo: Res.regIconPhone,
          pleaseHolder: Translate.s.phone_number,
        ),
      ];

  List<SignupInfoEntity> commercialInfoList(BuildContext context) => [
        SignupInfoEntity(
          title: Translate.s.commercial_registration_or_freelance_document,
          type: SignupInfoType.crNumber,
          keyName: '',
          headerTitle:
              Translate.s.commercial_registration_or_freelance_document,
          headerSubTitle: Translate.s.enter_commercial_registration_number,
          headerLogo: Res.regIconFile,
          pleaseHolder: Translate.s.commercial_or_freelance_number,
        ),
        SignupInfoEntity(
          title: Translate.s.vat,
          type: SignupInfoType.vat,
          showSwitch: true,
          keyName: '',
          isOptional: true,
          headerTitle: Translate.s.vat,
          headerSubTitle: Translate.s.enter_vat_number,
          headerLogo: Res.regIconFile,
          pleaseHolder: Translate.s.vat_number,
        ),
      ];

  /// methods
  Future<void> initData(BuildContext context) async {
    brandInfoObs.setValue(brandInfoList(context));
    userInfoObs.setValue(userInfoList(context));
    commercialInfoObs.setValue(commercialInfoList(context));
    var result = await getIt<AuthRepository>().getProfileInfo();
    result.whenOrNull(
      isSuccess: (data) {
        Map<String, dynamic> userJson = JwtDecoder.decode(data ?? '');
        userProfileModel = ProfileModel.fromJson(userJson);
        print("======userData====${userProfileModel?.toJson()}");
        setUserData(userProfileModel!);
      },
    );
  }

  void setUserData(ProfileModel model) {
    userProfileModel = model;
    commercialInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.crNumber)
        .subTitle = userProfileModel?.crNumber ?? "";

    commercialInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.vat)
        .subTitle = userProfileModel?.vatNumber ?? "";

    if (userProfileModel?.profileImage != null) {
      profileUrlObs.setValue(
          "${userProfileModel?.filePath?.pathProfilePicClient ?? ""}${userProfileModel?.profileImage ?? ""}");
    }

    brandInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.campaignName)
        .subTitle = userProfileModel?.companyName ?? "";

    brandInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.brandName)
        .subTitle = userProfileModel?.brandName ?? "";

    brandInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.link)
        .subTitle = userProfileModel?.website ?? "";

    userInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.name)
        .subTitle = userProfileModel?.firstName ?? "";

    userInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.name)
        .secondValue = userProfileModel?.lastName ?? "";

    // userInfoObs
    //     .getValue()
    //     .firstWhere((e) => e.title == Translate.s.user_name)
    //     .subTitle = "${userData.username}";
    userInfoObs
        .getValue()
        .firstWhere((e) => e.type == SignupInfoType.email)
        .subTitle = "${userProfileModel?.email}";
    if (userProfileModel?.phone != null &&
        (userProfileModel?.phone ?? "").isNotEmpty) {
      print(userProfileModel?.phone);
      countryCode = userProfileModel?.phone
          ?.substring(0, userProfileModel?.phone?.indexOf('.'));
      var selectedCountry =
          countriesObs.getValue().where((e) => e.dialCode == countryCode);
      if (selectedCountry.isNotEmpty) {
        countryCodeObs.setValue(selectedCountry.first);
        userInfoObs
            .getValue()
            .firstWhere((e) => e.type == SignupInfoType.phone)
            .subTitle = "${userProfileModel?.phone?.replaceAll(".", "")}";

        phoneController.text = userProfileModel?.phone?.split(".").last ?? "";
      }
      phone = userProfileModel?.phone?.substring(
          userProfileModel?.phone!.indexOf(".") ?? 0 + 1,
          userProfileModel?.phone!.length);
    }

    email = userProfileModel?.email;
    profileId = userProfileModel?.id;
    profileTypeId = userProfileModel?.profileType?.id;
    userInfoObs.refresh();
    brandInfoObs.refresh();
    commercialInfoObs.refresh();
    aboutUsObs.setValue(userProfileModel?.aboutUsList ?? []);
    aboutUsObs.refresh();
  }

  /// methods
  Future<void> showCountryBottomSheet(BuildContext context) async {
    var country = await showModalBottomSheet<Country>(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (ctx) => const CallingCodesBottomSheetWidget());
    countryCodeObs.setValue(country ?? countryCodeObs.getValue());
  }

  void getCountries() async {
    final uniCountryServices = UniCountryServices.instance;
    var result = await uniCountryServices.getCountriesAndCities();
    countriesObs.setValue(result);
  }

  Future<void> pickProfileImage(BuildContext context) async {
    var files = await getIt<Utilities>().getImageFile(context);
    if (files != null) {
      profileObs.setValue(files);
      profileObs.refresh();
      addProfilePhoto(context);
    }
  }

  Future<void> pickCRFile(BuildContext context) async {
    var file = await getIt<Utilities>().getImageFile(context, showFile: true);
    if (file != null) {
      crFileObs.setValue(file);
      crFileObs.refresh();
    }
  }

  void removeCRFile() {
    crFileObs.setValue(null);
    crFileObs.refresh();
  }

  Future<void> pickVATFile(BuildContext context) async {
    var file = await getIt<Utilities>().getImageFile(context, showFile: true);
    if (file != null) {
      vatFileObs.setValue(file);
      vatFileObs.refresh();
    }
  }

  void removeVATFile() {
    vatFileObs.setValue(null);
    vatFileObs.refresh();
  }

  void onPressCloseInfoPopup(BuildContext context,
      {bool popOnBack = false}) async {
    if (timerForOpt != null && timerForOpt!.isActive) {
      timerForOpt!.cancel();
      timerForOpt = null;
    }
    textEditingController.clear();
    textEditingController2.clear();
    AutoRouter.of(context).maybePop();
  }

  Future<bool> onPressBack(BuildContext context,
      {bool popOnBack = false}) async {
    // getIt<UserServicesHelper>().onBackToLogin(context);
    if (submitButtonLoadingObs.getValue() == false) {
      if (popOnBack) {
        // AutoRouter.of(context).maybePop();
        Navigator.of(context).pop();
        return true;
      } else {
        AutoRouter.of(context).push(HomePageRoute());
        return false;
      }
    } else {
      return false;
    }
  }

  void showInfoBottomSheet(BuildContext context, SignupInfoEntity infoEntity,
      {Function()? onSubmit}) {
    resetValue();
    AppBottomSheets.showScrollableBody(
      context: context,
      constraints: BoxConstraints(
          minHeight: 300.h,
          maxHeight: MediaQuery.of(context).size.height * 0.92),
      builder: (ctx) {
        return InfoBottomSheet(
            infoEntity: infoEntity, controller: this, onSubmit: onSubmit);
      },
    );
  }

  void onSubmitInfoChange(BuildContext context, SignupInfoEntity infoEntity,
      ObsValue<List<SignupInfoEntity>> obsName) {
    if (infoEntity.type == SignupInfoType.campaignName ||
        infoEntity.type == SignupInfoType.brandName ||
        infoEntity.type == SignupInfoType.link ||
        infoEntity.type == SignupInfoType.name ||
        infoEntity.type == SignupInfoType.email) {
      if (textEditingController.text.isEmpty) {
        AppSnackBar.showSimpleToast(
            msg: "${Translate.s.please_enter} ${infoEntity.title}",
            color: Colors.black);
        return;
      }

      if (infoEntity.type == SignupInfoType.link &&
          (textEditingController.text.validateCompanyLink() ?? "") != "") {
        AppSnackBar.showSimpleToast(
            msg: textEditingController.text.validateCompanyLink() ?? "",
            color: Colors.black);
        return;
      }
    }

    var list = obsName.obs.value.getValue();
    if (infoEntity.type != SignupInfoType.phone &&
        list.firstWhereOrNull((e) => e.title == infoEntity.title) != null) {
      list.firstWhere((e) => e.title == infoEntity.title).subTitle =
          textEditingController.text;
      list.firstWhere((e) => e.title == infoEntity.title).secondValue =
          textEditingController2.text;
      obsName.setValue(list);
      obsName.refresh();
    }

    onUpdateInfo(context, infoEntity);
  }

  void updateAboutUs(BuildContext context) async {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    var id = await AutoRouter.of(context)
        .push<int>(SelectAboutUsPage(aboutUsList: aboutUsObs.getValue()));
    if (id != null) {
      var list = aboutUsObs.getValue();
      list.firstWhere((e) => e.id == id).isSelected = true;
      aboutUsObs.setValue(list);
      aboutUsObs.refresh();
      SignupInfoEntity entity = SignupInfoEntity(
          title: "", keyName: 'aboutus_id', type: SignupInfoType.aboutMe);
      textEditingController.text = id.toString();
      var obsList = commercialInfoObs.getValue();
      var aboutUsValue = (lang == 'ar')
          ? list.firstWhere((e) => e.isSelected == true).description
          : list.firstWhere((e) => e.isSelected == true).title;
      obsList[2].subTitle = aboutUsValue;
      onUpdateInfo(context, entity, canPop: false);
    }
  }

  bool checkFields() {
    if (profileObs.getValue() == null && profileUrlObs.getValue().isEmpty) {
      Fluttertoast.showToast(
          msg: Translate.s.please_add_profile_photo, gravity: ToastGravity.TOP);
      return false;
    }
    if (brandInfoObs
        .getValue()
        .where((e) => e.subTitle == null || e.subTitle == "")
        .isNotEmpty) {
      Fluttertoast.showToast(
          msg: Translate.s.please_complete_info, gravity: ToastGravity.TOP);
      return false;
    }
    if (userInfoObs
        .getValue()
        .where((e) =>
            e.subTitle == null ||
            e.subTitle == "" ||
            e.subTitle == Translate.s.add_username)
        .isNotEmpty) {
      Fluttertoast.showToast(
          msg: Translate.s.fill_names, gravity: ToastGravity.TOP);
      return false;
    }

    if (userProfileModel?.crNumber == "" ||
        userProfileModel?.crNumber == null) {
      Fluttertoast.showToast(
          msg: "${Translate.s.please_enter} ${Translate.s.cr_number}",
          gravity: ToastGravity.TOP);
      return false;
    }

    return true;
  }

  /// api methods
  void onPressNextOrSkip(BuildContext context, {bool isSkip = false}) async {
    if (submitButtonLoadingObs.getValue() == false) {
      if (!checkFields()) return;
      FocusScope.of(context).requestFocus(FocusNode());

      SignupInfoEntity model = SignupInfoEntity(
          title: "",
          keyName: 'verification',
          type: SignupInfoType.submitForVerify,
          headerTitle: "",
          headerSubTitle: "",
          secondValue: "2",
          headerLogo: "",
          pleaseHolder: "");

      var params = getProfileParamsList(context, model);
      activeButtonObs.setValue(true);
      var result = await getIt<AuthRepository>().signUpUpdateProfile(params);
      result.whenOrNull(isSuccess: (value) async {
        await initData(context);

        textEditingController.clear();
        textEditingController2.clear();

        _profileRequester.request().then((value) async {
          AutoRouter.of(context).push(HomePageRoute());
          activeButtonObs.setValue(false);
        });
      }, isError: (error) {
        activeButtonObs.setValue(false);
      });
    }
  }

  void onUpdateInfo(BuildContext context, SignupInfoEntity entity,
      {bool canPop = true}) async {
    FocusScope.of(context).requestFocus(FocusNode());

    switch (entity.type) {
      case SignupInfoType.campaignName:
        // Handle campaignName
        updateInfo(context, entity, canPop: canPop);
        break;
      case SignupInfoType.brandName:
        // Handle brandName
        updateInfo(context, entity, canPop: canPop);
        break;
      case SignupInfoType.link:
        // Handle link
        updateInfo(context, entity, canPop: canPop);
        break;
      case SignupInfoType.name:
        // Handle name
        updateInfo(context, entity, canPop: canPop);
        break;
      case SignupInfoType.email:
        // Handle email
        onVerifyEmail(context, entity);
        break;
      case SignupInfoType.phone:
        // Handle phone
        sendOtpPhone(context, entity);
        break;
      case SignupInfoType.crNumber:
        // Handle crNumber
        onAddCR(context, entity);
        break;
      case SignupInfoType.vat:
        // Handle vat
        break;
      case SignupInfoType.username:
        // Handle username
        break;
      case SignupInfoType.aboutMe:
        // Handle aboutMe
        break;
      case SignupInfoType.submitForVerify:
        // Handle submitForVerify
        break;
      case SignupInfoType.verifyPhoneNumber:
        // Handle aboutMe
        onVerifyPhone(context, entity, canPop: canPop);
        break;
    }
  }

  Future<void> updateInfo(BuildContext context, SignupInfoEntity entity,
      {bool canPop = true}) async {
    var params = getProfileParamsList(context, entity);
    loadingObs.setValue(true);
    var result = await getIt<AuthRepository>().signUpUpdateProfile(params);
    result.whenOrNull(isSuccess: (value) async {
      await initData(context);
      if (canPop) Navigator.of(context).pop();
      textEditingController.clear();
      textEditingController2.clear();
      // await _profileRequester.request().then((data) async {
      //   loadingObs.setValue(false);

      //   Map<String, dynamic> userJson = JwtDecoder.decode(value ?? "");
      //   userProfileModel = ProfileModel.fromJson(userJson);
      //   log("=====>>>>>>>>>>>>>> after update company name ${value ?? ""}");
      //   setUserData(userProfileModel!);
      //   // context.read<UserCubit>().onUpdateUserData(userProfileModel);

      //   // Map<String, dynamic> profileJson = JwtDecoder.decode(_profileRequester.data ?? '');
      //   // userProfileModel?.username = profileJson['username'];
      //   // context.read<UserCubit>().onUpdateUserData(userProfileModel);
      //   // var profileData = ProfileModel.fromJson(profileJson);
      //   // context.read<ProfileCubit>().onUpdateProfileData(profileData);
      //   // updateDataFromUserCubit(context);
      //   textEditingController.clear();
      //   textEditingController2.clear();
      // });
    }, isError: (error) {
      loadingObs.setValue(false);
    });
  }

  void onAddCR(BuildContext context, SignupInfoEntity infoEntity) async {
    if (textEditingController.text.isEmpty) {
      AppSnackBar.showSimpleToast(
        msg: "${Translate.s.please_enter} ${infoEntity.title}",
        color: Colors.black,
      );
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());
    var params = _crParams();
    loadingObs.setValue(true);
    var result = await getIt<AuthRepository>().addCRNumber(params);
    loadingObs.setValue(false);
    result.whenOrNull(
      isSuccess: (data) async {
        initData(context);
        Navigator.pop(context);

        // _profileRequester.request().then((value) async {
        //   Map<String, dynamic> profileJson =
        //       JwtDecoder.decode(_profileRequester.data ?? '');
        //   var profileData = ProfileModel.fromJson(profileJson);
        //   context.read<ProfileCubit>().onUpdateProfileData(profileData);

        // });
      },
      isError: (error) {
        loadingObs.setValue(false);
        Navigator.pop(context);
      },
    );
  }

  void onAddVAT(BuildContext context, SignupInfoEntity infoEntity) async {
    if (textEditingController.text.isEmpty) {
      AppSnackBar.showSimpleToast(
        msg: "${Translate.s.please_enter} ${Translate.s.vatNumber}",
        color: Colors.black,
      );
      return;
    }
    FocusScope.of(context).requestFocus(FocusNode());
    var params = _vatParams();
    loadingObs.setValue(true);
    var result = await getIt<AuthRepository>().addVATNumber(params);
    loadingObs.setValue(false);
    result.whenOrNull(
      isSuccess: (data) async {
        _profileRequester.request().then((value) async {
          commercialInfoObs
              .getValue()
              .firstWhere((e) => e.title == infoEntity.title)
              .switchValue = true;
          commercialInfoObs
              .getValue()
              .firstWhere((e) => e.title == infoEntity.title)
              .subTitle = textEditingController.text;
          commercialInfoObs.refresh();
          AutoRouter.of(context).pop();
          vatFileObs.setValue(null);
          // SignupInfoEntity entity = SignupInfoEntity(title: "", keyName: 'is_verified', type: SignupInfoType.aboutMe);
          // textEditingController.text = "1";
          // onUpdateInfo(context, entity, canPop: false);
        });
      },
    );
  }

  void addProfilePhoto(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    var params = _addProfilePicParams();
    var result = await getIt<AuthRepository>().updateProfileImage(params);
    result.whenOrNull(
      isSuccess: (data) async {
        await _profileRequester.request().then((value) async {
          Map<String, dynamic> profileJson =
              JwtDecoder.decode(_profileRequester.data ?? '');
          var profileData = ProfileModel.fromJson(profileJson);
          context.read<ProfileCubit>().onUpdateProfileData(profileData);
          var userCubit = context.watch<UserCubit>().state.model;
          userCubit?.filePath = profileData.filePath;
          context.read<UserCubit>().onUpdateUserData(userCubit);
        });
      },
    );
  }

  void onVerifyEmail(BuildContext context, SignupInfoEntity entity) async {
    // updateInfo(context, entity);
    // var params = _verifyParams();
    //
    // loadingObs.setValue(true);
    // await updateInfo(context, entity);
    // var result = await getIt<AccountRepository>().verifyEmail(params);
    // loadingObs.setValue(false);
    // result.whenOrNull(
    //   isSuccess: (data) {
    //     AppSnackBar.showSimpleToast(
    //       msg: Translate.s.verify_email_send,
    //       type: ToastType.success,
    //       gravity: ToastGravity.BOTTOM,
    //     );
    //   },
    // );
  }

  void sendOtpPhone(BuildContext context, SignupInfoEntity entity) async {
    var params = _otpPhoneParams();
    if (!phoneController.text.reFormatToNormal
        .validateOnCode(countryCodeObs.getValue().dialCode)) {
      AppSnackBar.showSimpleToast(
          msg: params.phone?.validatePhone() ?? "", color: Colors.black);
      return;
    }
    loadingObs.setValue(true);
    var result = await getIt.get<AuthRepository>().sendOtpPhone(params);
    loadingObs.setValue(false);
    result.whenOrNull(isSuccess: (data) async {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.otp_send, type: ToastType.success);
      //   // onSubmitInfoChange(context, entity, userInfoObs);

      SignupInfoEntity model = SignupInfoEntity(
          title: Translate.s.phone_verification,
          keyName: 'phone_verification',
          type: SignupInfoType.verifyPhoneNumber,
          headerTitle: Translate.s.phone_verification,
          headerSubTitle: Translate.s.enter_phone_verification_code,
          secondValue: params.phone ?? "",
          headerLogo: Res.regIconMessage,
          pleaseHolder: Translate.s.company_name_as_in_record);
      phoneNumber = params.phone ?? "";
      runTimer();
      await AppBottomSheets.showScrollableBody(
        context: context,
        constraints: BoxConstraints(
            minHeight: 300.h,
            maxHeight: MediaQuery.of(context).size.height * 0.92),
        builder: (ctx) {
          return InfoBottomSheet(
            infoEntity: model,
            controller: this,
            onSubmit: () => onSubmitInfoChange(context, model, userInfoObs),
          );
        },
      );
    });
  }

  /// params
  UpdateProfileNameParams _updateParams(SignupInfoEntity entity) {
    return UpdateProfileNameParams(
      keyName: entity.keyName,
      value: textEditingController.text,
      keyName2: entity.keyName2,
      secondValue: textEditingController2.text,
      contactNo: phone,
      mobilePrefix: countryCodeObs.getValue().dialCode,
      email: email,
    );
  }

  ProfileParamsList getProfileParamsList(
      BuildContext context, SignupInfoEntity entity) {
    var currentLang =
        context.read<DeviceCubit>().state.model.locale.languageCode;
    final model = userProfileModel;
    var countryCode = model?.phone?.split(".").first;
    var phoneNumber = model?.phone?.split(".").last;
    String companyName = model?.companyName ?? "";
    String brandName = model?.brandName ?? "";
    String firstName = model?.firstName ?? "";
    String lastName = model?.lastName ?? "";
    String email = model?.email ?? "";
    String contactNo = phoneNumber == 'null' ? "" : phoneNumber ?? '';
    String mobilePrefix = countryCode == 'null' ? "" : countryCode ?? "";
    String userName = model?.username ?? "";
    String website = model?.website ?? "";
    int isVerified = model?.isVerified ?? 0;
    String language = currentLang == "ar" ? "en" : "ar";

    switch (entity.type) {
      case SignupInfoType.campaignName:
        // Handle campaignName
        companyName = textEditingController.text.trim();
        break;
      case SignupInfoType.brandName:
        // Handle brandName
        brandName = textEditingController.text.trim();
        break;
      case SignupInfoType.link:
        // Handle link
        website = textEditingController.text.trim();
        break;
      case SignupInfoType.name:
        // Handle name
        firstName = textEditingController.text.trim();
        lastName = textEditingController2.text.trim();
        break;
      case SignupInfoType.email:
        // Handle email
        email = textEditingController.text.trim();
        break;
      case SignupInfoType.phone:
        // Handle phone
        break;
      case SignupInfoType.crNumber:
        // Handle crNumber
        break;
      case SignupInfoType.vat:
        // Handle vat
        break;
      case SignupInfoType.username:
        // Handle username
        break;
      case SignupInfoType.aboutMe:
        // Handle aboutMe
        break;
      case SignupInfoType.verifyPhoneNumber:
        // Handle aboutMe
        mobilePrefix = countryCodeObs.getValue().dialCode;
        contactNo = phoneController.text.reFormatToNormal;
        break;
      case SignupInfoType.submitForVerify:
        // Handle submitForVerify
        isVerified = int.parse(entity.secondValue ?? "0");
        break;
    }

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
        website: website,
        isVerified: isVerified);
  }

  AddCrParams _crParams() {
    return AddCrParams(
      crNumber: textEditingController.text,
      crFile: crFileObs.getValue(),
    );
  }

  AddVATParams _vatParams() {
    return AddVATParams(
      vatNumber: textEditingController.text,
      vatFile: vatFileObs.getValue(),
    );
  }

  ProfileVerificationParams _profileVerifyParams(int type) {
    return ProfileVerificationParams(type: type);
  }

  UpdateProfileImageParams _addProfilePicParams() {
    return UpdateProfileImageParams(
      profileId: profileId ?? 0,
      profileTypeId: profileTypeId ?? 0,
      profile: profileObs.getValue(),
    );
  }

  // VerifyParams _verifyParams() {
  //   return VerifyParams(email: textEditingController.text);
  // }

  SendOtpPhoneParams _otpPhoneParams() {
    return SendOtpPhoneParams(
      phone:
          "${countryCodeObs.getValue().dialCode}.${PhoneHelper.handlePhone(phoneController.text.reFormatToNormal)}",
    );
  }

  void resetValue() {
    textEditingController.text = "";
    textEditingController2.text = "";
    loadingObs.setValue(false);
  }

  void isSubmitButtonEnabled(SignupInfoEntity entity) {}

  void onComplete(String value) {
    activeButtonObs.setValue(value.length == 4);
  }

  void onVerifyPhone(BuildContext context, SignupInfoEntity entity,
      {bool canPop = true}) async {
    if (pinOTPFieldController.text.trim().length != 4) {
      AppSnackBar.showSimpleToast(
        msg: "${Translate.s.please_enter} otp",
        color: Colors.black,
      );
      return;
    }

    var params = _verifyPhoneParams();
    loadingObs.setValue(true);
    var result = await getIt<AuthRepository>().verifyCodeByPhone(params);

    result.whenOrNull(
      isSuccess: (data) {
        verifyPhone(context, entity, canPop: canPop);
      },
    );
  }

  void verifyPhone(BuildContext context, SignupInfoEntity entity,
      {bool canPop = true}) async {
    loadingObs.setValue(true);
    var params = ProfileVerificationParams(type: 2);
    var result = await getIt<AuthRepository>().profileVerification(params);
    result.whenOrNull(
      isSuccess: (data) async {
        AppSnackBar.showSimpleToast(
          msg: Translate.s.proof_updated,
          type: ToastType.success,
        );
        await updateInfo(context, entity, canPop: canPop);
        loadingObs.setValue(false);
        Navigator.of(context).pop();
      },
    );
  }

  VerifyPhoneParams _verifyPhoneParams() {
    return VerifyPhoneParams(
      binCode: pinOTPFieldController.text,
      emailOrPhone: phoneNumber,
    );
  }

  Future<void> onPressReSend() async {
    var params = _otpPhoneParams();
    var result = await getIt.get<AuthRepository>().sendOtpPhone(params);
    result.whenOrNull(isSuccess: (data) {
      AppSnackBar.showSimpleToast(
          msg: Translate.s.otp_send, type: ToastType.success);
    });
    runTimer();
  }

  Future<void> runTimer() async {
    secondsObs.setValue(60);
    showReSendObs.setValue(true);
    if (timerForOpt != null && timerForOpt!.isActive) {
      timerForOpt!.cancel();
      timerForOpt = null;
    }
    timerForOpt = Timer.periodic(const Duration(seconds: 1), (timer) async {
      print(secondsObs.getValue());
      var newValue = secondsObs.getValue() - 1;
      secondsObs.setValue(newValue);
      if (newValue <= 0) {
        timerForOpt?.cancel();
        showReSendObs.setValue(false);
        showReSendObs.refresh();
      }
    });
  }
}
