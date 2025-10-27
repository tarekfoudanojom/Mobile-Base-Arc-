// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_pay_types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilePayTypesModelImpl _$$ProfilePayTypesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfilePayTypesModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      detail: json['detail'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$ProfilePayTypesModelImplToJson(
        _$ProfilePayTypesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'status': instance.status,
    };
