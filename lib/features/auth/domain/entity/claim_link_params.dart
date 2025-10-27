import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class ClaimLinkParams {
  final int? isVerified;
  final String? username;
  final int? registrationStep;

  ClaimLinkParams({this.isVerified, this.username, this.registrationStep});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_verified'] = isVerified;
    data['registration_step'] = registrationStep;

    if (username != null && username!.isNotEmpty) {
      data["username"] = username;
    }
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
