// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expertise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpertiseModel _$ExpertiseModelFromJson(Map<String, dynamic> json) {
  return _ExpertiseModel.fromJson(json);
}

/// @nodoc
mixin _$ExpertiseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String? get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "name_app")
  String? get nameApp => throw _privateConstructorUsedError;
  @JsonKey(name: "length")
  int? get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertiseModelCopyWith<ExpertiseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertiseModelCopyWith<$Res> {
  factory $ExpertiseModelCopyWith(
          ExpertiseModel value, $Res Function(ExpertiseModel) then) =
      _$ExpertiseModelCopyWithImpl<$Res, ExpertiseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_app") String? nameApp,
      @JsonKey(name: "length") int? length});
}

/// @nodoc
class _$ExpertiseModelCopyWithImpl<$Res, $Val extends ExpertiseModel>
    implements $ExpertiseModelCopyWith<$Res> {
  _$ExpertiseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameAr = freezed,
    Object? nameApp = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameApp: freezed == nameApp
          ? _value.nameApp
          : nameApp // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertiseModelImplCopyWith<$Res>
    implements $ExpertiseModelCopyWith<$Res> {
  factory _$$ExpertiseModelImplCopyWith(_$ExpertiseModelImpl value,
          $Res Function(_$ExpertiseModelImpl) then) =
      __$$ExpertiseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "name_ar") String? nameAr,
      @JsonKey(name: "name_app") String? nameApp,
      @JsonKey(name: "length") int? length});
}

/// @nodoc
class __$$ExpertiseModelImplCopyWithImpl<$Res>
    extends _$ExpertiseModelCopyWithImpl<$Res, _$ExpertiseModelImpl>
    implements _$$ExpertiseModelImplCopyWith<$Res> {
  __$$ExpertiseModelImplCopyWithImpl(
      _$ExpertiseModelImpl _value, $Res Function(_$ExpertiseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nameAr = freezed,
    Object? nameApp = freezed,
    Object? length = freezed,
  }) {
    return _then(_$ExpertiseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameAr: freezed == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      nameApp: freezed == nameApp
          ? _value.nameApp
          : nameApp // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ExpertiseModelImpl extends _ExpertiseModel {
  _$ExpertiseModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "name_ar") this.nameAr,
      @JsonKey(name: "name_app") this.nameApp,
      @JsonKey(name: "length") this.length})
      : super._();

  factory _$ExpertiseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertiseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "name_ar")
  final String? nameAr;
  @override
  @JsonKey(name: "name_app")
  final String? nameApp;
  @override
  @JsonKey(name: "length")
  final int? length;

  @override
  String toString() {
    return 'ExpertiseModel(id: $id, name: $name, nameAr: $nameAr, nameApp: $nameApp, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameApp, nameApp) || other.nameApp == nameApp) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, nameAr, nameApp, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertiseModelImplCopyWith<_$ExpertiseModelImpl> get copyWith =>
      __$$ExpertiseModelImplCopyWithImpl<_$ExpertiseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertiseModelImplToJson(
      this,
    );
  }
}

abstract class _ExpertiseModel extends ExpertiseModel {
  factory _ExpertiseModel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "name_ar") final String? nameAr,
      @JsonKey(name: "name_app") final String? nameApp,
      @JsonKey(name: "length") final int? length}) = _$ExpertiseModelImpl;
  _ExpertiseModel._() : super._();

  factory _ExpertiseModel.fromJson(Map<String, dynamic> json) =
      _$ExpertiseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "name_ar")
  String? get nameAr;
  @override
  @JsonKey(name: "name_app")
  String? get nameApp;
  @override
  @JsonKey(name: "length")
  int? get length;
  @override
  @JsonKey(ignore: true)
  _$$ExpertiseModelImplCopyWith<_$ExpertiseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
