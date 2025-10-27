import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();

  @JsonSerializable(explicitToJson: true)
  factory LoginModel({
    @JsonKey(name: "data") required String token,
    // @JsonKey(name: "jwt") required String token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}
 