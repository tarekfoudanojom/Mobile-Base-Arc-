import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SettingsThemePickerWidget extends StatelessWidget {
  final Function(AdaptiveThemeMode) onThemeSelected;

  const SettingsThemePickerWidget({
    super.key,
    required this.onThemeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Simple Header
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.dp20,
              vertical: Dimens.dp16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    Translate.s.cancel,
                    style: AppTextStyle.s16_w400(
                      color: context.colors.textGaryColor,
                    ),
                  ),
                ),
                Text(
                  Translate.s.theme,
                  style: AppTextStyle.s18_w600(
                    color: context.colors.textColor,
                  ),
                ),
                CupertinoButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    Translate.s.done,
                    style: AppTextStyle.s16_w600(
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Enhanced Picker
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CupertinoPicker(
                itemExtent: 60,
                onSelectedItemChanged: (index) {
                  final themes = [
                    AdaptiveThemeMode.light,
                    AdaptiveThemeMode.dark,
                    AdaptiveThemeMode.system,
                  ];
                  final selectedTheme = themes[index];
                  onThemeSelected(selectedTheme);
                },
                children: [
                  _buildThemeOption(
                    context,
                    Translate.s.light_mode,
                    CupertinoIcons.sun_max_fill,
                    const Color(0xFFFF9800),
                  ),
                  _buildThemeOption(
                    context,
                    Translate.s.dark_mode,
                    CupertinoIcons.moon_fill,
                    const Color(0xFF424242),
                  ),
                  _buildThemeOption(
                    context,
                    Translate.s.system_mode,
                    CupertinoIcons.gear_alt_fill,
                    const Color(0xFF9C27B0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeOption(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s16_w500(
                    color: context.colors.textColor,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  _getThemeDescription(icon),
                  style: AppTextStyle.s12_w400(
                    color: context.colors.textGaryColor,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            icon,
            color: color,
            size: 24,
          ),
        ],
      ),
    );
  }

  String _getThemeDescription(IconData icon) {
    switch (icon) {
      case CupertinoIcons.sun_max_fill:
        return 'Always use light theme';
      case CupertinoIcons.moon_fill:
        return 'Always use dark theme';
      case CupertinoIcons.gear_alt_fill:
        return 'Follow system setting';
      default:
        return '';
    }
  }
}
