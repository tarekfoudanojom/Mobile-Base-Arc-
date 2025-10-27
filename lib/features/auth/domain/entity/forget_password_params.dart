import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class ForgetPasswordParams{

  final String? email;
  final String? phone;

  ForgetPasswordParams({required this.email, this.phone});

  Map<String, dynamic> toJson() => {
    if(email!= null)'email': email,
    if(phone!= null)'phone': phone,
  };


  Future<Map<String, String>> toEncodedMap()async {
    var encodedData =  await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }

}