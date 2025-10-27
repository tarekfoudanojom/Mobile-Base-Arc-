part of 'profile_tab_imports.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({super.key});

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  late ProfileTabController controller;

  @override
  void initState() {
    super.initState();
    controller = ProfileTabController();
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
          Translate.s.profile,
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
                CupertinoIcons.person,
                size: 64,
                color: context.colors.primary,
              ),
              const SizedBox(height: 16),
              Text(
                Translate.s.profile,
                style: AppTextStyle.s24_w600(color: context.colors.textPrimary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

