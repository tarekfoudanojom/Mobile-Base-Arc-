// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_publicity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePublicityModelImpl _$$ProfilePublicityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfilePublicityModelImpl(
      id: (json['id'] as num?)?.toInt(),
      publicityType: json['publicity_type'] as String?,
      publicityTypeAr: json['publicity_type_ar'] as String?,
      status: json['status'],
    );

Map<String, dynamic> _$$ProfilePublicityModelImplToJson(
        _$ProfilePublicityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publicity_type': instance.publicityType,
      'publicity_type_ar': instance.publicityTypeAr,
      'status': instance.status,
    };
