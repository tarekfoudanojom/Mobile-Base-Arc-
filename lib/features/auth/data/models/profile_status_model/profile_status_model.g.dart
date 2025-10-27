// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStatusModelImpl _$$ProfileStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileStatusModelImpl(
      profile: (json['profile'] as num?)?.toDouble(),
      totalPercentage: (json['total_percentage'] as num?)?.toDouble(),
      verification: (json['verification'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProfileStatusModelImplToJson(
        _$ProfileStatusModelImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'total_percentage': instance.totalPercentage,
      'verification': instance.verification,
    };
