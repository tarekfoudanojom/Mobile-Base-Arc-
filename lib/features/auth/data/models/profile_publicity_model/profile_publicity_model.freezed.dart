// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_publicity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfilePublicityModel _$ProfilePublicityModelFromJson(
    Map<String, dynamic> json) {
  return _ProfilePublicityModel.fromJson(json);
}

/// @nodoc
mixin _$ProfilePublicityModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "publicity_type")
  String? get publicityType => throw _privateConstructorUsedError;
  @JsonKey(name: "publicity_type_ar")
  String? get publicityTypeAr => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  dynamic get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePublicityModelCopyWith<ProfilePublicityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePublicityModelCopyWith<$Res> {
  factory $ProfilePublicityModelCopyWith(ProfilePublicityModel value,
          $Res Function(ProfilePublicityModel) then) =
      _$ProfilePublicityModelCopyWithImpl<$Res, ProfilePublicityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "publicity_type") String? publicityType,
      @JsonKey(name: "publicity_type_ar") String? publicityTypeAr,
      @JsonKey(name: "status") dynamic status});
}

/// @nodoc
class _$ProfilePublicityModelCopyWithImpl<$Res,
        $Val extends ProfilePublicityModel>
    implements $ProfilePublicityModelCopyWith<$Res> {
  _$ProfilePublicityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? publicityType = freezed,
    Object? publicityTypeAr = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      publicityType: freezed == publicityType
          ? _value.publicityType
          : publicityType // ignore: cast_nullable_to_non_nullable
              as String?,
      publicityTypeAr: freezed == publicityTypeAr
          ? _value.publicityTypeAr
          : publicityTypeAr // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePublicityModelImplCopyWith<$Res>
    implements $ProfilePublicityModelCopyWith<$Res> {
  factory _$$ProfilePublicityModelImplCopyWith(
          _$ProfilePublicityModelImpl value,
          $Res Function(_$ProfilePublicityModelImpl) then) =
      __$$ProfilePublicityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "publicity_type") String? publicityType,
      @JsonKey(name: "publicity_type_ar") String? publicityTypeAr,
      @JsonKey(name: "status") dynamic status});
}

/// @nodoc
class __$$ProfilePublicityModelImplCopyWithImpl<$Res>
    extends _$ProfilePublicityModelCopyWithImpl<$Res,
        _$ProfilePublicityModelImpl>
    implements _$$ProfilePublicityModelImplCopyWith<$Res> {
  __$$ProfilePublicityModelImplCopyWithImpl(_$ProfilePublicityModelImpl _value,
      $Res Function(_$ProfilePublicityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? publicityType = freezed,
    Object? publicityTypeAr = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ProfilePublicityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      publicityType: freezed == publicityType
          ? _value.publicityType
          : publicityType // ignore: cast_nullable_to_non_nullable
              as String?,
      publicityTypeAr: freezed == publicityTypeAr
          ? _value.publicityTypeAr
          : publicityTypeAr // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ProfilePublicityModelImpl extends _ProfilePublicityModel {
  _$ProfilePublicityModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "publicity_type") this.publicityType,
      @JsonKey(name: "publicity_type_ar") this.publicityTypeAr,
      @JsonKey(name: "status") this.status})
      : super._();

  factory _$ProfilePublicityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePublicityModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "publicity_type")
  final String? publicityType;
  @override
  @JsonKey(name: "publicity_type_ar")
  final String? publicityTypeAr;
  @override
  @JsonKey(name: "status")
  final dynamic status;

  @override
  String toString() {
    return 'ProfilePublicityModel(id: $id, publicityType: $publicityType, publicityTypeAr: $publicityTypeAr, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePublicityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.publicityType, publicityType) ||
                other.publicityType == publicityType) &&
            (identical(other.publicityTypeAr, publicityTypeAr) ||
                other.publicityTypeAr == publicityTypeAr) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, publicityType,
      publicityTypeAr, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePublicityModelImplCopyWith<_$ProfilePublicityModelImpl>
      get copyWith => __$$ProfilePublicityModelImplCopyWithImpl<
          _$ProfilePublicityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePublicityModelImplToJson(
      this,
    );
  }
}

abstract class _ProfilePublicityModel extends ProfilePublicityModel {
  factory _ProfilePublicityModel(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "publicity_type") final String? publicityType,
          @JsonKey(name: "publicity_type_ar") final String? publicityTypeAr,
          @JsonKey(name: "status") final dynamic status}) =
      _$ProfilePublicityModelImpl;
  _ProfilePublicityModel._() : super._();

  factory _ProfilePublicityModel.fromJson(Map<String, dynamic> json) =
      _$ProfilePublicityModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "publicity_type")
  String? get publicityType;
  @override
  @JsonKey(name: "publicity_type_ar")
  String? get publicityTypeAr;
  @override
  @JsonKey(name: "status")
  dynamic get status;
  @override
  @JsonKey(ignore: true)
  _$$ProfilePublicityModelImplCopyWith<_$ProfilePublicityModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
