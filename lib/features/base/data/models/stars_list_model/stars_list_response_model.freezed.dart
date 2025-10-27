// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stars_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StarsListResponseModel _$StarsListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _StarsListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$StarsListResponseModel {
  @JsonKey(name: "agents")
  List<CampaignAgentModel>? get agents => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "currentPage")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "hasNextPage")
  bool? get hasNextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "hasPrevPage")
  bool? get hasPrevPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarsListResponseModelCopyWith<StarsListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarsListResponseModelCopyWith<$Res> {
  factory $StarsListResponseModelCopyWith(StarsListResponseModel value,
          $Res Function(StarsListResponseModel) then) =
      _$StarsListResponseModelCopyWithImpl<$Res, StarsListResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agents") List<CampaignAgentModel>? agents,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "currentPage") int? currentPage,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "hasNextPage") bool? hasNextPage,
      @JsonKey(name: "hasPrevPage") bool? hasPrevPage});
}

/// @nodoc
class _$StarsListResponseModelCopyWithImpl<$Res,
        $Val extends StarsListResponseModel>
    implements $StarsListResponseModelCopyWith<$Res> {
  _$StarsListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agents = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPrevPage = freezed,
  }) {
    return _then(_value.copyWith(
      agents: freezed == agents
          ? _value.agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<CampaignAgentModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevPage: freezed == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StarsListResponseModelImplCopyWith<$Res>
    implements $StarsListResponseModelCopyWith<$Res> {
  factory _$$StarsListResponseModelImplCopyWith(
          _$StarsListResponseModelImpl value,
          $Res Function(_$StarsListResponseModelImpl) then) =
      __$$StarsListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agents") List<CampaignAgentModel>? agents,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "currentPage") int? currentPage,
      @JsonKey(name: "totalPages") int? totalPages,
      @JsonKey(name: "hasNextPage") bool? hasNextPage,
      @JsonKey(name: "hasPrevPage") bool? hasPrevPage});
}

/// @nodoc
class __$$StarsListResponseModelImplCopyWithImpl<$Res>
    extends _$StarsListResponseModelCopyWithImpl<$Res,
        _$StarsListResponseModelImpl>
    implements _$$StarsListResponseModelImplCopyWith<$Res> {
  __$$StarsListResponseModelImplCopyWithImpl(
      _$StarsListResponseModelImpl _value,
      $Res Function(_$StarsListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agents = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? hasNextPage = freezed,
    Object? hasPrevPage = freezed,
  }) {
    return _then(_$StarsListResponseModelImpl(
      agents: freezed == agents
          ? _value._agents
          : agents // ignore: cast_nullable_to_non_nullable
              as List<CampaignAgentModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPrevPage: freezed == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StarsListResponseModelImpl extends _StarsListResponseModel {
  _$StarsListResponseModelImpl(
      {@JsonKey(name: "agents") final List<CampaignAgentModel>? agents,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "currentPage") this.currentPage,
      @JsonKey(name: "totalPages") this.totalPages,
      @JsonKey(name: "hasNextPage") this.hasNextPage,
      @JsonKey(name: "hasPrevPage") this.hasPrevPage})
      : _agents = agents,
        super._();

  factory _$StarsListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarsListResponseModelImplFromJson(json);

  final List<CampaignAgentModel>? _agents;
  @override
  @JsonKey(name: "agents")
  List<CampaignAgentModel>? get agents {
    final value = _agents;
    if (value == null) return null;
    if (_agents is EqualUnmodifiableListView) return _agents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @override
  @JsonKey(name: "totalPages")
  final int? totalPages;
  @override
  @JsonKey(name: "hasNextPage")
  final bool? hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  final bool? hasPrevPage;

  @override
  String toString() {
    return 'StarsListResponseModel(agents: $agents, total: $total, limit: $limit, currentPage: $currentPage, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StarsListResponseModelImpl &&
            const DeepCollectionEquality().equals(other._agents, _agents) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_agents),
      total,
      limit,
      currentPage,
      totalPages,
      hasNextPage,
      hasPrevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StarsListResponseModelImplCopyWith<_$StarsListResponseModelImpl>
      get copyWith => __$$StarsListResponseModelImplCopyWithImpl<
          _$StarsListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarsListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _StarsListResponseModel extends StarsListResponseModel {
  factory _StarsListResponseModel(
          {@JsonKey(name: "agents") final List<CampaignAgentModel>? agents,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "limit") final int? limit,
          @JsonKey(name: "currentPage") final int? currentPage,
          @JsonKey(name: "totalPages") final int? totalPages,
          @JsonKey(name: "hasNextPage") final bool? hasNextPage,
          @JsonKey(name: "hasPrevPage") final bool? hasPrevPage}) =
      _$StarsListResponseModelImpl;
  _StarsListResponseModel._() : super._();

  factory _StarsListResponseModel.fromJson(Map<String, dynamic> json) =
      _$StarsListResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "agents")
  List<CampaignAgentModel>? get agents;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(name: "currentPage")
  int? get currentPage;
  @override
  @JsonKey(name: "totalPages")
  int? get totalPages;
  @override
  @JsonKey(name: "hasNextPage")
  bool? get hasNextPage;
  @override
  @JsonKey(name: "hasPrevPage")
  bool? get hasPrevPage;
  @override
  @JsonKey(ignore: true)
  _$$StarsListResponseModelImplCopyWith<_$StarsListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
