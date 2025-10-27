import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class LoginParams {
  final String? deviceToken;
  final int deviceType;
  final String? userName;
  final String? password;
  final String? email;
  final String? firstName;
  final String? lastName;
  final dynamic googleId;
  final dynamic appleId;
  final int profileTypeId;
  final String loginMethod;

  LoginParams(
      {required this.deviceToken,
      required this.deviceType,
      required this.userName,
      required this.loginMethod,
      this.password,
      this.email,
      this.firstName,
      this.lastName,
      this.googleId,
      this.appleId,
      required this.profileTypeId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = userName;
    data['device_token'] = deviceToken;
    data['device_type'] = deviceType;
    // data['profile_type_id'] = profileTypeId;
    data['loginMethod'] = loginMethod;
    data['sys_id'] = 6;
    if (email != null) {
      data["email"] = email;
    }
    if (firstName != null) {
      data['first_name'] = firstName;
    }
    if (lastName != null) {
      data['last_name'] = lastName;
    }
    if (googleId != null) {
      data['google_id'] = googleId;
    }
    if (appleId != null) {
      data['apple_id'] = appleId;
    }
    if (password != null) {
      data["password"] = password;
    }

    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
