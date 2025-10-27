import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class StatesParams {
  int? countryId;
  String? search;

  StatesParams({this.countryId, this.search});

  Map<String, dynamic> toJson() => {'countryID': countryId, if (search != null) 'search': search};

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
