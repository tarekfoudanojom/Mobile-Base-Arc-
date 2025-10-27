part of 'sign_in_bottom_imports.dart';

class SignInBottomSheet extends StatefulWidget {
  const SignInBottomSheet({super.key});

  @override
  State<SignInBottomSheet> createState() => _SignInBottomSheetState();
}

class _SignInBottomSheetState extends State<SignInBottomSheet> {
  final SignInBottomSheetController controller = SignInBottomSheetController();

  var websiteUrl = FlutterEnvironmentConfigReader.instance.getWebsiteUrl();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.93,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: BoxDecoration(
        color: context.colors.background1,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 45,
                height: 6,
                decoration: BoxDecoration(
                  color: context.colors.mistGray2,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            Gaps.vGap8,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    Translate.s.cancel,
                    style: AppTextStyle.s16_w600(
                        color: context.colors.appColorBlue),
                  ),
                ),
              ],
            ),
            Gaps.vGap20,
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 2),
            //   child: Text(
            //     Translate.s.brands_login,
            //     style: AppTextStyle.s20_w700(color: context.colors.textPrimary),
            //   ),
            // ),
            // Container(
            //     // width: MediaQuery.of(context).size.width - 145.w,
            //     alignment: Alignment.center,
            //     child: Image.asset(Res.security, width: 70)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                Translate.s.sign_up_with_phone_number,
                style: AppTextStyle.s24_w600(color: context.colors.black),
              ),
            ),
            Gaps.vGap8,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                Translate.s.sign_in_or_create_account_now,
                style: AppTextStyle.s14_w400(color: context.colors.blackOpacity)
                    .copyWith(height: 1.2),
              ),
            ),
            Gaps.vGap32,

            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _prefixIcon(context),
                  Gaps.hGap16,
                  Expanded(
                    child: ObsValueConsumer(
                      observable: controller.isErrorNumber,
                      builder: (context, value) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GenericTextField(
                            controller: controller.phoneController,
                            onChange: (value) => controller.enableButton(),
                            fieldTypes: FieldTypes.normal,
                            fillColor: context.colors.white,
                            action: TextInputAction.next,
                            hintColor: context.colors.ashGray2,
                            textAlign: TextAlign.left,
                            hint: Translate.s.phone_number,
                            hintTextStyle: AppTextStyle.s16_w500(
                                    color: context.colors.hintGaryColor)
                                .copyWith(height: 1.2),
                            inputStyle: AppTextStyle.s16_w500(
                                color: context.colors.black),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 18),
                            textDirection: TextDirection.ltr,
                            margin: EdgeInsets.zero,
                            type: TextInputType.phone,
                            validate: (val) => val!.noValidate(),
                            // prefixIcon: ,
                            radius: const BorderRadius.all(Radius.circular(16)),
                            enableBorderColor: value
                                ? context.colors.red
                                : context.colors.mistyGray,
                            // focusBorderColor: context.colors.appColorBlue,
                            inputFormatters: [PhoneNumberInputFormatter()],
                          ),
                          Visibility(
                            visible: controller.isErrorNumber.getValue(),
                            child: Column(
                              children: [
                                Gaps.vGap10,
                                Text(
                                  Translate.s.please_enter_valid_phone_number,
                                  textAlign: TextAlign.end,
                                  style: AppTextStyle.s14_w400(
                                      color: context.colors.red),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap40,

            ObsValueConsumer(
              observable: controller.loadingObs,
              builder: (context, value) => LoadingButton(
                title: Translate.s.keep_going,
                onTap: () => controller.showVerifyYourAccountWidget(context),
                color: context.colors.appColorBlue,
                textColor: context.colors.white,
                btnKey: controller.phoneVerifyBtnKey,
                borderRadius: 16,
                margin: EdgeInsets.zero,
                height: 56,
                titleTextStyle: AppTextStyle.s16_w700(
                  color: context.colors.white,
                ),
                child: value
                    ? CupertinoActivityIndicator(color: context.colors.white)
                    : null,
              ),
            ),
            Gaps.vGap16,

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              alignment: Alignment.center,
              child: Text(
                Translate.s.by_clicking_continue_you_agree_to,
                style: AppTextStyle.s14_w400(color: context.colors.blackOpacity)
                    .copyWith(height: 1.2),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    getIt<Utilities>()
                        .launchUrlLauncher(url: "${websiteUrl}terms");
                  },
                  hoverColor: Colors.transparent,
                  child: Text(
                    Translate.s.terms_and_conditions_and_privacy_policy,
                    style: AppTextStyle.s14_w400(
                            color: context.colors.appColorBlue)
                        .copyWith(height: 1.2),
                  ),
                )),
            // _buildButton(
            //     context,
            //     iconPath: Res.loginIcon,
            //     Translate.s.login,
            //     onTap: () => _routeToLoginTab(context),
            //     rotate: true),
            // _buildButton(
            //     context,
            //     // Translate.s.join_star,
            //     Translate.s.create_new_account,
            //     iconPath: Res.newUserIcon,
            //     onTap: () => _routeToSignUpTab(context)),
            Gaps.vGap35,
            Gaps.vGap77,
            Container(
              padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
              decoration: BoxDecoration(
                // color: context.colors.cloudGray,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [context.colors.white, context.colors.white],
                ),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                border: Border.all(
                    color: context.colors.mistyGray.withValues(alpha: 0.25)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                Res.nojomIcon,
                                height: 32,
                                width: 32,
                              ),
                            ),
                            Gaps.vGap8,
                            Text(
                              Translate.s.are_you_influencer,
                              style: AppTextStyle.s22_w700(
                                  color: context.colors.textPrimary),
                            ),
                            Gaps.vGap4,
                            Text(
                              Translate.s.download_influencer_app_now,
                              style: AppTextStyle.s16_w500(
                                  color: context.colors.textPrimary),
                            ),
                            Gaps.vGap33,
                          ],
                        ),
                      ),
                      Gaps.hGap10,
                      Image.asset(
                        Res.influencerOverViewImage,
                        width: 120,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [context.colors.offWhite, context.colors.white],
                ),
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(25)),
                border: Border(
                  bottom: _buildBorderSide(context),
                  right: _buildBorderSide(context),
                  left: _buildBorderSide(context),
                ),
              ),
              child: AppTextButton.maxCustom(
                text: "",
                maxHeight: 40,
                onPressed: () => _downloadInfluencerApp(),
                bgColor: context.colors.iceBlue,
                borderColor: context.colors.iceBlue,
                customLapel: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgIconWrapper(
                      size: 20,
                      iconPath: Res.downloadIcon,
                      color: context.colors.appColorBlue,
                    ),
                    Gaps.hGap8,
                    Text(
                      Translate.s.download_influencer_app,
                      style: AppTextStyle.s16_w700(
                          color: context.colors.appColorBlue),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title,
      {required Function() onTap, required String iconPath, bool? rotate}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: Dimens.paddingBottom16PX,
        padding: Dimens.paddingH16V23PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: context.colors.mistyGray),
        ),
        child: Row(
          children: [
            (rotate ?? false)
                ? Transform.rotate(
                    angle: math.pi,
                    child: SvgIconWrapper(
                      size: 24,
                      iconPath: iconPath,
                      color: CupertinoColors.systemGrey,
                    ),
                  )
                : SvgIconWrapper(
                    size: 24,
                    iconPath: iconPath,
                    color: CupertinoColors.systemGrey,
                  ),
            Gaps.hGap12,
            Expanded(
              child: Text(
                title,
                style: AppTextStyle.s16_w400(color: context.colors.dotColor),
              ),
            ),
            // SvgIconWrapper(size: 20, iconPath:Res.arrowIcon ),
            Icon(Icons.arrow_forward_ios, color: context.colors.grey, size: 15),
          ],
        ),
      ),
    );
  }

  BorderSide _buildBorderSide(BuildContext context) =>
      BorderSide(color: context.colors.mistyGray.withOpacity(0.25));

  void _routeToSignUpTab(BuildContext context) {
    Navigator.pop(context);
    AutoRouter.of(context).push(AuthPageRoute(initialTab: true));
  }

  void _routeToLoginTab(BuildContext context) {
    Navigator.pop(context);
    AutoRouter.of(context).push(AuthPageRoute(initialTab: false));
  }

  Widget clearButton(BuildContext context, TextEditingController cont) {
    return GestureDetector(
      onTap: () => cont.clear(),
      child: const Icon(Icons.cancel,
          size: 17, color: CupertinoColors.systemGrey4),
    );
  }

  Widget _prefixIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.showCountryBottomSheet(context),
      child: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(14, 16, 7, 16),
        decoration: BoxDecoration(
          color: Colors.white, // Background color (optional)
          borderRadius: BorderRadius.circular(16), // Set 12 corner radius
          border: Border.all(
            color: context.colors.mistyGray, // Border color
            width: 1, // Border width (optional)
          ),
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ObsValueConsumer(
              observable: controller.countryCodeObs,
              builder: (context, value) {
                print(value.flag);
                return Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.flag,
                      style: AppTextStyle.s24_w500(
                          color: context.colors.textPrimary),
                    ),
                    Gaps.hGap8,
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        value.dialCode,
                        style: AppTextStyle.s16_w400(
                            color: context.colors.textPrimary),
                      ),
                    ),
                    Gaps.hGap4,
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 24,
                      color: context.colors.ashGray2,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _downloadInfluencerApp() {
    if (Platform.isIOS) {
      getIt<Utilities>().launchUrlLauncher(
          url:
              "https://apps.apple.com/us/app/nojom-app-for-stars/id6463190220");
    } else {
      getIt<Utilities>().launchUrlLauncher(
          url:
              "https://play.google.com/store/apps/details?id=live.nojom.stars");
    }
  }
}
