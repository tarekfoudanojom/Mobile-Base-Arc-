// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_stars_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DraftStarsResponseModel _$DraftStarsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DraftStarsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DraftStarsResponseModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DraftStarsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DraftStarsResponseModelCopyWith<DraftStarsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftStarsResponseModelCopyWith<$Res> {
  factory $DraftStarsResponseModelCopyWith(DraftStarsResponseModel value,
          $Res Function(DraftStarsResponseModel) then) =
      _$DraftStarsResponseModelCopyWithImpl<$Res, DraftStarsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DraftStarsData? data});

  $DraftStarsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DraftStarsResponseModelCopyWithImpl<$Res,
        $Val extends DraftStarsResponseModel>
    implements $DraftStarsResponseModelCopyWith<$Res> {
  _$DraftStarsResponseModelCopyWithImpl(this._value, this._then);

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
              as DraftStarsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DraftStarsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DraftStarsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DraftStarsResponseModelImplCopyWith<$Res>
    implements $DraftStarsResponseModelCopyWith<$Res> {
  factory _$$DraftStarsResponseModelImplCopyWith(
          _$DraftStarsResponseModelImpl value,
          $Res Function(_$DraftStarsResponseModelImpl) then) =
      __$$DraftStarsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DraftStarsData? data});

  @override
  $DraftStarsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DraftStarsResponseModelImplCopyWithImpl<$Res>
    extends _$DraftStarsResponseModelCopyWithImpl<$Res,
        _$DraftStarsResponseModelImpl>
    implements _$$DraftStarsResponseModelImplCopyWith<$Res> {
  __$$DraftStarsResponseModelImplCopyWithImpl(
      _$DraftStarsResponseModelImpl _value,
      $Res Function(_$DraftStarsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DraftStarsResponseModelImpl(
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
              as DraftStarsData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DraftStarsResponseModelImpl extends _DraftStarsResponseModel {
  _$DraftStarsResponseModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data})
      : super._();

  factory _$DraftStarsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftStarsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DraftStarsData? data;

  @override
  String toString() {
    return 'DraftStarsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftStarsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftStarsResponseModelImplCopyWith<_$DraftStarsResponseModelImpl>
      get copyWith => __$$DraftStarsResponseModelImplCopyWithImpl<
          _$DraftStarsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftStarsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DraftStarsResponseModel extends DraftStarsResponseModel {
  factory _DraftStarsResponseModel(
          {@JsonKey(name: "status") final bool? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DraftStarsData? data}) =
      _$DraftStarsResponseModelImpl;
  _DraftStarsResponseModel._() : super._();

  factory _DraftStarsResponseModel.fromJson(Map<String, dynamic> json) =
      _$DraftStarsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  DraftStarsData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DraftStarsResponseModelImplCopyWith<_$DraftStarsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DraftStarsData _$DraftStarsDataFromJson(Map<String, dynamic> json) {
  return _DraftStarsData.fromJson(json);
}

/// @nodoc
mixin _$DraftStarsData {
  @JsonKey(name: "processedResults")
  List<ProcessedResult>? get processedResults =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DraftStarsDataCopyWith<DraftStarsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftStarsDataCopyWith<$Res> {
  factory $DraftStarsDataCopyWith(
          DraftStarsData value, $Res Function(DraftStarsData) then) =
      _$DraftStarsDataCopyWithImpl<$Res, DraftStarsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "processedResults")
      List<ProcessedResult>? processedResults});
}

/// @nodoc
class _$DraftStarsDataCopyWithImpl<$Res, $Val extends DraftStarsData>
    implements $DraftStarsDataCopyWith<$Res> {
  _$DraftStarsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processedResults = freezed,
  }) {
    return _then(_value.copyWith(
      processedResults: freezed == processedResults
          ? _value.processedResults
          : processedResults // ignore: cast_nullable_to_non_nullable
              as List<ProcessedResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftStarsDataImplCopyWith<$Res>
    implements $DraftStarsDataCopyWith<$Res> {
  factory _$$DraftStarsDataImplCopyWith(_$DraftStarsDataImpl value,
          $Res Function(_$DraftStarsDataImpl) then) =
      __$$DraftStarsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "processedResults")
      List<ProcessedResult>? processedResults});
}

/// @nodoc
class __$$DraftStarsDataImplCopyWithImpl<$Res>
    extends _$DraftStarsDataCopyWithImpl<$Res, _$DraftStarsDataImpl>
    implements _$$DraftStarsDataImplCopyWith<$Res> {
  __$$DraftStarsDataImplCopyWithImpl(
      _$DraftStarsDataImpl _value, $Res Function(_$DraftStarsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processedResults = freezed,
  }) {
    return _then(_$DraftStarsDataImpl(
      processedResults: freezed == processedResults
          ? _value._processedResults
          : processedResults // ignore: cast_nullable_to_non_nullable
              as List<ProcessedResult>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DraftStarsDataImpl extends _DraftStarsData {
  _$DraftStarsDataImpl(
      {@JsonKey(name: "processedResults")
      final List<ProcessedResult>? processedResults})
      : _processedResults = processedResults,
        super._();

  factory _$DraftStarsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DraftStarsDataImplFromJson(json);

  final List<ProcessedResult>? _processedResults;
  @override
  @JsonKey(name: "processedResults")
  List<ProcessedResult>? get processedResults {
    final value = _processedResults;
    if (value == null) return null;
    if (_processedResults is EqualUnmodifiableListView)
      return _processedResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DraftStarsData(processedResults: $processedResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftStarsDataImpl &&
            const DeepCollectionEquality()
                .equals(other._processedResults, _processedResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_processedResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftStarsDataImplCopyWith<_$DraftStarsDataImpl> get copyWith =>
      __$$DraftStarsDataImplCopyWithImpl<_$DraftStarsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DraftStarsDataImplToJson(
      this,
    );
  }
}

abstract class _DraftStarsData extends DraftStarsData {
  factory _DraftStarsData(
      {@JsonKey(name: "processedResults")
      final List<ProcessedResult>? processedResults}) = _$DraftStarsDataImpl;
  _DraftStarsData._() : super._();

  factory _DraftStarsData.fromJson(Map<String, dynamic> json) =
      _$DraftStarsDataImpl.fromJson;

  @override
  @JsonKey(name: "processedResults")
  List<ProcessedResult>? get processedResults;
  @override
  @JsonKey(ignore: true)
  _$$DraftStarsDataImplCopyWith<_$DraftStarsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProcessedResult _$ProcessedResultFromJson(Map<String, dynamic> json) {
  return _ProcessedResult.fromJson(json);
}

/// @nodoc
mixin _$ProcessedResult {
  @JsonKey(name: "star_id")
  int? get starId => throw _privateConstructorUsedError;
  @JsonKey(name: "campaigns")
  List<CampaignResult>? get campaigns => throw _privateConstructorUsedError;
  @JsonKey(name: "services_count")
  int? get servicesCount => throw _privateConstructorUsedError;
  @JsonKey(name: "campaigns_source")
  String? get campaignsSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessedResultCopyWith<ProcessedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessedResultCopyWith<$Res> {
  factory $ProcessedResultCopyWith(
          ProcessedResult value, $Res Function(ProcessedResult) then) =
      _$ProcessedResultCopyWithImpl<$Res, ProcessedResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "star_id") int? starId,
      @JsonKey(name: "campaigns") List<CampaignResult>? campaigns,
      @JsonKey(name: "services_count") int? servicesCount,
      @JsonKey(name: "campaigns_source") String? campaignsSource});
}

/// @nodoc
class _$ProcessedResultCopyWithImpl<$Res, $Val extends ProcessedResult>
    implements $ProcessedResultCopyWith<$Res> {
  _$ProcessedResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starId = freezed,
    Object? campaigns = freezed,
    Object? servicesCount = freezed,
    Object? campaignsSource = freezed,
  }) {
    return _then(_value.copyWith(
      starId: freezed == starId
          ? _value.starId
          : starId // ignore: cast_nullable_to_non_nullable
              as int?,
      campaigns: freezed == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignResult>?,
      servicesCount: freezed == servicesCount
          ? _value.servicesCount
          : servicesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      campaignsSource: freezed == campaignsSource
          ? _value.campaignsSource
          : campaignsSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProcessedResultImplCopyWith<$Res>
    implements $ProcessedResultCopyWith<$Res> {
  factory _$$ProcessedResultImplCopyWith(_$ProcessedResultImpl value,
          $Res Function(_$ProcessedResultImpl) then) =
      __$$ProcessedResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "star_id") int? starId,
      @JsonKey(name: "campaigns") List<CampaignResult>? campaigns,
      @JsonKey(name: "services_count") int? servicesCount,
      @JsonKey(name: "campaigns_source") String? campaignsSource});
}

/// @nodoc
class __$$ProcessedResultImplCopyWithImpl<$Res>
    extends _$ProcessedResultCopyWithImpl<$Res, _$ProcessedResultImpl>
    implements _$$ProcessedResultImplCopyWith<$Res> {
  __$$ProcessedResultImplCopyWithImpl(
      _$ProcessedResultImpl _value, $Res Function(_$ProcessedResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starId = freezed,
    Object? campaigns = freezed,
    Object? servicesCount = freezed,
    Object? campaignsSource = freezed,
  }) {
    return _then(_$ProcessedResultImpl(
      starId: freezed == starId
          ? _value.starId
          : starId // ignore: cast_nullable_to_non_nullable
              as int?,
      campaigns: freezed == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignResult>?,
      servicesCount: freezed == servicesCount
          ? _value.servicesCount
          : servicesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      campaignsSource: freezed == campaignsSource
          ? _value.campaignsSource
          : campaignsSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProcessedResultImpl extends _ProcessedResult {
  _$ProcessedResultImpl(
      {@JsonKey(name: "star_id") this.starId,
      @JsonKey(name: "campaigns") final List<CampaignResult>? campaigns,
      @JsonKey(name: "services_count") this.servicesCount,
      @JsonKey(name: "campaigns_source") this.campaignsSource})
      : _campaigns = campaigns,
        super._();

  factory _$ProcessedResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProcessedResultImplFromJson(json);

  @override
  @JsonKey(name: "star_id")
  final int? starId;
  final List<CampaignResult>? _campaigns;
  @override
  @JsonKey(name: "campaigns")
  List<CampaignResult>? get campaigns {
    final value = _campaigns;
    if (value == null) return null;
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "services_count")
  final int? servicesCount;
  @override
  @JsonKey(name: "campaigns_source")
  final String? campaignsSource;

  @override
  String toString() {
    return 'ProcessedResult(starId: $starId, campaigns: $campaigns, servicesCount: $servicesCount, campaignsSource: $campaignsSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessedResultImpl &&
            (identical(other.starId, starId) || other.starId == starId) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns) &&
            (identical(other.servicesCount, servicesCount) ||
                other.servicesCount == servicesCount) &&
            (identical(other.campaignsSource, campaignsSource) ||
                other.campaignsSource == campaignsSource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      starId,
      const DeepCollectionEquality().hash(_campaigns),
      servicesCount,
      campaignsSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessedResultImplCopyWith<_$ProcessedResultImpl> get copyWith =>
      __$$ProcessedResultImplCopyWithImpl<_$ProcessedResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProcessedResultImplToJson(
      this,
    );
  }
}

abstract class _ProcessedResult extends ProcessedResult {
  factory _ProcessedResult(
          {@JsonKey(name: "star_id") final int? starId,
          @JsonKey(name: "campaigns") final List<CampaignResult>? campaigns,
          @JsonKey(name: "services_count") final int? servicesCount,
          @JsonKey(name: "campaigns_source") final String? campaignsSource}) =
      _$ProcessedResultImpl;
  _ProcessedResult._() : super._();

  factory _ProcessedResult.fromJson(Map<String, dynamic> json) =
      _$ProcessedResultImpl.fromJson;

  @override
  @JsonKey(name: "star_id")
  int? get starId;
  @override
  @JsonKey(name: "campaigns")
  List<CampaignResult>? get campaigns;
  @override
  @JsonKey(name: "services_count")
  int? get servicesCount;
  @override
  @JsonKey(name: "campaigns_source")
  String? get campaignsSource;
  @override
  @JsonKey(ignore: true)
  _$$ProcessedResultImplCopyWith<_$ProcessedResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CampaignResult _$CampaignResultFromJson(Map<String, dynamic> json) {
  return _CampaignResult.fromJson(json);
}

/// @nodoc
mixin _$CampaignResult {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignResultCopyWith<CampaignResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignResultCopyWith<$Res> {
  factory $CampaignResultCopyWith(
          CampaignResult value, $Res Function(CampaignResult) then) =
      _$CampaignResultCopyWithImpl<$Res, CampaignResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$CampaignResultCopyWithImpl<$Res, $Val extends CampaignResult>
    implements $CampaignResultCopyWith<$Res> {
  _$CampaignResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignResultImplCopyWith<$Res>
    implements $CampaignResultCopyWith<$Res> {
  factory _$$CampaignResultImplCopyWith(_$CampaignResultImpl value,
          $Res Function(_$CampaignResultImpl) then) =
      __$$CampaignResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$CampaignResultImplCopyWithImpl<$Res>
    extends _$CampaignResultCopyWithImpl<$Res, _$CampaignResultImpl>
    implements _$$CampaignResultImplCopyWith<$Res> {
  __$$CampaignResultImplCopyWithImpl(
      _$CampaignResultImpl _value, $Res Function(_$CampaignResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CampaignResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CampaignResultImpl extends _CampaignResult {
  _$CampaignResultImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "title") this.title})
      : super._();

  factory _$CampaignResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignResultImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'CampaignResult(id: $id, status: $status, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignResultImplCopyWith<_$CampaignResultImpl> get copyWith =>
      __$$CampaignResultImplCopyWithImpl<_$CampaignResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignResultImplToJson(
      this,
    );
  }
}

abstract class _CampaignResult extends CampaignResult {
  factory _CampaignResult(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "title") final String? title}) = _$CampaignResultImpl;
  _CampaignResult._() : super._();

  factory _CampaignResult.fromJson(Map<String, dynamic> json) =
      _$CampaignResultImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$CampaignResultImplCopyWith<_$CampaignResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
