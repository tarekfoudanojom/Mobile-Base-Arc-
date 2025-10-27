// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_stars_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DraftStarsResponseModelImpl _$$DraftStarsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DraftStarsResponseModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DraftStarsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DraftStarsResponseModelImplToJson(
        _$DraftStarsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$DraftStarsDataImpl _$$DraftStarsDataImplFromJson(Map<String, dynamic> json) =>
    _$DraftStarsDataImpl(
      processedResults: (json['processedResults'] as List<dynamic>?)
          ?.map((e) => ProcessedResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DraftStarsDataImplToJson(
        _$DraftStarsDataImpl instance) =>
    <String, dynamic>{
      'processedResults':
          instance.processedResults?.map((e) => e.toJson()).toList(),
    };

_$ProcessedResultImpl _$$ProcessedResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ProcessedResultImpl(
      starId: (json['star_id'] as num?)?.toInt(),
      campaigns: (json['campaigns'] as List<dynamic>?)
          ?.map((e) => CampaignResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      servicesCount: (json['services_count'] as num?)?.toInt(),
      campaignsSource: json['campaigns_source'] as String?,
    );

Map<String, dynamic> _$$ProcessedResultImplToJson(
        _$ProcessedResultImpl instance) =>
    <String, dynamic>{
      'star_id': instance.starId,
      'campaigns': instance.campaigns?.map((e) => e.toJson()).toList(),
      'services_count': instance.servicesCount,
      'campaigns_source': instance.campaignsSource,
    };

_$CampaignResultImpl _$$CampaignResultImplFromJson(Map<String, dynamic> json) =>
    _$CampaignResultImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CampaignResultImplToJson(
        _$CampaignResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'title': instance.title,
    };
