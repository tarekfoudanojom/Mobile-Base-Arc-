import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_status_model.freezed.dart';
part 'profile_status_model.g.dart';

@freezed
class ProfileStatusModel with _$ProfileStatusModel{
  const ProfileStatusModel._();
  @JsonSerializable(explicitToJson: true)
  factory ProfileStatusModel({
    @JsonKey(name: "profile") double? profile,
    @JsonKey(name: "total_percentage") double? totalPercentage,
    @JsonKey(name: "verification") double? verification,
  }) = _ProfileStatusModel;


  factory ProfileStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatusModelFromJson(json);
}