part of 'home_tab_imports.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  late HomeTabController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeTabController();
    controller.initPage(context);
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
          Translate.s.home,
          style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
        ),
        backgroundColor: context.colors.white,
      ),
      child: Stack(
        children: [
          // Main content
          SafeArea(
            child: Column(
              children: [
                SearchAndFilterSection(controller: controller),
                Expanded(
                  child: BaseBlocBuilder<List<OrderModel>>(
                    bloc: controller.ordersBloc,
                    onLoadingWidget: (context) => const LoadingView(),
                    onFailedWidget: (context, error, callback) => ErrorView(error: error, retry: callback),
                    onSuccessWidget: (data) => OrdersList(orders: data, controller: controller),
                  ),
                ),
              ],
            ),
          ),
          // Scroll to top button
          ScrollToTopButton(controller: controller),
        ],
      ),
    );
  }

}

