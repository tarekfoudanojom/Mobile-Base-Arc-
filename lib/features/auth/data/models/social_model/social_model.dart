import 'package:flutter_tdd/features/auth/data/models/social_item_model/social_item_model.dart';

class SocialModel {
  List<SocialItemModel>? socials;
  SocialModel({required this.socials});

  SocialModel.fromJson(Map<String, dynamic> json) {
    socials = (json['data'] as List<dynamic>)
        .map((e) => SocialItemModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = socials?.map((e) => e.toJson()).toList();
    return data;
  }
}
