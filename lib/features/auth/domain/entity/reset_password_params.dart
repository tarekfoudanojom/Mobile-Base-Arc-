import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class ResetPasswordParams{
  final String password;
  final String? otp;
  final String? email;

  ResetPasswordParams({required this.password, required this.otp, required this.email});

  Map<String, dynamic> toJson() => {
    'password': password,
    'otp': otp,
    'email': email,
  };


  Future<Map<String, String>> toEncodedMap()async {
    var encodedData =  await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }


}