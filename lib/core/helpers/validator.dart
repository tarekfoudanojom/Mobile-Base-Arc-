import 'dart:developer';

import 'package:country_phone_validator/country_phone_validator.dart';
import 'package:flutter_tdd/core/helpers/phone_helper.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

extension Validator on String {
  String? noValidate() {
    return null;
  }

  String? validateEmpty({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    }
    return null;
  }

  String? validateName({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (length < 2 || length > 30) {
      return message ?? Translate.s.nameValidation;
    }
    return null;
  }

  // String? validatePassword({String? message}) {
  //   if (trim().isEmpty) {
  //     return message ?? Translate.s.fillField;
  //   } else if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(this)) {
  //     return message ?? Translate.s.passValidation;
  //   }
  //   return null;
  // }

  String? validatePassword({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (trim().length < 8) {
      return message ?? Translate.s.passValidation;
    }
    return null;
  }

  String? validateEmail({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this)) {
      return message ?? Translate.s.mailValidation;
    }
    return null;
  }

  String? validateSnapChatUSerNameLink({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(
            r"^https:\/\/(www\.)?snapchat\.com\/add\/[a-zA-Z0-9_-]{3,15}$")
        .hasMatch(this)) {
      return message ?? Translate.s.snap_chat_validate;
    }
    return null;
  }

  String? validateLink({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(r'^(https?:\/\/)'
            r'(www\.)'
            r'([a-zA-Z0-9\-_]+\.)+[a-zA-Z]{2,}'
            r'(\/[a-zA-Z0-9\-_\.]*)*')
        .hasMatch(this)) {
      return message ?? Translate.s.link_validate;
    }
    return null;
  }

  String? validateCompanyLink({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    }
    
    // Validate basic URL structure - allow empty query parameter values
    if (!RegExp(
      r'^(https?:\/\/)?([\w-]+\.)+[\w-]+(\/[^\s]*)?$',
      caseSensitive: false,
      multiLine: false,
    ).hasMatch(this)) {
      return message ?? Translate.s.link_validate;
    }
    
    return null;
  }

  String? validateEmailORNull({String? message}) {
    if (trim().isNotEmpty) {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(this)) {
        return message ?? Translate.s.mailValidation;
      }
    } else {
      return message ?? Translate.s.fillField;
    }
    return null;
  }

  String? validatePhone({String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(replaceAll(" ", "")) ||
        length < 10) {
      return message ?? Translate.s.phoneValidation;
    }
    return null;
  }

  String? validatePhoneOrNull({String? message}) {
    if (trim().isEmpty) {
      return null;
    } else if (!RegExp(
                r'(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)')
            .hasMatch(this) ||
        length < 10) {
      return message ?? Translate.s.phoneValidation;
    }
    return null;
  }

  bool validateOnCode(String dialCode) {
    var phone = PhoneHelper.handlePhone(this);
    bool isValid = CountryUtils.validatePhoneNumber(phone, dialCode);
    if (trim().isEmpty) {
      return true;
    } else if (isValid == false) {
      return false;
    }
    return true;
  }

  String? validatePasswordConfirm({required String pass, String? message}) {
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (this != pass) {
      return message ?? Translate.s.confirmValidation;
    }
    return null;
  }

  String? validateYouTubeUrl() {
    if (RegExp(
            r'^(https?:\/\/)?(www\.)?(youtube\.com|youtu\.be)\/(watch\?v=|embed\/|v\/|.+\?v=)?([^&=%\?]{11})')
        .hasMatch(this)) {
    } else {
      return Translate.s.wrong_url_video;
    }
    return null;
  }

  String? validateAddLink({String? message}) {
    String pattern =
        r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/+#-]*[\w@?^=%&amp;/+#-])?';
    if (trim().isEmpty) {
      return message ?? Translate.s.fillField;
    } else if (!RegExp(pattern).hasMatch(this)) {
      return message ?? Translate.s.link_validate;
    }
    return null;
  }

  String get arabicToEnglishNumbers {
    const arabicNums = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    const englishNums = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

    String result = this;
    for (int i = 0; i < arabicNums.length; i++) {
      result = result.replaceAll(arabicNums[i], englishNums[i]);
    }
    return result;
  }
}

String? validateDropDown(dynamic model, {String? message}) {
  if (model == null) {
    return message ?? Translate.s.fillField;
  }
  return null;
}
