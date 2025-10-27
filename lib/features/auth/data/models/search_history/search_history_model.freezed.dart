// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchHistoryResponseModel _$SearchHistoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SearchHistoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryResponseModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<SearchHistoryDataResponseModel>? get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "pagination")
  SearchHistoryPaginationResponseModel? get pagination =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryResponseModelCopyWith<SearchHistoryResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryResponseModelCopyWith<$Res> {
  factory $SearchHistoryResponseModelCopyWith(SearchHistoryResponseModel value,
          $Res Function(SearchHistoryResponseModel) then) =
      _$SearchHistoryResponseModelCopyWithImpl<$Res,
          SearchHistoryResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<SearchHistoryDataResponseModel>? data,
      @JsonKey(name: "pagination")
      SearchHistoryPaginationResponseModel? pagination});

  $SearchHistoryPaginationResponseModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$SearchHistoryResponseModelCopyWithImpl<$Res,
        $Val extends SearchHistoryResponseModel>
    implements $SearchHistoryResponseModelCopyWith<$Res> {
  _$SearchHistoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryDataResponseModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchHistoryPaginationResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchHistoryPaginationResponseModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $SearchHistoryPaginationResponseModelCopyWith<$Res>(
        _value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchHistoryResponseModelImplCopyWith<$Res>
    implements $SearchHistoryResponseModelCopyWith<$Res> {
  factory _$$SearchHistoryResponseModelImplCopyWith(
          _$SearchHistoryResponseModelImpl value,
          $Res Function(_$SearchHistoryResponseModelImpl) then) =
      __$$SearchHistoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<SearchHistoryDataResponseModel>? data,
      @JsonKey(name: "pagination")
      SearchHistoryPaginationResponseModel? pagination});

  @override
  $SearchHistoryPaginationResponseModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$SearchHistoryResponseModelImplCopyWithImpl<$Res>
    extends _$SearchHistoryResponseModelCopyWithImpl<$Res,
        _$SearchHistoryResponseModelImpl>
    implements _$$SearchHistoryResponseModelImplCopyWith<$Res> {
  __$$SearchHistoryResponseModelImplCopyWithImpl(
      _$SearchHistoryResponseModelImpl _value,
      $Res Function(_$SearchHistoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$SearchHistoryResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchHistoryDataResponseModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as SearchHistoryPaginationResponseModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SearchHistoryResponseModelImpl extends _SearchHistoryResponseModel {
  _$SearchHistoryResponseModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<SearchHistoryDataResponseModel>? data,
      @JsonKey(name: "pagination") this.pagination})
      : _data = data,
        super._();

  factory _$SearchHistoryResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchHistoryResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<SearchHistoryDataResponseModel>? _data;
  @override
  @JsonKey(name: "data")
  List<SearchHistoryDataResponseModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pagination")
  final SearchHistoryPaginationResponseModel? pagination;

  @override
  String toString() {
    return 'SearchHistoryResponseModel(status: $status, message: $message, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryResponseModelImplCopyWith<_$SearchHistoryResponseModelImpl>
      get copyWith => __$$SearchHistoryResponseModelImplCopyWithImpl<
          _$SearchHistoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryResponseModel extends SearchHistoryResponseModel {
  factory _SearchHistoryResponseModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<SearchHistoryDataResponseModel>? data,
      @JsonKey(name: "pagination")
      final SearchHistoryPaginationResponseModel?
          pagination}) = _$SearchHistoryResponseModelImpl;
  _SearchHistoryResponseModel._() : super._();

  factory _SearchHistoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<SearchHistoryDataResponseModel>? get data;
  @override
  @JsonKey(name: "pagination")
  SearchHistoryPaginationResponseModel? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryResponseModelImplCopyWith<_$SearchHistoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchHistoryPaginationResponseModel
    _$SearchHistoryPaginationResponseModelFromJson(Map<String, dynamic> json) {
  return _SearchHistoryPaginationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryPaginationResponseModel {
  @JsonKey(name: "total")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPages")
  int? get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryPaginationResponseModelCopyWith<
          SearchHistoryPaginationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryPaginationResponseModelCopyWith<$Res> {
  factory $SearchHistoryPaginationResponseModelCopyWith(
          SearchHistoryPaginationResponseModel value,
          $Res Function(SearchHistoryPaginationResponseModel) then) =
      _$SearchHistoryPaginationResponseModelCopyWithImpl<$Res,
          SearchHistoryPaginationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? id,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages});
}

/// @nodoc
class _$SearchHistoryPaginationResponseModelCopyWithImpl<$Res,
        $Val extends SearchHistoryPaginationResponseModel>
    implements $SearchHistoryPaginationResponseModelCopyWith<$Res> {
  _$SearchHistoryPaginationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryPaginationResponseModelImplCopyWith<$Res>
    implements $SearchHistoryPaginationResponseModelCopyWith<$Res> {
  factory _$$SearchHistoryPaginationResponseModelImplCopyWith(
          _$SearchHistoryPaginationResponseModelImpl value,
          $Res Function(_$SearchHistoryPaginationResponseModelImpl) then) =
      __$$SearchHistoryPaginationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? id,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "totalPages") int? totalPages});
}

/// @nodoc
class __$$SearchHistoryPaginationResponseModelImplCopyWithImpl<$Res>
    extends _$SearchHistoryPaginationResponseModelCopyWithImpl<$Res,
        _$SearchHistoryPaginationResponseModelImpl>
    implements _$$SearchHistoryPaginationResponseModelImplCopyWith<$Res> {
  __$$SearchHistoryPaginationResponseModelImplCopyWithImpl(
      _$SearchHistoryPaginationResponseModelImpl _value,
      $Res Function(_$SearchHistoryPaginationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$SearchHistoryPaginationResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SearchHistoryPaginationResponseModelImpl
    extends _SearchHistoryPaginationResponseModel {
  _$SearchHistoryPaginationResponseModelImpl(
      {@JsonKey(name: "total") this.id,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "totalPages") this.totalPages})
      : super._();

  factory _$SearchHistoryPaginationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchHistoryPaginationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int? id;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "totalPages")
  final int? totalPages;

  @override
  String toString() {
    return 'SearchHistoryPaginationResponseModel(id: $id, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryPaginationResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, page, limit, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryPaginationResponseModelImplCopyWith<
          _$SearchHistoryPaginationResponseModelImpl>
      get copyWith => __$$SearchHistoryPaginationResponseModelImplCopyWithImpl<
          _$SearchHistoryPaginationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryPaginationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryPaginationResponseModel
    extends SearchHistoryPaginationResponseModel {
  factory _SearchHistoryPaginationResponseModel(
          {@JsonKey(name: "total") final int? id,
          @JsonKey(name: "page") final int? page,
          @JsonKey(name: "limit") final int? limit,
          @JsonKey(name: "totalPages") final int? totalPages}) =
      _$SearchHistoryPaginationResponseModelImpl;
  _SearchHistoryPaginationResponseModel._() : super._();

  factory _SearchHistoryPaginationResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$SearchHistoryPaginationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int? get id;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(name: "totalPages")
  int? get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryPaginationResponseModelImplCopyWith<
          _$SearchHistoryPaginationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchHistoryDataResponseModel _$SearchHistoryDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SearchHistoryDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryDataResponseModel {
  @JsonKey(name: "profile_id")
  int? get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "term")
  String? get term => throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "last_searched_at")
  String? get lastSearchedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryDataResponseModelCopyWith<SearchHistoryDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryDataResponseModelCopyWith<$Res> {
  factory $SearchHistoryDataResponseModelCopyWith(
          SearchHistoryDataResponseModel value,
          $Res Function(SearchHistoryDataResponseModel) then) =
      _$SearchHistoryDataResponseModelCopyWithImpl<$Res,
          SearchHistoryDataResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") int? profileId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "term") String? term,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "last_searched_at") String? lastSearchedAt,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class _$SearchHistoryDataResponseModelCopyWithImpl<$Res,
        $Val extends SearchHistoryDataResponseModel>
    implements $SearchHistoryDataResponseModelCopyWith<$Res> {
  _$SearchHistoryDataResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = freezed,
    Object? id = freezed,
    Object? term = freezed,
    Object? source = freezed,
    Object? lastSearchedAt = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSearchedAt: freezed == lastSearchedAt
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryDataResponseModelImplCopyWith<$Res>
    implements $SearchHistoryDataResponseModelCopyWith<$Res> {
  factory _$$SearchHistoryDataResponseModelImplCopyWith(
          _$SearchHistoryDataResponseModelImpl value,
          $Res Function(_$SearchHistoryDataResponseModelImpl) then) =
      __$$SearchHistoryDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profile_id") int? profileId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "term") String? term,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "last_searched_at") String? lastSearchedAt,
      @JsonKey(name: "count") int? count});
}

/// @nodoc
class __$$SearchHistoryDataResponseModelImplCopyWithImpl<$Res>
    extends _$SearchHistoryDataResponseModelCopyWithImpl<$Res,
        _$SearchHistoryDataResponseModelImpl>
    implements _$$SearchHistoryDataResponseModelImplCopyWith<$Res> {
  __$$SearchHistoryDataResponseModelImplCopyWithImpl(
      _$SearchHistoryDataResponseModelImpl _value,
      $Res Function(_$SearchHistoryDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileId = freezed,
    Object? id = freezed,
    Object? term = freezed,
    Object? source = freezed,
    Object? lastSearchedAt = freezed,
    Object? count = freezed,
  }) {
    return _then(_$SearchHistoryDataResponseModelImpl(
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      term: freezed == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSearchedAt: freezed == lastSearchedAt
          ? _value.lastSearchedAt
          : lastSearchedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SearchHistoryDataResponseModelImpl
    extends _SearchHistoryDataResponseModel {
  _$SearchHistoryDataResponseModelImpl(
      {@JsonKey(name: "profile_id") this.profileId,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "term") this.term,
      @JsonKey(name: "source") this.source,
      @JsonKey(name: "last_searched_at") this.lastSearchedAt,
      @JsonKey(name: "count") this.count})
      : super._();

  factory _$SearchHistoryDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchHistoryDataResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "profile_id")
  final int? profileId;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "term")
  final String? term;
  @override
  @JsonKey(name: "source")
  final String? source;
  @override
  @JsonKey(name: "last_searched_at")
  final String? lastSearchedAt;
  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'SearchHistoryDataResponseModel(profileId: $profileId, id: $id, term: $term, source: $source, lastSearchedAt: $lastSearchedAt, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryDataResponseModelImpl &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.lastSearchedAt, lastSearchedAt) ||
                other.lastSearchedAt == lastSearchedAt) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, profileId, id, term, source, lastSearchedAt, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryDataResponseModelImplCopyWith<
          _$SearchHistoryDataResponseModelImpl>
      get copyWith => __$$SearchHistoryDataResponseModelImplCopyWithImpl<
          _$SearchHistoryDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryDataResponseModel
    extends SearchHistoryDataResponseModel {
  factory _SearchHistoryDataResponseModel(
          {@JsonKey(name: "profile_id") final int? profileId,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "term") final String? term,
          @JsonKey(name: "source") final String? source,
          @JsonKey(name: "last_searched_at") final String? lastSearchedAt,
          @JsonKey(name: "count") final int? count}) =
      _$SearchHistoryDataResponseModelImpl;
  _SearchHistoryDataResponseModel._() : super._();

  factory _SearchHistoryDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryDataResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "profile_id")
  int? get profileId;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "term")
  String? get term;
  @override
  @JsonKey(name: "source")
  String? get source;
  @override
  @JsonKey(name: "last_searched_at")
  String? get lastSearchedAt;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryDataResponseModelImplCopyWith<
          _$SearchHistoryDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
