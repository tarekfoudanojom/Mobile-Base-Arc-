// ignore_for_file: use_build_context_synchronously
// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_streem_chat_helper.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/logout_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/base/domain/models/switch_account_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/base/presentation/pages/widgets/verify_your_account_widget.dart';
import '../routes/router_imports.gr.dart';

@injectable
class UserServicesHelper {
  Future<void> saveUserData(BuildContext context, String jwt) async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // var dec = await AesService.instance.decrypt(jwt);
    // var userData = UserModel.fromJson(dec);
    context.read<DeviceCubit>().updateUserAuth(true);
    saveInitCurrentAccount(jwt);
    // preferences.setString("user", json.encode(userData.toJson()));
    // preferences.setString("token", model.token);
    // GlobalState.instance.set('token', model.token);
    // context.read<UserCubit>().onUpdateUserData(userData);
  }

  Future<void> clearUserData(BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
    context.read<DeviceCubit>().updateUserAuth(false);
    context.read<ProfileCubit>().onUpdateProfileData(null);
    GlobalState.instance.set("token", null);
    signOutGoogle();
  }

  void signOutGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final FirebaseAuth auth = FirebaseAuth.instance;
    bool isLogged = await googleSignIn.isSignedIn();
    if (isLogged) {
      await googleSignIn.disconnect();
      await auth.signOut();
    }
  }

  void onBackToLogin(BuildContext context) {
    clearUserData(context).then(
      (value) => AutoRouter.of(context).replace(AuthPageRoute()),
    );
  }

  Future<void> onPressLogout(BuildContext context) async {
    LogoutParams params = LogoutParams(deviceToken: (await getIt<Utilities>().deviceToken));
    var data = await getIt<AuthRepository>().logout(params);
    data.whenOrNull(
      isSuccess: (data) => clearUserData(context).then(
        (value) {
          StreamChatHelper.disconnectUser(context);
          AutoRouter.of(context).push(HomePageRoute());
        },
      ),
    );
  }

  Future<String?> getMultiAccounts() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("accounts");
  }

  Future<void> saveMultiAccounts(String accounts) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("accounts", accounts);
  }

  Future<void> updateAccountProfileModel(ProfileModel? profileModel) async {
    var context = getIt<GlobalContext>().context();
    final prefs = await SharedPreferences.getInstance();
    var user = prefs.getString("user");
    UserModel userData = UserModel.fromJson(json.decode(user!));
    var token = prefs.getString("token");

    SwitchAccountModel account = SwitchAccountModel(
      token: token,
      userModel: userData,
      profileModel: profileModel,
    );
    var accounts = await getMultiAccounts();
    var result = accounts != null ? json.decode(accounts) : [];
    if (result != null && result.isNotEmpty) {
      List<SwitchAccountModel> myAccounts =
          List<SwitchAccountModel>.from(json.decode(accounts!).map((e) => SwitchAccountModel.fromJson(e))).toList();

      myAccounts.removeWhere((e) => e.userModel?.id == userData.id);
      myAccounts.add(account);
      for (var account in myAccounts) {
        account.isSelected = false;
        if (account.userModel?.id == userData.id) {
          account.isSelected = true;
          prefs.setString("user", json.encode(account.userModel?.toJson()));
          prefs.setString("token", account.token ?? "");
          prefs.setString("profile", json.encode(profileModel?.toJson()));
          context.read<UserCubit>().onUpdateUserData(account.userModel!);
          context.read<ProfileCubit>().onUpdateProfileData(profileModel!);
          GlobalState.instance.set('token', account.token);
        }
      }
      await saveMultiAccounts(json.encode(myAccounts));
    } else {
      List<SwitchAccountModel> addedAccounts = [];
      addedAccounts.add(account);
      for (var account in addedAccounts) {
        account.isSelected = false;
        if (account.userModel?.id == userData.id) {
          account.isSelected = true;
          prefs.setString("user", json.encode(account.userModel?.toJson()));
          prefs.setString("token", account.token ?? "");
          prefs.setString("profile", json.encode(profileModel?.toJson()));
          context.read<UserCubit>().onUpdateUserData(account.userModel!);
          context.read<ProfileCubit>().onUpdateProfileData(profileModel!);
          GlobalState.instance.set('token', account.token);
        }
      }
      await saveMultiAccounts(json.encode(addedAccounts));
    }
  }

  Future<void> setCurrentAccount(int id) async {
    var context = getIt<GlobalContext>().context();
    final prefs = await SharedPreferences.getInstance();
    var accounts = await getMultiAccounts();
    List<SwitchAccountModel> myAccounts =
        List<SwitchAccountModel>.from(json.decode(accounts!).map((e) => SwitchAccountModel.fromJson(e))).toList();
    for (var account in myAccounts) {
      account.isSelected = false;
      if (account.userModel?.id == id) {
        account.isSelected = true;
        prefs.setString("user", json.encode(account.userModel?.toJson()));
        prefs.setString("token", account.token ?? "");
        prefs.setString("profile", json.encode(account.profileModel?.toJson()));
        context.read<UserCubit>().onUpdateUserData(account.userModel!);
        context.read<ProfileCubit>().onUpdateProfileData(account.profileModel!);
        GlobalState.instance.set('token', account.token);
      }
    }
    await saveMultiAccounts(json.encode(myAccounts));
  }

  Future<void> saveInitCurrentAccount(String jwt) async {
    var context = getIt<GlobalContext>().context();
    final prefs = await SharedPreferences.getInstance();
    Map<String, dynamic> userJson = JwtDecoder.decode(jwt);
    var userData = UserModel.fromJson(userJson);
    SwitchAccountModel account = SwitchAccountModel(
      token: jwt,
      userModel: userData,
    );
    var accounts = await getMultiAccounts();
    var result = accounts != null ? json.decode(accounts) : [];

    if (result != null && result.isNotEmpty) {
      List<SwitchAccountModel> myAccounts = List<SwitchAccountModel>.from(
        json.decode(accounts!).map((e) => SwitchAccountModel.fromJson(e)),
      ).toList();

      myAccounts.removeWhere((e) => e.userModel?.id == userData.id);
      myAccounts.add(account);
      for (var account in myAccounts) {
        account.isSelected = false;
        if (account.userModel?.id == userData.id) {
          account.isSelected = true;
          prefs.setString("user", json.encode(userData.toJson()));
          prefs.setString("token", jwt);
          GlobalState.instance.set('token', jwt);
          context.read<UserCubit>().onUpdateUserData(userData);
        }
      }
      await saveMultiAccounts(json.encode(myAccounts));
    } else {
      List<SwitchAccountModel> addedAccounts = [];
      addedAccounts.add(account);
      for (var account in addedAccounts) {
        account.isSelected = false;
        if (account.userModel?.id == userData.id) {
          account.isSelected = true;
          prefs.setString("user", json.encode(userData.toJson()));
          prefs.setString("token", jwt);
          GlobalState.instance.set('token', jwt);
          context.read<UserCubit>().onUpdateUserData(userData);
        }
      }
      await saveMultiAccounts(json.encode(addedAccounts));
    }
  }

  Future<void> handleRouteToCompleteSignup(BuildContext context) async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (ctx) => const VerifyYourAccountWidget(),
    );

    if (result == true) {
      // User completed verification or confirmed action
      debugPrint('User verified');
      AutoRouter.of(context).push(CompleteSignUpPageRoute(popOnBack: true));
    } else if (result == false) {
      // User canceled
      debugPrint('User cancelled verification');
    } else {
      // Modal was dismissed without pressing any button
      debugPrint('Modal dismissed');
    }
  }
}
