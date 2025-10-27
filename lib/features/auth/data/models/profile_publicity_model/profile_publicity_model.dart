import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_publicity_model.freezed.dart';
part 'profile_publicity_model.g.dart';

@freezed
class ProfilePublicityModel with _$ProfilePublicityModel{
  const ProfilePublicityModel._();
  @JsonSerializable()
  factory ProfilePublicityModel({
    @JsonKey(name: "id")  int? id,
    @JsonKey(name: "publicity_type")  String? publicityType,
    @JsonKey(name: "publicity_type_ar") String? publicityTypeAr,
    @JsonKey(name: "status") dynamic status,

  }) = _ProfilePublicityModel;


  factory ProfilePublicityModel.fromJson(Map<String, dynamic> json) =>
      _$ProfilePublicityModelFromJson(json);
}