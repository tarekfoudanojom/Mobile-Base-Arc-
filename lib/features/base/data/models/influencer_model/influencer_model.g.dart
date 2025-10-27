// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'influencer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfluencerModelImpl _$$InfluencerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InfluencerModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      payRate: (json['pay_rate'] as num?)?.toInt(),
      img: json['img'] as String,
      profileImg: json['profileimg'] as String,
      summary: json['summary'] as String?,
      profileStatus: json['profile_status'] as String?,
      minPrice: json['min_price'] as num?,
      maxPrice: json['max_price'] as num?,
      socialPlatforms: (json['social_platforms'] as List<dynamic>?)
              ?.map((e) =>
                  StarSocialPlatformModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      skills: (json['skills'] as List<dynamic>?)
          ?.map((e) => SkillModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cityName: json['cityName'] as String?,
      stateNameAr: json['stateNameAr'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
      cityNameAr: json['cityNameAr'] as String?,
      stateName: json['stateName'] as String?,
      countryName: json['countryName'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      isVerified: json['is_verified'] as bool?,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$InfluencerModelImplToJson(
        _$InfluencerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'pay_rate': instance.payRate,
      'img': instance.img,
      'profileimg': instance.profileImg,
      'summary': instance.summary,
      'profile_status': instance.profileStatus,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'social_platforms':
          instance.socialPlatforms.map((e) => e.toJson()).toList(),
      'skills': instance.skills?.map((e) => e.toJson()).toList(),
      'cityName': instance.cityName,
      'stateNameAr': instance.stateNameAr,
      'countryNameAr': instance.countryNameAr,
      'cityNameAr': instance.cityNameAr,
      'stateName': instance.stateName,
      'countryName': instance.countryName,
      'is_favorite': instance.isFavorite,
      'is_verified': instance.isVerified,
      'selected': instance.selected,
    };
