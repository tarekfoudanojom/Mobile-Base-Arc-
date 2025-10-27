import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_with_services_model.freezed.dart';
part 'agent_with_services_model.g.dart';

@freezed
class AgentWithServicesModel with _$AgentWithServicesModel{
  const AgentWithServicesModel._();
  @JsonSerializable(explicitToJson: true)
  factory AgentWithServicesModel({
    @JsonKey(name: "agents") List<CampaignAgentModel>? agents,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "currentPage") int? currentPage,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "hasNextPage") bool? hasNextPage,
    @JsonKey(name: "hasPrevPage") bool? hasPrevPage,
    @JsonKey(name: "nextPage") int? nextPage,
    @JsonKey(name: "prevPage") int? prevPage,
  }) = _AgentWithServicesModel;


  factory AgentWithServicesModel.fromJson(Map<String, dynamic> json) =>
      _$AgentWithServicesModelFromJson(json);
}