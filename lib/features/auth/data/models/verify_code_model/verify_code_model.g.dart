// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyCodeModelImpl _$$VerifyCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyCodeModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$VerifyCodeModelImplToJson(
        _$VerifyCodeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
    };
