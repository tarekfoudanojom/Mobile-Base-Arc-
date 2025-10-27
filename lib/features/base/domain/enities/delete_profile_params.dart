

import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class DeleteProfileParams{
  final String reason;

  DeleteProfileParams({ required this.reason});

  Map<String, dynamic> toJson() => {'reason': reason};

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
