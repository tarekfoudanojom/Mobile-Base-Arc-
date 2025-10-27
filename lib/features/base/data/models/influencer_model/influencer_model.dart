import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart';
import 'package:flutter_tdd/features/base/data/models/skill_model/skill_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../star_social_platform_model/star_social_platform_model.dart';

part 'influencer_model.freezed.dart';
part 'influencer_model.g.dart';

@unfreezed
class InfluencerModel with _$InfluencerModel {
  const InfluencerModel._();

  @JsonSerializable(explicitToJson: true)
  factory InfluencerModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "pay_rate") int? payRate,
    @JsonKey(name: "img") required String img,
    @JsonKey(name: "profileimg") required String profileImg,
    @JsonKey(name: "summary") String? summary,
    @JsonKey(name: "profile_status") String? profileStatus,
    @JsonKey(name: "min_price") num? minPrice,
    @JsonKey(name: "max_price") num? maxPrice,
    // @JsonKey(name: "saved") required int saved,
    @JsonKey(name: "social_platforms", defaultValue: [])
    required List<StarSocialPlatformModel> socialPlatforms,
    required List<SkillModel>? skills,
    @JsonKey(name: "cityName") String? cityName,
    @JsonKey(name: "stateNameAr") String? stateNameAr,
    @JsonKey(name: "countryNameAr") String? countryNameAr,
    @JsonKey(name: "cityNameAr") String? cityNameAr,
    @JsonKey(name: "stateName") String? stateName,
    @JsonKey(name: "countryName") String? countryName,
    @JsonKey(name: "is_favorite") bool? isFavorite,
    @JsonKey(name: "is_verified") bool? isVerified,
    @Default(false) bool selected,
  }) = _InfluencerModel;

  factory InfluencerModel.fromJson(Map<String, dynamic> json) =>
      _$InfluencerModelFromJson(json);

  bool get isFav => isFavorite == true;

  String joinedSkills(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang ==  ApplicationConstants.langEN) {
      return skills?.map((e) => e.name).join(", ")??"";
    }
    return skills?.map((e) => e.nameAr).join(", ")??"";
  }

}
