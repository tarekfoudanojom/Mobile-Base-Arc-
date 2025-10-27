import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';
part 'reset_password_model.g.dart';

@freezed
class ResetPasswordModel with _$ResetPasswordModel{
  const ResetPasswordModel._();
  @JsonSerializable(explicitToJson: true)
  factory ResetPasswordModel({
    required String status,
  }) = _ResetPasswordModel;


  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);
}