// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileStatusModel _$ProfileStatusModelFromJson(Map<String, dynamic> json) {
  return _ProfileStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileStatusModel {
  @JsonKey(name: "profile")
  double? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "total_percentage")
  double? get totalPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "verification")
  double? get verification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileStatusModelCopyWith<ProfileStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatusModelCopyWith<$Res> {
  factory $ProfileStatusModelCopyWith(
          ProfileStatusModel value, $Res Function(ProfileStatusModel) then) =
      _$ProfileStatusModelCopyWithImpl<$Res, ProfileStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profile") double? profile,
      @JsonKey(name: "total_percentage") double? totalPercentage,
      @JsonKey(name: "verification") double? verification});
}

/// @nodoc
class _$ProfileStatusModelCopyWithImpl<$Res, $Val extends ProfileStatusModel>
    implements $ProfileStatusModelCopyWith<$Res> {
  _$ProfileStatusModelCopyWithImpl(this._value, this._then);

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
              as double?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStatusModelImplCopyWith<$Res>
    implements $ProfileStatusModelCopyWith<$Res> {
  factory _$$ProfileStatusModelImplCopyWith(_$ProfileStatusModelImpl value,
          $Res Function(_$ProfileStatusModelImpl) then) =
      __$$ProfileStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profile") double? profile,
      @JsonKey(name: "total_percentage") double? totalPercentage,
      @JsonKey(name: "verification") double? verification});
}

/// @nodoc
class __$$ProfileStatusModelImplCopyWithImpl<$Res>
    extends _$ProfileStatusModelCopyWithImpl<$Res, _$ProfileStatusModelImpl>
    implements _$$ProfileStatusModelImplCopyWith<$Res> {
  __$$ProfileStatusModelImplCopyWithImpl(_$ProfileStatusModelImpl _value,
      $Res Function(_$ProfileStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? totalPercentage = freezed,
    Object? verification = freezed,
  }) {
    return _then(_$ProfileStatusModelImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPercentage: freezed == totalPercentage
          ? _value.totalPercentage
          : totalPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileStatusModelImpl extends _ProfileStatusModel {
  _$ProfileStatusModelImpl(
      {@JsonKey(name: "profile") this.profile,
      @JsonKey(name: "total_percentage") this.totalPercentage,
      @JsonKey(name: "verification") this.verification})
      : super._();

  factory _$ProfileStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileStatusModelImplFromJson(json);

  @override
  @JsonKey(name: "profile")
  final double? profile;
  @override
  @JsonKey(name: "total_percentage")
  final double? totalPercentage;
  @override
  @JsonKey(name: "verification")
  final double? verification;

  @override
  String toString() {
    return 'ProfileStatusModel(profile: $profile, totalPercentage: $totalPercentage, verification: $verification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStatusModelImpl &&
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
  _$$ProfileStatusModelImplCopyWith<_$ProfileStatusModelImpl> get copyWith =>
      __$$ProfileStatusModelImplCopyWithImpl<_$ProfileStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileStatusModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileStatusModel extends ProfileStatusModel {
  factory _ProfileStatusModel(
          {@JsonKey(name: "profile") final double? profile,
          @JsonKey(name: "total_percentage") final double? totalPercentage,
          @JsonKey(name: "verification") final double? verification}) =
      _$ProfileStatusModelImpl;
  _ProfileStatusModel._() : super._();

  factory _ProfileStatusModel.fromJson(Map<String, dynamic> json) =
      _$ProfileStatusModelImpl.fromJson;

  @override
  @JsonKey(name: "profile")
  double? get profile;
  @override
  @JsonKey(name: "total_percentage")
  double? get totalPercentage;
  @override
  @JsonKey(name: "verification")
  double? get verification;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStatusModelImplCopyWith<_$ProfileStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
