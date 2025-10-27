import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_sign_up_phone.freezed.dart';
part 'login_sign_up_phone.g.dart';

@freezed
class LoginSignUpByPhoneModel with _$LoginSignUpByPhoneModel {
  const LoginSignUpByPhoneModel._();
  @JsonSerializable(explicitToJson: true)
  factory LoginSignUpByPhoneModel({
    @JsonKey(name: "status") required bool status,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "messageAr") required String messageAr,
    @JsonKey(name: "data") String? token,
    @JsonKey(name: "isNewUser") bool? isNewUser,
  }) = _LoginSignUpByPhoneModel;

  factory LoginSignUpByPhoneModel.fromJson(Map<String, dynamic> json) =>
      _$LoginSignUpByPhoneModelFromJson(json);
}
