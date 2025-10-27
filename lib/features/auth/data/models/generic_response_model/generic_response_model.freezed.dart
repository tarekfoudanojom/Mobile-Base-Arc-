// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericResponseModel _$GenericResponseModelFromJson(Map<String, dynamic> json) {
  return _GenericResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GenericResponseModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "messageAr")
  String? get arMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericResponseModelCopyWith<GenericResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseModelCopyWith<$Res> {
  factory $GenericResponseModelCopyWith(GenericResponseModel value,
          $Res Function(GenericResponseModel) then) =
      _$GenericResponseModelCopyWithImpl<$Res, GenericResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "messageAr") String? arMessage,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class _$GenericResponseModelCopyWithImpl<$Res,
        $Val extends GenericResponseModel>
    implements $GenericResponseModelCopyWith<$Res> {
  _$GenericResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? arMessage = freezed,
    Object? data = freezed,
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
      arMessage: freezed == arMessage
          ? _value.arMessage
          : arMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericResponseModelImplCopyWith<$Res>
    implements $GenericResponseModelCopyWith<$Res> {
  factory _$$GenericResponseModelImplCopyWith(_$GenericResponseModelImpl value,
          $Res Function(_$GenericResponseModelImpl) then) =
      __$$GenericResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "messageAr") String? arMessage,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class __$$GenericResponseModelImplCopyWithImpl<$Res>
    extends _$GenericResponseModelCopyWithImpl<$Res, _$GenericResponseModelImpl>
    implements _$$GenericResponseModelImplCopyWith<$Res> {
  __$$GenericResponseModelImplCopyWithImpl(_$GenericResponseModelImpl _value,
      $Res Function(_$GenericResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? arMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GenericResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      arMessage: freezed == arMessage
          ? _value.arMessage
          : arMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GenericResponseModelImpl extends _GenericResponseModel {
  _$GenericResponseModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "messageAr") required this.arMessage,
      @JsonKey(name: "data") this.data})
      : super._();

  factory _$GenericResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "messageAr")
  final String? arMessage;
  @override
  @JsonKey(name: "data")
  final dynamic data;

  @override
  String toString() {
    return 'GenericResponseModel(status: $status, message: $message, arMessage: $arMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.arMessage, arMessage) ||
                other.arMessage == arMessage) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, arMessage,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericResponseModelImplCopyWith<_$GenericResponseModelImpl>
      get copyWith =>
          __$$GenericResponseModelImplCopyWithImpl<_$GenericResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GenericResponseModel extends GenericResponseModel {
  factory _GenericResponseModel(
      {@JsonKey(name: "status") required final bool status,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "messageAr") required final String? arMessage,
      @JsonKey(name: "data") final dynamic data}) = _$GenericResponseModelImpl;
  _GenericResponseModel._() : super._();

  factory _GenericResponseModel.fromJson(Map<String, dynamic> json) =
      _$GenericResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "messageAr")
  String? get arMessage;
  @override
  @JsonKey(name: "data")
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$GenericResponseModelImplCopyWith<_$GenericResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
