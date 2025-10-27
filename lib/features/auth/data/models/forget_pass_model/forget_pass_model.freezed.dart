// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_pass_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetPassModel _$ForgetPassModelFromJson(Map<String, dynamic> json) {
  return _ForgetPassModel.fromJson(json);
}

/// @nodoc
mixin _$ForgetPassModel {
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetPassModelCopyWith<ForgetPassModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPassModelCopyWith<$Res> {
  factory $ForgetPassModelCopyWith(
          ForgetPassModel value, $Res Function(ForgetPassModel) then) =
      _$ForgetPassModelCopyWithImpl<$Res, ForgetPassModel>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$ForgetPassModelCopyWithImpl<$Res, $Val extends ForgetPassModel>
    implements $ForgetPassModelCopyWith<$Res> {
  _$ForgetPassModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPassModelImplCopyWith<$Res>
    implements $ForgetPassModelCopyWith<$Res> {
  factory _$$ForgetPassModelImplCopyWith(_$ForgetPassModelImpl value,
          $Res Function(_$ForgetPassModelImpl) then) =
      __$$ForgetPassModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$ForgetPassModelImplCopyWithImpl<$Res>
    extends _$ForgetPassModelCopyWithImpl<$Res, _$ForgetPassModelImpl>
    implements _$$ForgetPassModelImplCopyWith<$Res> {
  __$$ForgetPassModelImplCopyWithImpl(
      _$ForgetPassModelImpl _value, $Res Function(_$ForgetPassModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ForgetPassModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ForgetPassModelImpl extends _ForgetPassModel {
  _$ForgetPassModelImpl({required this.status}) : super._();

  factory _$ForgetPassModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetPassModelImplFromJson(json);

  @override
  final String status;

  @override
  String toString() {
    return 'ForgetPassModel(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPassModelImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPassModelImplCopyWith<_$ForgetPassModelImpl> get copyWith =>
      __$$ForgetPassModelImplCopyWithImpl<_$ForgetPassModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetPassModelImplToJson(
      this,
    );
  }
}

abstract class _ForgetPassModel extends ForgetPassModel {
  factory _ForgetPassModel({required final String status}) =
      _$ForgetPassModelImpl;
  _ForgetPassModel._() : super._();

  factory _ForgetPassModel.fromJson(Map<String, dynamic> json) =
      _$ForgetPassModelImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPassModelImplCopyWith<_$ForgetPassModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
