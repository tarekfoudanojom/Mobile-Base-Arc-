// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  set firstName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  set username(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  set lastName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  set companyName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_name")
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_name")
  set brandName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_pic")
  set profileImage(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  dynamic get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "is_verified")
  set isVerified(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_at")
  String? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "verified_at")
  set verifiedAt(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "aboutus_id")
  dynamic get aboutUsId => throw _privateConstructorUsedError;
  @JsonKey(name: "aboutus_id")
  set aboutUsId(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_prefix")
  dynamic get mobilePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_prefix")
  set mobilePrefix(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_no")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_no")
  set phone(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "contactNo")
  String? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "contactNo")
  set contact(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "referral_code")
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(name: "referral_code")
  set referralCode(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_type")
  ProfileTypeModel? get profileType => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_type")
  set profileType(ProfileTypeModel? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "profile_type_id")
  int? get profileTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_type_id")
  set profileTypeId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "file_path")
  PathModel? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: "file_path")
  set filePath(PathModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "aboutus")
  List<AboutUsItemModel>? get aboutUsList => throw _privateConstructorUsedError;
  @JsonKey(name: "aboutus")
  set aboutUsList(List<AboutUsItemModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "profile_status")
  dynamic get profileStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_status")
  set profileStatus(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: "trust_rate")
  TrustRateModel? get trustRate => throw _privateConstructorUsedError;
  @JsonKey(name: "trust_rate")
  set trustRate(TrustRateModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "notifications_enabled")
  int? get notificationsEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "notifications_enabled")
  set notificationsEnabled(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "favorite_list", defaultValue: [])
  List<int> get favoriteList => throw _privateConstructorUsedError;
  @JsonKey(name: "favorite_list", defaultValue: [])
  set favoriteList(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "profile_pic") String? profileImage,
      @JsonKey(name: "is_verified") dynamic isVerified,
      @JsonKey(name: "verified_at") String? verifiedAt,
      @JsonKey(name: "aboutus_id") dynamic aboutUsId,
      @JsonKey(name: "mobile_prefix") dynamic mobilePrefix,
      @JsonKey(name: "contact_no") String? phone,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "contactNo") String? contact,
      @JsonKey(name: "referral_code") String? referralCode,
      @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
      @JsonKey(name: "profile_type_id") int? profileTypeId,
      @JsonKey(name: "file_path") PathModel? filePath,
      @JsonKey(name: "aboutus") List<AboutUsItemModel>? aboutUsList,
      @JsonKey(name: "profile_status") dynamic profileStatus,
      @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
      @JsonKey(name: "notifications_enabled") int? notificationsEnabled,
      @JsonKey(name: "favorite_list", defaultValue: [])
      List<int> favoriteList});

  $ProfileTypeModelCopyWith<$Res>? get profileType;
  $PathModelCopyWith<$Res>? get filePath;
  $TrustRateModelCopyWith<$Res>? get trustRate;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? username = freezed,
    Object? lastName = freezed,
    Object? companyName = freezed,
    Object? brandName = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
    Object? verifiedAt = freezed,
    Object? aboutUsId = freezed,
    Object? mobilePrefix = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? contact = freezed,
    Object? referralCode = freezed,
    Object? profileType = freezed,
    Object? profileTypeId = freezed,
    Object? filePath = freezed,
    Object? aboutUsList = freezed,
    Object? profileStatus = freezed,
    Object? trustRate = freezed,
    Object? notificationsEnabled = freezed,
    Object? favoriteList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutUsId: freezed == aboutUsId
          ? _value.aboutUsId
          : aboutUsId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobilePrefix: freezed == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profileType: freezed == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as ProfileTypeModel?,
      profileTypeId: freezed == profileTypeId
          ? _value.profileTypeId
          : profileTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as PathModel?,
      aboutUsList: freezed == aboutUsList
          ? _value.aboutUsList
          : aboutUsList // ignore: cast_nullable_to_non_nullable
              as List<AboutUsItemModel>?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trustRate: freezed == trustRate
          ? _value.trustRate
          : trustRate // ignore: cast_nullable_to_non_nullable
              as TrustRateModel?,
      notificationsEnabled: freezed == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileTypeModelCopyWith<$Res>? get profileType {
    if (_value.profileType == null) {
      return null;
    }

    return $ProfileTypeModelCopyWith<$Res>(_value.profileType!, (value) {
      return _then(_value.copyWith(profileType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PathModelCopyWith<$Res>? get filePath {
    if (_value.filePath == null) {
      return null;
    }

    return $PathModelCopyWith<$Res>(_value.filePath!, (value) {
      return _then(_value.copyWith(filePath: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrustRateModelCopyWith<$Res>? get trustRate {
    if (_value.trustRate == null) {
      return null;
    }

    return $TrustRateModelCopyWith<$Res>(_value.trustRate!, (value) {
      return _then(_value.copyWith(trustRate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "profile_pic") String? profileImage,
      @JsonKey(name: "is_verified") dynamic isVerified,
      @JsonKey(name: "verified_at") String? verifiedAt,
      @JsonKey(name: "aboutus_id") dynamic aboutUsId,
      @JsonKey(name: "mobile_prefix") dynamic mobilePrefix,
      @JsonKey(name: "contact_no") String? phone,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "contactNo") String? contact,
      @JsonKey(name: "referral_code") String? referralCode,
      @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
      @JsonKey(name: "profile_type_id") int? profileTypeId,
      @JsonKey(name: "file_path") PathModel? filePath,
      @JsonKey(name: "aboutus") List<AboutUsItemModel>? aboutUsList,
      @JsonKey(name: "profile_status") dynamic profileStatus,
      @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
      @JsonKey(name: "notifications_enabled") int? notificationsEnabled,
      @JsonKey(name: "favorite_list", defaultValue: [])
      List<int> favoriteList});

  @override
  $ProfileTypeModelCopyWith<$Res>? get profileType;
  @override
  $PathModelCopyWith<$Res>? get filePath;
  @override
  $TrustRateModelCopyWith<$Res>? get trustRate;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? username = freezed,
    Object? lastName = freezed,
    Object? companyName = freezed,
    Object? brandName = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
    Object? verifiedAt = freezed,
    Object? aboutUsId = freezed,
    Object? mobilePrefix = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? status = freezed,
    Object? contact = freezed,
    Object? referralCode = freezed,
    Object? profileType = freezed,
    Object? profileTypeId = freezed,
    Object? filePath = freezed,
    Object? aboutUsList = freezed,
    Object? profileStatus = freezed,
    Object? trustRate = freezed,
    Object? notificationsEnabled = freezed,
    Object? favoriteList = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutUsId: freezed == aboutUsId
          ? _value.aboutUsId
          : aboutUsId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobilePrefix: freezed == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profileType: freezed == profileType
          ? _value.profileType
          : profileType // ignore: cast_nullable_to_non_nullable
              as ProfileTypeModel?,
      profileTypeId: freezed == profileTypeId
          ? _value.profileTypeId
          : profileTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as PathModel?,
      aboutUsList: freezed == aboutUsList
          ? _value.aboutUsList
          : aboutUsList // ignore: cast_nullable_to_non_nullable
              as List<AboutUsItemModel>?,
      profileStatus: freezed == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trustRate: freezed == trustRate
          ? _value.trustRate
          : trustRate // ignore: cast_nullable_to_non_nullable
              as TrustRateModel?,
      notificationsEnabled: freezed == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "brand_name") this.brandName,
      @JsonKey(name: "profile_pic") this.profileImage,
      @JsonKey(name: "is_verified") this.isVerified,
      @JsonKey(name: "verified_at") this.verifiedAt,
      @JsonKey(name: "aboutus_id") this.aboutUsId,
      @JsonKey(name: "mobile_prefix") this.mobilePrefix,
      @JsonKey(name: "contact_no") this.phone,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "contactNo") this.contact,
      @JsonKey(name: "referral_code") this.referralCode,
      @JsonKey(name: "profile_type") this.profileType,
      @JsonKey(name: "profile_type_id") this.profileTypeId,
      @JsonKey(name: "file_path") this.filePath,
      @JsonKey(name: "aboutus") this.aboutUsList,
      @JsonKey(name: "profile_status") this.profileStatus,
      @JsonKey(name: "trust_rate") this.trustRate,
      @JsonKey(name: "notifications_enabled") this.notificationsEnabled,
      @JsonKey(name: "favorite_list", defaultValue: [])
      required this.favoriteList})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  int id;
  @override
  @JsonKey(name: "first_name")
  String? firstName;
  @override
  @JsonKey(name: "username")
  String? username;
  @override
  @JsonKey(name: "last_name")
  String? lastName;
  @override
  @JsonKey(name: "company_name")
  String? companyName;
  @override
  @JsonKey(name: "brand_name")
  String? brandName;
  @override
  @JsonKey(name: "profile_pic")
  String? profileImage;
  @override
  @JsonKey(name: "is_verified")
  dynamic isVerified;
  @override
  @JsonKey(name: "verified_at")
  String? verifiedAt;
  @override
  @JsonKey(name: "aboutus_id")
  dynamic aboutUsId;
  @override
  @JsonKey(name: "mobile_prefix")
  dynamic mobilePrefix;
  @override
  @JsonKey(name: "contact_no")
  String? phone;
  @override
  @JsonKey(name: "email")
  String? email;
  @override
  @JsonKey(name: "status")
  int? status;
  @override
  @JsonKey(name: "contactNo")
  String? contact;
  @override
  @JsonKey(name: "referral_code")
  String? referralCode;
  @override
  @JsonKey(name: "profile_type")
  ProfileTypeModel? profileType;
  @override
  @JsonKey(name: "profile_type_id")
  int? profileTypeId;
  @override
  @JsonKey(name: "file_path")
  PathModel? filePath;
  @override
  @JsonKey(name: "aboutus")
  List<AboutUsItemModel>? aboutUsList;
  @override
  @JsonKey(name: "profile_status")
  dynamic profileStatus;
  @override
  @JsonKey(name: "trust_rate")
  TrustRateModel? trustRate;
  @override
  @JsonKey(name: "notifications_enabled")
  int? notificationsEnabled;
  @override
  @JsonKey(name: "favorite_list", defaultValue: [])
  List<int> favoriteList;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, username: $username, lastName: $lastName, companyName: $companyName, brandName: $brandName, profileImage: $profileImage, isVerified: $isVerified, verifiedAt: $verifiedAt, aboutUsId: $aboutUsId, mobilePrefix: $mobilePrefix, phone: $phone, email: $email, status: $status, contact: $contact, referralCode: $referralCode, profileType: $profileType, profileTypeId: $profileTypeId, filePath: $filePath, aboutUsList: $aboutUsList, profileStatus: $profileStatus, trustRate: $trustRate, notificationsEnabled: $notificationsEnabled, favoriteList: $favoriteList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "profile_pic") String? profileImage,
      @JsonKey(name: "is_verified") dynamic isVerified,
      @JsonKey(name: "verified_at") String? verifiedAt,
      @JsonKey(name: "aboutus_id") dynamic aboutUsId,
      @JsonKey(name: "mobile_prefix") dynamic mobilePrefix,
      @JsonKey(name: "contact_no") String? phone,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "contactNo") String? contact,
      @JsonKey(name: "referral_code") String? referralCode,
      @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
      @JsonKey(name: "profile_type_id") int? profileTypeId,
      @JsonKey(name: "file_path") PathModel? filePath,
      @JsonKey(name: "aboutus") List<AboutUsItemModel>? aboutUsList,
      @JsonKey(name: "profile_status") dynamic profileStatus,
      @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
      @JsonKey(name: "notifications_enabled") int? notificationsEnabled,
      @JsonKey(name: "favorite_list", defaultValue: [])
      required List<int> favoriteList}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @JsonKey(name: "id")
  set id(int value);
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @JsonKey(name: "first_name")
  set firstName(String? value);
  @override
  @JsonKey(name: "username")
  String? get username;
  @JsonKey(name: "username")
  set username(String? value);
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @JsonKey(name: "last_name")
  set lastName(String? value);
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @JsonKey(name: "company_name")
  set companyName(String? value);
  @override
  @JsonKey(name: "brand_name")
  String? get brandName;
  @JsonKey(name: "brand_name")
  set brandName(String? value);
  @override
  @JsonKey(name: "profile_pic")
  String? get profileImage;
  @JsonKey(name: "profile_pic")
  set profileImage(String? value);
  @override
  @JsonKey(name: "is_verified")
  dynamic get isVerified;
  @JsonKey(name: "is_verified")
  set isVerified(dynamic value);
  @override
  @JsonKey(name: "verified_at")
  String? get verifiedAt;
  @JsonKey(name: "verified_at")
  set verifiedAt(String? value);
  @override
  @JsonKey(name: "aboutus_id")
  dynamic get aboutUsId;
  @JsonKey(name: "aboutus_id")
  set aboutUsId(dynamic value);
  @override
  @JsonKey(name: "mobile_prefix")
  dynamic get mobilePrefix;
  @JsonKey(name: "mobile_prefix")
  set mobilePrefix(dynamic value);
  @override
  @JsonKey(name: "contact_no")
  String? get phone;
  @JsonKey(name: "contact_no")
  set phone(String? value);
  @override
  @JsonKey(name: "email")
  String? get email;
  @JsonKey(name: "email")
  set email(String? value);
  @override
  @JsonKey(name: "status")
  int? get status;
  @JsonKey(name: "status")
  set status(int? value);
  @override
  @JsonKey(name: "contactNo")
  String? get contact;
  @JsonKey(name: "contactNo")
  set contact(String? value);
  @override
  @JsonKey(name: "referral_code")
  String? get referralCode;
  @JsonKey(name: "referral_code")
  set referralCode(String? value);
  @override
  @JsonKey(name: "profile_type")
  ProfileTypeModel? get profileType;
  @JsonKey(name: "profile_type")
  set profileType(ProfileTypeModel? value);
  @override
  @JsonKey(name: "profile_type_id")
  int? get profileTypeId;
  @JsonKey(name: "profile_type_id")
  set profileTypeId(int? value);
  @override
  @JsonKey(name: "file_path")
  PathModel? get filePath;
  @JsonKey(name: "file_path")
  set filePath(PathModel? value);
  @override
  @JsonKey(name: "aboutus")
  List<AboutUsItemModel>? get aboutUsList;
  @JsonKey(name: "aboutus")
  set aboutUsList(List<AboutUsItemModel>? value);
  @override
  @JsonKey(name: "profile_status")
  dynamic get profileStatus;
  @JsonKey(name: "profile_status")
  set profileStatus(dynamic value);
  @override
  @JsonKey(name: "trust_rate")
  TrustRateModel? get trustRate;
  @JsonKey(name: "trust_rate")
  set trustRate(TrustRateModel? value);
  @override
  @JsonKey(name: "notifications_enabled")
  int? get notificationsEnabled;
  @JsonKey(name: "notifications_enabled")
  set notificationsEnabled(int? value);
  @override
  @JsonKey(name: "favorite_list", defaultValue: [])
  List<int> get favoriteList;
  @JsonKey(name: "favorite_list", defaultValue: [])
  set favoriteList(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
