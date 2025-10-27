import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';

import '../../../../base/domain/enums/profile_status_enum.dart';

class SocialPlatformModel {
  int? id;
  int? socialPlatformTypeId;
  String? name;
  String? filename;
  String? filenameGray;
  String? webUrl;
  String? nameAr;
  String? username;
  int? followers;
  int? displayOrder;
  int? isPublic;
  int? socialPlatformId;
  int? publicStatus;
  bool? isSelected = false;
  TextEditingController? nameController = TextEditingController();
  ObsValue<String>? urlValueObs = ObsValue<String>.withInit("");
  ObsValue<bool>? showSocialUrlObs = ObsValue<bool>.withInit(false);
  ObsValue<ProfileStatusEnum>? statusObs =
  ObsValue<ProfileStatusEnum>.withInit(ProfileStatusEnum.public);

  SocialPlatformModel({
    this.id,
    this.socialPlatformTypeId,
    this.name,
    this.filename,
    this.filenameGray,
    this.webUrl,
    this.nameAr,
    this.username,
    this.followers,
    this.displayOrder,
    this.isPublic,
    this.socialPlatformId,
    this.publicStatus,
    this.isSelected,
    this.nameController,
    this.urlValueObs,
    this.showSocialUrlObs,
    this.statusObs,
  });

  SocialPlatformModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    socialPlatformTypeId = json['social_platform_type_id'];
    name = json['name'];
    filename = json['filename'];
    filenameGray = json['filename_gray'];
    webUrl = json['web_url'];
    nameAr = json['nameAr'];
    username = json['username'];
    followers = json['followers'];
    displayOrder = json['display_order'];
    isPublic = json['is_public'];
    socialPlatformId = json['social_platform_id'];
    publicStatus = json['public_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['social_platform_type_id'] = socialPlatformTypeId;
    data['name'] = name;
    data['filename'] = filename;
    data['filename_gray'] = filenameGray;
    data['web_url'] = webUrl;
    data['nameAr'] = nameAr;
    data['username'] = username;
    data['followers'] = followers;
    data['display_order'] = displayOrder;
    data['is_public'] = isPublic;
    data['social_platform_id'] = socialPlatformId;
    data['public_status'] = publicStatus;
    data['isSelected'] = isSelected;
    data['nameController'] = nameController;
    data['urlValueObs'] = urlValueObs;
    data['showSocialUrlObs'] = showSocialUrlObs;
    data['statusObs'] = statusObs;

    return data;
  }
}
