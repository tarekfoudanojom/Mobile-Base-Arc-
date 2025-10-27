// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_social_platform_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StarSocialPlatformModelImpl _$$StarSocialPlatformModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StarSocialPlatformModelImpl(
      id: json['id'] as num?,
      username: json['username'] as String?,
      followers: json['followers'] as num?,
      socialPlatformTypeId: json['social_platform_type_id'] as num?,
      socialPlatformId: json['social_platform_id'] as num?,
      name: json['name'] as String,
      filename: json['filename'] as String,
      filenameGray: json['filename_gray'] as String,
      webUrl: json['web_url'] as String,
      nameAr: json['nameAr'] as String,
      displayOrder: json['display_order'] as num?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$StarSocialPlatformModelImplToJson(
        _$StarSocialPlatformModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'followers': instance.followers,
      'social_platform_type_id': instance.socialPlatformTypeId,
      'social_platform_id': instance.socialPlatformId,
      'name': instance.name,
      'filename': instance.filename,
      'filename_gray': instance.filenameGray,
      'web_url': instance.webUrl,
      'nameAr': instance.nameAr,
      'display_order': instance.displayOrder,
      'isSelected': instance.isSelected,
    };
