// import 'dart:convert';
import 'dart:io';
import 'package:flutter_tdd/core/helpers/aes_service.dart';

class UpdateProfileImageParams {
  final int? profileId;
  final int? profileTypeId;
  final File? profile;

  UpdateProfileImageParams({
    this.profileId,
    this.profileTypeId,
    this.profile,
  });

  Map<String, dynamic> toMap() => {
        if(profileId != null) 'profile_id': profileId,
        if(profileTypeId != null) "profile_type_id": profileTypeId,
        "profile": profile,
      };

  // Future<Map<String, String>> toEncodedMap() async {
  //   var encodedData = await AesService.instance.encrypt(json.encode(toMap()));
  //   return {"data": encodedData};
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['profile'] = profile;
    if(profileId != null) data['profile_id'] = profileId;
    if(profileTypeId != null) data['profile_type_id'] = profileTypeId;
    return data;
  }

}
