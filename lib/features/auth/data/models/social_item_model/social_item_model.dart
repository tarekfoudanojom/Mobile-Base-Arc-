import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/features/auth/data/models/social_platform_model/social_platform_model.dart';

class SocialItemModel {
  int? id;
  String? name;
  String? nameAr;
  List<SocialPlatformModel>? socialPlatforms;
  bool? isSelected=false;

  SocialItemModel({
    this.id,
    this.name,
    this.nameAr,
    this.socialPlatforms,
    this.isSelected = false,
  });

  SocialItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['nameAr'];
    socialPlatforms = (json['social_platforms'] as List<dynamic>)
        .map((e) => SocialPlatformModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['nameAr'] = nameAr;
    data['social_platforms'] = socialPlatforms?.map((e) => e.toJson()).toList();
    data['isSelected']=isSelected;
    return data;
  }

  String get getSocialName{
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang=="en" ? name : nameAr) ?? "";
  }
}
