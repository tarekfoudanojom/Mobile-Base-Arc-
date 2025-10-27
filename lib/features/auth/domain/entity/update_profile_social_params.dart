import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class UpdateProfileSocialParams {
  final int? registrationStep;

  UpdateProfileSocialParams({this.registrationStep});

  Map<String, dynamic> toJson() => {
        'registration_step': registrationStep,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
