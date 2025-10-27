import 'package:collection/collection.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemberClientService {
  MemberClientService._internal();

  static final MemberClientService instance = MemberClientService._internal();

  final BaseBloc<List<MemberClientDelegationModel>> clientsBloc =
      BaseBloc<List<MemberClientDelegationModel>>();

  Future<void> loadMemberClients() async {
    var context = getIt<GlobalContext>().context();
    var profile = context.read<ProfileCubit>().state.model;
    var pref = getIt<SharedPreferences>();
    print("====================> Loading Member Clients ====================");
    print("====================> ${profile == null}");

    if (profile == null) {
      // If the profile is null, it means the user is not authenticated.
      // You might want to handle this case, e.g., by redirecting to login.
      return;
    }
    clientsBloc.loadingState();

    if (profile.isTeamMemberUser == false) {
      clientsBloc.successState([]);
      return;
    }

    var baseAccountId = pref.getString('base_account_id');
    final result = await getIt<BaseRepository>().getProfileDelegations(userId: baseAccountId);

    result.whenOrNull(
      isSuccess: (data) {
        clientsBloc.successState(data);
        if(baseAccountId == null){
          pref.setString('base_account_id', profile.id.toString());
        }
      },
      isError: (error) {
        clientsBloc.failedState(error, () => loadMemberClients());
      },
    );
  }

  Future<void> loginAs(int delegationId) async {
    var context = getIt<GlobalContext>().context();
    getIt<LoadingHelper>().showLoadingDialog();
    final result = await getIt<BaseRepository>().getProfileDelegationToken(delegationId);

    result.whenOrNull(
      isSuccess: (data) async {
        if (data?.token != null) {
          // Update profile data with the new token
         await context.read<ProfileCubit>().onUpdateProfileDataWithChanged(data!.token).then(
            (value) {
              getIt<LoadingHelper>().dismissDialog();
            },
          );
        }
      },
      isError: (error) {
        // Handle error - token retrieval failed
        getIt<LoadingHelper>().dismissDialog();
        print('Failed to get delegation token: ${error.message}');
      },
    );
  }

  bool shouldShowClientSelection() {
    var context = getIt<GlobalContext>().context();
    var profile = context.read<ProfileCubit>().state.model;
    var pref = getIt<SharedPreferences>();

    if (profile == null) {
      return false; // User not authenticated
    }
    // If user is a team member, always show client selection
    if (profile.isTeamMemberUser == true) {
      return true;
    }

    return pref.getString('base_account_id') != null;
  }

  String getSelectedClientName() {
    if (!shouldShowClientSelection()) {
      return Translate.s.my_account;
    }
    var context = getIt<GlobalContext>().context();
    var profile = context.read<ProfileCubit>().state.model;
    // Check if there's a currently selected client from the clients list
    MemberClientDelegationModel? selected = _getSelectClient(profile);
    if (selected != null) {
      return getClientFullName(selected);
    }
    return Translate.s.my_account;
  }

  MemberClientDelegationModel? _getSelectClient(ProfileModel? profile) {
    final currentClients = clientsBloc.data;
    var selected = currentClients?.firstWhereOrNull(
      (client) => client.principalProfileId == profile?.id,
    );
    return selected;
  }


  String getClientFullName (MemberClientDelegationModel client) {
    if (client.brandName != null && client.brandName!.isNotEmpty) {
      return client.brandName!;
    }
    if (client.firstName == null && client.lastName == null) {
      return client.username ?? Translate.s.my_account;
    }
    return '${client.firstName ?? ""} ${client.lastName ?? ""}';
  }

  void dispose() {
    clientsBloc.close();
  }
}
