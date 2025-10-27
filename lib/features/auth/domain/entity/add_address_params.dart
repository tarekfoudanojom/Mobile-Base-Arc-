import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class AddAddressParams {
  final int? cityId;
  final int? countryId;
  final String? countryName;
  final int? stateId;

  AddAddressParams({this.cityId, this.countryId, this.countryName, this.stateId});

  Map<String, dynamic> toJson() => {
        if (cityId != null) "cityID": cityId,
        // "countryID": countryId,
        "latitude": 0.0,
        "longitude": 0.0,
        if (countryName != null) "country": countryName,
        if (countryId != null) "countryID": countryId,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
