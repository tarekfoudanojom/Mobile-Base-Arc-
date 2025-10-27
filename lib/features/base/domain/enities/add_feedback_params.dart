import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class AddFeedbackParams {
  final String note;
  final String appVersion;
  final String deviceType;

  AddFeedbackParams({
    required this.note,
    required this.appVersion,
    required this.deviceType,
  });

  Map<String, dynamic> toJson() => {
        'note': note,
        'app_version': appVersion,
        'device_type': deviceType,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
