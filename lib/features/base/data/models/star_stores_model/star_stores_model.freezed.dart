// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_stores_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StarStoresModel _$StarStoresModelFromJson(Map<String, dynamic> json) {
  return _StarStoresModel.fromJson(json);
}

/// @nodoc
mixin _$StarStoresModel {
  @JsonKey(name: 'data')
  List<AgentStoreModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages_count')
  int? get pagesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarStoresModelCopyWith<StarStoresModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarStoresModelCopyWith<$Res> {
  factory $StarStoresModelCopyWith(
          StarStoresModel value, $Res Function(StarStoresModel) then) =
      _$StarStoresModelCopyWithImpl<$Res, StarStoresModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<AgentStoreModel> data,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'pages_count') int? pagesCount,
      @JsonKey(name: 'path') String? path});
}

/// @nodoc
class _$StarStoresModelCopyWithImpl<$Res, $Val extends StarStoresModel>
    implements $StarStoresModelCopyWith<$Res> {
  _$StarStoresModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? count = freezed,
    Object? pagesCount = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentStoreModel>,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StarStoresModelImplCopyWith<$Res>
    implements $StarStoresModelCopyWith<$Res> {
  factory _$$StarStoresModelImplCopyWith(_$StarStoresModelImpl value,
          $Res Function(_$StarStoresModelImpl) then) =
      __$$StarStoresModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<AgentStoreModel> data,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'pages_count') int? pagesCount,
      @JsonKey(name: 'path') String? path});
}

/// @nodoc
class __$$StarStoresModelImplCopyWithImpl<$Res>
    extends _$StarStoresModelCopyWithImpl<$Res, _$StarStoresModelImpl>
    implements _$$StarStoresModelImplCopyWith<$Res> {
  __$$StarStoresModelImplCopyWithImpl(
      _$StarStoresModelImpl _value, $Res Function(_$StarStoresModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? count = freezed,
    Object? pagesCount = freezed,
    Object? path = freezed,
  }) {
    return _then(_$StarStoresModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentStoreModel>,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StarStoresModelImpl extends _StarStoresModel {
  _$StarStoresModelImpl(
      {@JsonKey(name: 'data') required final List<AgentStoreModel> data,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'pages_count') this.pagesCount,
      @JsonKey(name: 'path') this.path})
      : _data = data,
        super._();

  factory _$StarStoresModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarStoresModelImplFromJson(json);

  final List<AgentStoreModel> _data;
  @override
  @JsonKey(name: 'data')
  List<AgentStoreModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'pages_count')
  final int? pagesCount;
  @override
  @JsonKey(name: 'path')
  final String? path;

  @override
  String toString() {
    return 'StarStoresModel(data: $data, count: $count, pagesCount: $pagesCount, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StarStoresModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), count, pagesCount, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StarStoresModelImplCopyWith<_$StarStoresModelImpl> get copyWith =>
      __$$StarStoresModelImplCopyWithImpl<_$StarStoresModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarStoresModelImplToJson(
      this,
    );
  }
}

abstract class _StarStoresModel extends StarStoresModel {
  factory _StarStoresModel(
      {@JsonKey(name: 'data') required final List<AgentStoreModel> data,
      @JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'pages_count') final int? pagesCount,
      @JsonKey(name: 'path') final String? path}) = _$StarStoresModelImpl;
  _StarStoresModel._() : super._();

  factory _StarStoresModel.fromJson(Map<String, dynamic> json) =
      _$StarStoresModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<AgentStoreModel> get data;
  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'pages_count')
  int? get pagesCount;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$StarStoresModelImplCopyWith<_$StarStoresModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
