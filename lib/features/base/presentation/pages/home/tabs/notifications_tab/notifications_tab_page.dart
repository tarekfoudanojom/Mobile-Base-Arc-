part of 'notifications_tab_imports.dart';

class NotificationsTabPage extends StatefulWidget {
  const NotificationsTabPage({super.key});

  @override
  State<NotificationsTabPage> createState() => _NotificationsTabPageState();
}

class _NotificationsTabPageState extends State<NotificationsTabPage> {
  late NotificationsTabController controller;

  @override
  void initState() {
    super.initState();
    controller = NotificationsTabController();
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
          Translate.s.notifications,
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
                CupertinoIcons.bell,
                size: 64,
                color: context.colors.primary,
              ),
              const SizedBox(height: 16),
              Text(
                Translate.s.notifications,
                style: AppTextStyle.s24_w600(color: context.colors.textPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

