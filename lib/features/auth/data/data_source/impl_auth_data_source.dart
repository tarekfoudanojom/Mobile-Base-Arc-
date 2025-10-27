import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource implements AuthDataSource {
  @override
  Future<MyResult<String>> loginWithPhone(LoginParams params) async {
    final model = HttpRequestModel(
      url: ApiNames.baseUrl + ApiNames.loginOrSignupByPhone,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: params.toJson(),
    );

    // return await getIt<GenericHttpImpl<String>>()(model);
    return const MyResult.isSuccess("Mocked login successful" );
  }
}

