import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/helpers/aes_service.dart';

class AddVATParams {
  final String vatNumber;
  final File? vatFile;

  AddVATParams({required this.vatNumber, required this.vatFile});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vat_number'] = vatNumber;
    if (vatFile != null) data['vat_file'] = vatFile;
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
