import 'package:dio/dio.dart';

import 'package:flutter_tdd/core/http/dio_helper/utils/http_tracking_interceptor.dart';
class AuthInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    HttpTrackingInterceptor.instance.showAlice();
    super.onResponse(response, handler);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    HttpTrackingInterceptor.instance.showAlice();
    handler.next(err);
    return;
  }

}
