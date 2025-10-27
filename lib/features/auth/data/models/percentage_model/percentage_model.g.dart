// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'percentage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PercentageModelImpl _$$PercentageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PercentageModelImpl(
      privateInfo: (json['private_info'] as num?)?.toDouble(),
      skill: (json['skill'] as num?)?.toDouble(),
      verification: (json['verification'] as num?)?.toDouble(),
      totalPercentage: json['total_percentage'] as num?,
    );

Map<String, dynamic> _$$PercentageModelImplToJson(
        _$PercentageModelImpl instance) =>
    <String, dynamic>{
      'private_info': instance.privateInfo,
      'skill': instance.skill,
      'verification': instance.verification,
      'total_percentage': instance.totalPercentage,
    };
