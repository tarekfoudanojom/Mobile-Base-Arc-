import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class CityParams {
  final int? stateId;

  CityParams({this.stateId});

  Map<String, dynamic> toJson() => {'stateID': stateId};

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
