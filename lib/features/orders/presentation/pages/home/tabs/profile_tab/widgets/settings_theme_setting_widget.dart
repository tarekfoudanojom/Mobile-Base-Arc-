import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'settings_setting_card_widget.dart';

class SettingsThemeSettingWidget extends StatelessWidget {
  final VoidCallback onTap;

  const SettingsThemeSettingWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceCubit, DeviceState>(
      builder: (context, state) {
        final themeMode = state.model.themeMode;
        final isDarkMode = themeMode == AdaptiveThemeMode.dark;
        
        return SettingsSettingCardWidget(
          icon: isDarkMode ? CupertinoIcons.moon_fill : CupertinoIcons.sun_max_fill,
          title: Translate.s.theme,
          subtitle: isDarkMode ? Translate.s.dark_mode : Translate.s.light_mode,
          iconColor: isDarkMode ? context.colors.slateGray : context.colors.warning,
          backgroundColor: isDarkMode
              ? context.colors.slateGray.withValues(alpha: 0.05)
              : context.colors.warning.withValues(alpha: 0.05),
          trailing: CupertinoSwitch(
            value: isDarkMode,
            onChanged: (value) {
              final newThemeMode = value ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light;
              // Update DeviceCubit
              context.read<DeviceCubit>().updateThemeMode(newThemeMode);
              
              // Update AdaptiveTheme
              switch (newThemeMode) {
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
            },
            activeTrackColor: context.colors.slateGray,
            inactiveTrackColor: context.colors.warning.withValues(alpha: 0.3),
          ),
          onTap: onTap,
        );
      },
    );
  }

}
