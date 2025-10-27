import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

part 'device_model.freezed.dart';

@freezed
class DeviceModel with _$DeviceModel {
  factory DeviceModel({
    required Locale locale,
    required String currency,
    required bool auth,
    required bool isBundle,
    required bool isTablet,
    required bool isSmallPhone,
    required bool showWhatsApp,
    required bool isNetworkConnected,
    required AdaptiveThemeMode themeMode,
  }) = _DeviceModel;
}
