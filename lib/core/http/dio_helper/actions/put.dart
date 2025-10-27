import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:injectable/injectable.dart';

import '../../../helpers/di.dart';
import '../../../helpers/loading_helper.dart';
import '../../models/request_body_model.dart';
import '../source/dio_helper.dart';
import '../utils/handle_errors.dart';
import '../utils/handle_request_body.dart';

@lazySingleton
class Put extends DioHelper {
  @override
  Future<MyResult<Response>> call(RequestBodyModel params) async {
    if (params.showLoader) getIt<LoadingHelper>().showLoadingDialog();
    FormData? formData = getIt<HandleRequestBody>()(params.body);
    //create multipart request for POST or PATCH method

    try {
      var response = await dio.put(params.url, data: formData ?? json.encode(params.body));
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      return getIt<HandleErrors>().statusError(response, params.errorFunc, params.showErrorMsg);
    } on DioException catch (e) {
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      getIt<HandleErrors>().catchError(errorFunc: params.errorFunc, response: e.response, showErrorMsg: params.showErrorMsg);
      return MyResult.isError(CustomError(msg: e.message.toString()));
    }
  }
}
