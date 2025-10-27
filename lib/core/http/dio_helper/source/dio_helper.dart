import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/http/dio_helper/utils/auth_interceptor.dart';
import 'package:flutter_tdd/core/http/dio_helper/utils/http_tracking_interceptor.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/env/environment_config_reader.dart';
import 'package:injectable/injectable.dart';

import '../../../helpers/di.dart';
import '../../generic_http/api_names.dart';
import '../../models/request_body_model.dart';
import '../utils/dio_header.dart';

abstract class DioHelper {
  Dio get dio {
    if (FlutterEnvironmentConfigReader.instance.getAppEnvName() ==
        Environment.prod) {
      return Dio(
        BaseOptions(
          baseUrl: ApiNames.baseUrl,
          headers: getIt<DioHeader>().call(),
        ),
      )
        ..interceptors.add(LogInterceptor(
            responseBody: true,
            requestBody: true,
            responseHeader: true,
            logPrint: (data) => log(
                  data.toString(),
                )));
    }
    return Dio(
      BaseOptions(
        baseUrl: ApiNames.baseUrl,
        headers: getIt<DioHeader>().call(),
      ),
    )
      ..interceptors.add(HttpTrackingInterceptor.instance.getDioInterceptor())
      ..interceptors.add(AuthInterceptor())
      ..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          logPrint: (data) => log(
                data.toString(),
              )));
  }

  Future<MyResult<Response>> call(RequestBodyModel params);
}
