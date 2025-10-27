part of 'device_cubit.dart';

@immutable
abstract class DeviceState {
  final DeviceModel model;

  const DeviceState(this.model);
}

class DeviceInitial extends DeviceState {
  DeviceInitial()
      : super(DeviceModel(
      auth: false,
      isTablet: false,
      isBundle: false,
      isSmallPhone: false,
      showWhatsApp: false,
      isNetworkConnected: true,
      locale: const Locale('en', 'US'),
      themeMode: AdaptiveThemeMode.light,
      currency: '(SAR)',
  ));
}

class DeviceUpdateState extends DeviceState {
  const DeviceUpdateState(super.model);
}
