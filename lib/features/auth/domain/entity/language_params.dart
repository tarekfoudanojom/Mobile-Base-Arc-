import 'dart:convert';

import 'package:flutter_tdd/core/helpers/aes_service.dart';

class ProfileParamsList {
  String language;
  String userName;
  String firstName;
  String lastName;
  String email;
  String mobilePrefix;
  String contactNo;
  String brandName;
  String companyName;
  String website;
  int isVerified;

  ProfileParamsList({
    required this.language,
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobilePrefix,
    required this.contactNo,
    required this.brandName,
    required this.companyName,
    required this.website,
    required this.isVerified,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    void addIfNotEmpty(String key, dynamic value) {
      if (value != null && (value is! String || value.trim().isNotEmpty)) {
        data[key] = value;
      }
    }

    addIfNotEmpty("language", language);
    addIfNotEmpty("first_name", firstName);
    addIfNotEmpty("last_name", lastName);
    addIfNotEmpty("username", userName);
    addIfNotEmpty("contactNo", contactNo);
    addIfNotEmpty("email", email);
    addIfNotEmpty("mobile_prefix", mobilePrefix);
    addIfNotEmpty("brand_name", brandName);
    addIfNotEmpty("is_verified", isVerified);
    addIfNotEmpty("company_name", companyName);
    addIfNotEmpty("website", website);

    return data;
  }

  Future<Map<String, String>> toEncodedMap() async {
    var encodedData = await AesService.instance.encrypt(json.encode(toJson()));
    return {"data": encodedData};
  }
}
