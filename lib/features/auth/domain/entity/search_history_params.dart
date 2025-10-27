import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class SearchHistoryParams {
  final String? deviceToken;

  SearchHistoryParams({required this.deviceToken});

  Map<String, dynamic> toJson() => {'device_token': deviceToken};

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
