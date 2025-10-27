import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/models/device_model/device_model.dart';

part 'device_state.dart';

class DeviceCubit extends Cubit<DeviceState> {
  DeviceCubit() : super(DeviceInitial());

  void updateDeviceType(bool isTablet) {
    emit(DeviceUpdateState(state.model.copyWith(isTablet: isTablet)));
  }

  void updateUserAuth(bool auth) {
    emit(DeviceUpdateState(state.model.copyWith(auth: auth)));
  }

  void updateIsBundle(bool isBundle) {
    emit(DeviceUpdateState(state.model.copyWith(isBundle: isBundle)));
  }

  void updateLanguage(Locale locale) {
    emit(DeviceUpdateState(state.model.copyWith(locale: locale)));
  }
  void updateCurrency(String currency) {
    emit(DeviceUpdateState(state.model.copyWith(currency: currency)));
  }

  void updateSmallPhone(bool isSmallPhone) {
    emit(DeviceUpdateState(state.model.copyWith(isSmallPhone: isSmallPhone)));
  }
  void updateThemeMode(AdaptiveThemeMode mode) {
    emit(DeviceUpdateState(state.model.copyWith(themeMode: mode)));
  }
  void updateWhatsAppMode(bool mode) {
    emit(DeviceUpdateState(state.model.copyWith(showWhatsApp: mode)));
  }
  void setNetworkStatus(bool isNetworkConnected) {
    if (state.model.isNetworkConnected != isNetworkConnected) {
      emit(DeviceUpdateState(state.model.copyWith(isNetworkConnected: isNetworkConnected)));

    }
  }
}
