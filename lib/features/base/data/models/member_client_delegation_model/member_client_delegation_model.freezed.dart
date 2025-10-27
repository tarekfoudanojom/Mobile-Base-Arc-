// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_client_delegation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberClientDelegationModel _$MemberClientDelegationModelFromJson(
    Map<String, dynamic> json) {
  return _MemberClientDelegationModel.fromJson(json);
}

/// @nodoc
mixin _$MemberClientDelegationModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "principal_profile_id")
  int get principalProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: "delegate_profile_id")
  int get delegateProfileId => throw _privateConstructorUsedError;
  @JsonKey(name: "last_accessed_at")
  String get lastAccessedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_name")
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberClientDelegationModelCopyWith<MemberClientDelegationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberClientDelegationModelCopyWith<$Res> {
  factory $MemberClientDelegationModelCopyWith(
          MemberClientDelegationModel value,
          $Res Function(MemberClientDelegationModel) then) =
      _$MemberClientDelegationModelCopyWithImpl<$Res,
          MemberClientDelegationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "principal_profile_id") int principalProfileId,
      @JsonKey(name: "delegate_profile_id") int delegateProfileId,
      @JsonKey(name: "last_accessed_at") String lastAccessedAt,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "photo") String? photo});
}

/// @nodoc
class _$MemberClientDelegationModelCopyWithImpl<$Res,
        $Val extends MemberClientDelegationModel>
    implements $MemberClientDelegationModelCopyWith<$Res> {
  _$MemberClientDelegationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? principalProfileId = null,
    Object? delegateProfileId = null,
    Object? lastAccessedAt = null,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? brandName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      principalProfileId: null == principalProfileId
          ? _value.principalProfileId
          : principalProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      delegateProfileId: null == delegateProfileId
          ? _value.delegateProfileId
          : delegateProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      lastAccessedAt: null == lastAccessedAt
          ? _value.lastAccessedAt
          : lastAccessedAt // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberClientDelegationModelImplCopyWith<$Res>
    implements $MemberClientDelegationModelCopyWith<$Res> {
  factory _$$MemberClientDelegationModelImplCopyWith(
          _$MemberClientDelegationModelImpl value,
          $Res Function(_$MemberClientDelegationModelImpl) then) =
      __$$MemberClientDelegationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "principal_profile_id") int principalProfileId,
      @JsonKey(name: "delegate_profile_id") int delegateProfileId,
      @JsonKey(name: "last_accessed_at") String lastAccessedAt,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "photo") String? photo});
}

/// @nodoc
class __$$MemberClientDelegationModelImplCopyWithImpl<$Res>
    extends _$MemberClientDelegationModelCopyWithImpl<$Res,
        _$MemberClientDelegationModelImpl>
    implements _$$MemberClientDelegationModelImplCopyWith<$Res> {
  __$$MemberClientDelegationModelImplCopyWithImpl(
      _$MemberClientDelegationModelImpl _value,
      $Res Function(_$MemberClientDelegationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? principalProfileId = null,
    Object? delegateProfileId = null,
    Object? lastAccessedAt = null,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? brandName = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$MemberClientDelegationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      principalProfileId: null == principalProfileId
          ? _value.principalProfileId
          : principalProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      delegateProfileId: null == delegateProfileId
          ? _value.delegateProfileId
          : delegateProfileId // ignore: cast_nullable_to_non_nullable
              as int,
      lastAccessedAt: null == lastAccessedAt
          ? _value.lastAccessedAt
          : lastAccessedAt // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberClientDelegationModelImpl
    implements _MemberClientDelegationModel {
  const _$MemberClientDelegationModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "principal_profile_id") required this.principalProfileId,
      @JsonKey(name: "delegate_profile_id") required this.delegateProfileId,
      @JsonKey(name: "last_accessed_at") required this.lastAccessedAt,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") required this.lastName,
      @JsonKey(name: "brand_name") required this.brandName,
      @JsonKey(name: "photo") this.photo});

  factory _$MemberClientDelegationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MemberClientDelegationModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "principal_profile_id")
  final int principalProfileId;
  @override
  @JsonKey(name: "delegate_profile_id")
  final int delegateProfileId;
  @override
  @JsonKey(name: "last_accessed_at")
  final String lastAccessedAt;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "brand_name")
  final String? brandName;
  @override
  @JsonKey(name: "photo")
  final String? photo;

  @override
  String toString() {
    return 'MemberClientDelegationModel(id: $id, principalProfileId: $principalProfileId, delegateProfileId: $delegateProfileId, lastAccessedAt: $lastAccessedAt, username: $username, firstName: $firstName, lastName: $lastName, brandName: $brandName, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberClientDelegationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.principalProfileId, principalProfileId) ||
                other.principalProfileId == principalProfileId) &&
            (identical(other.delegateProfileId, delegateProfileId) ||
                other.delegateProfileId == delegateProfileId) &&
            (identical(other.lastAccessedAt, lastAccessedAt) ||
                other.lastAccessedAt == lastAccessedAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      principalProfileId,
      delegateProfileId,
      lastAccessedAt,
      username,
      firstName,
      lastName,
      brandName,
      photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberClientDelegationModelImplCopyWith<_$MemberClientDelegationModelImpl>
      get copyWith => __$$MemberClientDelegationModelImplCopyWithImpl<
          _$MemberClientDelegationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberClientDelegationModelImplToJson(
      this,
    );
  }
}

abstract class _MemberClientDelegationModel
    implements MemberClientDelegationModel {
  const factory _MemberClientDelegationModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "principal_profile_id")
      required final int principalProfileId,
      @JsonKey(name: "delegate_profile_id")
      required final int delegateProfileId,
      @JsonKey(name: "last_accessed_at") required final String lastAccessedAt,
      @JsonKey(name: "username") required final String? username,
      @JsonKey(name: "first_name") required final String? firstName,
      @JsonKey(name: "last_name") required final String? lastName,
      @JsonKey(name: "brand_name") required final String? brandName,
      @JsonKey(name: "photo")
      final String? photo}) = _$MemberClientDelegationModelImpl;

  factory _MemberClientDelegationModel.fromJson(Map<String, dynamic> json) =
      _$MemberClientDelegationModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "principal_profile_id")
  int get principalProfileId;
  @override
  @JsonKey(name: "delegate_profile_id")
  int get delegateProfileId;
  @override
  @JsonKey(name: "last_accessed_at")
  String get lastAccessedAt;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "brand_name")
  String? get brandName;
  @override
  @JsonKey(name: "photo")
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$MemberClientDelegationModelImplCopyWith<_$MemberClientDelegationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberClientDelegationResponseModel
    _$MemberClientDelegationResponseModelFromJson(Map<String, dynamic> json) {
  return _MemberClientDelegationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MemberClientDelegationResponseModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<MemberClientDelegationModel> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberClientDelegationResponseModelCopyWith<
          MemberClientDelegationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberClientDelegationResponseModelCopyWith<$Res> {
  factory $MemberClientDelegationResponseModelCopyWith(
          MemberClientDelegationResponseModel value,
          $Res Function(MemberClientDelegationResponseModel) then) =
      _$MemberClientDelegationResponseModelCopyWithImpl<$Res,
          MemberClientDelegationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "data") List<MemberClientDelegationModel> data});
}

/// @nodoc
class _$MemberClientDelegationResponseModelCopyWithImpl<$Res,
        $Val extends MemberClientDelegationResponseModel>
    implements $MemberClientDelegationResponseModelCopyWith<$Res> {
  _$MemberClientDelegationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MemberClientDelegationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberClientDelegationResponseModelImplCopyWith<$Res>
    implements $MemberClientDelegationResponseModelCopyWith<$Res> {
  factory _$$MemberClientDelegationResponseModelImplCopyWith(
          _$MemberClientDelegationResponseModelImpl value,
          $Res Function(_$MemberClientDelegationResponseModelImpl) then) =
      __$$MemberClientDelegationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "data") List<MemberClientDelegationModel> data});
}

/// @nodoc
class __$$MemberClientDelegationResponseModelImplCopyWithImpl<$Res>
    extends _$MemberClientDelegationResponseModelCopyWithImpl<$Res,
        _$MemberClientDelegationResponseModelImpl>
    implements _$$MemberClientDelegationResponseModelImplCopyWith<$Res> {
  __$$MemberClientDelegationResponseModelImplCopyWithImpl(
      _$MemberClientDelegationResponseModelImpl _value,
      $Res Function(_$MemberClientDelegationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$MemberClientDelegationResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MemberClientDelegationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberClientDelegationResponseModelImpl
    implements _MemberClientDelegationResponseModel {
  const _$MemberClientDelegationResponseModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "data")
      required final List<MemberClientDelegationModel> data})
      : _data = data;

  factory _$MemberClientDelegationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MemberClientDelegationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  final List<MemberClientDelegationModel> _data;
  @override
  @JsonKey(name: "data")
  List<MemberClientDelegationModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MemberClientDelegationResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberClientDelegationResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberClientDelegationResponseModelImplCopyWith<
          _$MemberClientDelegationResponseModelImpl>
      get copyWith => __$$MemberClientDelegationResponseModelImplCopyWithImpl<
          _$MemberClientDelegationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberClientDelegationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MemberClientDelegationResponseModel
    implements MemberClientDelegationResponseModel {
  const factory _MemberClientDelegationResponseModel(
          {@JsonKey(name: "status") required final bool status,
          @JsonKey(name: "data")
          required final List<MemberClientDelegationModel> data}) =
      _$MemberClientDelegationResponseModelImpl;

  factory _MemberClientDelegationResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$MemberClientDelegationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "data")
  List<MemberClientDelegationModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$MemberClientDelegationResponseModelImplCopyWith<
          _$MemberClientDelegationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
