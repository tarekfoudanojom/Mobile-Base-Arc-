// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'percentage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PercentageModel _$PercentageModelFromJson(Map<String, dynamic> json) {
  return _PercentageModel.fromJson(json);
}

/// @nodoc
mixin _$PercentageModel {
  @JsonKey(name: "private_info")
  double? get privateInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "private_info")
  set privateInfo(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "skill")
  double? get skill => throw _privateConstructorUsedError;
  @JsonKey(name: "skill")
  set skill(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "verification")
  double? get verification => throw _privateConstructorUsedError;
  @JsonKey(name: "verification")
  set verification(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total_percentage")
  num? get totalPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "total_percentage")
  set totalPercentage(num? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PercentageModelCopyWith<PercentageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentageModelCopyWith<$Res> {
  factory $PercentageModelCopyWith(
          PercentageModel value, $Res Function(PercentageModel) then) =
      _$PercentageModelCopyWithImpl<$Res, PercentageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "private_info") double? privateInfo,
      @JsonKey(name: "skill") double? skill,
      @JsonKey(name: "verification") double? verification,
      @JsonKey(name: "total_percentage") num? totalPercentage});
}

/// @nodoc
class _$PercentageModelCopyWithImpl<$Res, $Val extends PercentageModel>
    implements $PercentageModelCopyWith<$Res> {
  _$PercentageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateInfo = freezed,
    Object? skill = freezed,
    Object? verification = freezed,
    Object? totalPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      privateInfo: freezed == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as double?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as double?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PercentageModelImplCopyWith<$Res>
    implements $PercentageModelCopyWith<$Res> {
  factory _$$PercentageModelImplCopyWith(_$PercentageModelImpl value,
          $Res Function(_$PercentageModelImpl) then) =
      __$$PercentageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "private_info") double? privateInfo,
      @JsonKey(name: "skill") double? skill,
      @JsonKey(name: "verification") double? verification,
      @JsonKey(name: "total_percentage") num? totalPercentage});
}

/// @nodoc
class __$$PercentageModelImplCopyWithImpl<$Res>
    extends _$PercentageModelCopyWithImpl<$Res, _$PercentageModelImpl>
    implements _$$PercentageModelImplCopyWith<$Res> {
  __$$PercentageModelImplCopyWithImpl(
      _$PercentageModelImpl _value, $Res Function(_$PercentageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privateInfo = freezed,
    Object? skill = freezed,
    Object? verification = freezed,
    Object? totalPercentage = freezed,
  }) {
    return _then(_$PercentageModelImpl(
      privateInfo: freezed == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as double?,
      skill: freezed == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as double?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PercentageModelImpl extends _PercentageModel {
  _$PercentageModelImpl(
      {@JsonKey(name: "private_info") this.privateInfo,
      @JsonKey(name: "skill") this.skill,
      @JsonKey(name: "verification") this.verification,
      @JsonKey(name: "total_percentage") this.totalPercentage})
      : super._();

  factory _$PercentageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PercentageModelImplFromJson(json);

  @override
  @JsonKey(name: "private_info")
  double? privateInfo;
  @override
  @JsonKey(name: "skill")
  double? skill;
  @override
  @JsonKey(name: "verification")
  double? verification;
  @override
  @JsonKey(name: "total_percentage")
  num? totalPercentage;

  @override
  String toString() {
    return 'PercentageModel(privateInfo: $privateInfo, skill: $skill, verification: $verification, totalPercentage: $totalPercentage)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PercentageModelImplCopyWith<_$PercentageModelImpl> get copyWith =>
      __$$PercentageModelImplCopyWithImpl<_$PercentageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PercentageModelImplToJson(
      this,
    );
  }
}

abstract class _PercentageModel extends PercentageModel {
  factory _PercentageModel(
          {@JsonKey(name: "private_info") double? privateInfo,
          @JsonKey(name: "skill") double? skill,
          @JsonKey(name: "verification") double? verification,
          @JsonKey(name: "total_percentage") num? totalPercentage}) =
      _$PercentageModelImpl;
  _PercentageModel._() : super._();

  factory _PercentageModel.fromJson(Map<String, dynamic> json) =
      _$PercentageModelImpl.fromJson;

  @override
  @JsonKey(name: "private_info")
  double? get privateInfo;
  @JsonKey(name: "private_info")
  set privateInfo(double? value);
  @override
  @JsonKey(name: "skill")
  double? get skill;
  @JsonKey(name: "skill")
  set skill(double? value);
  @override
  @JsonKey(name: "verification")
  double? get verification;
  @JsonKey(name: "verification")
  set verification(double? value);
  @override
  @JsonKey(name: "total_percentage")
  num? get totalPercentage;
  @JsonKey(name: "total_percentage")
  set totalPercentage(num? value);
  @override
  @JsonKey(ignore: true)
  _$$PercentageModelImplCopyWith<_$PercentageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
