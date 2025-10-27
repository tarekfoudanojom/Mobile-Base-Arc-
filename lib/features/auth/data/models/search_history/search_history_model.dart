import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history_model.freezed.dart';
part 'search_history_model.g.dart';

@freezed
class SearchHistoryResponseModel with _$SearchHistoryResponseModel {
  const SearchHistoryResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory SearchHistoryResponseModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<SearchHistoryDataResponseModel>? data,
    @JsonKey(name: "pagination")
    SearchHistoryPaginationResponseModel? pagination,
  }) = _SearchHistoryResponseModel;

  factory SearchHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryResponseModelFromJson(json);
}

@freezed
class SearchHistoryPaginationResponseModel
    with _$SearchHistoryPaginationResponseModel {
  const SearchHistoryPaginationResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory SearchHistoryPaginationResponseModel({
    @JsonKey(name: "total") int? id,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "totalPages") int? totalPages,
  }) = _SearchHistoryPaginationResponseModel;

  factory SearchHistoryPaginationResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$SearchHistoryPaginationResponseModelFromJson(json);
}

@freezed
class SearchHistoryDataResponseModel with _$SearchHistoryDataResponseModel {
  const SearchHistoryDataResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory SearchHistoryDataResponseModel({
    @JsonKey(name: "profile_id") int? profileId,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "term") String? term,
    @JsonKey(name: "source") String? source,
    @JsonKey(name: "last_searched_at") String? lastSearchedAt,
    @JsonKey(name: "count") int? count,
  }) = _SearchHistoryDataResponseModel;

  factory SearchHistoryDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchHistoryDataResponseModelFromJson(json);
}
