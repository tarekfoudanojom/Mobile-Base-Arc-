import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_stars_response_model.freezed.dart';
part 'draft_stars_response_model.g.dart';

@freezed
class DraftStarsResponseModel with _$DraftStarsResponseModel {
  const DraftStarsResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory DraftStarsResponseModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DraftStarsData? data,
  }) = _DraftStarsResponseModel;

  factory DraftStarsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DraftStarsResponseModelFromJson(json);
}

@freezed
class DraftStarsData with _$DraftStarsData {
  const DraftStarsData._();
  @JsonSerializable(explicitToJson: true)
  factory DraftStarsData({
    @JsonKey(name: "processedResults") List<ProcessedResult>? processedResults,
  }) = _DraftStarsData;

  factory DraftStarsData.fromJson(Map<String, dynamic> json) =>
      _$DraftStarsDataFromJson(json);
}

@freezed
class ProcessedResult with _$ProcessedResult {
  const ProcessedResult._();
  @JsonSerializable(explicitToJson: true)
  factory ProcessedResult({
    @JsonKey(name: "star_id") int? starId,
    @JsonKey(name: "campaigns") List<CampaignResult>? campaigns,
    @JsonKey(name: "services_count") int? servicesCount,
    @JsonKey(name: "campaigns_source") String? campaignsSource,
  }) = _ProcessedResult;

  factory ProcessedResult.fromJson(Map<String, dynamic> json) =>
      _$ProcessedResultFromJson(json);
}

@freezed
class CampaignResult with _$CampaignResult {
  const CampaignResult._();
  @JsonSerializable(explicitToJson: true)
  factory CampaignResult({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "title") String? title,
  }) = _CampaignResult;

  factory CampaignResult.fromJson(Map<String, dynamic> json) =>
      _$CampaignResultFromJson(json);
}
