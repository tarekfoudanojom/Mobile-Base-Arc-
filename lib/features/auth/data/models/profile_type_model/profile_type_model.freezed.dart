// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileTypeModel _$ProfileTypeModelFromJson(Map<String, dynamic> json) {
  return _ProfileTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileTypeModel {
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileTypeModelCopyWith<ProfileTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileTypeModelCopyWith<$Res> {
  factory $ProfileTypeModelCopyWith(
          ProfileTypeModel value, $Res Function(ProfileTypeModel) then) =
      _$ProfileTypeModelCopyWithImpl<$Res, ProfileTypeModel>;
  @useResult
  $Res call({@JsonKey(name: "type") String type, @JsonKey(name: "id") int id});
}

/// @nodoc
class _$ProfileTypeModelCopyWithImpl<$Res, $Val extends ProfileTypeModel>
    implements $ProfileTypeModelCopyWith<$Res> {
  _$ProfileTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileTypeModelImplCopyWith<$Res>
    implements $ProfileTypeModelCopyWith<$Res> {
  factory _$$ProfileTypeModelImplCopyWith(_$ProfileTypeModelImpl value,
          $Res Function(_$ProfileTypeModelImpl) then) =
      __$$ProfileTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "type") String type, @JsonKey(name: "id") int id});
}

/// @nodoc
class __$$ProfileTypeModelImplCopyWithImpl<$Res>
    extends _$ProfileTypeModelCopyWithImpl<$Res, _$ProfileTypeModelImpl>
    implements _$$ProfileTypeModelImplCopyWith<$Res> {
  __$$ProfileTypeModelImplCopyWithImpl(_$ProfileTypeModelImpl _value,
      $Res Function(_$ProfileTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_$ProfileTypeModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfileTypeModelImpl extends _ProfileTypeModel {
  _$ProfileTypeModelImpl(
      {@JsonKey(name: "type") required this.type,
      @JsonKey(name: "id") required this.id})
      : super._();

  factory _$ProfileTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "id")
  final int id;

  @override
  String toString() {
    return 'ProfileTypeModel(type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileTypeModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileTypeModelImplCopyWith<_$ProfileTypeModelImpl> get copyWith =>
      __$$ProfileTypeModelImplCopyWithImpl<_$ProfileTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileTypeModel extends ProfileTypeModel {
  factory _ProfileTypeModel(
      {@JsonKey(name: "type") required final String type,
      @JsonKey(name: "id") required final int id}) = _$ProfileTypeModelImpl;
  _ProfileTypeModel._() : super._();

  factory _ProfileTypeModel.fromJson(Map<String, dynamic> json) =
      _$ProfileTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ProfileTypeModelImplCopyWith<_$ProfileTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
