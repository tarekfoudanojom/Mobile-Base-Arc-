import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'settings_setting_card_widget.dart';

class SettingsLanguageSettingWidget extends StatelessWidget {
  final VoidCallback onTap;

  const SettingsLanguageSettingWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceCubit, DeviceState>(
      builder: (context, state) {
        final currentLanguage = state.model.locale.languageCode;
        final isArabic = currentLanguage == 'ar';
        
            return SettingsSettingCardWidget(
              icon: CupertinoIcons.globe,
              title: Translate.s.language,
              subtitle: _getCurrentLanguageName(currentLanguage),
              iconColor: isArabic ? context.colors.primaryGreen : context.colors.primaryBlue,
              backgroundColor: isArabic
                  ? context.colors.primaryGreen.withValues(alpha: 0.05)
                  : context.colors.primaryBlue.withValues(alpha: 0.05),
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isArabic ? context.colors.primaryGreen : context.colors.primaryBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  isArabic ? 'ع' : 'EN',
                  style: AppTextStyle.s12_w600(
                    color: context.colors.white,
                  ),
                ),
          ),
          onTap: onTap,
        );
      },
    );
  }

  String _getCurrentLanguageName(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return Translate.s.arabic;
      case 'en':
        return Translate.s.english;
      default:
        return Translate.s.english;
    }
  }
}
