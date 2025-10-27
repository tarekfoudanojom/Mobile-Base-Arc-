import 'package:freezed_annotation/freezed_annotation.dart';

import '../campaign_agent_model/campaign_agent_model.dart';

part 'stars_list_response_model.freezed.dart';
part 'stars_list_response_model.g.dart';

@freezed
class StarsListResponseModel with _$StarsListResponseModel {
  const StarsListResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory StarsListResponseModel({
    @JsonKey(name: "agents") List<CampaignAgentModel>? agents,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "currentPage") int? currentPage,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "hasNextPage") bool? hasNextPage,
    @JsonKey(name: "hasPrevPage") bool? hasPrevPage,
  }) = _StarsListResponseModel;

  factory StarsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$StarsListResponseModelFromJson(json);
}
