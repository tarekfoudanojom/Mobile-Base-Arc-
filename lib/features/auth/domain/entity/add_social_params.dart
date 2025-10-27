import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class AddSocialParams {
  final String? followers;
  final int? isPublic;
  final int? socialPlatformId;
  final int? socialPlatformTypeId;
  final String? username;

  AddSocialParams({
    this.followers,
    this.isPublic,
    this.socialPlatformId,
    this.socialPlatformTypeId,
    this.username,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (followers != null && followers != "") {
      data['followers'] = followers;
    }
    data['is_public'] = isPublic;
    data['social_platform_id'] = socialPlatformId;
    data['social_platform_type_id'] = socialPlatformTypeId;
    data['username'] = username;
    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
