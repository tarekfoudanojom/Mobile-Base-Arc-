// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_sign_up_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginSignUpByPhoneModel _$LoginSignUpByPhoneModelFromJson(
    Map<String, dynamic> json) {
  return _LoginSignUpByPhoneModel.fromJson(json);
}

/// @nodoc
mixin _$LoginSignUpByPhoneModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "messageAr")
  String get messageAr => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "isNewUser")
  bool? get isNewUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSignUpByPhoneModelCopyWith<LoginSignUpByPhoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSignUpByPhoneModelCopyWith<$Res> {
  factory $LoginSignUpByPhoneModelCopyWith(LoginSignUpByPhoneModel value,
          $Res Function(LoginSignUpByPhoneModel) then) =
      _$LoginSignUpByPhoneModelCopyWithImpl<$Res, LoginSignUpByPhoneModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "messageAr") String messageAr,
      @JsonKey(name: "data") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser});
}

/// @nodoc
class _$LoginSignUpByPhoneModelCopyWithImpl<$Res,
        $Val extends LoginSignUpByPhoneModel>
    implements $LoginSignUpByPhoneModelCopyWith<$Res> {
  _$LoginSignUpByPhoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messageAr = null,
    Object? token = freezed,
    Object? isNewUser = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageAr: null == messageAr
          ? _value.messageAr
          : messageAr // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginSignUpByPhoneModelImplCopyWith<$Res>
    implements $LoginSignUpByPhoneModelCopyWith<$Res> {
  factory _$$LoginSignUpByPhoneModelImplCopyWith(
          _$LoginSignUpByPhoneModelImpl value,
          $Res Function(_$LoginSignUpByPhoneModelImpl) then) =
      __$$LoginSignUpByPhoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "messageAr") String messageAr,
      @JsonKey(name: "data") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser});
}

/// @nodoc
class __$$LoginSignUpByPhoneModelImplCopyWithImpl<$Res>
    extends _$LoginSignUpByPhoneModelCopyWithImpl<$Res,
        _$LoginSignUpByPhoneModelImpl>
    implements _$$LoginSignUpByPhoneModelImplCopyWith<$Res> {
  __$$LoginSignUpByPhoneModelImplCopyWithImpl(
      _$LoginSignUpByPhoneModelImpl _value,
      $Res Function(_$LoginSignUpByPhoneModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? messageAr = null,
    Object? token = freezed,
    Object? isNewUser = freezed,
  }) {
    return _then(_$LoginSignUpByPhoneModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageAr: null == messageAr
          ? _value.messageAr
          : messageAr // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LoginSignUpByPhoneModelImpl extends _LoginSignUpByPhoneModel {
  _$LoginSignUpByPhoneModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "messageAr") required this.messageAr,
      @JsonKey(name: "data") this.token,
      @JsonKey(name: "isNewUser") this.isNewUser})
      : super._();

  factory _$LoginSignUpByPhoneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginSignUpByPhoneModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "messageAr")
  final String messageAr;
  @override
  @JsonKey(name: "data")
  final String? token;
  @override
  @JsonKey(name: "isNewUser")
  final bool? isNewUser;

  @override
  String toString() {
    return 'LoginSignUpByPhoneModel(status: $status, message: $message, messageAr: $messageAr, token: $token, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSignUpByPhoneModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageAr, messageAr) ||
                other.messageAr == messageAr) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, messageAr, token, isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSignUpByPhoneModelImplCopyWith<_$LoginSignUpByPhoneModelImpl>
      get copyWith => __$$LoginSignUpByPhoneModelImplCopyWithImpl<
          _$LoginSignUpByPhoneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginSignUpByPhoneModelImplToJson(
      this,
    );
  }
}

abstract class _LoginSignUpByPhoneModel extends LoginSignUpByPhoneModel {
  factory _LoginSignUpByPhoneModel(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "messageAr") required final String messageAr,
          @JsonKey(name: "data") final String? token,
          @JsonKey(name: "isNewUser") final bool? isNewUser}) =
      _$LoginSignUpByPhoneModelImpl;
  _LoginSignUpByPhoneModel._() : super._();

  factory _LoginSignUpByPhoneModel.fromJson(Map<String, dynamic> json) =
      _$LoginSignUpByPhoneModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "messageAr")
  String get messageAr;
  @override
  @JsonKey(name: "data")
  String? get token;
  @override
  @JsonKey(name: "isNewUser")
  bool? get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$LoginSignUpByPhoneModelImplCopyWith<_$LoginSignUpByPhoneModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
