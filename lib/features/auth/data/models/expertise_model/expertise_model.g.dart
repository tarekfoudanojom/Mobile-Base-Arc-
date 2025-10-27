// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expertise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpertiseModelImpl _$$ExpertiseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpertiseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameAr: json['name_ar'] as String?,
      nameApp: json['name_app'] as String?,
      length: (json['length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExpertiseModelImplToJson(
        _$ExpertiseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.nameAr,
      'name_app': instance.nameApp,
      'length': instance.length,
    };
