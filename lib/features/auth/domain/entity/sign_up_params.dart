import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class SignUpParams {
  final String? username;
  final String? email;
  final String? password;
  final String? mobilePrefix;
  final String? contactNo;
  final String? deviceToken;
  final int? deviceType; // 0 for ios, 1 for android
  final int? profileTypeId;
  final int? platform; // 1 for android, 2 for ios

  SignUpParams({
    this.contactNo,
    this.deviceToken,
    this.deviceType,
    this.email,
    this.mobilePrefix,
    this.password,
    this.profileTypeId,
    this.platform,
    this.username,
  });

  Map<String, dynamic> toJson() => {
        'contactNo': contactNo,
        'device_token': deviceToken,
        'device_type': deviceType,
        'email': email,
        'username': username,
        'mobile_prefix': mobilePrefix,
        'password': password,
        // 'profile_type_id': profileTypeId,
        'platform': platform,
        'sys_id': 6,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
