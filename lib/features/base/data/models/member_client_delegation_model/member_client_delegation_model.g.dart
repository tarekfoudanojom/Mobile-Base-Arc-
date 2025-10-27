// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_client_delegation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberClientDelegationModelImpl _$$MemberClientDelegationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberClientDelegationModelImpl(
      id: (json['id'] as num).toInt(),
      principalProfileId: (json['principal_profile_id'] as num).toInt(),
      delegateProfileId: (json['delegate_profile_id'] as num).toInt(),
      lastAccessedAt: json['last_accessed_at'] as String,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      brandName: json['brand_name'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$MemberClientDelegationModelImplToJson(
        _$MemberClientDelegationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'principal_profile_id': instance.principalProfileId,
      'delegate_profile_id': instance.delegateProfileId,
      'last_accessed_at': instance.lastAccessedAt,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'brand_name': instance.brandName,
      'photo': instance.photo,
    };

_$MemberClientDelegationResponseModelImpl
    _$$MemberClientDelegationResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$MemberClientDelegationResponseModelImpl(
          status: json['status'] as bool,
          data: (json['data'] as List<dynamic>)
              .map((e) => MemberClientDelegationModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$MemberClientDelegationResponseModelImplToJson(
        _$MemberClientDelegationResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
