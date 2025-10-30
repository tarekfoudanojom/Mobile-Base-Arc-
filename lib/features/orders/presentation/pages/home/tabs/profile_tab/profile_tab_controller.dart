part of 'profile_tab_imports.dart';

class ProfileTabController {
  void dispose() {
    // Dispose resources if needed
  }

  /// Change app language
  void changeLanguage(BuildContext context, String languageCode) {
    final locale = Locale(languageCode);
    
    // Update DeviceCubit
    context.read<DeviceCubit>().updateLanguage(locale);
    
    // Update AdaptiveTheme to rebuild with new locale
    // The app will automatically rebuild with the new locale
  }

  /// Change app language and navigate to home page
  void changeLanguageAndNavigate(BuildContext context, String languageCode) {
    final locale = Locale(languageCode);
    
    // Update DeviceCubit
    context.read<DeviceCubit>().updateLanguage(locale);
    
    // Update AdaptiveTheme to rebuild with new locale
    // The app will automatically rebuild with the new locale
    
    // Close any open modals first
    Navigator.of(context).popUntil((route) => route.isFirst);
    
    // Navigate to home page using AutoRoute
    context.router.push(const HomeRoute());
  }

  /// Change app theme
  void changeTheme(BuildContext context, AdaptiveThemeMode themeMode) {
    // Update DeviceCubit
    context.read<DeviceCubit>().updateThemeMode(themeMode);
    
    // Update AdaptiveTheme
    switch (themeMode) {
      case AdaptiveThemeMode.light:
        AdaptiveTheme.of(context).setLight();
        break;
      case AdaptiveThemeMode.dark:
        AdaptiveTheme.of(context).setDark();
        break;
      case AdaptiveThemeMode.system:
        AdaptiveTheme.of(context).setSystem();
        break;
    }
  }

  /// Change app theme and navigate to home page
  void changeThemeAndNavigate(BuildContext context, AdaptiveThemeMode themeMode) {
    // Update DeviceCubit
    context.read<DeviceCubit>().updateThemeMode(themeMode);
    
    // Update AdaptiveTheme
    switch (themeMode) {
      case AdaptiveThemeMode.light:
        AdaptiveTheme.of(context).setLight();
        break;
      case AdaptiveThemeMode.dark:
        AdaptiveTheme.of(context).setDark();
        break;
      case AdaptiveThemeMode.system:
        AdaptiveTheme.of(context).setSystem();
        break;
    }
    
    // Close any open modals first
    Navigator.of(context).popUntil((route) => route.isFirst);
    
    // Navigate to home page using AutoRoute
    context.router.push(const HomeRoute());
  }
}

