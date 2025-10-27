
import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class VerifyEmailParams {
  final String binCode;
  final String? email ;
  final String? phone ;

  VerifyEmailParams( {required this.binCode,  this.email,this.phone });

  Map<String, dynamic> toJson() => {
    'otp': binCode,
    if(email!= null)'email': email,
    if(phone!= null)'phone': phone,
  };


  Future<Map<String, String>> toEncodedMap()async {
    var encodedData =  await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }

}