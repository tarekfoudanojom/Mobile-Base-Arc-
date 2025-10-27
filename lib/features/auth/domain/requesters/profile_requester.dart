import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/requester/requester.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/profile_model/profile_model.dart';
import '../../presentation/manager/profile_cubit/profile_cubit.dart';

class ProfileRequester extends Requester<String> {
  @override
  Future<void> request({bool fromRemote = true}) async {
    if (hasNoData) {
      loadingState();
    }
    var context = GetIt.I.get<GlobalContext>().context();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var result = await getIt<AuthRepository>().getProfileInfo();
    result.when(
      isSuccess: (data) async {
        getIt<UserServicesHelper>().saveUserData(context, data ?? '');
        Map<String, dynamic> dec = JwtDecoder.decode(data ?? '');
        var userData = ProfileModel.fromJson(dec);
        getIt<UserServicesHelper>().updateAccountProfileModel(userData);
        preferences.setString("profile", json.encode(userData.toJson()));
        preferences.setString("user", json.encode(userData.toJson()));
        context.read<ProfileCubit>().onUpdateProfileData(userData);
        successState(data ?? '');
      },
      isError: (error) {
        failedState(error, () => request(fromRemote: fromRemote));
      },
    );
  }
}
