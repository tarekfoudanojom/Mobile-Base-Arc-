import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class LoginSignUpByPhoneParams {
  final String? deviceToken;
  final int deviceType;
  final String phone;
  final String code;

  LoginSignUpByPhoneParams({
    required this.deviceToken,
    required this.deviceType,
    required this.phone,
    required this.code,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['device_token'] = deviceToken;
    data['device_type'] = deviceType;
    data['phone'] = phone;
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
