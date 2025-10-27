import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class UpdateProfileAddressParams{
  final int? locationPublic;
  final int? registrationStep;

  UpdateProfileAddressParams({this.locationPublic,this.registrationStep});

  Map<String, dynamic> toJson() => {
    'location_public': locationPublic,
    'registration_step': registrationStep,

  };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}