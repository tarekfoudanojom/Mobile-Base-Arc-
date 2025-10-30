import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

extension AppThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  AppColors get colors => AppColors.of(this);

  bool get isArabic =>
      read<DeviceCubit>().state.model.locale.languageCode == "ar";
}
