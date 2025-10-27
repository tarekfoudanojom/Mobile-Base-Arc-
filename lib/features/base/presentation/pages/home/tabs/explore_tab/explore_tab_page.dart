part of 'explore_tab_imports.dart';

class ExploreTabPage extends StatefulWidget {
  const ExploreTabPage({super.key});

  @override
  State<ExploreTabPage> createState() => _ExploreTabPageState();
}

class _ExploreTabPageState extends State<ExploreTabPage> {
  late ExploreTabController controller;

  @override
  void initState() {
    super.initState();
    controller = ExploreTabController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          Translate.s.explore,
          style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
        ),
        backgroundColor: context.colors.white,
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.search,
                size: 64,
                color: context.colors.primary,
              ),
              const SizedBox(height: 16),
              Text(
                Translate.s.explore,
                style: AppTextStyle.s24_w600(color: context.colors.textPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

