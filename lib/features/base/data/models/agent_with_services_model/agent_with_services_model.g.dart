// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_with_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentWithServicesModelImpl _$$AgentWithServicesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentWithServicesModelImpl(
      agents: (json['agents'] as List<dynamic>?)
          ?.map((e) => CampaignAgentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPrevPage: json['hasPrevPage'] as bool?,
      nextPage: (json['nextPage'] as num?)?.toInt(),
      prevPage: (json['prevPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AgentWithServicesModelImplToJson(
        _$AgentWithServicesModelImpl instance) =>
    <String, dynamic>{
      'agents': instance.agents?.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'limit': instance.limit,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
      'nextPage': instance.nextPage,
      'prevPage': instance.prevPage,
    };
