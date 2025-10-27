// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_pay_types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfilePayTypesModel _$ProfilePayTypesModelFromJson(Map<String, dynamic> json) {
  return _ProfilePayTypesModel.fromJson(json);
}

/// @nodoc
mixin _$ProfilePayTypesModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "detail")
  String get detail => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePayTypesModelCopyWith<ProfilePayTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePayTypesModelCopyWith<$Res> {
  factory $ProfilePayTypesModelCopyWith(ProfilePayTypesModel value,
          $Res Function(ProfilePayTypesModel) then) =
      _$ProfilePayTypesModelCopyWithImpl<$Res, ProfilePayTypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "detail") String detail,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$ProfilePayTypesModelCopyWithImpl<$Res,
        $Val extends ProfilePayTypesModel>
    implements $ProfilePayTypesModelCopyWith<$Res> {
  _$ProfilePayTypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detail = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePayTypesModelImplCopyWith<$Res>
    implements $ProfilePayTypesModelCopyWith<$Res> {
  factory _$$ProfilePayTypesModelImplCopyWith(_$ProfilePayTypesModelImpl value,
          $Res Function(_$ProfilePayTypesModelImpl) then) =
      __$$ProfilePayTypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "detail") String detail,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$ProfilePayTypesModelImplCopyWithImpl<$Res>
    extends _$ProfilePayTypesModelCopyWithImpl<$Res, _$ProfilePayTypesModelImpl>
    implements _$$ProfilePayTypesModelImplCopyWith<$Res> {
  __$$ProfilePayTypesModelImplCopyWithImpl(_$ProfilePayTypesModelImpl _value,
      $Res Function(_$ProfilePayTypesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? detail = null,
    Object? status = null,
  }) {
    return _then(_$ProfilePayTypesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProfilePayTypesModelImpl extends _ProfilePayTypesModel {
  _$ProfilePayTypesModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "detail") required this.detail,
      @JsonKey(name: "status") required this.status})
      : super._();

  factory _$ProfilePayTypesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePayTypesModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "detail")
  final String detail;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'ProfilePayTypesModel(id: $id, name: $name, detail: $detail, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePayTypesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, detail, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePayTypesModelImplCopyWith<_$ProfilePayTypesModelImpl>
      get copyWith =>
          __$$ProfilePayTypesModelImplCopyWithImpl<_$ProfilePayTypesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePayTypesModelImplToJson(
      this,
    );
  }
}

abstract class _ProfilePayTypesModel extends ProfilePayTypesModel {
  factory _ProfilePayTypesModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "detail") required final String detail,
          @JsonKey(name: "status") required final int status}) =
      _$ProfilePayTypesModelImpl;
  _ProfilePayTypesModel._() : super._();

  factory _ProfilePayTypesModel.fromJson(Map<String, dynamic> json) =
      _$ProfilePayTypesModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "detail")
  String get detail;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$ProfilePayTypesModelImplCopyWith<_$ProfilePayTypesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
