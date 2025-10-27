import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_type_model.freezed.dart';
part 'profile_type_model.g.dart';

@freezed
class ProfileTypeModel with _$ProfileTypeModel{
  const ProfileTypeModel._();
  @JsonSerializable(explicitToJson: true)
  factory ProfileTypeModel({
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "id") required int id,
  }) = _ProfileTypeModel;


  factory ProfileTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileTypeModelFromJson(json);
}