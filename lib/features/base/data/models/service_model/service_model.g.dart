// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDetailsModelImpl _$$ServiceDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceDetailsModelImpl(
      serviceDescription: json['service_description'] as String?,
      pricingRequested: json['pricing_requested'] as bool?,
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => BrandServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      starParticipation: json['star_participation'] == null
          ? null
          : StarParticipation.fromJson(
              json['star_participation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServiceDetailsModelImplToJson(
        _$ServiceDetailsModelImpl instance) =>
    <String, dynamic>{
      'service_description': instance.serviceDescription,
      'pricing_requested': instance.pricingRequested,
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'star_participation': instance.starParticipation?.toJson(),
    };

_$StarParticipationImpl _$$StarParticipationImplFromJson(
        Map<String, dynamic> json) =>
    _$StarParticipationImpl(
      summary: json['summary'] == null
          ? null
          : ParticipationSummary.fromJson(
              json['summary'] as Map<String, dynamic>),
      campaigns: json['campaigns'] == null
          ? null
          : ParticipationCampaigns.fromJson(
              json['campaigns'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StarParticipationImplToJson(
        _$StarParticipationImpl instance) =>
    <String, dynamic>{
      'summary': instance.summary?.toJson(),
      'campaigns': instance.campaigns?.toJson(),
    };

_$ParticipationSummaryImpl _$$ParticipationSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipationSummaryImpl(
      total: (json['total'] as num?)?.toInt(),
      paid: (json['paid'] as num?)?.toInt(),
      drafted: (json['drafted'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ParticipationSummaryImplToJson(
        _$ParticipationSummaryImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'paid': instance.paid,
      'drafted': instance.drafted,
    };

_$ParticipationCampaignsImpl _$$ParticipationCampaignsImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipationCampaignsImpl(
      paid: (json['paid'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      drafted: (json['drafted'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ParticipationCampaignsImplToJson(
        _$ParticipationCampaignsImpl instance) =>
    <String, dynamic>{
      'paid': instance.paid,
      'drafted': instance.drafted,
    };

_$Brand_ServiceModelImpl _$$Brand_ServiceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$Brand_ServiceModelImpl(
      platformId: (json['platformId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      socialPlatformTypeId: (json['social_platform_type_id'] as num?)?.toInt(),
      name: json['name'] as String,
      filename: json['filename'] as String?,
      filenameGray: json['filename_gray'] as String?,
      webUrl: json['web_url'] as String?,
      status: json['status'] as String?,
      nameAr: json['name_ar'] as String,
      price: (json['price'] as num).toDouble(),
      serviceId: (json['service_id'] as num?)?.toInt(),
      servicePlatformId: (json['social_platform_id'] as num?)?.toInt(),
      followers: json['followers'] as num?,
      platformUserName: json['username'] as String?,
      arOptionName: json['ar_option_name'] as String?,
      enOptionName: json['en_option_name'] as String?,
      discountRate: (json['discount_rate'] as num?)?.toDouble(),
      socialPlatformOptionId:
          (json['social_platform_option_id'] as num?)?.toInt(),
      publicStatus: json['public_status'] as num? ?? 1,
      selected: json['selected'] as bool? ?? false,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$Brand_ServiceModelImplToJson(
        _$Brand_ServiceModelImpl instance) =>
    <String, dynamic>{
      'platformId': instance.platformId,
      'id': instance.id,
      'social_platform_type_id': instance.socialPlatformTypeId,
      'name': instance.name,
      'filename': instance.filename,
      'filename_gray': instance.filenameGray,
      'web_url': instance.webUrl,
      'status': instance.status,
      'name_ar': instance.nameAr,
      'price': instance.price,
      'service_id': instance.serviceId,
      'social_platform_id': instance.servicePlatformId,
      'followers': instance.followers,
      'username': instance.platformUserName,
      'ar_option_name': instance.arOptionName,
      'en_option_name': instance.enOptionName,
      'discount_rate': instance.discountRate,
      'social_platform_option_id': instance.socialPlatformOptionId,
      'public_status': instance.publicStatus,
      'selected': instance.selected,
      'quantity': instance.quantity,
    };
