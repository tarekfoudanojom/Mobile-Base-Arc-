// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: "path")
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "file_name")
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "path") String path,
      @JsonKey(name: "file_name") String? fileName});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "path") String path,
      @JsonKey(name: "file_name") String? fileName});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? fileName = freezed,
  }) {
    return _then(_$ImageModelImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ImageModelImpl extends _ImageModel {
  _$ImageModelImpl(
      {@JsonKey(name: "path") required this.path,
      @JsonKey(name: "file_name") this.fileName})
      : super._();

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  @JsonKey(name: "path")
  final String path;
  @override
  @JsonKey(name: "file_name")
  final String? fileName;

  @override
  String toString() {
    return 'ImageModel(path: $path, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel extends ImageModel {
  factory _ImageModel(
      {@JsonKey(name: "path") required final String path,
      @JsonKey(name: "file_name") final String? fileName}) = _$ImageModelImpl;
  _ImageModel._() : super._();

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  @JsonKey(name: "path")
  String get path;
  @override
  @JsonKey(name: "file_name")
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
