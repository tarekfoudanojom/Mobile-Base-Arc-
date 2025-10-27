// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stars_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StarsListResponseModelImpl _$$StarsListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StarsListResponseModelImpl(
      agents: (json['agents'] as List<dynamic>?)
          ?.map((e) => CampaignAgentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPrevPage: json['hasPrevPage'] as bool?,
    );

Map<String, dynamic> _$$StarsListResponseModelImplToJson(
        _$StarsListResponseModelImpl instance) =>
    <String, dynamic>{
      'agents': instance.agents?.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'limit': instance.limit,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
    };
