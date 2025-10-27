import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
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
class Post extends DioHelper {
  @override
  Future<MyResult<Response>> call(RequestBodyModel params) async {
    ObsValue<int>? loadingPercent;
    if (params.body.entries.any(
      (e) => e.value.runtimeType == File || e.value.runtimeType == List<File>,
    )) {
      loadingPercent = ObsValue.withInit(0);
    }
    if (params.showLoader) getIt<LoadingHelper>().showLoadingDialog(loadingPercent: loadingPercent);
    FormData? formData = getIt<HandleRequestBody>()(params.body);
    try {
      var response = await dio.post(
        params.url,
        data: formData ?? json.encode(params.body),
        onSendProgress: (int sent, int total) {
          final progress = sent / total * 100;
          loadingPercent?.setValue(progress.toInt());
        },
      );
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      return getIt<HandleErrors>().statusError(response, params.errorFunc, params.showErrorMsg);
    } on DioException catch (e) {
      if (params.showLoader) getIt<LoadingHelper>().dismissDialog();
      getIt<HandleErrors>().catchError(
          errorFunc: params.errorFunc, response: e.response, showErrorMsg: params.showErrorMsg);
      return MyResult.isError(CustomError(msg: e.message.toString()));
    }
  }
}
