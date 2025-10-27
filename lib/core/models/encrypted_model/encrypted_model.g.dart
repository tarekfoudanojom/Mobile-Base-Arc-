// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedModelImpl _$$EncryptedModelImplFromJson(Map<String, dynamic> json) =>
    _$EncryptedModelImpl(
      message: json['message'] as String,
      status: json['status'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$EncryptedModelImplToJson(
        _$EncryptedModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };
