import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/colors/app_light_colors.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';

class AppLightTheme extends AppTheme {
  final String language;
  AppLightTheme({required this.language});
  final AppColors _colorsLight = AppLightColors();

  @override
  ThemeData get theme {
    return ThemeData(
      fontFamily: AppTheme.fontFamily(language),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: _colorsLight.appColorBlue,
        selectionHandleColor: _colorsLight.appColorBlue.withValues(alpha: 0.25),
        selectionColor: _colorsLight.appColorBlue.withValues(alpha: 0.25),
      ),
      colorScheme: colorScheme,
      cupertinoOverrideTheme: CupertinoThemeData(
        scaffoldBackgroundColor: _colorsLight.background1,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: AppTheme.fontFamily(language)),
        ),
      ),
      // textTheme: textTheme,
      brightness: Brightness.light,
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(_colorsLight.black),
      ),
      unselectedWidgetColor: Colors.black45,
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(_colorsLight.primary),
        checkColor: WidgetStateProperty.all(_colorsLight.primary),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _colorsLight.appBarColor,
        elevation: 0,
        centerTitle: true,
        // titleTextStyle: textTheme.headline2!.copyWith(color: _colorsLight.black),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light),
        iconTheme: IconThemeData(color: _colorsLight.black, size: 21),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: _colorsLight.white,
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
      scaffoldBackgroundColor: _colorsLight.background1,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return _colorsLight.disableGray;
            }
            return _colorsLight.primary;
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return _colorsLight.disableGray;
            }
            return _colorsLight.primary;
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
  }

  // @override
  // TextTheme get textTheme => AppTextTheme();

  @override
  ColorScheme get colorScheme => ColorScheme(
        primary: _colorsLight.primary,
        onPrimary: _colorsLight.white,
        secondary: _colorsLight.secondary,
        onSecondary: _colorsLight.white,
        error: AppColors.snackBarRedError,
        onError: _colorsLight.white,
        surface: _colorsLight.primary,
        onSurface: _colorsLight.white,
        brightness: Brightness.light,
      );
}
