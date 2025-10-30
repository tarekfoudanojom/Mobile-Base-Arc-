import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'settings_language_setting_widget.dart';
import 'settings_theme_setting_widget.dart';

class SettingsSectionWidget extends StatelessWidget {
  final VoidCallback onLanguageTap;
  final VoidCallback onThemeTap;

  const SettingsSectionWidget({
    super.key,
    required this.onLanguageTap,
    required this.onThemeTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceCubit, DeviceState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, Translate.s.general),
            const SizedBox(height: Dimens.dp12),
            SettingsLanguageSettingWidget(
              onTap: onLanguageTap,
            ),
            const SizedBox(height: Dimens.dp8),
            SettingsThemeSettingWidget(
              onTap: onThemeTap,
            ),
          ],
        );
      },
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp4),
      child: Text(
        title,
        style: AppTextStyle.s16_w600(color: context.colors.textColor),
      ),
    );
  }
}
