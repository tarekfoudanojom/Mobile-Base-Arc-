// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delegation_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DelegationTokenModel _$DelegationTokenModelFromJson(Map<String, dynamic> json) {
  return _DelegationTokenModel.fromJson(json);
}

/// @nodoc
mixin _$DelegationTokenModel {
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DelegationTokenModelCopyWith<DelegationTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DelegationTokenModelCopyWith<$Res> {
  factory $DelegationTokenModelCopyWith(DelegationTokenModel value,
          $Res Function(DelegationTokenModel) then) =
      _$DelegationTokenModelCopyWithImpl<$Res, DelegationTokenModel>;
  @useResult
  $Res call({@JsonKey(name: "token") String token});
}

/// @nodoc
class _$DelegationTokenModelCopyWithImpl<$Res,
        $Val extends DelegationTokenModel>
    implements $DelegationTokenModelCopyWith<$Res> {
  _$DelegationTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DelegationTokenModelImplCopyWith<$Res>
    implements $DelegationTokenModelCopyWith<$Res> {
  factory _$$DelegationTokenModelImplCopyWith(_$DelegationTokenModelImpl value,
          $Res Function(_$DelegationTokenModelImpl) then) =
      __$$DelegationTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "token") String token});
}

/// @nodoc
class __$$DelegationTokenModelImplCopyWithImpl<$Res>
    extends _$DelegationTokenModelCopyWithImpl<$Res, _$DelegationTokenModelImpl>
    implements _$$DelegationTokenModelImplCopyWith<$Res> {
  __$$DelegationTokenModelImplCopyWithImpl(_$DelegationTokenModelImpl _value,
      $Res Function(_$DelegationTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$DelegationTokenModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DelegationTokenModelImpl implements _DelegationTokenModel {
  const _$DelegationTokenModelImpl(
      {@JsonKey(name: "token") required this.token});

  factory _$DelegationTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DelegationTokenModelImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String token;

  @override
  String toString() {
    return 'DelegationTokenModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DelegationTokenModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DelegationTokenModelImplCopyWith<_$DelegationTokenModelImpl>
      get copyWith =>
          __$$DelegationTokenModelImplCopyWithImpl<_$DelegationTokenModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DelegationTokenModelImplToJson(
      this,
    );
  }
}

abstract class _DelegationTokenModel implements DelegationTokenModel {
  const factory _DelegationTokenModel(
          {@JsonKey(name: "token") required final String token}) =
      _$DelegationTokenModelImpl;

  factory _DelegationTokenModel.fromJson(Map<String, dynamic> json) =
      _$DelegationTokenModelImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$DelegationTokenModelImplCopyWith<_$DelegationTokenModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
