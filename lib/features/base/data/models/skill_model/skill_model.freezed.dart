// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SkillModel _$SkillModelFromJson(Map<String, dynamic> json) {
  return _SkillModel.fromJson(json);
}

/// @nodoc
mixin _$SkillModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  String get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  set nameAr(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_stars')
  dynamic get numberOfStars => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_stars')
  set numberOfStars(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  num? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  set status(num? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected', defaultValue: false)
  bool? get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected', defaultValue: false)
  set selected(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillModelCopyWith<SkillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillModelCopyWith<$Res> {
  factory $SkillModelCopyWith(
          SkillModel value, $Res Function(SkillModel) then) =
      _$SkillModelCopyWithImpl<$Res, SkillModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'name_ar') String nameAr,
      @JsonKey(name: 'number_of_stars') dynamic numberOfStars,
      @JsonKey(name: 'status') num? status,
      @JsonKey(name: 'selected', defaultValue: false) bool? selected});
}

/// @nodoc
class _$SkillModelCopyWithImpl<$Res, $Val extends SkillModel>
    implements $SkillModelCopyWith<$Res> {
  _$SkillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameAr = null,
    Object? numberOfStars = freezed,
    Object? status = freezed,
    Object? selected = freezed,
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
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfStars: freezed == numberOfStars
          ? _value.numberOfStars
          : numberOfStars // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as num?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillModelImplCopyWith<$Res>
    implements $SkillModelCopyWith<$Res> {
  factory _$$SkillModelImplCopyWith(
          _$SkillModelImpl value, $Res Function(_$SkillModelImpl) then) =
      __$$SkillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'name_ar') String nameAr,
      @JsonKey(name: 'number_of_stars') dynamic numberOfStars,
      @JsonKey(name: 'status') num? status,
      @JsonKey(name: 'selected', defaultValue: false) bool? selected});
}

/// @nodoc
class __$$SkillModelImplCopyWithImpl<$Res>
    extends _$SkillModelCopyWithImpl<$Res, _$SkillModelImpl>
    implements _$$SkillModelImplCopyWith<$Res> {
  __$$SkillModelImplCopyWithImpl(
      _$SkillModelImpl _value, $Res Function(_$SkillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameAr = null,
    Object? numberOfStars = freezed,
    Object? status = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$SkillModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfStars: freezed == numberOfStars
          ? _value.numberOfStars
          : numberOfStars // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as num?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SkillModelImpl extends _SkillModel {
  _$SkillModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'name_ar') required this.nameAr,
      @JsonKey(name: 'number_of_stars') this.numberOfStars,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'selected', defaultValue: false) this.selected})
      : super._();

  factory _$SkillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int id;
  @override
  @JsonKey(name: 'name')
  String name;
  @override
  @JsonKey(name: 'name_ar')
  String nameAr;
  @override
  @JsonKey(name: 'number_of_stars')
  dynamic numberOfStars;
  @override
  @JsonKey(name: 'status')
  num? status;
  @override
  @JsonKey(name: 'selected', defaultValue: false)
  bool? selected;

  @override
  String toString() {
    return 'SkillModel(id: $id, name: $name, nameAr: $nameAr, numberOfStars: $numberOfStars, status: $status, selected: $selected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillModelImplCopyWith<_$SkillModelImpl> get copyWith =>
      __$$SkillModelImplCopyWithImpl<_$SkillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillModelImplToJson(
      this,
    );
  }
}

abstract class _SkillModel extends SkillModel {
  factory _SkillModel(
          {@JsonKey(name: 'id') required int id,
          @JsonKey(name: 'name') required String name,
          @JsonKey(name: 'name_ar') required String nameAr,
          @JsonKey(name: 'number_of_stars') dynamic numberOfStars,
          @JsonKey(name: 'status') num? status,
          @JsonKey(name: 'selected', defaultValue: false) bool? selected}) =
      _$SkillModelImpl;
  _SkillModel._() : super._();

  factory _SkillModel.fromJson(Map<String, dynamic> json) =
      _$SkillModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'id')
  set id(int value);
  @override
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'name')
  set name(String value);
  @override
  @JsonKey(name: 'name_ar')
  String get nameAr;
  @JsonKey(name: 'name_ar')
  set nameAr(String value);
  @override
  @JsonKey(name: 'number_of_stars')
  dynamic get numberOfStars;
  @JsonKey(name: 'number_of_stars')
  set numberOfStars(dynamic value);
  @override
  @JsonKey(name: 'status')
  num? get status;
  @JsonKey(name: 'status')
  set status(num? value);
  @override
  @JsonKey(name: 'selected', defaultValue: false)
  bool? get selected;
  @JsonKey(name: 'selected', defaultValue: false)
  set selected(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$SkillModelImplCopyWith<_$SkillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
