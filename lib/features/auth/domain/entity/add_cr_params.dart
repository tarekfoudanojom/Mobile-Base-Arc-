import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/helpers/aes_service.dart';

class AddCrParams {
  final String crNumber;
  final File? crFile;

  AddCrParams({required this.crNumber, required this.crFile});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cr_number'] = crNumber;
    if (crFile != null) data['cr_file'] = crFile;
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
