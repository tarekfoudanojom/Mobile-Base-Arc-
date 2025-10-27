// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AboutUsItemModel _$AboutUsItemModelFromJson(Map<String, dynamic> json) {
  return _AboutUsItemModel.fromJson(json);
}

/// @nodoc
mixin _$AboutUsItemModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set title(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameAr')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameAr')
  set description(String value) => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  set isSelected(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutUsItemModelCopyWith<AboutUsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutUsItemModelCopyWith<$Res> {
  factory $AboutUsItemModelCopyWith(
          AboutUsItemModel value, $Res Function(AboutUsItemModel) then) =
      _$AboutUsItemModelCopyWithImpl<$Res, AboutUsItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String title,
      @JsonKey(name: 'nameAr') String description,
      @JsonKey(defaultValue: false) bool? isSelected});
}

/// @nodoc
class _$AboutUsItemModelCopyWithImpl<$Res, $Val extends AboutUsItemModel>
    implements $AboutUsItemModelCopyWith<$Res> {
  _$AboutUsItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutUsItemModelImplCopyWith<$Res>
    implements $AboutUsItemModelCopyWith<$Res> {
  factory _$$AboutUsItemModelImplCopyWith(_$AboutUsItemModelImpl value,
          $Res Function(_$AboutUsItemModelImpl) then) =
      __$$AboutUsItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String title,
      @JsonKey(name: 'nameAr') String description,
      @JsonKey(defaultValue: false) bool? isSelected});
}

/// @nodoc
class __$$AboutUsItemModelImplCopyWithImpl<$Res>
    extends _$AboutUsItemModelCopyWithImpl<$Res, _$AboutUsItemModelImpl>
    implements _$$AboutUsItemModelImplCopyWith<$Res> {
  __$$AboutUsItemModelImplCopyWithImpl(_$AboutUsItemModelImpl _value,
      $Res Function(_$AboutUsItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$AboutUsItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AboutUsItemModelImpl extends _AboutUsItemModel {
  _$AboutUsItemModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.title,
      @JsonKey(name: 'nameAr') required this.description,
      @JsonKey(defaultValue: false) this.isSelected})
      : super._();

  factory _$AboutUsItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutUsItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  int id;
  @override
  @JsonKey(name: 'name')
  String title;
  @override
  @JsonKey(name: 'nameAr')
  String description;
  @override
  @JsonKey(defaultValue: false)
  bool? isSelected;

  @override
  String toString() {
    return 'AboutUsItemModel(id: $id, title: $title, description: $description, isSelected: $isSelected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutUsItemModelImplCopyWith<_$AboutUsItemModelImpl> get copyWith =>
      __$$AboutUsItemModelImplCopyWithImpl<_$AboutUsItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutUsItemModelImplToJson(
      this,
    );
  }
}

abstract class _AboutUsItemModel extends AboutUsItemModel {
  factory _AboutUsItemModel(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String title,
      @JsonKey(name: 'nameAr') required String description,
      @JsonKey(defaultValue: false) bool? isSelected}) = _$AboutUsItemModelImpl;
  _AboutUsItemModel._() : super._();

  factory _AboutUsItemModel.fromJson(Map<String, dynamic> json) =
      _$AboutUsItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'id')
  set id(int value);
  @override
  @JsonKey(name: 'name')
  String get title;
  @JsonKey(name: 'name')
  set title(String value);
  @override
  @JsonKey(name: 'nameAr')
  String get description;
  @JsonKey(name: 'nameAr')
  set description(String value);
  @override
  @JsonKey(defaultValue: false)
  bool? get isSelected;
  @JsonKey(defaultValue: false)
  set isSelected(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$AboutUsItemModelImplCopyWith<_$AboutUsItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
