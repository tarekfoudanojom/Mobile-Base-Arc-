import 'dart:convert';
import 'dart:io';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class AddSocialPlatformParams {
  final String? link;
  final String? platformName;
  final File? file;

  AddSocialPlatformParams({this.link, this.platformName, this.file});

  Map<String, dynamic> toMap() => {
        'link': link,
        'platform_name': platformName,
      };

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toMap()));
    return {"data": encodedData};
  }

  Future<Map<String, dynamic>> toJson() async {
    Map<String, dynamic>? requestBody = await toEncodedMap();
    final Map<String, dynamic> data = <String, dynamic>{
      ...requestBody,
    };
    data["file"] = file;
    return data;
  }
}
