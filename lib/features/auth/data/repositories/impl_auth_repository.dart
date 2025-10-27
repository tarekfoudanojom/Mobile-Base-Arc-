import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class ImplAuthRepository implements AuthRepository {
  final dataSource = getIt.get<AuthDataSource>();

  @override
  Future<MyResult<String>> loginWithPhone(LoginParams params) async {
    return await dataSource.loginWithPhone(params);
  }
}

