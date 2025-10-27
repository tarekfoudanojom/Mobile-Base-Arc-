import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/choose_image_type.dart';
import 'package:flutter_tdd/core/widgets/contact_picker_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

@lazySingleton
class Utilities {
  String formatDate(DateTime date, {DateFormat? dateFormatter}) {
    DateFormat formatter = dateFormatter ?? DateFormat.yMd();
    return formatter.format(date);
  }

  void moveItem(
      {required int oldIndex,
      required int newIndex,
      required BaseBloc<List> data,
      Function()? onReorder}) {
    var dataList = data.data;
    // print("=====dataList>>>${dataList?.length}");
    // print("=====oldIndex===$oldIndex");
    // print("=====newIndex===$newIndex");

    if (newIndex < 0 || newIndex > dataList!.length) return;
    var movedItem = dataList.removeAt(oldIndex);
    if (newIndex > oldIndex) {
      dataList.insert(newIndex - 1, movedItem);
    } else {
      dataList.insert(newIndex, movedItem);
    }
    if (onReorder != null) {
      onReorder();
    }
    data.successState(dataList);
  }

  Future<String> get deviceToken async {
    try {
      FirebaseMessaging messaging = FirebaseMessaging.instance;
      return (await messaging.getToken()) ?? "undefinded";
    } catch (e) {
      print("error in get device token");
    }
    return "undefinded";
  }

  Future<void> changeLanguage(String lang, BuildContext context) async {
    context.read<DeviceCubit>().updateLanguage(Locale(lang));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", lang);
    GlobalState.instance.set("lang", lang);
  }

  Future<void> changeCurrency(BuildContext context, String currency) async {
    context.read<DeviceCubit>().updateCurrency(currency);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("currency", currency);
    GlobalState.instance.set("currency", currency);
  }

  Future<File?> getCameraImage(BuildContext context) async {
    var result = await ImagePicker().pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.rear,
        imageQuality: 60);
    if (result != null) {
      return File(result.path);
    } else {
      return null;
    }
  }

  Future<File?> getImageFile(BuildContext context,
      {FileType? fileType, bool showFile = false, String? sheetTitle}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    return await showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return ChooseImageType(
            showFile: showFile,
            sheetTitle: sheetTitle,
          );
        });
  }

  Future<File?> getImageGallery(BuildContext context,
      {FileType? fileType}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: fileType ?? FileType.image,
      allowMultiple: false,
      allowedExtensions: fileType == FileType.custom ? ['pdf'] : null,
    );
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }

  Future<File?> pickImageWithValidation(
      BuildContext context, ObsValue<File?>? imageObs,
      {bool isCustom = false,
      int? imagePixHeight,
      int? imagePixWidth,
      Function()? onPickImageConfirm}) async {
    await getImageFile(context).then(
      (value) async {
        if (value != null) {
          if (isCustom) {
            final imageBytes = await value.readAsBytes();
            var decodedImage = await decodeImageFromList(imageBytes);
            if (imagePixHeight != null && imagePixWidth != null) {
              if (decodedImage.width >= imagePixWidth &&
                  decodedImage.height >= imagePixHeight) {
                if (imageObs != null) {
                  imageObs.setValue(value);
                }
                if (onPickImageConfirm != null) {
                  onPickImageConfirm();
                }
                return value;
              } else {
                AppSnackBar.showSimpleToast(
                    msg: 'Image is too small, please select another image');
              }
            }
          } else {
            if (imageObs != null) {
              imageObs.setValue(value);
            }
            return value;
          }
        }
      },
    );
    return null;
  }

  Future<File?> getFile(BuildContext context,
      {List<String>? allowedExtensions, FileType? type}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: type ?? FileType.any,
      allowedExtensions: type == FileType.custom ? allowedExtensions : null,
      allowMultiple: false,
    );
    if (result != null) {
      File imageFile = File(result.files.single.path!);
      return imageFile;
    }
    return null;
  }

  // Future<void> pickVideoOrImage(
  //     BuildContext context, ObsValue<VideoImagePickerParams?> videoImageObs,
  //     {bool isCustom = false,
  //     int? imagePixHeight,
  //     int? imagePixWidth,
  //     Function()? onPickImageConfirm}) async {
  //   var result = await getFile(context);
  //   if (result != null) {
  //     print("========result=====>${result.path}");
  //     if (result.path.contains("mp4")) {
  //       VideoPlayerController controller = VideoPlayerController.file(File(result.path));
  //       final fileImage = await VideoThumbnail.thumbnailFile(
  //         video: result.path,
  //         imageFormat: ImageFormat.JPEG,
  //         // thumbnailPath: (await getTemporaryDirectory()).path,
  //
  //         quality: 100,
  //       );
  //       await controller.initialize();
  //       print("====fileImage====${fileImage}");
  //       int videoWidth = controller.value.size.width.toInt();
  //       int videoHeight = controller.value.size.height.toInt();
  //       print("=====videoWidth=$videoWidth");
  //       print("=====videoHeight=$videoHeight");
  //
  //       if (imagePixHeight != null && imagePixWidth != null) {
  //         if (videoWidth >= imagePixWidth && videoHeight >= imagePixHeight) {
  //           VideoImagePickerParams params =
  //               VideoImagePickerParams(file: result, fileName: fileImage);
  //           print("======2>>${params.toJson()}");
  //           videoImageObs.setValue(params);
  //           if (onPickImageConfirm != null) {
  //             onPickImageConfirm();
  //           }
  //         } else {
  //           AppSnackBar.showSimpleToast(
  //             msg: 'It is too small, must be at least ${imagePixWidth}x$imagePixHeight',
  //           );
  //         }
  //       }
  //     } else {
  //       final imageBytes = await result.readAsBytes();
  //       var decodedImage = await decodeImageFromList(imageBytes);
  //       if (imagePixHeight != null && imagePixWidth != null) {
  //         if (decodedImage.width >= imagePixWidth && decodedImage.height >= imagePixHeight) {
  //           VideoImagePickerParams params = VideoImagePickerParams(file: result);
  //           print("======>>${params.toJson()}");
  //           videoImageObs.setValue(params);
  //           if (onPickImageConfirm != null) {
  //             onPickImageConfirm();
  //           }
  //         } else {
  //           AppSnackBar.showSimpleToast(
  //             msg: 'It is too small, must be at least ${imagePixWidth}x$imagePixHeight',
  //           );
  //         }
  //       }
  //     }
  //   }
  // }

  void copyToClipBoard(BuildContext context, String copiedText,
      {Color? color}) {
    FlutterClipboard.copy(copiedText);
    // AppSnackBar.showSuccessSnackBar(Translate.s.copied);
    AppSnackBar.showSimpleToast(
      msg: Translate.s.copied,
      color: color ?? context.colors.black,
      gravity: ToastGravity.TOP,
    );
  }

  void launchUrlLauncher({required String url, bool? isApp}) async {
    try {
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        url = 'https://$url';
      }
      var uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        await launchUrl(uri, mode: LaunchMode.inAppWebView);
      }
    } catch (error) {
      AppSnackBar.showWarningSnackBar(message: 'something went wrong');
      print("can not launch url launcher");
    }
  }

  void onShare({required String url}) async {
    SharePlus.instance.share(ShareParams(text: url));
  }

  String formatNumber(int? number) {
    if (number == null || number == 0) return "";
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed((number % 1000000 == 0) ? 0 : 1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed((number % 1000 == 0) ? 0 : 1)}K';
    } else {
      return number.toString();
    }
  }

  Future<int?> getFileSize(String fileUrl) async {
    try {
      final dio = Dio();
      final response = await dio.head(fileUrl);
      if (response.statusCode == 200) {
        String? contentLength = response.headers.value('content-length');
        if (contentLength != null) {
          return int.parse(contentLength);
        }
      }
      return null;
    } catch (e) {
      print("Error fetching file size: $e");
      return null;
    }
  }

  Future<void> goWhatsapp(String contact) async {
    var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
    var iosUrl =
        "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } on Exception {
      EasyLoading.showError('WhatsApp is not installed.');
    }
  }

  Future<void> sendAnEmail(String email) async {
    const title = "Need support!";
    const message = "";
    final Uri url = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$title&body=$message',
    );

    await launchUrl(url);
  }

  void callNumber({required String number}) async {
    await launchUrl(Uri.parse('tel:$number'));
  }

  Future<Contact?> pickContact(BuildContext context) async {
    await _requestContactsPermission();

    final contacts = await FlutterContacts.getContacts(withProperties: true);

    if (contacts.isEmpty) {
      return null;
    }
    final selectedContact = AppBottomSheets.showScrollableBody<Contact>(
      context: context,
      builder: (context) => ContactPickerDialog(contacts: contacts),
    );

    if (selectedContact != null) {
      return selectedContact;
    }
    return null;
  }

  static Future<bool> _requestContactsPermission() async {
    final status = await Permission.contacts.request();
    return status.isGranted;
  }

  String handleDecimalFormat(double percentage) {
    if (percentage % 1 == 0) {
      return percentage.toStringAsFixed(0);
      // return percentage.toIntString();
    } else {
      if ((percentage * 10) % 1 == 0) {
        return percentage.toStringAsFixed(1);
        // return percentage.toIntString();
      } else if ((percentage * 100) % 1 == 0) {
        return percentage.toStringAsFixed(2);
        // return percentage.toIntString();
      } else {
        String formatted = percentage.toStringAsFixed(2);
        // String formatted = percentage.toIntString();
        formatted = formatted.replaceAll(RegExp(r"0*$"), "");
        formatted = formatted.replaceAll(RegExp(r"\.$"), "");
        return formatted;
      }
    }
  }

  void handleScrollUpButtonVisibility(
      ScrollController scrollController, ObsValue<bool> showScrollUpButtonObs) {
    final bool scrolledFromTop = scrollController.offset > 0;
    if (scrolledFromTop) {
      showScrollUpButtonObs.setValue(true);
    } else {
      showScrollUpButtonObs.setValue(false);
    }
  }

  String convertDigitsToLatin(String s) {
    var sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }

  String reverseNumbersToString(
    String input,
  ) {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == "ar") {
      List<String> parts = input.split('-');
      if (parts.length == 2) {
        return "${parts[1]} - ${parts[0]}";
      } else {
        return input;
      }
    } else {
      return input;
    }
  }

  String handleThousandFormat(String price) {
    try {
      final double orderTotalPrice = double.parse(price);
      final formatter = NumberFormat.decimalPattern();
      return formatter.format(orderTotalPrice);
    } catch (e) {
      // If parsing fails, return the original string
      return price;
    }
  }
}
