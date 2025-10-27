import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';

abstract class AppTheme {
  ThemeData get theme;

  ColorScheme get colorScheme;

  static String fontFamily(String lang) {
    if (lang == "ar") {
      return ApplicationConstants.fontFamilyArabic;
    }
    return ApplicationConstants.fontFamilySFPro;
  }
}
