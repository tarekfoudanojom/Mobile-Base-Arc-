import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:injectable/injectable.dart';

import '../../../helpers/di.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';
import '../utils/dio_options.dart';
import '../utils/handle_errors.dart';

@lazySingleton
class Get extends DioHelper {
  @override
  Future<MyResult<Response>> call(RequestBodyModel params) async {
    try {
      var response = await dio.get(
        params.url,
        queryParameters: params.body,
        options: getIt<DioOptions>()(forceRefresh: params.forceRefresh),
      );
      return getIt<HandleErrors>().statusError(response, params.errorFunc, params.showErrorMsg);
    } on DioException catch (e) {
      getIt<HandleErrors>().catchError(
          errorFunc: params.errorFunc, response: e.response, showErrorMsg: params.showErrorMsg);
      return MyResult.isError(CustomError(msg: e.message.toString()));
    }
  }
}
