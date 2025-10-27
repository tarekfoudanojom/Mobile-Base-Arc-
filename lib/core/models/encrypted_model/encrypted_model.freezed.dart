// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedModel _$EncryptedModelFromJson(Map<String, dynamic> json) {
  return _EncryptedModel.fromJson(json);
}

/// @nodoc
mixin _$EncryptedModel {
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedModelCopyWith<EncryptedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedModelCopyWith<$Res> {
  factory $EncryptedModelCopyWith(
          EncryptedModel value, $Res Function(EncryptedModel) then) =
      _$EncryptedModelCopyWithImpl<$Res, EncryptedModel>;
  @useResult
  $Res call({String message, String status, String data});
}

/// @nodoc
class _$EncryptedModelCopyWithImpl<$Res, $Val extends EncryptedModel>
    implements $EncryptedModelCopyWith<$Res> {
  _$EncryptedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptedModelImplCopyWith<$Res>
    implements $EncryptedModelCopyWith<$Res> {
  factory _$$EncryptedModelImplCopyWith(_$EncryptedModelImpl value,
          $Res Function(_$EncryptedModelImpl) then) =
      __$$EncryptedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String status, String data});
}

/// @nodoc
class __$$EncryptedModelImplCopyWithImpl<$Res>
    extends _$EncryptedModelCopyWithImpl<$Res, _$EncryptedModelImpl>
    implements _$$EncryptedModelImplCopyWith<$Res> {
  __$$EncryptedModelImplCopyWithImpl(
      _$EncryptedModelImpl _value, $Res Function(_$EncryptedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$EncryptedModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedModelImpl extends _EncryptedModel {
  _$EncryptedModelImpl(
      {required this.message, required this.status, required this.data})
      : super._();

  factory _$EncryptedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedModelImplFromJson(json);

  @override
  final String message;
  @override
  final String status;
  @override
  final String data;

  @override
  String toString() {
    return 'EncryptedModel(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedModelImplCopyWith<_$EncryptedModelImpl> get copyWith =>
      __$$EncryptedModelImplCopyWithImpl<_$EncryptedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedModelImplToJson(
      this,
    );
  }
}

abstract class _EncryptedModel extends EncryptedModel {
  factory _EncryptedModel(
      {required final String message,
      required final String status,
      required final String data}) = _$EncryptedModelImpl;
  _EncryptedModel._() : super._();

  factory _EncryptedModel.fromJson(Map<String, dynamic> json) =
      _$EncryptedModelImpl.fromJson;

  @override
  String get message;
  @override
  String get status;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$EncryptedModelImplCopyWith<_$EncryptedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
