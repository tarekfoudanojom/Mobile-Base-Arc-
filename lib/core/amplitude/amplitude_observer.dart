import 'package:amplitude_flutter/events/event_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/amplitude/amplitude.dart';
import 'package:flutter_tdd/core/helpers/di.dart';

class AmplitudeObserver extends NavigatorObserver {
  Future<void> _logEvent(
    String eventName,
    Route<dynamic>? route,
    Route<dynamic>? previousRoute,
  ) async {
    final String? routeName = route?.settings.name;
    final String? previousRouteName = previousRoute?.settings.name;

    final Map<String, dynamic> extra = <String, dynamic>{
      'route': routeName ?? route?.toString(),
      'previousRoute': previousRouteName ?? previousRoute?.toString(),
      'isInitialRoute': route?.isFirst ?? false,
      'routeType': route?.runtimeType.toString(),
      'arguments': route?.settings.arguments?.toString(),
    };

    await getIt.get<AmplitudeClass>().logAndFlushNavigationDetails(
          eventName: eventName,
          options: EventOptions(extra: extra),
        );
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logEvent('NAVIGATION_PUSH', route, previousRoute);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logEvent('NAVIGATION_POP', previousRoute, route);
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logEvent('NAVIGATION_REMOVE', previousRoute, route);
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _logEvent('NAVIGATION_REPLACE', newRoute, oldRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
