// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileTypeModelImpl _$$ProfileTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileTypeModelImpl(
      type: json['type'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProfileTypeModelImplToJson(
        _$ProfileTypeModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
    };
