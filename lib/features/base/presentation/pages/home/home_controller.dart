part of 'home_imports.dart';

class HomeController {
  late CupertinoTabController tabController;
  final ObsValue<int> bottomNavObs = ObsValue<int>.withInit(0);
  final LocalImagesCache localImagesCache = LocalImagesCache();
  String? initialChannelId;

  bool popOut = false;

  void onPop(BuildContext context) {
    if (popOut) {
      SystemNavigator.pop();
    } else {
      popOut = true;
      // AppSnackBar.showSimpleToast(
      //     msg: Translate.of(context).press_again_to_exit, color: context.colors.black);
      Future.delayed(const Duration(seconds: 7)).then((value) => popOut = false);
    }
  }

  void initBottomNavigation(TickerProvider ticker, int index) {
    bottomNavObs.setValue(index);
    tabController = CupertinoTabController(initialIndex: index);
  }

  void animateTabsPages(int index, BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (index != bottomNavObs.getValue()) {
      bottomNavObs.setValue(index);
      bottomNavObs.refresh();
      tabController.index = index;
    }
  }

  List<TabsModel> tabs(BuildContext context) {
    return [
      TabsModel(
        inActiveIcon: Res.homeTab,
        title: Translate.s.home,
        activeIcon: Res.homeTabSolid,
      ),
      TabsModel(
        inActiveIcon: Res.chatTab,
        title: Translate.s.chats,
        isChat: true,
        activeIcon: Res.chatTabSolid,
      ),
      // TabsModel(inActiveIcon: Res.addCircle, title: Translate.s.add, activeIcon: Res.addCircle),
      TabsModel(
        inActiveIcon: Res.starsTab,
        title: Translate.s.stars,
        activeIcon: Res.starsTabSolid,
      ),
      TabsModel(
        inActiveIcon: Res.campaignTab,
        title: Translate.s.campaigns,
        activeIcon: Res.campaignTabSolid,
      ),
      TabsModel(
        inActiveIcon: Res.userTab,
        title: Translate.s.my_account,
        activeIcon: Res.userTabSolid,
      ),
    ];
  }

  List<Widget> pages() => [
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        const MorePage(),
      ];

  Future<void> getProfileInfo(BuildContext context) async {
    // if (context.read<DeviceCubit>().state.model.auth) {
    //   var result = await getIt<AccountRepository>().getProfileInfo();
    //   result.when(
    //     isSuccess: (data) {
    //       context.read<ProfileCubit>().onUpdateProfileData(data!);
    //       getIt<AmplitudeClass>().amplitude.setUserId('${data.id} - ${data.email} - ${data.phone}');
    //     },
    //     isError: (error) {},
    //   );
    // }
  }

  Future<void> getStreamChatToken(String? channelId, TickerProvider ticker) async {
    // initialChannelId = channelId;
    // StreamHelper.instance.initialize(channelId).then((_) {
    //   if (channelId != null) {
    //     initBottomNavigation(ticker, 1);
    //   }
    // });
  }
}
