import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/domain/requesters/profile_requester.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileInitial());
  final ProfileRequester _profileRequester = ProfileRequester();

  void onUpdateProfileData(ProfileModel? model) {
    emit(ProfileUpdateState(model: model, changed: !state.changed));
  }


  Future<void> onUpdateProfileDataWithChanged(String token)async {
    var context = getIt<GlobalContext>().context();
    await getIt<UserServicesHelper>().saveUserData(context, token);
    await _profileRequester.request();
  }

}
