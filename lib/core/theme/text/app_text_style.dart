import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';

class AppTextStyle extends TextStyle {
  const AppTextStyle() : super();

  static const double fontHeight = 1.0;

  // ignore: non_constant_identifier_names
  AppTextStyle.s8_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 8,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s9_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 9,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s10_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 10,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s10_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 10,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s10_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 10,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s11_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 11,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s11_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s11_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 11,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s11_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 11,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s10_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 10,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s10_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 10,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12_w300({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w300,
          fontFamily: AppConfig.fontFamily(FontWeight.w300),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12half5_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12.5,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s12_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s13_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s13_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 13,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s13_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 13,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w300({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w300,
          fontFamily: AppConfig.fontFamily(FontWeight.w300),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s13_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 13,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s13_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 13,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s14_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w300({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 15,
          fontWeight: FontWeight.w300,
          fontFamily: AppConfig.fontFamily(FontWeight.w300),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 15,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 15,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w400({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: AppConfig.fontFamily(FontWeight.w400),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w300({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 16,
            fontWeight: FontWeight.w300,
            fontFamily: AppConfig.fontFamily(FontWeight.w300),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w100({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 16,
            fontWeight: FontWeight.w100,
            fontFamily: AppConfig.fontFamily(FontWeight.w100),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w200({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 16,
            fontWeight: FontWeight.w200,
            fontFamily: AppConfig.fontFamily(FontWeight.w200),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s15_w200({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 15,
            fontWeight: FontWeight.w200,
            fontFamily: AppConfig.fontFamily(FontWeight.w200),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s16_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 16,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w400({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 17,
            fontWeight: FontWeight.w300,
            fontFamily: AppConfig.fontFamily(FontWeight.w400),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w300({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 17,
            fontWeight: FontWeight.w300,
            fontFamily: AppConfig.fontFamily(FontWeight.w300),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w300({required Color color})
      : super(
            color: color,
            letterSpacing: .2,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            fontFamily: AppConfig.fontFamily(FontWeight.w300),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s20_w300({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 20,
            fontWeight: FontWeight.w300,
            fontFamily: AppConfig.fontFamily(FontWeight.w300),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 17,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 17,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s17_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 17,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w500({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s18_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 18,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s19_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 19,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s19_w450({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 19,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s19_w400({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 19,
            fontWeight: FontWeight.w400,
            fontFamily: AppConfig.fontFamily(FontWeight.w400),
            height: fontHeight,
            fontStyle: FontStyle.normal);

  // ignore: non_constant_identifier_names
  AppTextStyle.s19_w500({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 19,
            fontWeight: FontWeight.w500,
            fontFamily: AppConfig.fontFamily(FontWeight.w500),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s19_w600({required Color color})
      : super(
            color: color,
            letterSpacing: _getLetterSpacing(),
            fontSize: 19,
            fontWeight: FontWeight.w600,
            fontFamily: AppConfig.fontFamily(FontWeight.w600),
            height: fontHeight);

  // ignore: non_constant_identifier_names
  AppTextStyle.s20_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s20_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s20_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s20_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s21_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 21,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s22_w400({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 22,
          fontWeight: FontWeight.w400,
          fontFamily: AppConfig.fontFamily(FontWeight.w400),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s22_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 22,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s22_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s23_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 23,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s23_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 23,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s22_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s24_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 24,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s24_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s24_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s24_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 24,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s28_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s28_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 28,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s28_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 28,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s28_w900({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 28,
          fontWeight: FontWeight.w900,
          fontFamily: AppConfig.fontFamily(FontWeight.w900),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s26_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 26,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  AppTextStyle.s30_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s32_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 32,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s32_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s32_w900({required Color color})
      : super(
          color: color,
          letterSpacing: -0.5,
          fontSize: 32,
          fontWeight: FontWeight.w900,
          fontFamily: AppConfig.fontFamily(FontWeight.w900),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s32_w800({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 32,
          fontWeight: FontWeight.w800,
          fontFamily: AppConfig.fontFamily(FontWeight.w800),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s33_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s35_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s34_w900({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 34,
          fontWeight: FontWeight.w900,
          fontFamily: AppConfig.fontFamily(FontWeight.w900),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s34_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s35_w900({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 35,
          fontWeight: FontWeight.w900,
          fontFamily: AppConfig.fontFamily(FontWeight.w900),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s36_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 36,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s36_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 36,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );
  AppTextStyle.s36_w600({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s37_w900({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 37,
          fontWeight: FontWeight.w900,
          fontFamily: AppConfig.fontFamily(FontWeight.w900),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s40_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 40,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s48_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 48,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s42_w300({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 42,
          fontWeight: FontWeight.w300,
          fontFamily: AppConfig.fontFamily(FontWeight.w300),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.noSize(
      {required Color color, FontWeight fontWeight = FontWeight.w400})
      : super(
          color: color,
          fontWeight: fontWeight,
          letterSpacing: _getLetterSpacing(),
          fontFamily: AppConfig.fontFamily(fontWeight),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s42_w500({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 42,
          fontWeight: FontWeight.w500,
          fontFamily: AppConfig.fontFamily(FontWeight.w500),
          height: fontHeight,
        );

  // ignore: non_constant_identifier_names
  AppTextStyle.s48_w700({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 48,
          fontWeight: FontWeight.w700,
          fontFamily: AppConfig.fontFamily(FontWeight.w700),
          height: fontHeight,
        );

  AppTextStyle.h1({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 40,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  AppTextStyle.h2({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 32,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  AppTextStyle.h3({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  AppTextStyle.h4({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  AppTextStyle.h5({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );

  AppTextStyle.h6({required Color color})
      : super(
          color: color,
          letterSpacing: _getLetterSpacing(),
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: AppConfig.fontFamily(FontWeight.w600),
          height: fontHeight,
        );
}

// class AppTextTheme extends TextTheme {
//
//   @override
//   final TextStyle overline = AppTextStyle.s14_w400(color: AppColors.noContextInstance.black);
//
//   @override
//   final TextStyle headline1 = AppTextStyle.s16_w500(color: AppColors.noContextInstance.black);
//   @override
//   final TextStyle headline2 = AppTextStyle.s16_w400(color: AppColors.noContextInstance.black);
//   @override
//   final TextStyle headline3 = AppTextStyle.s14_w400(color: AppColors.noContextInstance.black);
//   @override
//   final TextStyle headline4 = AppTextStyle.s12_w400(color: AppColors.noContextInstance.black);
//
//   @override
//   final TextStyle headline5 = AppTextStyle.s10_w400(color: AppColors.noContextInstance.black);
//
//   @override
//   final TextStyle headline6 = AppTextStyle.s8_w400(color: AppColors.noContextInstance.black);
//
//   @override
//   final TextStyle subtitle1 = AppTextStyle.s12_w400(color: AppColors.noContextInstance.blackOpacity);
//
//   @override
//   final TextStyle subtitle2 = AppTextStyle.s10_w400(color: AppColors.noContextInstance.blackOpacity);
//
//   @override
//   final TextStyle bodyText1 = AppTextStyle.s10_w400(color: AppColors.noContextInstance.black);
//   @override
//   final TextStyle bodyText2 = AppTextStyle.s10_w400(color: AppColors.noContextInstance.blackOpacity);
// }

double _getLetterSpacing() {
  try {
    var context = getIt.get<AppRouter>().navigatorKey.currentContext;
    var lang = context?.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == ApplicationConstants.langEN) {
      return -0.2;
    } else {
      return 0;
    }
  } catch (e) {
    // Context may be deactivated, return default value
    return 0;
  }
}
