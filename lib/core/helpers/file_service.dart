import 'dart:io';
import 'dart:math';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/errors/custom_error.dart';
import 'package:flutter_tdd/core/extensions/common_extension.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/helpers/psermission_services.inject.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

@injectable
class AppFileService {
  /// Max size in Bytes (default 8MB)
  static const int defaultMaxSize = 800000000000;

  /// pick file from device with optional parameter 'allowMultiple' if true user can select multi files else can select one file
  /// 'allowAddAttachments' optional parameter contain max size for each file "by default _maxSize = '8000'", and what type of file
  /// should be selected by user 'allowedExtensions'
  ///
  /// [pickFile] should return list<PlatformFile> or null
  Future<List<File>?> pickFile(
    BuildContext context, {
    List<String>? allowedMimeType,
    List<String>? allowedExtensions,
    FileType? fileType,
    int? maxFileSize,
    bool allowMultiple = false,
  }) async {
    // final maxSize = maxFileSize ?? defaultMaxSize;

    /// Check if user has access to storage
    bool canAccess =
        await GetIt.I<PermissionServices>().requestPermission(Permission.storage, context);

    if (canAccess) {
      /// Pick file from device
      getIt<LoadingHelper>().showLoadingDialog();
      FilePickerResult? pickedFiles = await FilePicker.platform.pickFiles(
        type: fileType ?? (allowedExtensions.isNullOrEmpty ? FileType.any : FileType.custom),
        allowMultiple: allowMultiple,
        allowCompression: true,
        allowedExtensions: allowedExtensions,
      );
      getIt<LoadingHelper>().dismissDialog();
      if (pickedFiles != null) {
        // List<String> fileHasHugeSize = [];
        // List<File> acceptedFiles = [];
        //
        // /// Check file size and add it to acceptedFiles if it's size is less than allowed size
        // for (var file in pickedFiles.files) {
        //   if (file.size > maxSize) {
        //     fileHasHugeSize.add(file.name);
        //   } else {
        //     acceptedFiles.add(File(file.path!));
        //   }
        // }
        //
        // /// Show warning if file size is more than allowed size
        // _showAllowedSizeExceededWarning(fileHasHugeSize: fileHasHugeSize, maxSize: maxSize);

        return pickedFiles.files.map((file) => File(file.path!)).toList();
      }
    }
    return null;
  }

  Future<List<File>?> pickImagesFiles(BuildContext context,
      {required bool allowMulti,
      String? sheetTitle,
      String? sheetSubTitle,
      List<String>? allowedExtensions}) async {
    List<File>? files;
    await showCupertinoModalPopup(
        context: context,
        useRootNavigator: false,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CupertinoActionSheet(
              actions: [
                Visibility(
                  visible: sheetTitle != null,
                  child: Container(
                    color: context.colors.white,
                    child: CupertinoActionSheetAction(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text(
                            sheetTitle ?? "",
                            style: AppTextStyle.s14_w600(color: context.colors.grey),
                          ),
                          if (sheetSubTitle != null) Gaps.vGap8,
                          if (sheetSubTitle != null)
                            Text(
                              sheetSubTitle,
                              style: AppTextStyle.s13_w600(color: context.colors.lightGray),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: context.colors.white,
                  height: 65,
                  child: CupertinoActionSheetAction(
                    onPressed: () async {
                      final file = await _onCameraPressed(context);
                      if (file != null) {
                        files = [file];
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      Translate.s.camera,
                      style: AppTextStyle.s20_w400(color: context.colors.blue),
                    ),
                  ),
                ),
                Container(
                  color: context.colors.white,
                  height: 65,
                  child: CupertinoActionSheetAction(
                    onPressed: () async {
                      final images = await _pickImageFiles(context,
                          allowMultiple: allowMulti, fileType: FileType.media);
                      if (images != null) {
                        files = images;
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      Translate.s.library,
                      style: AppTextStyle.s20_w400(color: context.colors.blue),
                    ),
                  ),
                ),
                Container(
                  color: context.colors.white,
                  height: 65,
                  child: CupertinoActionSheetAction(
                    onPressed: () async {
                      final images = await pickFile(context,
                          allowMultiple: allowMulti, allowedExtensions: allowedExtensions);
                      if (images != null) {
                        files = images;
                      }
                      Navigator.pop(context);
                    },
                    child: Text(
                      Translate.s.file,
                      style: AppTextStyle.s20_w400(color: context.colors.blue),
                    ),
                  ),
                ),
              ],
              cancelButton: Container(
                height: 65,
                decoration: BoxDecoration(
                    color: context.colors.white, borderRadius: BorderRadius.circular(12)),
                child: CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    Translate.s.app_cancel,
                    style: AppTextStyle.s20_w600(color: context.colors.blue),
                  ),
                ),
              ),
            ),
          );
        });
    return files;
  }

  Future<File?> _onCameraPressed(BuildContext context) async {
    try {
      final picker = ImagePicker();
      XFile? pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 60,
      );
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } on PlatformException catch (e) {
      if (e.code == "camera_access_denied") {
        AppSnackBar.showErrorSnackBar(error: CustomError(msg: e.message ?? ""));
      }
      return null;
    }
  }

  Future<List<File>?> _pickImageFiles(
    BuildContext context, {
    bool allowMultiple = false,
    FileType? fileType,
  }) async {
    return pickFile(
      context,
      allowedMimeType: null,
      allowMultiple: allowMultiple,
      fileType: fileType ?? FileType.image,
    );
  }

  Future<List<File>?> pickVideoFiles(
    BuildContext context, {
    bool allowMultiple = false,
  }) async {
    return pickFile(
      context,
      allowedMimeType: null,
      allowMultiple: allowMultiple,
      fileType: FileType.video,
    );
  }

  void _showAllowedSizeExceededWarning({
    required List<String> fileHasHugeSize,
    required int maxSize,
  }) {
    if (fileHasHugeSize.isNotEmpty) {
      String filesName = fileHasHugeSize.join(", ");
      AppSnackBar.showSimpleToast(
          msg: Translate.s.size_more_than_mg_error((maxSize) / pow(1024, 2), filesName));
    }
  }

  Future<void> openFile(String payload) async {
    final file = File(payload);
    if (file.existsSync()) {
      await OpenFile.open(file.path);
    } else {
      print('This notification payload is not a valid file path or file does not exist');
    }
  }


  Future<File?> fileFromUrl(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      final documentDir = await getTemporaryDirectory();
      final fileName = imageUrl.split('/').last;
      final filePath = '${documentDir.path}/$fileName';
      final file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);
      return file;
    } else {
      return null;
    }
  }

  Future<File?> pdfFileFromUrl(String fileUrl) async {
    final response = await http.get(Uri.parse(fileUrl));
    if (response.statusCode == 200) {
      final documentDir = await getTemporaryDirectory();
      final fileName = fileUrl.split('/').last;
      final filePath = '${documentDir.path}/$fileName';
      final file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);
      return file;
    } else {
      return null;
    }
  }

  Future<void> deleteLocalFile(File? file) async {
    if ((await file?.exists()) ?? false) {
      await file?.delete();
      print('File deleted successfully from: ${file?.path}');
    }
  }

  Future<File> convertUint8ListToFile(Uint8List data, String fileName) async {
    // Get the directory for temporary files
    final directoryPath = await _getSavePath();

    // Create the file path
    final filePath = '$directoryPath/$fileName';

    // Create and write the file
    final file = File(filePath);
    await file.writeAsBytes(data);

    return file;
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

}
