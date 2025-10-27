part of 'home_imports.dart';

@RoutePage(name: 'HomeRoute')
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.currentTabIndexObs,
      builder: (context, currentIndex) {
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: context.colors.white,
            activeColor: context.colors.primary,
            inactiveColor: context.colors.grey,
            border: Border(
              top: BorderSide(
                color: context.colors.grey.withValues(alpha: 0.3),
                width: 0.5,
              ),
            ),
            height: 60,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.home),
                label: Translate.s.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.search),
                label: Translate.s.explore,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.bell),
                label: Translate.s.notifications,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.person),
                label: Translate.s.profile,
              ),
            ],
            currentIndex: currentIndex,
            onTap: controller.changeTab,
          ),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                switch (index) {
                  case 0:
                    return const HomeTabPage();
                  case 1:
                    return const ExploreTabPage();
                  case 2:
                    return const NotificationsTabPage();
                  case 3:
                    return const ProfileTabPage();
                  default:
                    return const HomeTabPage();
                }
              },
            );
          },
        );
      },
    );
  }
}

