part of 'more_page_imports.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> with AutomaticKeepAliveClientMixin {
  late MorePageController controller;

  @override
  void initState() {
    controller = MorePageController(context);
    controller.getAppVersion();
    MemberClientService.instance.loadMemberClients();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final device = context.watch<DeviceCubit>().state.model;
    var websiteUrl = FlutterEnvironmentConfigReader.instance.getWebsiteUrl();
    bool auth = context.read<DeviceCubit>().state.model.auth;
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: ObsValueConsumer(
          observable: controller.absorbObs,
          builder: (context, value) {
            return AbsorbPointer(
              absorbing: value,
              child: CustomScrollView(
                cacheExtent: ApplicationConstants.cacheItemsInList,
                slivers: [
                  CupertinoSliverAppBar(
                    largeTitle: BaseBlocBuilder<List<MemberClientDelegationModel>>(
                        bloc: MemberClientService.instance.clientsBloc,
                      onSuccessWidget: (clients) {
                        return _buildLargeTitle();
                      },
                      onLoadingWidget: (_) => _buildLargeTitle(),
                      onFailedWidget: (context, error, callback) => _buildLargeTitle(),
                    ),
                    middle: _buildMediumTitle(),
                    automaticallyImplyLeading: false,
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ProfileDataWidget(),
                          Gaps.vGap20,
                          AccountSettingWidget(controller: controller),
                          Gaps.vGap20,
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: context.colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                if (auth)
                                  Stack(
                                    children: [
                                      MoreItemWidget(
                                        title: Translate.s.language,
                                        // itemIcon:  Padding(
                                        //   padding: const EdgeInsetsDirectional.only(end:8,start: 2.8),
                                        //   child: Icon(
                                        //       CupertinoIcons.globe,
                                        //      color: context.colors.black.withValues(alpha: .5),
                                        //   ),
                                        // ),
                                        iconPath: Res.languageMoreIcon,
                                        onTap: () => controller.changeLanguage(context),
                                        showDivider: true,
                                        showEndWidget: true,
                                        endTitle: device.locale.languageCode ==
                                                ApplicationConstants.langAR
                                            ? "العربية"
                                            : "English",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: CustomButtonLoadingWidget(
                                          loadingObs: controller.changeLangLoadingObs,
                                          alignment: MainAxisAlignment.center,
                                          child: Gaps.empty,
                                        ),
                                      )
                                    ],
                                  ),
                                if (!RemoteConfigHelper.instance.showWorkAround)
                                  MoreItemWidget(
                                    iconPath: Res.shareApp,
                                    title: Translate.s.share_app,
                                    showDivider: true,
                                    onTap: () => controller.shareApp(),
                                  ),
                                if (auth)
                                  MoreItemWidget(
                                    iconPath: Res.starRate,
                                    title: Translate.s.rate_app,
                                    onTap: () => controller.rateApp(),
                                    isLast: true,
                                    bottomPadding: const EdgeInsets.only(top: 7, bottom: 4),
                                  ),
                                if (!auth)
                                  MoreItemWidget(
                                    iconPath: Res.contact,
                                    title: Translate.s.contact_use,
                                    showDivider: true,
                                    onTap: () => getIt<Utilities>()
                                        .launchUrlLauncher(url: "${websiteUrl}contact-us"),
                                  ),
                                if (!auth)
                                  MoreItemWidget(
                                    iconPath: Res.termsConditions,
                                    title: Translate.s.termsAndConditions,
                                    onTap: () => getIt<Utilities>()
                                        .launchUrlLauncher(url: "${websiteUrl}terms"),
                                    isLast: true,
                                    bottomPadding: const EdgeInsets.only(top: 7, bottom: 4),
                                  ),
                              ],
                            ),
                          ),
                          Gaps.vGap20,
                          if (auth)
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: context.colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  MoreItemWidget(
                                    iconPath: Res.contact,
                                    title: Translate.s.contact_use,
                                    showDivider: true,
                                    onTap: () => getIt<Utilities>()
                                        .launchUrlLauncher(url: "${websiteUrl}contact-us"),
                                  ),
                                  MoreItemWidget(
                                    iconPath: Res.termsConditions,
                                    title: Translate.s.termsAndConditions,
                                    showDivider: true,
                                    onTap: () => getIt<Utilities>()
                                        .launchUrlLauncher(url: "${websiteUrl}terms"),
                                  ),
                                  MoreItemWidget(
                                    iconPath: Res.privacy,
                                    title: Translate.s.privacy_policy,
                                    showDivider: true,
                                    onTap: () => getIt<Utilities>().launchUrlLauncher(
                                      url: "${websiteUrl}privacy-policy",
                                      isApp: false,
                                    ),
                                  ),
                                  // MoreItemWidget(
                                  //   iconPath: Res.faqIcon,
                                  //   title: Translate.s.faqs,
                                  //   showDivider: true,
                                  //   onTap: () =>
                                  //       getIt<Utilities>().launchUrlLauncher(
                                  //     url: "$websiteUrl%23faq",
                                  //     isApp: false,
                                  //   ),
                                  // ),
                                  MoreItemWidget(
                                    iconPath: Res.settings,
                                    title: Translate.s.settings,
                                    onTap: () =>
                                        AutoRouter.of(context).push(const SettingsPageRoute()),
                                    isLast: true,
                                    bottomPadding: const EdgeInsets.only(top: 4, bottom: 4),
                                  ),
                                ],
                              ),
                            ),
                          SignOutWidget(showSignOut: auth, controller: controller),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Gaps.vGap16, // buffer
                  ),
                ],
              ),
            );
          }),
    );
  }

  Widget _buildLargeTitle(){
    return BaseBlocBuilder<List<MemberClientDelegationModel>>(
      bloc: MemberClientService.instance.clientsBloc,
      onSuccessWidget: (clients) {
        return _buildMemberView(LargeTitleWidget(title: MemberClientService.instance.getSelectedClientName()));
      },
      onLoadingWidget: (_) => const TextShimmer(lineWidthPercent: .5),
      onFailedWidget: (context, error, callback) => _buildMemberView(LargeTitleWidget(title: MemberClientService.instance.getSelectedClientName())),
    );
  }

  Widget _buildMediumTitle(){
    return BaseBlocBuilder<List<MemberClientDelegationModel>>(
      bloc: MemberClientService.instance.clientsBloc,
      onSuccessWidget: (clients) {
        return _buildMemberView(DefaultTextStyle(
          style: AppTextStyle.s18_w600(color: context.colors.black),
          child: Text(
            MemberClientService.instance.getSelectedClientName(),
          ),
        ));
      },
      onLoadingWidget: (_) => const TextShimmer(lineWidthPercent: .5),
      onFailedWidget: (context, error, callback) => _buildMemberView(DefaultTextStyle(
        style: AppTextStyle.s18_w600(color: context.colors.black),
        child: Text(
          MemberClientService.instance.getSelectedClientName(),
        ),
      )),
    );
  }

  Widget _buildMemberView(Widget titleWidget){
    return InkWell(
      onTap: () {
        if (MemberClientService.instance.shouldShowClientSelection()) {
          AppBottomSheets.showMemberClientsBottomSheet(
            context: context,
            onAccountSelected: (client) {
              MemberClientService.instance.loginAs(client.id);
            },
          );
        }
      },
      child: Row(
        children: [
          Flexible(child: titleWidget),
          Gaps.hGap10,
          if (MemberClientService.instance.shouldShowClientSelection())
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 30,
              color: context.colors.black,
            ),
        ],
      ),
    );
  }



  @override
  bool get wantKeepAlive => true;
}
