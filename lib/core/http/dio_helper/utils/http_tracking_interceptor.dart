import 'package:flutter_alice/alice.dart';
import 'package:flutter_alice/core/alice_dio_interceptor.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.dart';
import 'package:flutter_tdd/env/environment_config_reader.dart';
import 'package:injectable/injectable.dart';


class HttpTrackingInterceptor {

  HttpTrackingInterceptor._();

  static HttpTrackingInterceptor instance = HttpTrackingInterceptor._();

  final _alice = Alice(navigatorKey: getIt.get<AppRouter>().navigatorKey);


   Alice get alice => _alice;

  AliceDioInterceptor getDioInterceptor() {
    return _alice.getDioInterceptor();
  }

  void showAlice() {
    if (FlutterEnvironmentConfigReader.instance.getAppEnvName() != Environment.prod) {
      // _alice.showInspector();
    }
  }

}