import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_client_delegation_model.freezed.dart';
part 'member_client_delegation_model.g.dart';

@freezed
class MemberClientDelegationModel with _$MemberClientDelegationModel {
  const factory MemberClientDelegationModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "principal_profile_id") required int principalProfileId,
    @JsonKey(name: "delegate_profile_id") required int delegateProfileId,
    @JsonKey(name: "last_accessed_at") required String lastAccessedAt,
    @JsonKey(name: "username") required String? username,
    @JsonKey(name: "first_name") required String? firstName,
    @JsonKey(name: "last_name") required String? lastName,
    @JsonKey(name: "brand_name") required String? brandName,
    @JsonKey(name: "photo") String? photo,
  }) = _MemberClientDelegationModel;

  factory MemberClientDelegationModel.fromJson(Map<String, dynamic> json) =>
      _$MemberClientDelegationModelFromJson(json);

}

@freezed
class MemberClientDelegationResponseModel with _$MemberClientDelegationResponseModel {
  const factory MemberClientDelegationResponseModel({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "data") required List<MemberClientDelegationModel> data,
  }) = _MemberClientDelegationResponseModel;

  factory MemberClientDelegationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MemberClientDelegationResponseModelFromJson(json);
}
