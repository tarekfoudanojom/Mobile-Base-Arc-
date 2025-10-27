// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num).toInt(),
      isTeamMember: (json['is_team_member'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      username: json['username'] as String?,
      lastName: json['last_name'] as String?,
      profileImage: json['profile_pic'] as String?,
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
      path: json['path'] as String?,
      aboutUsList: (json['aboutus'] as List<dynamic>?)
          ?.map((e) => AboutUsItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      profileStatus: json['profile_status'] == null
          ? null
          : ProfileStatusModel.fromJson(
              json['profile_status'] as Map<String, dynamic>),
      trustRate: json['trust_rate'] == null
          ? null
          : TrustRateModel.fromJson(json['trust_rate'] as Map<String, dynamic>),
      delegationFeeRate: (json['delegation_fee_rate'] as num?)?.toDouble(),
      cityId: (json['cityID'] as num?)?.toInt(),
      stateId: (json['stateID'] as num?)?.toInt(),
      countryId: (json['countryID'] as num?)?.toInt(),
      cityName: json['cityName'] as String?,
      clientBalance: json['client_balance'] as num?,
      workingExperience: (json['working_experience'] as num?)?.toInt(),
      workBase: json['workbase'] as String?,
      emailConfirmationDate: json['email_confirmation_date'] as String?,
      companyName: json['company_name'] as String?,
      brandName: json['brand_name'] as String?,
      aboutUsId: (json['aboutus_id'] as num?)?.toInt(),
      otherAboutUs: json['other_aboutus'] as String?,
      isVerified: (json['is_verified'] as num?)?.toInt() ?? 0,
      verifiedAt: json['verified_at'] as String? ?? '',
      commercialRegistrationId:
          (json['commercial_registration_id'] as num?)?.toInt(),
      crNumber: json['cr_number'] as String?,
      crFile: json['cr_file'] as String?,
      crStatus: (json['cr_status'] as num?)?.toInt(),
      vatRegistrationId: (json['vat_registration_id'] as num?)?.toInt(),
      vatNumber: json['vat_number'] as String?,
      vatFile: json['vat_file'] as String?,
      vatStatus: (json['vat_status'] as num?)?.toInt(),
      countRating: json['count_rating'] as num?,
      rate: (json['rate'] as num?)?.toDouble(),
      notificationsEnabled: (json['notifications_enabled'] as num?)?.toInt(),
      percentage: json['percentage'] == null
          ? null
          : BrandPercentageModel.fromJson(
              json['percentage'] as Map<String, dynamic>),
      stateName: json['stateName'] as String?,
      website: json['website'] as String?,
      cityNameAr: json['cityNameAr'] as String?,
      stateNameAr: json['stateNameAr'] as String?,
      countryName: json['countryName'] as String?,
      countryNameAr: json['countryNameAr'] as String?,
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_team_member': instance.isTeamMember,
      'first_name': instance.firstName,
      'username': instance.username,
      'last_name': instance.lastName,
      'profile_pic': instance.profileImage,
      'contact_no': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'contactNo': instance.contact,
      'referral_code': instance.referralCode,
      'profile_type': instance.profileType?.toJson(),
      'profile_type_id': instance.profileTypeId,
      'file_path': instance.filePath?.toJson(),
      'path': instance.path,
      'aboutus': instance.aboutUsList?.map((e) => e.toJson()).toList(),
      'profile_status': instance.profileStatus?.toJson(),
      'trust_rate': instance.trustRate?.toJson(),
      'delegation_fee_rate': instance.delegationFeeRate,
      'cityID': instance.cityId,
      'stateID': instance.stateId,
      'countryID': instance.countryId,
      'cityName': instance.cityName,
      'client_balance': instance.clientBalance,
      'working_experience': instance.workingExperience,
      'workbase': instance.workBase,
      'email_confirmation_date': instance.emailConfirmationDate,
      'company_name': instance.companyName,
      'brand_name': instance.brandName,
      'aboutus_id': instance.aboutUsId,
      'other_aboutus': instance.otherAboutUs,
      'is_verified': instance.isVerified,
      'verified_at': instance.verifiedAt,
      'commercial_registration_id': instance.commercialRegistrationId,
      'cr_number': instance.crNumber,
      'cr_file': instance.crFile,
      'cr_status': instance.crStatus,
      'vat_registration_id': instance.vatRegistrationId,
      'vat_number': instance.vatNumber,
      'vat_file': instance.vatFile,
      'vat_status': instance.vatStatus,
      'count_rating': instance.countRating,
      'rate': instance.rate,
      'notifications_enabled': instance.notificationsEnabled,
      'percentage': instance.percentage?.toJson(),
      'stateName': instance.stateName,
      'website': instance.website,
      'cityNameAr': instance.cityNameAr,
      'stateNameAr': instance.stateNameAr,
      'countryName': instance.countryName,
      'countryNameAr': instance.countryNameAr,
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$MawthooqStatusModelImpl _$$MawthooqStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MawthooqStatusModelImpl(
      id: (json['id'] as num).toInt(),
      type: (json['type'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
      data: json['data'] as String,
      status: json['status'] as String,
      profileId: (json['profile_id'] as num).toInt(),
      isNumber: json['is_number'] as String,
      publicStatus: (json['public_status'] as num).toInt(),
      issueDate: json['issue_date'],
      expiryDate: json['expiry_date'],
    );

Map<String, dynamic> _$$MawthooqStatusModelImplToJson(
        _$MawthooqStatusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'timestamp': instance.timestamp.toIso8601String(),
      'data': instance.data,
      'status': instance.status,
      'profile_id': instance.profileId,
      'is_number': instance.isNumber,
      'public_status': instance.publicStatus,
      'issue_date': instance.issueDate,
      'expiry_date': instance.expiryDate,
    };
