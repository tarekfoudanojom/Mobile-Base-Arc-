import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_store_model.freezed.dart';
part 'agent_store_model.g.dart';

@freezed
class AgentStoreModel with _$AgentStoreModel{
  const AgentStoreModel._();
  @JsonSerializable(explicitToJson: true)
  factory AgentStoreModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'filename') String? filename,
    @JsonKey(name: 'profile_id') int? profileId,
    @JsonKey(name: 'display_order') dynamic displayOrder,
    @JsonKey(name: 'public_status') int? publicStatus,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'currency') int? currency,
  }) = _AgentStoreModel;


  factory AgentStoreModel.fromJson(Map<String, dynamic> json) =>
      _$AgentStoreModelFromJson(json);
}