import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthDataSource)
class ImplAuthDataSource implements AuthDataSource {
  @override
  Future<MyResult<String>> loginWithPhone(LoginParams params) async {
    // TODO: Implement actual API call when backend is ready
    // For now, return mock success for testing UI flow
    await Future.delayed(const Duration(seconds: 2));
    return const MyResult.isSuccess('mock_token_12345');
  }
}

