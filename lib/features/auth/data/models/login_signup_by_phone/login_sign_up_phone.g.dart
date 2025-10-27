// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_sign_up_phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginSignUpByPhoneModelImpl _$$LoginSignUpByPhoneModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginSignUpByPhoneModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      messageAr: json['messageAr'] as String,
      token: json['data'] as String?,
      isNewUser: json['isNewUser'] as bool?,
    );

Map<String, dynamic> _$$LoginSignUpByPhoneModelImplToJson(
        _$LoginSignUpByPhoneModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'messageAr': instance.messageAr,
      'data': instance.token,
      'isNewUser': instance.isNewUser,
    };
