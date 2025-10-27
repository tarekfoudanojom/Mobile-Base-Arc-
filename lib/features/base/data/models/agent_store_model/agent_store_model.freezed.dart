// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentStoreModel _$AgentStoreModelFromJson(Map<String, dynamic> json) {
  return _AgentStoreModel.fromJson(json);
}

/// @nodoc
mixin _$AgentStoreModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_id')
  int? get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  dynamic get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_status')
  int? get publicStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  num? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  int? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentStoreModelCopyWith<AgentStoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentStoreModelCopyWith<$Res> {
  factory $AgentStoreModelCopyWith(
          AgentStoreModel value, $Res Function(AgentStoreModel) then) =
      _$AgentStoreModelCopyWithImpl<$Res, AgentStoreModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'profile_id') int? profileId,
      @JsonKey(name: 'display_order') dynamic displayOrder,
      @JsonKey(name: 'public_status') int? publicStatus,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') int? currency});
}

/// @nodoc
class _$AgentStoreModelCopyWithImpl<$Res, $Val extends AgentStoreModel>
    implements $AgentStoreModelCopyWith<$Res> {
  _$AgentStoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? link = freezed,
    Object? filename = freezed,
    Object? profileId = freezed,
    Object? displayOrder = freezed,
    Object? publicStatus = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentStoreModelImplCopyWith<$Res>
    implements $AgentStoreModelCopyWith<$Res> {
  factory _$$AgentStoreModelImplCopyWith(_$AgentStoreModelImpl value,
          $Res Function(_$AgentStoreModelImpl) then) =
      __$$AgentStoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'link') String? link,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'profile_id') int? profileId,
      @JsonKey(name: 'display_order') dynamic displayOrder,
      @JsonKey(name: 'public_status') int? publicStatus,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') int? currency});
}

/// @nodoc
class __$$AgentStoreModelImplCopyWithImpl<$Res>
    extends _$AgentStoreModelCopyWithImpl<$Res, _$AgentStoreModelImpl>
    implements _$$AgentStoreModelImplCopyWith<$Res> {
  __$$AgentStoreModelImplCopyWithImpl(
      _$AgentStoreModelImpl _value, $Res Function(_$AgentStoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? link = freezed,
    Object? filename = freezed,
    Object? profileId = freezed,
    Object? displayOrder = freezed,
    Object? publicStatus = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$AgentStoreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as int?,
      displayOrder: freezed == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AgentStoreModelImpl extends _AgentStoreModel {
  _$AgentStoreModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'link') this.link,
      @JsonKey(name: 'filename') this.filename,
      @JsonKey(name: 'profile_id') this.profileId,
      @JsonKey(name: 'display_order') this.displayOrder,
      @JsonKey(name: 'public_status') this.publicStatus,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'currency') this.currency})
      : super._();

  factory _$AgentStoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentStoreModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'link')
  final String? link;
  @override
  @JsonKey(name: 'filename')
  final String? filename;
  @override
  @JsonKey(name: 'profile_id')
  final int? profileId;
  @override
  @JsonKey(name: 'display_order')
  final dynamic displayOrder;
  @override
  @JsonKey(name: 'public_status')
  final int? publicStatus;
  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'price')
  final num? price;
  @override
  @JsonKey(name: 'currency')
  final int? currency;

  @override
  String toString() {
    return 'AgentStoreModel(id: $id, title: $title, link: $link, filename: $filename, profileId: $profileId, displayOrder: $displayOrder, publicStatus: $publicStatus, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, url: $url, price: $price, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentStoreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            const DeepCollectionEquality()
                .equals(other.displayOrder, displayOrder) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      link,
      filename,
      profileId,
      const DeepCollectionEquality().hash(displayOrder),
      publicStatus,
      status,
      createdAt,
      updatedAt,
      url,
      price,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentStoreModelImplCopyWith<_$AgentStoreModelImpl> get copyWith =>
      __$$AgentStoreModelImplCopyWithImpl<_$AgentStoreModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentStoreModelImplToJson(
      this,
    );
  }
}

abstract class _AgentStoreModel extends AgentStoreModel {
  factory _AgentStoreModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'link') final String? link,
      @JsonKey(name: 'filename') final String? filename,
      @JsonKey(name: 'profile_id') final int? profileId,
      @JsonKey(name: 'display_order') final dynamic displayOrder,
      @JsonKey(name: 'public_status') final int? publicStatus,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'price') final num? price,
      @JsonKey(name: 'currency') final int? currency}) = _$AgentStoreModelImpl;
  _AgentStoreModel._() : super._();

  factory _AgentStoreModel.fromJson(Map<String, dynamic> json) =
      _$AgentStoreModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'link')
  String? get link;
  @override
  @JsonKey(name: 'filename')
  String? get filename;
  @override
  @JsonKey(name: 'profile_id')
  int? get profileId;
  @override
  @JsonKey(name: 'display_order')
  dynamic get displayOrder;
  @override
  @JsonKey(name: 'public_status')
  int? get publicStatus;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'price')
  num? get price;
  @override
  @JsonKey(name: 'currency')
  int? get currency;
  @override
  @JsonKey(ignore: true)
  _$$AgentStoreModelImplCopyWith<_$AgentStoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
