// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audience_insight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudienceInsightModel _$AudienceInsightModelFromJson(Map<String, dynamic> json) {
  return _AudienceInsightModel.fromJson(json);
}

/// @nodoc
mixin _$AudienceInsightModel {
// Metadata? metadata,
  AudienceModel? get demographics => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudienceInsightModelCopyWith<AudienceInsightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudienceInsightModelCopyWith<$Res> {
  factory $AudienceInsightModelCopyWith(AudienceInsightModel value,
          $Res Function(AudienceInsightModel) then) =
      _$AudienceInsightModelCopyWithImpl<$Res, AudienceInsightModel>;
  @useResult
  $Res call({AudienceModel? demographics, String? platform});

  $AudienceModelCopyWith<$Res>? get demographics;
}

/// @nodoc
class _$AudienceInsightModelCopyWithImpl<$Res,
        $Val extends AudienceInsightModel>
    implements $AudienceInsightModelCopyWith<$Res> {
  _$AudienceInsightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demographics = freezed,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      demographics: freezed == demographics
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as AudienceModel?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudienceModelCopyWith<$Res>? get demographics {
    if (_value.demographics == null) {
      return null;
    }

    return $AudienceModelCopyWith<$Res>(_value.demographics!, (value) {
      return _then(_value.copyWith(demographics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudienceInsightModelImplCopyWith<$Res>
    implements $AudienceInsightModelCopyWith<$Res> {
  factory _$$AudienceInsightModelImplCopyWith(_$AudienceInsightModelImpl value,
          $Res Function(_$AudienceInsightModelImpl) then) =
      __$$AudienceInsightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AudienceModel? demographics, String? platform});

  @override
  $AudienceModelCopyWith<$Res>? get demographics;
}

/// @nodoc
class __$$AudienceInsightModelImplCopyWithImpl<$Res>
    extends _$AudienceInsightModelCopyWithImpl<$Res, _$AudienceInsightModelImpl>
    implements _$$AudienceInsightModelImplCopyWith<$Res> {
  __$$AudienceInsightModelImplCopyWithImpl(_$AudienceInsightModelImpl _value,
      $Res Function(_$AudienceInsightModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? demographics = freezed,
    Object? platform = freezed,
  }) {
    return _then(_$AudienceInsightModelImpl(
      demographics: freezed == demographics
          ? _value.demographics
          : demographics // ignore: cast_nullable_to_non_nullable
              as AudienceModel?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudienceInsightModelImpl implements _AudienceInsightModel {
  const _$AudienceInsightModelImpl({this.demographics, this.platform});

  factory _$AudienceInsightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudienceInsightModelImplFromJson(json);

// Metadata? metadata,
  @override
  final AudienceModel? demographics;
  @override
  final String? platform;

  @override
  String toString() {
    return 'AudienceInsightModel(demographics: $demographics, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudienceInsightModelImpl &&
            (identical(other.demographics, demographics) ||
                other.demographics == demographics) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, demographics, platform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudienceInsightModelImplCopyWith<_$AudienceInsightModelImpl>
      get copyWith =>
          __$$AudienceInsightModelImplCopyWithImpl<_$AudienceInsightModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudienceInsightModelImplToJson(
      this,
    );
  }
}

abstract class _AudienceInsightModel implements AudienceInsightModel {
  const factory _AudienceInsightModel(
      {final AudienceModel? demographics,
      final String? platform}) = _$AudienceInsightModelImpl;

  factory _AudienceInsightModel.fromJson(Map<String, dynamic> json) =
      _$AudienceInsightModelImpl.fromJson;

  @override // Metadata? metadata,
  AudienceModel? get demographics;
  @override
  String? get platform;
  @override
  @JsonKey(ignore: true)
  _$$AudienceInsightModelImplCopyWith<_$AudienceInsightModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
