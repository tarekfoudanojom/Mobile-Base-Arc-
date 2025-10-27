// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentCategoryModel _$AgentCategoryModelFromJson(Map<String, dynamic> json) {
  return _AgentCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$AgentCategoryModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String? get nameAr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCategoryModelCopyWith<AgentCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCategoryModelCopyWith<$Res> {
  factory $AgentCategoryModelCopyWith(
          AgentCategoryModel value, $Res Function(AgentCategoryModel) then) =
      _$AgentCategoryModelCopyWithImpl<$Res, AgentCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: "name_ar") String? nameAr});
}

/// @nodoc
class _$AgentCategoryModelCopyWithImpl<$Res, $Val extends AgentCategoryModel>
    implements $AgentCategoryModelCopyWith<$Res> {
  _$AgentCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? rating = freezed,
    Object? nameAr = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentCategoryModelImplCopyWith<$Res>
    implements $AgentCategoryModelCopyWith<$Res> {
  factory _$$AgentCategoryModelImplCopyWith(_$AgentCategoryModelImpl value,
          $Res Function(_$AgentCategoryModelImpl) then) =
      __$$AgentCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: 'rating') double? rating,
      @JsonKey(name: "name_ar") String? nameAr});
}

/// @nodoc
class __$$AgentCategoryModelImplCopyWithImpl<$Res>
    extends _$AgentCategoryModelCopyWithImpl<$Res, _$AgentCategoryModelImpl>
    implements _$$AgentCategoryModelImplCopyWith<$Res> {
  __$$AgentCategoryModelImplCopyWithImpl(_$AgentCategoryModelImpl _value,
      $Res Function(_$AgentCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? rating = freezed,
    Object? nameAr = freezed,
  }) {
    return _then(_$AgentCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AgentCategoryModelImpl extends _AgentCategoryModel {
  _$AgentCategoryModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: "name_ar") this.nameAr})
      : super._();

  factory _$AgentCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: "name_ar")
  final String? nameAr;

  @override
  String toString() {
    return 'AgentCategoryModel(id: $id, name: $name, status: $status, rating: $rating, nameAr: $nameAr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, rating, nameAr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentCategoryModelImplCopyWith<_$AgentCategoryModelImpl> get copyWith =>
      __$$AgentCategoryModelImplCopyWithImpl<_$AgentCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _AgentCategoryModel extends AgentCategoryModel {
  factory _AgentCategoryModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: 'rating') final double? rating,
          @JsonKey(name: "name_ar") final String? nameAr}) =
      _$AgentCategoryModelImpl;
  _AgentCategoryModel._() : super._();

  factory _AgentCategoryModel.fromJson(Map<String, dynamic> json) =
      _$AgentCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: "name_ar")
  String? get nameAr;
  @override
  @JsonKey(ignore: true)
  _$$AgentCategoryModelImplCopyWith<_$AgentCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
