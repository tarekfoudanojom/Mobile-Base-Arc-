import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/routes/auth_routes.dart';

class ScreenLogger extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route.settings.name == null) {
      return;
    }
    var context = route.navigator?.context;
    if (authRoutes.any((element) => element.name == route.settings.name)) {
      context?.read<DeviceCubit>().updateWhatsAppMode(false);
    }else{
      context?.read<DeviceCubit>().updateWhatsAppMode(true);
    }
    print('Navigated to: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute?.settings.name == null) {
      return;
    }
    var context = previousRoute?.navigator?.context;
    if (authRoutes.any((element) => element.name == previousRoute?.settings.name)) {
      context?.read<DeviceCubit>().updateWhatsAppMode(false);
    }else{
      context?.read<DeviceCubit>().updateWhatsAppMode(true);
    }
    print('Returned to: ${previousRoute?.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute?.settings.name == null) {
      return;
    }
    var context = newRoute?.navigator?.context;
    if (authRoutes.any((element) => element.name == newRoute?.settings.name)) {
      context?.read<DeviceCubit>().updateWhatsAppMode(false);
    }else{
      context?.read<DeviceCubit>().updateWhatsAppMode(true);
    }
    print('Replaced ${oldRoute?.settings.name} with ${newRoute?.settings.name}');
  }
}