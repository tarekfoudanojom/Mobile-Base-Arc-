import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/file_service.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/psermission_services.inject.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'di.dart';

class DownloadService {
  DownloadService._();

  Dio get dio => Dio(
        BaseOptions(
          baseUrl: ApiNames.baseUrl,
          headers: _header(),
          connectTimeout: const Duration(seconds: 30), // connection setup
          receiveTimeout: const Duration(minutes: 5), // data receiving
          sendTimeout: const Duration(seconds: 5), // sending request
        ),
      )..interceptors.add(LogInterceptor(
          responseBody: true,
          requestBody: true,
          responseHeader: true,
          logPrint: (data) => log(
                data.toString(),
              )));

  static final DownloadService instance = DownloadService._();

  Map<String, String> _header() {
    String? token = GlobalState.instance.get(ApplicationConstants.keyToken);
    return {
      "Content-Type": "application/json",
      'Accept': '*/*',
      'sys_id': '${6}',
      if (token != null) 'Authorization': token,
    };
  }

  Future<String> _getSavePath() async {
    late String localFileExternalPath;
    if (Platform.isIOS) {
      Directory documents = await getApplicationDocumentsDirectory();
      localFileExternalPath = documents.path;
    } else {
      Directory? documents = await getDownloadsDirectory();
      localFileExternalPath = documents?.path ?? "/storage/emulated/0/Download";
    }
    return localFileExternalPath;
  }

  Future<File?> downloadFile(
      {required String url, required BuildContext context}) async {
    await GetIt.I<PermissionServices>().requestPermission(
      Permission.storage,
      context,
    );

    /// this required for android 11 because it has different permission (files and media) to save file
    if (Platform.isAndroid) {
      await GetIt.I<PermissionServices>().requestPermission(
        Permission.storage,
        context,
      );
    }
    var localFilePath = "${await _getSavePath()}/invoice.pdf";
    print("==================$localFilePath");
    final response = await dio.download(
      url,
      localFilePath,
      onReceiveProgress: (int count, int total) {
        debugPrint('---Download----Rec: $count, Total: $total');
        debugPrint("${((count / total) * 100).toStringAsFixed(0)}%");
      },
    );
    // getIt<LoadingHelper>().dismissDialog();
    try {
      File file = File(localFilePath);
      getIt.get<AppFileService>().openFile(localFilePath);
      // AppSnackBar.showSuccessSnackBar(
      //   "Downloaded successfully",
      //   callback: () => getIt.get<AppFileService>().openFile(localFilePath),
      // );
      return file;
    } catch (e) {
      AppSnackBar.showErrorSnackBar(error: CustomError(msg: e.toString()));
      return null;
    }
  }

  Future<File?> downloadProposalFile(
      {required String url,
      required BuildContext context,
      required int campaignId}) async {
    await GetIt.I<PermissionServices>().requestPermission(
      Permission.storage,
      context,
    );

    /// this required for android 11 because it has different permission (files and media) to save file
    if (Platform.isAndroid) {
      await GetIt.I<PermissionServices>().requestPermission(
        Permission.storage,
        context,
      );
    }
    var localFilePath =
        "${await _getSavePath()}/campaign_#${campaignId}_proposal.pdf";

    String? token = GlobalState.instance.get(ApplicationConstants.keyToken);
    try {
      final response = await dio.download(
        url,
        localFilePath,
        options: Options(
          headers: {
            "Authorization": "$token",
          },
        ),
        onReceiveProgress: (int count, int total) {
          debugPrint('---Download----Rec: $count, Total: $total');
          debugPrint("${((count / total) * 100).toStringAsFixed(0)}%");
        },
      );

      if (response.statusCode == 200) {
        debugPrint("Download complete");
      } else {
        debugPrint("Download failed with status code: ${response.statusCode}");
      }
    } on DioException catch (e) {
      // DioException contains a response object if available
      if (e.response != null && e.response?.data != null) {
        try {
          final data = e.response?.data;
          final errorData = data is String ? jsonDecode(data) : data;
          final errorMessage = errorData['message'] ?? 'Unknown error';
          debugPrint("Download error: $errorMessage");
          AppSnackBar.showSimpleToast(msg: errorMessage);
        } catch (parseError) {
          debugPrint("Download error (raw): ${e.response?.data}");
          AppSnackBar.showSimpleToast(msg: e.response?.data);
        }
      } else {
        debugPrint("Unexpected error: ${e.message}");
      }
    } catch (e) {
      debugPrint("Unhandled error: $e");
    }

    // getIt<LoadingHelper>().dismissDialog();
    try {
      File file = File(localFilePath);
      getIt.get<AppFileService>().openFile(localFilePath);
      // AppSnackBar.showSuccessSnackBar(
      //   "Downloaded successfully",
      //   callback: () => getIt.get<AppFileService>().openFile(localFilePath),
      // );
      return file;
    } catch (e) {
      AppSnackBar.showErrorSnackBar(error: CustomError(msg: e.toString()));
      return null;
    }
  }
}
