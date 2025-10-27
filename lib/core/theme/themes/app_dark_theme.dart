

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/colors/app_dark_colors.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';

class AppDarkTheme extends AppTheme {
  final String language;
  AppDarkTheme({required this.language});
  final AppColors _colorsDark = AppDarkColors();

  @override
  ThemeData get theme => ThemeData(
    fontFamily: AppTheme.fontFamily(language),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: _colorsDark.appColorBlue,
      selectionHandleColor: _colorsDark.appColorBlue.withValues(alpha: 0.25),
      selectionColor: _colorsDark.appColorBlue,
    ),
    colorScheme: colorScheme,
    // textTheme: textTheme,
    brightness: Brightness.dark,
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(_colorsDark.secondary),
    ),
    unselectedWidgetColor: Colors.black45,
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(_colorsDark.primary),
      checkColor: WidgetStateProperty.all(_colorsDark.primary),
    ),
    appBarTheme: AppBarTheme(
      color: _colorsDark.appBarColor,
      elevation: 0,
      centerTitle: true,
      // titleTextStyle: textTheme.headline2!.copyWith(color: _colorsDark.black),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light),
      iconTheme: IconThemeData(color: _colorsDark.black, size: 21),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        decorationThickness: 0,
      ),
      border: OutlineInputBorder(),
      labelStyle: TextStyle(
        decorationThickness: 0,
      ),
      errorStyle: TextStyle(height: 0.8),
    ),
    scaffoldBackgroundColor: _colorsDark.background1,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.disabled)) {
                return _colorsDark.disableGray;
              }
              return _colorsDark.primary;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
              if (states.contains(WidgetState.disabled)) {
                return _colorsDark.disableGray;
              }
              return _colorsDark.primary;
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith((states) {
            return (Colors.white).withValues(alpha:0.12);
          }),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        )),
    snackBarTheme: const SnackBarThemeData(backgroundColor: AppColors.snackBarGreenSuccess),
  );

  // @override
  // TextTheme get textTheme => AppTextTheme();

  @override
  ColorScheme get colorScheme => ColorScheme(
    primary: _colorsDark.primary,
    onPrimary: _colorsDark.white,
    secondary: _colorsDark.secondary,
    onSecondary: _colorsDark.white,
    error: AppColors.snackBarRedError,
    onError: _colorsDark.white,
    onBackground: _colorsDark.black,
    surface: _colorsDark.primary,
    onSurface: _colorsDark.white,
    brightness: Brightness.dark,
  );

}