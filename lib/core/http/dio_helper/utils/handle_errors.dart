import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/errors/not_found_error.dart';
import 'package:flutter_tdd/core/errors/unauthorized_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/user_services_helper.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class HandleErrors {
  void catchError(
      {Response? response,
      required Function(dynamic) errorFunc,
      bool showErrorMsg = true}) {
    if (response == null) {
      log("failed response Check Server");
      if (showErrorMsg) {
        AppSnackBar.showSimpleToast(
            msg: "Check Server", type: ToastType.info, color: Colors.black);
      }
    } else {
      log("failed response ${response.statusCode}");
      log("failed response ${response.data}");
      var data = response.data;
      try {
        if (data is String) data = json.decode(response.data);
        String message = "";
        if (response.statusCode != 422) {
          message = errorFunc(data).toString();
        }
        switch (response.statusCode) {
          case 503:
          case 404:
            if (showErrorMsg) {
              AppSnackBar.showSimpleToast(
                  msg: message, type: ToastType.info, color: Colors.black);
            }
            if (message == "Not Authorized") {
              _tokenExpired();
            }
            break;
          case 307:
            if (showErrorMsg) {
              AppSnackBar.showSimpleToast(
                  msg: message, type: ToastType.info, color: Colors.black);
            }
            break;
          case 500:
            if (showErrorMsg) {
              AppSnackBar.showSimpleToast(
                  msg: message, type: ToastType.info, color: Colors.black);
            }
            break;
          case 502:
            if (showErrorMsg) {
              AppSnackBar.showSimpleToast(
                  msg: "check your request",
                  type: ToastType.info,
                  color: Colors.black);
            }
            break;
          case 422:
          case 400:
            if(showErrorMsg){
              if (data["errors"] != null) {
                List<dynamic> errors = data["errors"];
                log("response errors $errors");
                List<String> lst =
                List<String>.from(data["errors"].map((e) => e["msg"]?? e["message"]));
                for (var e in lst) {
                  AppSnackBar.showSimpleToast(
                      msg: e, type: ToastType.info, color: Colors.black);
                }
              } else {
                AppSnackBar.showSimpleToast(
                    msg: message, type: ToastType.info, color: Colors.black);
              }
            }

            break;
          case 401:
            if ((data["message"] as String) ==
                "This account already deleted.") {
              _tokenExpired();
            }
          case 301:
          case 302:
            _tokenExpired();
            break;
        }
      } catch (e) {
        if (showErrorMsg) {
          AppSnackBar.showSimpleToast(
              msg: e.toString(), type: ToastType.info, color: Colors.black);
        }
      }
    }
  }

  MyResult<Response> statusError(
      Response response, Function(dynamic) errorFunc, bool showErrorMsg) {
    if (response.data["status"] == false) {
      if (showErrorMsg) {
        AppSnackBar.showSimpleToast(
            msg: response.data["message"],
            type: ToastType.info,
            color: Colors.black);
      }
      return MyResult.isError(CustomError(msg: response.data["message"]));
    }
    if (response.statusCode == 401) {
      return MyResult.isError(UnauthorizedError());
    } else if (response.statusCode == 404) {
      return MyResult.isError(NotFoundError());
    }
    return MyResult.isSuccess(response);
  }

  void _tokenExpired() async {
    var context = getIt<GlobalContext>().context();
    getIt<UserServicesHelper>().clearUserData(context).then(
      (value) {
        context.read<UserCubit>().onUpdateUserData(null);
        GlobalState.instance.set("token", null);
        context.read<DeviceCubit>().updateUserAuth(false);
        AutoRouter.of(context).push(HomePageRoute());
      },
    );
  }
}
