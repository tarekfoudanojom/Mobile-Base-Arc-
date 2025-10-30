import 'package:flutter/cupertino.dart';
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
  ThemeData get theme {
    return ThemeData(
      fontFamily: AppTheme.fontFamily(language),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: _colorsDark.appColorBlue,
        selectionHandleColor: _colorsDark.appColorBlue.withValues(alpha: 0.25),
        selectionColor: _colorsDark.appColorBlue.withValues(alpha: 0.25),
      ),
      colorScheme: colorScheme,
      cupertinoOverrideTheme: CupertinoThemeData(
        scaffoldBackgroundColor: _colorsDark.background1,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: AppTheme.fontFamily(language)),
        ),
      ),
      // textTheme: textTheme,
      brightness: Brightness.dark,
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(_colorsDark.primary),
      ),
      unselectedWidgetColor: _colorsDark.grey,
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(_colorsDark.primary),
        checkColor: WidgetStateProperty.all(_colorsDark.white),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _colorsDark.appBarColor,
        elevation: 0,
        centerTitle: true,
        // titleTextStyle: textTheme.headline2!.copyWith(color: _colorsDark.white),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, 
          statusBarBrightness: Brightness.light, // Light icons on dark background
          statusBarIconBrightness: Brightness.light,
        ),
        iconTheme: IconThemeData(color: _colorsDark.white, size: 21),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: _colorsDark.background2,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          decorationThickness: 0,
          color: _colorsDark.hintGaryColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: _colorsDark.lightGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _colorsDark.lightGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _colorsDark.primary),
        ),
        labelStyle: TextStyle(
          decorationThickness: 0,
          color: _colorsDark.textSecondary,
        ),
        errorStyle: TextStyle(height: 0.8, color: _colorsDark.error),
        fillColor: _colorsDark.inputFillColor,
        filled: true,
      ),
      scaffoldBackgroundColor: _colorsDark.background1,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorsDark.primary,
        foregroundColor: _colorsDark.white,
      ),
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
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.disabled)) {
                return _colorsDark.disableGray;
              }
              return _colorsDark.primary;
            },
          ),
          overlayColor: WidgetStateProperty.resolveWith((states) {
            return _colorsDark.white.withValues(alpha: 0.12);
          }),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(12)),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _colorsDark.primary,
          foregroundColor: _colorsDark.white,
          disabledBackgroundColor: _colorsDark.disableGray,
          disabledForegroundColor: _colorsDark.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _colorsDark.primary,
          side: BorderSide(color: _colorsDark.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: _colorsDark.background2,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: _colorsDark.divider,
        thickness: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: _colorsDark.background2,
        contentTextStyle: TextStyle(color: _colorsDark.white),
        actionTextColor: _colorsDark.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _colorsDark.background2,
        selectedItemColor: _colorsDark.primary,
        unselectedItemColor: _colorsDark.grey,
        type: BottomNavigationBarType.fixed,
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: _colorsDark.primary,
        unselectedLabelColor: _colorsDark.grey,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: _colorsDark.primary, width: 2),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return _colorsDark.primary;
          }
          return _colorsDark.grey;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return _colorsDark.primary.withValues(alpha: 0.3);
          }
          return _colorsDark.lightGray;
        }),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: _colorsDark.primary,
        inactiveTrackColor: _colorsDark.lightGray,
        thumbColor: _colorsDark.primary,
        overlayColor: _colorsDark.primary.withValues(alpha: 0.2),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _colorsDark.primary,
        linearTrackColor: _colorsDark.lightGray,
        circularTrackColor: _colorsDark.lightGray,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: _colorsDark.background2,
        labelStyle: TextStyle(color: _colorsDark.white),
        secondaryLabelStyle: TextStyle(color: _colorsDark.primary),
        brightness: Brightness.dark,
      ),
      listTileTheme: ListTileThemeData(
        textColor: _colorsDark.white,
        iconColor: _colorsDark.grey,
        tileColor: _colorsDark.background2,
        selectedTileColor: _colorsDark.primary.withValues(alpha: 0.1),
      ),
    );
  }

  // @override
  // TextTheme get textTheme => AppTextTheme();

  @override
  ColorScheme get colorScheme => ColorScheme(
    primary: _colorsDark.primary,
    onPrimary: _colorsDark.white,
    secondary: _colorsDark.secondary,
    onSecondary: _colorsDark.white,
    error: _colorsDark.error,
    onError: _colorsDark.white,
    surface: _colorsDark.background2,
    onSurface: _colorsDark.white,
    brightness: Brightness.dark,
  );
}