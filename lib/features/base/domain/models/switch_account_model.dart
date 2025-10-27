import 'package:flutter_tdd/features/auth/data/models/profile_model/profile_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';

class SwitchAccountModel {
  UserModel? userModel;
  String? token;
  ProfileModel? profileModel;
  bool? isSelected;

  SwitchAccountModel({
    this.userModel,
    this.token,
    this.profileModel,
    this.isSelected = false,
  });

  SwitchAccountModel.fromJson(Map<String, dynamic> json) {
    userModel = json['userModel'] != null
        ? UserModel.fromJson(json['userModel'] as Map<String, dynamic>)
        : null;
    token = json['token'] as String?;
    profileModel = json['profileModel'] != null
        ? ProfileModel.fromJson(json['profileModel'] as Map<String, dynamic>)
        : null;
    isSelected = json['isSelected'] as bool? ?? false;
  }

  Map<String, dynamic> toJson() {
    return {
      'userModel': userModel?.toJson(),
      'token': token,
      'profileModel': profileModel?.toJson(),
      'isSelected': isSelected,
    };
  }
}
