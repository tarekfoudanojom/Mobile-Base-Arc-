// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioItemModel _$PortfolioItemModelFromJson(Map<String, dynamic> json) {
  return _PortfolioItemModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioItemModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_id")
  int get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "timestamp")
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "last_update")
  String? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "filename")
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: "company_id")
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "display_order")
  int? get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "public_status")
  int? get publicStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name_ar")
  String? get companyNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "company_filename")
  String? get companyFilename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioItemModelCopyWith<PortfolioItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioItemModelCopyWith<$Res> {
  factory $PortfolioItemModelCopyWith(
          PortfolioItemModel value, $Res Function(PortfolioItemModel) then) =
      _$PortfolioItemModelCopyWithImpl<$Res, PortfolioItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "profile_id") int profileId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "last_update") String? lastUpdate,
      @JsonKey(name: "filename") String? filename,
      @JsonKey(name: "company_id") int? companyId,
      @JsonKey(name: "display_order") int? displayOrder,
      @JsonKey(name: "public_status") int? publicStatus,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "company_name_ar") String? companyNameAr,
      @JsonKey(name: "company_filename") String? companyFilename});
}

/// @nodoc
class _$PortfolioItemModelCopyWithImpl<$Res, $Val extends PortfolioItemModel>
    implements $PortfolioItemModelCopyWith<$Res> {
  _$PortfolioItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? timestamp = freezed,
    Object? lastUpdate = freezed,
    Object? filename = freezed,
    Object? companyId = freezed,
    Object? displayOrder = freezed,
    Object? publicStatus = freezed,
    Object? status = freezed,
    Object? companyName = freezed,
    Object? companyNameAr = freezed,
    Object? companyFilename = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyNameAr: freezed == companyNameAr
          ? _value.companyNameAr
          : companyNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      companyFilename: freezed == companyFilename
          ? _value.companyFilename
          : companyFilename // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioItemModelImplCopyWith<$Res>
    implements $PortfolioItemModelCopyWith<$Res> {
  factory _$$PortfolioItemModelImplCopyWith(_$PortfolioItemModelImpl value,
          $Res Function(_$PortfolioItemModelImpl) then) =
      __$$PortfolioItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "profile_id") int profileId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "timestamp") String? timestamp,
      @JsonKey(name: "last_update") String? lastUpdate,
      @JsonKey(name: "filename") String? filename,
      @JsonKey(name: "company_id") int? companyId,
      @JsonKey(name: "display_order") int? displayOrder,
      @JsonKey(name: "public_status") int? publicStatus,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "company_name_ar") String? companyNameAr,
      @JsonKey(name: "company_filename") String? companyFilename});
}

/// @nodoc
class __$$PortfolioItemModelImplCopyWithImpl<$Res>
    extends _$PortfolioItemModelCopyWithImpl<$Res, _$PortfolioItemModelImpl>
    implements _$$PortfolioItemModelImplCopyWith<$Res> {
  __$$PortfolioItemModelImplCopyWithImpl(_$PortfolioItemModelImpl _value,
      $Res Function(_$PortfolioItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profileId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? timestamp = freezed,
    Object? lastUpdate = freezed,
    Object? filename = freezed,
    Object? companyId = freezed,
    Object? displayOrder = freezed,
    Object? publicStatus = freezed,
    Object? status = freezed,
    Object? companyName = freezed,
    Object? companyNameAr = freezed,
    Object? companyFilename = freezed,
  }) {
    return _then(_$PortfolioItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileId: null == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyNameAr: freezed == companyNameAr
          ? _value.companyNameAr
          : companyNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      companyFilename: freezed == companyFilename
          ? _value.companyFilename
          : companyFilename // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PortfolioItemModelImpl extends _PortfolioItemModel {
  _$PortfolioItemModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "profile_id") required this.profileId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "timestamp") this.timestamp,
      @JsonKey(name: "last_update") this.lastUpdate,
      @JsonKey(name: "filename") this.filename,
      @JsonKey(name: "company_id") this.companyId,
      @JsonKey(name: "display_order") this.displayOrder,
      @JsonKey(name: "public_status") this.publicStatus,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "company_name_ar") this.companyNameAr,
      @JsonKey(name: "company_filename") this.companyFilename})
      : super._();

  factory _$PortfolioItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioItemModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "profile_id")
  final int profileId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "timestamp")
  final String? timestamp;
  @override
  @JsonKey(name: "last_update")
  final String? lastUpdate;
  @override
  @JsonKey(name: "filename")
  final String? filename;
  @override
  @JsonKey(name: "company_id")
  final int? companyId;
  @override
  @JsonKey(name: "display_order")
  final int? displayOrder;
  @override
  @JsonKey(name: "public_status")
  final int? publicStatus;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "company_name")
  final String? companyName;
  @override
  @JsonKey(name: "company_name_ar")
  final String? companyNameAr;
  @override
  @JsonKey(name: "company_filename")
  final String? companyFilename;

  @override
  String toString() {
    return 'PortfolioItemModel(id: $id, profileId: $profileId, title: $title, description: $description, timestamp: $timestamp, lastUpdate: $lastUpdate, filename: $filename, companyId: $companyId, displayOrder: $displayOrder, publicStatus: $publicStatus, status: $status, companyName: $companyName, companyNameAr: $companyNameAr, companyFilename: $companyFilename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyNameAr, companyNameAr) ||
                other.companyNameAr == companyNameAr) &&
            (identical(other.companyFilename, companyFilename) ||
                other.companyFilename == companyFilename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profileId,
      title,
      description,
      timestamp,
      lastUpdate,
      filename,
      companyId,
      displayOrder,
      publicStatus,
      status,
      companyName,
      companyNameAr,
      companyFilename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioItemModelImplCopyWith<_$PortfolioItemModelImpl> get copyWith =>
      __$$PortfolioItemModelImplCopyWithImpl<_$PortfolioItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioItemModelImplToJson(
      this,
    );
  }
}

abstract class _PortfolioItemModel extends PortfolioItemModel {
  factory _PortfolioItemModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "profile_id") required final int profileId,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "timestamp") final String? timestamp,
          @JsonKey(name: "last_update") final String? lastUpdate,
          @JsonKey(name: "filename") final String? filename,
          @JsonKey(name: "company_id") final int? companyId,
          @JsonKey(name: "display_order") final int? displayOrder,
          @JsonKey(name: "public_status") final int? publicStatus,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: "company_name") final String? companyName,
          @JsonKey(name: "company_name_ar") final String? companyNameAr,
          @JsonKey(name: "company_filename") final String? companyFilename}) =
      _$PortfolioItemModelImpl;
  _PortfolioItemModel._() : super._();

  factory _PortfolioItemModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioItemModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "profile_id")
  int get profileId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "timestamp")
  String? get timestamp;
  @override
  @JsonKey(name: "last_update")
  String? get lastUpdate;
  @override
  @JsonKey(name: "filename")
  String? get filename;
  @override
  @JsonKey(name: "company_id")
  int? get companyId;
  @override
  @JsonKey(name: "display_order")
  int? get displayOrder;
  @override
  @JsonKey(name: "public_status")
  int? get publicStatus;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @override
  @JsonKey(name: "company_name_ar")
  String? get companyNameAr;
  @override
  @JsonKey(name: "company_filename")
  String? get companyFilename;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioItemModelImplCopyWith<_$PortfolioItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
