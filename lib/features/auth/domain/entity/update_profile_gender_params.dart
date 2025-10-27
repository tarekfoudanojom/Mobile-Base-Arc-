import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class UpdateProfileGenderParams {
  final int? gender;
  final int? genderPublic;
  final int? registrationStep;

  UpdateProfileGenderParams(
      {this.gender, this.genderPublic, this.registrationStep});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender_public_status'] = genderPublic;
    data['registration_step'] = registrationStep;
    if (gender != null) {
      data["gender"] = gender;
    }
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
