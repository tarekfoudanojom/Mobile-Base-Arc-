import 'package:amplitude_flutter/events/event_options.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/amplitude/amplitude.dart';
import 'package:flutter_tdd/core/helpers/di.dart';

class AmplitudeActionInterceptor extends Interceptor {
  static const String _startAtKey = 'amplitude_start_ms';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra[_startAtKey] = DateTime.now().millisecondsSinceEpoch;
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      await _logIfNeeded(response.requestOptions, response, null);
    } catch (_) {}
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      await _logIfNeeded(err.requestOptions, err.response, err);
    } catch (_) {}
    handler.next(err);
  }

  Future<void> _logIfNeeded(
    RequestOptions options,
    Response? response,
    DioException? error,
  ) async {
    final String method = options.method.toUpperCase();

    // Do not record GET calls per requirements
    if (method == 'GET') return;

    final int startMs = (options.extra[_startAtKey] as int?) ??
        DateTime.now().millisecondsSinceEpoch;
    final int elapsedMs = DateTime.now().millisecondsSinceEpoch - startMs;

    final amplitudeService = getIt.get<AmplitudeClass>();

    String? userId;
    try {
      userId = await amplitudeService.amplitude.getUserId();
    } catch (_) {}

    // Sanitize headers (avoid leaking secrets)
    final Map<String, dynamic> headers = Map<String, dynamic>.from(
      options.headers,
    );
    if (headers.containsKey('Authorization')) {
      headers['Authorization'] = '***';
    }

    dynamic requestData = options.data;
    if (requestData is FormData) {
      requestData = {
        'fields': Map.fromEntries(requestData.fields),
        'files': requestData.files.map((f) => f.key).toList(),
      };
    }

    final Map<String, dynamic> extra = <String, dynamic>{
      'userId': userId,
      'method': method,
      'baseUrl': options.baseUrl,
      'path': options.path,
      'url': options.uri.toString(),
      'query': options.queryParameters,
      'headers': headers,
      'request': requestData,
      'statusCode': response?.statusCode,
      'response': _serializeResponse(response?.data, error),
      'errorType': error?.type.toString(),
      'errorMessage': error?.message,
      'durationMs': elapsedMs,
    };

    await amplitudeService.logAndFlushActionDetails(
      eventName: 'HTTP_${method}_ACTION',
      options: EventOptions(extra: extra),
    );
  }

  dynamic _serializeResponse(dynamic data, DioException? error) {
    if (data == null && error != null) {
      return {
        'type': error.type.toString(),
        'message': error.message,
      };
    }
    if (data is String || data is num || data is bool || data == null) {
      return data;
    }
    // Let Amplitude handle JSON encoding for complex objects
    return data;
  }
}
