// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenericResponseModelImpl _$$GenericResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericResponseModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      arMessage: json['messageAr'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$GenericResponseModelImplToJson(
        _$GenericResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'messageAr': instance.arMessage,
      'data': instance.data,
    };
