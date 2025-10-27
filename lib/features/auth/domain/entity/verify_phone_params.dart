
import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class VerifyPhoneParams {
  final String binCode;
  final String emailOrPhone;

  VerifyPhoneParams( {required this.binCode, required this.emailOrPhone,});

  Map<String, dynamic> toJson() => {
    'otp': binCode,
    'phone': emailOrPhone,
  };


  Future<Map<String, String>> toEncodedMap()async {
    var encodedData =  await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }

}