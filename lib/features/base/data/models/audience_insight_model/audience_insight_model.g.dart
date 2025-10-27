// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audience_insight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudienceInsightModelImpl _$$AudienceInsightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AudienceInsightModelImpl(
      demographics: json['demographics'] == null
          ? null
          : AudienceModel.fromJson(
              json['demographics'] as Map<String, dynamic>),
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$$AudienceInsightModelImplToJson(
        _$AudienceInsightModelImpl instance) =>
    <String, dynamic>{
      'demographics': instance.demographics,
      'platform': instance.platform,
    };
