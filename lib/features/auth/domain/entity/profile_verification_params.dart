import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class ProfileVerificationParams {
  final int type;

  ProfileVerificationParams({required this.type});

  Map<String, dynamic> toJson() => {'type': type};

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
