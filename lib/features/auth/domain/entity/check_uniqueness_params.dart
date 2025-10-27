import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class CheckUniquenessParams {
  final String? email;
  final String? contact;

  CheckUniquenessParams({this.email, this.contact});

  Map<String, dynamic> toJson() => {
        'email': email,
        'contact': contact,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
