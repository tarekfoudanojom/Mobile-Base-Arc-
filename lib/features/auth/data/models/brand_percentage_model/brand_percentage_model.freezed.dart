// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_percentage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandPercentageModel _$BrandPercentageModelFromJson(Map<String, dynamic> json) {
  return _BrandPercentageModel.fromJson(json);
}

/// @nodoc
mixin _$BrandPercentageModel {
  int? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "total_percentage")
  int? get totalPercentage => throw _privateConstructorUsedError;
  int? get verification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandPercentageModelCopyWith<BrandPercentageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandPercentageModelCopyWith<$Res> {
  factory $BrandPercentageModelCopyWith(BrandPercentageModel value,
          $Res Function(BrandPercentageModel) then) =
      _$BrandPercentageModelCopyWithImpl<$Res, BrandPercentageModel>;
  @useResult
  $Res call(
      {int? profile,
      @JsonKey(name: "total_percentage") int? totalPercentage,
      int? verification});
}

/// @nodoc
class _$BrandPercentageModelCopyWithImpl<$Res,
        $Val extends BrandPercentageModel>
    implements $BrandPercentageModelCopyWith<$Res> {
  _$BrandPercentageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? totalPercentage = freezed,
    Object? verification = freezed,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandPercentageModelImplCopyWith<$Res>
    implements $BrandPercentageModelCopyWith<$Res> {
  factory _$$BrandPercentageModelImplCopyWith(_$BrandPercentageModelImpl value,
          $Res Function(_$BrandPercentageModelImpl) then) =
      __$$BrandPercentageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? profile,
      @JsonKey(name: "total_percentage") int? totalPercentage,
      int? verification});
}

/// @nodoc
class __$$BrandPercentageModelImplCopyWithImpl<$Res>
    extends _$BrandPercentageModelCopyWithImpl<$Res, _$BrandPercentageModelImpl>
    implements _$$BrandPercentageModelImplCopyWith<$Res> {
  __$$BrandPercentageModelImplCopyWithImpl(_$BrandPercentageModelImpl _value,
      $Res Function(_$BrandPercentageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? totalPercentage = freezed,
    Object? verification = freezed,
  }) {
    return _then(_$BrandPercentageModelImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BrandPercentageModelImpl extends _BrandPercentageModel {
  _$BrandPercentageModelImpl(
      {this.profile,
      @JsonKey(name: "total_percentage") this.totalPercentage,
      this.verification})
      : super._();

  factory _$BrandPercentageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandPercentageModelImplFromJson(json);

  @override
  final int? profile;
  @override
  @JsonKey(name: "total_percentage")
  final int? totalPercentage;
  @override
  final int? verification;

  @override
  String toString() {
    return 'BrandPercentageModel(profile: $profile, totalPercentage: $totalPercentage, verification: $verification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandPercentageModelImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.totalPercentage, totalPercentage) ||
                other.totalPercentage == totalPercentage) &&
            (identical(other.verification, verification) ||
                other.verification == verification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profile, totalPercentage, verification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandPercentageModelImplCopyWith<_$BrandPercentageModelImpl>
      get copyWith =>
          __$$BrandPercentageModelImplCopyWithImpl<_$BrandPercentageModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandPercentageModelImplToJson(
      this,
    );
  }
}

abstract class _BrandPercentageModel extends BrandPercentageModel {
  factory _BrandPercentageModel(
      {final int? profile,
      @JsonKey(name: "total_percentage") final int? totalPercentage,
      final int? verification}) = _$BrandPercentageModelImpl;
  _BrandPercentageModel._() : super._();

  factory _BrandPercentageModel.fromJson(Map<String, dynamic> json) =
      _$BrandPercentageModelImpl.fromJson;

  @override
  int? get profile;
  @override
  @JsonKey(name: "total_percentage")
  int? get totalPercentage;
  @override
  int? get verification;
  @override
  @JsonKey(ignore: true)
  _$$BrandPercentageModelImplCopyWith<_$BrandPercentageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
