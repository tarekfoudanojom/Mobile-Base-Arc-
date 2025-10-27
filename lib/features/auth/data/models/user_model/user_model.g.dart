// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      username: json['username'] as String?,
      lastName: json['last_name'] as String?,
      companyName: json['company_name'] as String?,
      brandName: json['brand_name'] as String?,
      profileImage: json['profile_pic'] as String?,
      isVerified: json['is_verified'],
      verifiedAt: json['verified_at'] as String?,
      aboutUsId: json['aboutus_id'],
      mobilePrefix: json['mobile_prefix'],
      phone: json['contact_no'] as String?,
      email: json['email'] as String?,
      status: (json['status'] as num?)?.toInt(),
      contact: json['contactNo'] as String?,
      referralCode: json['referral_code'] as String?,
      profileType: json['profile_type'] == null
          ? null
          : ProfileTypeModel.fromJson(
              json['profile_type'] as Map<String, dynamic>),
      profileTypeId: (json['profile_type_id'] as num?)?.toInt(),
      filePath: json['file_path'] == null
          ? null
          : PathModel.fromJson(json['file_path'] as Map<String, dynamic>),
      aboutUsList: (json['aboutus'] as List<dynamic>?)
          ?.map((e) => AboutUsItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      profileStatus: json['profile_status'],
      trustRate: json['trust_rate'] == null
          ? null
          : TrustRateModel.fromJson(json['trust_rate'] as Map<String, dynamic>),
      notificationsEnabled: (json['notifications_enabled'] as num?)?.toInt(),
      favoriteList: (json['favorite_list'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'username': instance.username,
      'last_name': instance.lastName,
      'company_name': instance.companyName,
      'brand_name': instance.brandName,
      'profile_pic': instance.profileImage,
      'is_verified': instance.isVerified,
      'verified_at': instance.verifiedAt,
      'aboutus_id': instance.aboutUsId,
      'mobile_prefix': instance.mobilePrefix,
      'contact_no': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'contactNo': instance.contact,
      'referral_code': instance.referralCode,
      'profile_type': instance.profileType?.toJson(),
      'profile_type_id': instance.profileTypeId,
      'file_path': instance.filePath?.toJson(),
      'aboutus': instance.aboutUsList?.map((e) => e.toJson()).toList(),
      'profile_status': instance.profileStatus,
      'trust_rate': instance.trustRate?.toJson(),
      'notifications_enabled': instance.notificationsEnabled,
      'favorite_list': instance.favoriteList,
    };
