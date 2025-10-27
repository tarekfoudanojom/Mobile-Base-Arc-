import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';

class AppConfig {
  AppConfig._();
  static AppConfig instance = AppConfig._();

  String get defaultLanguage => 'en';

  String get baseUrl => const String.fromEnvironment('APP_BASE_URL');
  String get gigBaseUrl => const String.fromEnvironment('GIG_BASE_URL');
  String get socketUrl => const String.fromEnvironment('SOCKET_BASE_URL');

  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 50, maxHeight: 50);

  static BoxConstraints? fromHeight(double? height) => height != null
      ? BoxConstraints(minHeight: height, maxHeight: height)
      : null;

  static String fontFamily(FontWeight fontWeight) {
    try {
      var context = getIt.get<AppRouter>().navigatorKey.currentContext;
      var lang = context?.read<DeviceCubit>().state.model.locale.languageCode;
      if (lang == "ar") {
        return ApplicationConstants.fontFamilyArabic;
      }
      return ApplicationConstants.fontFamilySFPro;
    } catch (e) {
      // Context may be deactivated, return default font family
      return ApplicationConstants.fontFamilySFPro;
    }
  }

  static String get fontCurrencySymbol {
    try {
      var context = getIt.get<AppRouter>().navigatorKey.currentContext;
      var lang = context?.read<DeviceCubit>().state.model.locale.languageCode;
      if (lang == ApplicationConstants.langAR) {
        return ApplicationConstants.fontSaudiRiyalFont;
      }
      //fontFamilySFPro;
      return ApplicationConstants.fontSaudiRiyalFont;
    } catch (e) {
      // Context may be deactivated, return default font family
      return ApplicationConstants.fontSaudiRiyalFont;
    }
  }
}
