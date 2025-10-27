import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class SendOtpPhoneParams {
  final String? phone;

  SendOtpPhoneParams({this.phone});

  Map<String, dynamic> toJson() => {
        'phone': phone,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    // print("====encodedData2===>$encodedData");
    return {"data": encodedData};
  }
}
