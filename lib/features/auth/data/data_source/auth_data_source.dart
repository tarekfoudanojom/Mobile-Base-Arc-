import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';

abstract class AuthDataSource {
  Future<MyResult<String>> loginWithPhone(LoginParams params);
}

