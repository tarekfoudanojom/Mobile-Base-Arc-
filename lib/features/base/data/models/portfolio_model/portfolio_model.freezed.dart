// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) {
  return _PortfolioModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioModel {
  @JsonKey(name: "portfolio")
  List<PortfolioItemModel>? get portfolio => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  dynamic get count => throw _privateConstructorUsedError;
  @JsonKey(name: "pages_count")
  int? get pagesCount => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "company_path")
  String? get companyPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res, PortfolioModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "portfolio") List<PortfolioItemModel>? portfolio,
      @JsonKey(name: "count") dynamic count,
      @JsonKey(name: "pages_count") int? pagesCount,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "company_path") String? companyPath});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res, $Val extends PortfolioModel>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
    Object? count = freezed,
    Object? pagesCount = freezed,
    Object? path = null,
    Object? companyPath = freezed,
  }) {
    return _then(_value.copyWith(
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      companyPath: freezed == companyPath
          ? _value.companyPath
          : companyPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioModelImplCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$PortfolioModelImplCopyWith(_$PortfolioModelImpl value,
          $Res Function(_$PortfolioModelImpl) then) =
      __$$PortfolioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "portfolio") List<PortfolioItemModel>? portfolio,
      @JsonKey(name: "count") dynamic count,
      @JsonKey(name: "pages_count") int? pagesCount,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "company_path") String? companyPath});
}

/// @nodoc
class __$$PortfolioModelImplCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res, _$PortfolioModelImpl>
    implements _$$PortfolioModelImplCopyWith<$Res> {
  __$$PortfolioModelImplCopyWithImpl(
      _$PortfolioModelImpl _value, $Res Function(_$PortfolioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolio = freezed,
    Object? count = freezed,
    Object? pagesCount = freezed,
    Object? path = null,
    Object? companyPath = freezed,
  }) {
    return _then(_$PortfolioModelImpl(
      portfolio: freezed == portfolio
          ? _value._portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pagesCount: freezed == pagesCount
          ? _value.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      companyPath: freezed == companyPath
          ? _value.companyPath
          : companyPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PortfolioModelImpl extends _PortfolioModel {
  _$PortfolioModelImpl(
      {@JsonKey(name: "portfolio") final List<PortfolioItemModel>? portfolio,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "pages_count") this.pagesCount,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "company_path") this.companyPath})
      : _portfolio = portfolio,
        super._();

  factory _$PortfolioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioModelImplFromJson(json);

  final List<PortfolioItemModel>? _portfolio;
  @override
  @JsonKey(name: "portfolio")
  List<PortfolioItemModel>? get portfolio {
    final value = _portfolio;
    if (value == null) return null;
    if (_portfolio is EqualUnmodifiableListView) return _portfolio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "count")
  final dynamic count;
  @override
  @JsonKey(name: "pages_count")
  final int? pagesCount;
  @override
  @JsonKey(name: "path")
  final String path;
  @override
  @JsonKey(name: "company_path")
  final String? companyPath;

  @override
  String toString() {
    return 'PortfolioModel(portfolio: $portfolio, count: $count, pagesCount: $pagesCount, path: $path, companyPath: $companyPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioModelImpl &&
            const DeepCollectionEquality()
                .equals(other._portfolio, _portfolio) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.companyPath, companyPath) ||
                other.companyPath == companyPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_portfolio),
      const DeepCollectionEquality().hash(count),
      pagesCount,
      path,
      companyPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      __$$PortfolioModelImplCopyWithImpl<_$PortfolioModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioModelImplToJson(
      this,
    );
  }
}

abstract class _PortfolioModel extends PortfolioModel {
  factory _PortfolioModel(
      {@JsonKey(name: "portfolio") final List<PortfolioItemModel>? portfolio,
      @JsonKey(name: "count") final dynamic count,
      @JsonKey(name: "pages_count") final int? pagesCount,
      @JsonKey(name: "path") required final String path,
      @JsonKey(name: "company_path")
      final String? companyPath}) = _$PortfolioModelImpl;
  _PortfolioModel._() : super._();

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioModelImpl.fromJson;

  @override
  @JsonKey(name: "portfolio")
  List<PortfolioItemModel>? get portfolio;
  @override
  @JsonKey(name: "count")
  dynamic get count;
  @override
  @JsonKey(name: "pages_count")
  int? get pagesCount;
  @override
  @JsonKey(name: "path")
  String get path;
  @override
  @JsonKey(name: "company_path")
  String? get companyPath;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
