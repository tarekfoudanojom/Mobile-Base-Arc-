// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trust_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrustRateModel _$TrustRateModelFromJson(Map<String, dynamic> json) {
  return _TrustRateModel.fromJson(json);
}

/// @nodoc
mixin _$TrustRateModel {
  @JsonKey(name: "email")
  int get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  int? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "cr_id")
  int? get crId => throw _privateConstructorUsedError;
  @JsonKey(name: "mawthooq_id")
  int? get mwthooqId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrustRateModelCopyWith<TrustRateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrustRateModelCopyWith<$Res> {
  factory $TrustRateModelCopyWith(
          TrustRateModel value, $Res Function(TrustRateModel) then) =
      _$TrustRateModelCopyWithImpl<$Res, TrustRateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") int email,
      @JsonKey(name: "phone_number") int? phoneNumber,
      @JsonKey(name: "cr_id") int? crId,
      @JsonKey(name: "mawthooq_id") int? mwthooqId});
}

/// @nodoc
class _$TrustRateModelCopyWithImpl<$Res, $Val extends TrustRateModel>
    implements $TrustRateModelCopyWith<$Res> {
  _$TrustRateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? crId = freezed,
    Object? mwthooqId = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      crId: freezed == crId
          ? _value.crId
          : crId // ignore: cast_nullable_to_non_nullable
              as int?,
      mwthooqId: freezed == mwthooqId
          ? _value.mwthooqId
          : mwthooqId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrustRateModelImplCopyWith<$Res>
    implements $TrustRateModelCopyWith<$Res> {
  factory _$$TrustRateModelImplCopyWith(_$TrustRateModelImpl value,
          $Res Function(_$TrustRateModelImpl) then) =
      __$$TrustRateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") int email,
      @JsonKey(name: "phone_number") int? phoneNumber,
      @JsonKey(name: "cr_id") int? crId,
      @JsonKey(name: "mawthooq_id") int? mwthooqId});
}

/// @nodoc
class __$$TrustRateModelImplCopyWithImpl<$Res>
    extends _$TrustRateModelCopyWithImpl<$Res, _$TrustRateModelImpl>
    implements _$$TrustRateModelImplCopyWith<$Res> {
  __$$TrustRateModelImplCopyWithImpl(
      _$TrustRateModelImpl _value, $Res Function(_$TrustRateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? crId = freezed,
    Object? mwthooqId = freezed,
  }) {
    return _then(_$TrustRateModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      crId: freezed == crId
          ? _value.crId
          : crId // ignore: cast_nullable_to_non_nullable
              as int?,
      mwthooqId: freezed == mwthooqId
          ? _value.mwthooqId
          : mwthooqId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TrustRateModelImpl extends _TrustRateModel {
  _$TrustRateModelImpl(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "phone_number") this.phoneNumber,
      @JsonKey(name: "cr_id") this.crId,
      @JsonKey(name: "mawthooq_id") this.mwthooqId})
      : super._();

  factory _$TrustRateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrustRateModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final int email;
  @override
  @JsonKey(name: "phone_number")
  final int? phoneNumber;
  @override
  @JsonKey(name: "cr_id")
  final int? crId;
  @override
  @JsonKey(name: "mawthooq_id")
  final int? mwthooqId;

  @override
  String toString() {
    return 'TrustRateModel(email: $email, phoneNumber: $phoneNumber, crId: $crId, mwthooqId: $mwthooqId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrustRateModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.crId, crId) || other.crId == crId) &&
            (identical(other.mwthooqId, mwthooqId) ||
                other.mwthooqId == mwthooqId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phoneNumber, crId, mwthooqId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrustRateModelImplCopyWith<_$TrustRateModelImpl> get copyWith =>
      __$$TrustRateModelImplCopyWithImpl<_$TrustRateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrustRateModelImplToJson(
      this,
    );
  }
}

abstract class _TrustRateModel extends TrustRateModel {
  factory _TrustRateModel(
          {@JsonKey(name: "email") required final int email,
          @JsonKey(name: "phone_number") final int? phoneNumber,
          @JsonKey(name: "cr_id") final int? crId,
          @JsonKey(name: "mawthooq_id") final int? mwthooqId}) =
      _$TrustRateModelImpl;
  _TrustRateModel._() : super._();

  factory _TrustRateModel.fromJson(Map<String, dynamic> json) =
      _$TrustRateModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  int get email;
  @override
  @JsonKey(name: "phone_number")
  int? get phoneNumber;
  @override
  @JsonKey(name: "cr_id")
  int? get crId;
  @override
  @JsonKey(name: "mawthooq_id")
  int? get mwthooqId;
  @override
  @JsonKey(ignore: true)
  _$$TrustRateModelImplCopyWith<_$TrustRateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
