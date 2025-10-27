part of 'home_imports.dart';

@RoutePage(name: "HomePageRoute")
class Home extends StatefulWidget {
  final int index;
  final String? initialChannelId;

  const Home({super.key, this.index = 0, this.initialChannelId});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeController controller = HomeController();
  final updater = ShorebirdUpdater();

  @override
  void didChangeDependencies() {
    Future.microtask(() {
      controller.localImagesCache.cacheImages(context);
    });
    if (context.read<DeviceCubit>().state.model.auth) {
      Future.wait([
        context.read<ServiceFilterCubit>().callFilterTags(),
        context.read<ServiceFilterCubit>().getFilterCategories(),
      ]);
    }
    AppTrackingTransparency.requestTrackingAuthorization();
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    context.read<DeviceCubit>().updateWhatsAppMode(true);
    controller.initBottomNavigation(this, widget.index);
    AppLinkHelper.instance.handleAppLinks();
    if (FlutterEnvironmentConfigReader.instance.getAppEnvName() == AppEnvType.prod.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ForceUpdateController.checkVersion(context);
      });
    }

    controller.getProfileInfo(context);
    controller.getStreamChatToken(widget.initialChannelId, this);
    _checkForUpdates();
    
    // Check and show download Nojom dialog if needed
    WidgetsBinding.instance.addPostFrameCallback((_) {
      RemoteConfigHelper.instance.checkAndShowDownloadDialog();
    });
    
    super.initState();
  }

  Future<void> _checkForUpdates() async {
    // Check whether a new update is available.
    final status = await updater.checkForUpdate();

    if (status == UpdateStatus.outdated) {
      try {
        // Perform the update
        if (FlutterEnvironmentConfigReader.instance.getAppEnvName() != AppEnvType.prod.value) {
          AppSnackBar.showSuccessSnackBar(
            "A new update is available. Please update the app.",
          );
        }
        await updater.update();
      } on UpdateException catch (_) {
        // Handle any errors that occur while updating.
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, result) => controller.onPop(context),
      child: ObsValueConsumer(
          observable: controller.bottomNavObs,
          builder: (context, value) {
            return BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                return CupertinoTheme(
                  data: _buildCupertinoThemeData(context),
                  child: CupertinoTabScaffold(
                    resizeToAvoidBottomInset: false,
                    controller: controller.tabController,
                    backgroundColor: context.colors.background1,
                    tabBuilder: (_, index) {
                      return CupertinoTabView(
                        key: Key("tab_$index${state.model?.id ?? ""}"),
                        builder: (context) {
                          return controller.pages()[index];
                        },
                      );
                    },
                    tabBar: CupertinoTabBar(
                      backgroundColor: value == 1 ? context.colors.white : context.colors.background1,
                      activeColor: context.colors.blue,
                      inactiveColor: context.colors.grey,
                      currentIndex: widget.index,
                      items: controller.tabs(context).map((tab) {
                        return BottomNavigationBarItem(
                          icon: _buildStreamBuilder(
                            context: context,
                            icon: SvgPicture.asset(tab.inActiveIcon!),
                            isChat: tab.isChat,
                          ),
                          activeIcon: _buildStreamBuilder(
                            context: context,
                            icon: SvgPicture.asset(
                              tab.activeIcon!,
                              colorFilter: ColorFilter.mode(
                                  context.colors.blue, BlendMode.srcIn),
                            ),
                            isChat: tab.isChat,
                          ),
                          label: tab.title,
                        );
                      }).toList(),
                      onTap: (index) => controller.animateTabsPages(index, context),
                    ),
                  ),
                );
              }
            );
          }),
    );
  }

  StreamBuilder<int> _buildStreamBuilder(
      {required BuildContext context,
        required Widget icon,
        required bool isChat}) {
    return StreamBuilder<int>(
        stream: StreamChat.of(context).client.state.totalUnreadCountStream,
        builder: (context, snapshot) {
          final unreadCount = snapshot.data ?? 0;
          return SizedBox(
            width: 30,
            height: 30,
            child: Stack(
              alignment: Alignment.center,
              children: [
                icon,
                if (isChat && unreadCount > 0)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: context.colors.red,
                      child: Text(
                        unreadCount.toString(),
                        style:
                        AppTextStyle.s10_w600(color: context.colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          );
        });
  }

  CupertinoThemeData _buildCupertinoThemeData(BuildContext context) {
    return CupertinoThemeData(
      barBackgroundColor: context.colors.background1,
      scaffoldBackgroundColor: context.colors.background1,
      textTheme: CupertinoTextThemeData(
        tabLabelTextStyle: _getTextStyle(context),
      ),
    );
  }

  TextStyle _getTextStyle(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    final isBoldTextEnabled =
        WidgetsBinding.instance.platformDispatcher.accessibilityFeatures.boldText;
    if (lang == ApplicationConstants.langAR && isBoldTextEnabled) {
      return AppTextStyle.s11_w600(
        color: context.colors.textCupertinoSystemGreyColor,
      );
    } else if (lang == ApplicationConstants.langEN && isBoldTextEnabled) {
      return AppTextStyle.s11_w700(
        color: CupertinoColors.systemGrey,
      );
    }
    return AppTextStyle.s10_w600(
      color: CupertinoColors.systemGrey,
    );
  }

  @override
  void dispose() {
    try {
      getIt<GlobalContext>().context().read<DeviceCubit>().updateWhatsAppMode(false);
    } catch (e) {
      // Context may be deactivated during disposal, ignore the error
    }
    super.dispose();
  }
}
