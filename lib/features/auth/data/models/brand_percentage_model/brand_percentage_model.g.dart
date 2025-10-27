// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_percentage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandPercentageModelImpl _$$BrandPercentageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandPercentageModelImpl(
      profile: (json['profile'] as num?)?.toInt(),
      totalPercentage: (json['total_percentage'] as num?)?.toInt(),
      verification: (json['verification'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BrandPercentageModelImplToJson(
        _$BrandPercentageModelImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'total_percentage': instance.totalPercentage,
      'verification': instance.verification,
    };
