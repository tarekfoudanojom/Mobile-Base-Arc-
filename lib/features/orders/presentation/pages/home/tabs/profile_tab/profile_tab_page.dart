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
          Translate.s.settings,
          style: AppTextStyle.s18_w600(color: context.colors.textColor),
        ),
        backgroundColor: context.colors.white,
      ),
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(Dimens.dp16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SettingsProfileHeaderWidget(),
                  const SizedBox(height: Dimens.dp24),
                  SettingsSectionWidget(
                    onLanguageTap: () => _showLanguagePicker(context),
                    onThemeTap: () => _showThemePicker(context),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showLanguagePicker(BuildContext context) {
    // Get current language from DeviceCubit
    final currentLanguage = context.read<DeviceCubit>().state.model.locale.languageCode;
    
    showCupertinoModalPopup(
      context: context,
      builder: (context) => SettingsLanguagePickerWidget(
        currentLanguage: currentLanguage,
        onLanguageSelected: (languageCode) {
          controller.changeLanguageAndNavigate(context, languageCode);
        },
      ),
    );
  }

  void _showThemePicker(BuildContext context) {
    // Theme is now handled by the switch widget directly
    // This method is kept for compatibility but does nothing
  }
}