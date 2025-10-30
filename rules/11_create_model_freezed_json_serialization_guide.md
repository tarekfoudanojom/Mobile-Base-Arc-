# 🏗️ Freezed & JSON Serialization Model Guide

This comprehensive guide explains how to create models using Freezed and JSON serialization in Flutter applications.

---

## 📋 **Table of Contents**

1. [Freezed Overview](#freezed-overview)
2. [Model Types & Patterns](#model-types--patterns)
3. [Basic Model Creation](#basic-model-creation)
4. [Advanced Model Patterns](#advanced-model-patterns)
5. [JSON Serialization](#json-serialization)
6. [Model Hierarchy](#model-hierarchy)
7. [Code Generation](#code-generation)
8. [Best Practices](#best-practices)
9. [Common Patterns](#common-patterns)
10. [Troubleshooting](#troubleshooting)

---

## 🎯 **Freezed Overview**

### **What is Freezed?**

Freezed is a code generation package for Dart that provides:
- ✅ **Immutable classes** - Objects that can't be modified after creation
- ✅ **Union types** - Multiple states in one class
- ✅ **Pattern matching** - Safe handling of different states
- ✅ **JSON serialization** - Automatic toJson/fromJson generation
- ✅ **Copy methods** - Create modified copies of objects
- ✅ **Equality & HashCode** - Automatic implementation

### **Key Benefits**

```dart
// ✅ Immutable - Can't modify after creation
final user = UserModel(id: 1, name: "John");
// user.name = "Jane"; // ❌ Compile error!

// ✅ Copy with modifications
final updatedUser = user.copyWith(name: "Jane");

// ✅ Pattern matching
user.when(
  loading: () => CircularProgressIndicator(),
  success: (data) => Text(data.name),
  error: (error) => Text(error.message),
);
```

---

## 🏗️ **Model Types & Patterns**

### **1. @freezed Classes**

**Immutable classes with union types:**

```dart
@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();
  
  const factory ApiResponse.loading() = _Loading;
  const factory ApiResponse.success(T data) = _Success<T>;
  const factory ApiResponse.error(String message) = _Error;
  
  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
```

### **2. @unfreezed Classes**

**Mutable classes with copyWith:**

```dart
@unfreezed
class UserModel with _$UserModel {
  const UserModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "profile_pic") String? profileImage,
    @Default(false) bool isVerified,
    @Default([]) List<String> tags,
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
```

### **3. Regular Classes**

**Custom classes without Freezed:**

```dart
class LocalizedNameModel {
  final dynamic jsonValue;
  
  const LocalizedNameModel([this.jsonValue]);
  
  factory LocalizedNameModel.fromJson(json) {
    return LocalizedNameModel(json);
  }
  
  Map<String, String> toJson() {
    if (jsonValue is Map) {
      return ((jsonValue ?? <String, String>{}) as Map).cast<String, String>();
    }
    return <String, String>{};
  }
}
```

---

## 🚀 **Basic Model Creation**

### **Step 1: Create Model File**

**File:** `lib/features/auth/data/models/user_model/user_model.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "profile_pic") String? profileImage,
    @JsonKey(name: "is_verified") bool? isVerified,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
```

### **Step 2: Generate Code**

```bash
# Generate Freezed and JSON code
flutter packages pub run build_runner build

# Watch for changes (during development)
flutter packages pub run build_runner watch
```

### **Step 3: Generated Files**

**Files created:**
- `user_model.freezed.dart` - Freezed implementation
- `user_model.g.dart` - JSON serialization

---

## 🎨 **Advanced Model Patterns**

### **Pattern 1: Complex Nested Models**

```dart
@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory ProfileModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    
    // Nested models
    @JsonKey(name: "profile_type") ProfileTypeModel? profileType,
    @JsonKey(name: "trust_rate") TrustRateModel? trustRate,
    @JsonKey(name: "file_paths") FilePathsModel? filePaths,
    
    // Lists of models
    @JsonKey(name: "skills") List<SubCategoryModel>? categories,
    @JsonKey(name: "banks") List<BankModel>? banks,
    @JsonKey(name: "profile_pay_types") List<ProfilePayTypesModel>? profilePayTypes,
    
    // Location data
    @JsonKey(name: "countryID") int? countryID,
    @JsonKey(name: "countryName") String? countryNameEn,
    @JsonKey(name: "countryNameAr") String? countryNameAr,
    @JsonKey(name: "stateID") int? stateID,
    @JsonKey(name: "stateName") String? stateNameEn,
    @JsonKey(name: "stateNameAr") String? stateNameAr,
    @JsonKey(name: "cityID") int? cityID,
    @JsonKey(name: "cityName") String? cityNameEn,
    @JsonKey(name: "cityNameAr") String? cityNameAr,
    
    // Pricing
    @JsonKey(name: "min_price") num? minPrice,
    @JsonKey(name: "max_price") num? maxPrice,
    @JsonKey(name: "delegation_fee_rate") double? delegationFeeRate,
    
    // Status fields
    @JsonKey(name: "is_verified") dynamic isVerified,
    @JsonKey(name: "verified_at") String? verifiedAt,
    @JsonKey(name: "registration_step") int? registrationStep,
  }) = _ProfileModel;
  
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  
  // Custom getters
  String get getName {
    var context = getIt<GlobalContext>().context();
    return (context.isArabic ? lastName ?? firstName : firstName ?? lastName) ?? "";
  }
  
  String get getCityName {
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? cityNameEn : cityNameAr) ?? "";
  }
  
  String get getCountryName {
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? countryNameEn : countryNameAr) ?? "";
  }
}
```

### **Pattern 2: Union Types (Multiple States)**

```dart
@freezed
class CampaignModel with _$CampaignModel {
  const CampaignModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory CampaignModel({
    required int id,
    String? title,
    required String? brief,
    required List<CampaignServiceModel> services,
    required num subtotal,
    required List<CampaignAsset> assets,
    required String status,
    required int progress,
    required String timestamp,
    required String type,
    @JsonKey(name: "launch_date") required DateTime? launchDate,
    @JsonKey(name: "website") required String? website,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
    @JsonKey(name: "tax_rate") num? taxRate,
    @JsonKey(name: "agency_fee_rate") num? agencyFeeRate,
    @JsonKey(name: "listing_fee") required double? listingFee,
    @JsonKey(name: "client_name") required ClientName clientName,
    @JsonKey(name: "client_id") required int clientId,
    @JsonKey(name: "user_details") required UserDetails userDetails,
    @JsonKey(name: "notes_by_user") required String? notesByUser,
    @JsonKey(name: "notes_by_admin") String? notesByAdmin,
    @JsonKey(name: "other_users") required List<OtherUserModel>? otherUsers,
    @JsonKey(name: "campaign_timeline") required List<CampaignTimeline> campaignTimeline,
    @JsonKey(name: "social_platforms") required List<SocialPlatform> socialPlatforms,
  }) = _CampaignModel;
  
  factory CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignModelFromJson(json);
  
  // Status getters
  bool get isCanceled => getCampaignStatus == CampaignTypeEnum.canceled;
  bool get isReleased => userDetails.isReleased == 1 || userDetails.isReleased == true;
  bool get isDelivered => getCampaignStatus == CampaignTypeEnum.delivered;
  bool get isCompleted => getCampaignStatus == CampaignTypeEnum.completed;
  
  CampaignTypeEnum get getCampaignStatus {
    switch (userDetails.reqStatus) {
      case "pending":
        return CampaignTypeEnum.requested;
      case "completed":
        return isReleased ? CampaignTypeEnum.completed : CampaignTypeEnum.delivered;
      case "approved":
        return CampaignTypeEnum.inProgress;
      case "rejected":
        return CampaignTypeEnum.canceled;
      default:
        return CampaignTypeEnum.requested;
    }
  }
  
  // Price calculations
  num get allServicesPrice {
    return socialPlatforms
        .where((sp) => sp.id != -1)
        .fold(0, (sum, item) => sum + (item.price ?? 0));
  }
  
  num get listingFeeBasedOnType {
    if (userDetails.bypassFees == 1) {
      return (listingFee == 0.0) ? 0.15 : listingFee ?? 0.0;
    }
    return listingFee ?? 0;
  }
}
```

### **Pattern 3: Service Models with Business Logic**

```dart
@unfreezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory ServiceModel({
    int? platformId,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "social_platform_type_id") int? socialPlatformTypeId,
    required String name,
    String? filename,
    @JsonKey(name: "filename_gray") String? filenameGray,
    @JsonKey(name: "web_url") String? webUrl,
    String? status,
    @JsonKey(name: "name_ar") required String nameAr,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "service_id") int? serviceId,
    @JsonKey(name: "social_platform_id") int? servicePlatformId,
    @JsonKey(name: "followers") num? followers,
    @JsonKey(name: "username") String? platformUserName,
    @JsonKey(name: "ar_option_name") String? arOptionName,
    @JsonKey(name: "en_option_name") String? enOptionName,
    @JsonKey(name: "discount_rate") double? discountRate,
    @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
    @JsonKey(name: "public_status", defaultValue: 1) num? publicStatus,
    @Default(false) bool selected,
    @Default(0) int quantity,
  }) = _ServiceModel;
  
  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
  
  // Factory constructor for draft services
  factory ServiceModel.forDraftService(DraftServiceModel model) {
    return ServiceModel(
      id: model.id,
      platformId: model.platform?.id ?? 0,
      socialPlatformTypeId: model.socialPlatformOptionId ?? 0,
      name: model.platform?.name ?? "",
      status: "1",
      filename: model.platform?.filename ?? "",
      nameAr: model.platform?.nameAr ?? "",
      filenameGray: model.platform?.filenameGray ?? "",
      webUrl: model.platform?.webUrl ?? "",
      quantity: model.quantity ?? 0,
      price: (model.listPrice ?? 0).toDouble(),
      arOptionName: model.socialPlatformOption?.arOptionName ?? "",
      enOptionName: model.socialPlatformOption?.enOptionName ?? "",
      selected: true,
    );
  }
  
  // Localized getters
  String get getServiceName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr : name;
  }
  
  String get getPlatformName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar"
        ? arOptionName ?? enOptionName ?? Translate.s.video
        : enOptionName ?? Translate.s.video;
  }
  
  // Price calculations
  String get getDiscountPrice {
    double priceFinal = price;
    double discount = discountRate ?? 1;
    final price1 = (priceFinal / (1 - discount));
    return getIt<Utilities>().handleThousandFormat(price1.toString());
  }
  
  String get getPrice {
    double priceFinal = price;
    return getIt<Utilities>().handleThousandFormat(priceFinal.toString());
  }
  
  // Utility methods
  String? extractFollowersNumber(String? followers) {
    if (followers != null) {
      final numberMatch = RegExp(r'^\d+(\.\d+)?').firstMatch(followers);
      return numberMatch?.group(0);
    }
    return "";
  }
  
  String? extractFollowersTxtValue(String? followers) {
    if (followers != null) {
      final match = RegExp(r'[\u0600-\u06FF]+').allMatches(followers);
      return match.map((m) => m.group(0)).join(' ');
    }
    return "";
  }
}
```

---

## 📝 **JSON Serialization**

### **Basic JSON Serialization**

```dart
@freezed
class UserModel with _$UserModel {
  const UserModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "created_at") DateTime? createdAt,
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// Usage
final user = UserModel.fromJson({
  "id": 1,
  "first_name": "John",
  "last_name": "Doe",
  "email": "john@example.com",
  "created_at": "2024-01-01T00:00:00Z",
});

final json = user.toJson();
```

### **Advanced JSON Annotations**

```dart
@freezed
class AdvancedModel with _$AdvancedModel {
  const AdvancedModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory AdvancedModel({
    // Custom field names
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "full_name") required String fullName,
    
    // Default values
    @JsonKey(name: "is_active", defaultValue: true) bool isActive,
    @JsonKey(name: "tags", defaultValue: []) List<String> tags,
    
    // Custom converters
    @JsonKey(name: "created_at") @TimestampConverter() DateTime? createdAt,
    @JsonKey(name: "metadata") @MetadataConverter() Map<String, dynamic>? metadata,
    
    // Ignore fields
    @JsonKey(includeFromJson: false, includeToJson: false) String? internalId,
    
    // Custom serialization
    @JsonKey(name: "status") @StatusConverter() UserStatus? status,
    
    // Nested objects
    @JsonKey(name: "profile") ProfileModel? profile,
    @JsonKey(name: "settings") Map<String, dynamic>? settings,
  }) = _AdvancedModel;
  
  factory AdvancedModel.fromJson(Map<String, dynamic> json) =>
      _$AdvancedModelFromJson(json);
}
```

### **Custom JSON Converters**

```dart
// Timestamp converter
class TimestampConverter implements JsonConverter<DateTime?, String?> {
  const TimestampConverter();
  
  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return DateTime.tryParse(json);
  }
  
  @override
  String? toJson(DateTime? object) {
    return object?.toIso8601String();
  }
}

// Status enum converter
class StatusConverter implements JsonConverter<UserStatus?, String?> {
  const StatusConverter();
  
  @override
  UserStatus? fromJson(String? json) {
    if (json == null) return null;
    return UserStatus.values.firstWhere(
      (e) => e.name.toLowerCase() == json.toLowerCase(),
      orElse: () => UserStatus.active,
    );
  }
  
  @override
  String? toJson(UserStatus? object) {
    return object?.name.toLowerCase();
  }
}

// Metadata converter
class MetadataConverter implements JsonConverter<Map<String, dynamic>?, dynamic> {
  const MetadataConverter();
  
  @override
  Map<String, dynamic>? fromJson(dynamic json) {
    if (json is Map<String, dynamic>) return json;
    if (json is Map) return json.cast<String, dynamic>();
    return null;
  }
  
  @override
  dynamic toJson(Map<String, dynamic>? object) {
    return object;
  }
}
```

---

## 🏗️ **Model Hierarchy**

### **Base Models**

**Base Domain Model:**

```dart
// lib/core/models/domain_model/base_domain_model.dart
abstract class BaseDomainModel<T> {
  const BaseDomainModel();
}
```

**Base API Model:**

```dart
// lib/core/models/api_model/base_api_model.dart
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

abstract class BaseApiModel<T extends BaseDomainModel> {
  const BaseApiModel();
  
  T toDomainModel();
}
```

### **Model Structure**

```
Models
├── Core Models
│   ├── BaseDomainModel (abstract)
│   ├── BaseApiModel (abstract)
│   ├── DeviceModel (@freezed)
│   ├── EncryptedModel (@freezed)
│   └── LocalizedNameModel (regular)
│
├── Feature Models
│   ├── Auth Models
│   │   ├── UserModel (@unfreezed)
│   │   ├── ProfileModel (@freezed)
│   │   └── LoginModel (@freezed)
│   │
│   ├── Campaign Models
│   │   ├── CampaignModel (@freezed)
│   │   ├── CampaignServiceModel (@freezed)
│   │   └── CampaignTimeline (@freezed)
│   │
│   └── Service Models
│       ├── ServiceModel (@unfreezed)
│       ├── ServiceDetailsModel (@unfreezed)
│       └── UserParticipation (@unfreezed)
```

---

## ⚙️ **Code Generation**

### **Build Runner Commands**

```bash
# Generate all code
flutter packages pub run build_runner build

# Watch for changes (development)
flutter packages pub run build_runner watch

# Clean and rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs

# Build specific files
flutter packages pub run build_runner build --build-filter="lib/features/auth/data/models/**"
```

### **Generated Files**

**For each model file `user_model.dart`:**

```
user_model.dart                 # Your model definition
├── user_model.freezed.dart    # Freezed implementation
└── user_model.g.dart         # JSON serialization
```

### **Generated Code Features**

**Freezed generates:**
- ✅ Immutable classes
- ✅ `copyWith` methods
- ✅ `==` operator and `hashCode`
- ✅ `toString` method
- ✅ Pattern matching methods (`when`, `maybeWhen`, `map`)

**JSON generates:**
- ✅ `fromJson` factory constructor
- ✅ `toJson` method
- ✅ Custom converters support
- ✅ Nested object handling

---

## ✅ **Best Practices**

### **1. Model Organization**

```dart
// ✅ CORRECT: Feature-based organization
lib/features/star/auth/data/models/
├── user_model/
│   ├── user_model.dart
│   ├── user_model.freezed.dart
│   └── user_model.g.dart
├── profile_model/
│   ├── profile_model.dart
│   ├── profile_model.freezed.dart
│   └── profile_model.g.dart
```

### **2. Naming Conventions**

```dart
// ✅ CORRECT: Clear, descriptive names
class UserModel { }           // User data model
class CampaignModel { }       // Campaign data model
class ServiceDetailsModel { } // Service details model

// ❌ WRONG: Unclear names
class Model { }               // Too generic
class Data { }               // Too generic
class UserDataModel { }      // Redundant "Data"
```

### **3. Field Annotations**

```dart
// ✅ CORRECT: Use JsonKey for API field mapping
@JsonKey(name: "first_name") String? firstName,
@JsonKey(name: "created_at") DateTime? createdAt,
@JsonKey(name: "is_verified", defaultValue: false) bool isVerified,

// ❌ WRONG: Don't use JsonKey for simple fields
String? firstName,  // If API field is also "firstName"
```

### **4. Null Safety**

```dart
// ✅ CORRECT: Explicit null handling
@JsonKey(name: "email") String? email,           // Nullable
@JsonKey(name: "id") required int id,            // Required
@JsonKey(name: "tags", defaultValue: []) List<String> tags, // Default value

// ❌ WRONG: Implicit null handling
String email,  // Could be null from API
```

### **5. Type Safety**

```dart
// ✅ CORRECT: Use specific types
@JsonKey(name: "price") required double price,
@JsonKey(name: "count") required int count,
@JsonKey(name: "is_active") required bool isActive,

// ❌ WRONG: Use dynamic when specific type is known
@JsonKey(name: "price") dynamic price,
@JsonKey(name: "count") dynamic count,
```

### **6. Custom Getters**

```dart
// ✅ CORRECT: Add business logic getters
String get getFullName => "${firstName ?? ""} ${lastName ?? ""}";
String get getDisplayName => username ?? getFullName;
bool get isVerified => verifiedAt != null;

// ❌ WRONG: Don't add UI-specific logic
Widget get getAvatarWidget => CircleAvatar(...); // Keep UI separate
```

---

## 🎨 **Common Patterns**

### **Pattern 1: Localized Models**

```dart
@freezed
class LocalizedModel with _$LocalizedModel {
  const LocalizedModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory LocalizedModel({
    @JsonKey(name: "name_en") required String nameEn,
    @JsonKey(name: "name_ar") required String nameAr,
    @JsonKey(name: "description_en") String? descriptionEn,
    @JsonKey(name: "description_ar") String? descriptionAr,
  }) = _LocalizedModel;
  
  factory LocalizedModel.fromJson(Map<String, dynamic> json) =>
      _$LocalizedModelFromJson(json);
  
  // Localized getters
  String get getName {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? nameAr : nameEn;
  }
  
  String? get getDescription {
    BuildContext context = getIt<GlobalContext>().context();
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return lang == "ar" ? descriptionAr : descriptionEn;
  }
}
```

### **Pattern 2: Status Models**

```dart
@freezed
class CampaignStatus with _$CampaignStatus {
  const CampaignStatus._();
  
  const factory CampaignStatus.pending() = _Pending;
  const factory CampaignStatus.approved() = _Approved;
  const factory CampaignStatus.inProgress() = _InProgress;
  const factory CampaignStatus.completed() = _Completed;
  const factory CampaignStatus.canceled() = _Canceled;
  
  // Status checks
  bool get isActive => when(
    pending: () => true,
    approved: () => true,
    inProgress: () => true,
    completed: () => false,
    canceled: () => false,
  );
  
  String get displayName => when(
    pending: () => "Pending",
    approved: () => "Approved",
    inProgress: () => "In Progress",
    completed: () => "Completed",
    canceled: () => "Canceled",
  );
}
```

### **Pattern 3: API Response Models**

```dart
@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();
  
  const factory ApiResponse.loading() = _Loading<T>;
  const factory ApiResponse.success(T data) = _Success<T>;
  const factory ApiResponse.error(String message, [int? code]) = _Error<T>;
  
  // Response handling
  bool get isLoading => when(
    loading: () => true,
    success: (_) => false,
    error: (_, __) => false,
  );
  
  bool get isSuccess => when(
    loading: () => false,
    success: (_) => true,
    error: (_, __) => false,
  );
  
  bool get isError => when(
    loading: () => false,
    success: (_) => false,
    error: (_, __) => true,
  );
  
  T? get data => when(
    loading: () => null,
    success: (data) => data,
    error: (_, __) => null,
  );
  
  String? get errorMessage => when(
    loading: () => null,
    success: (_) => null,
    error: (message, _) => message,
  );
}
```

### **Pattern 4: Form Models**

```dart
@unfreezed
class LoginFormModel with _$LoginFormModel {
  const LoginFormModel._();
  
  factory LoginFormModel({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool rememberMe,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LoginFormModel;
  
  // Validation
  bool get isValid => email.isNotEmpty && password.isNotEmpty;
  
  String? get emailError {
    if (email.isEmpty) return "Email is required";
    if (!email.contains("@")) return "Invalid email format";
    return null;
  }
  
  String? get passwordError {
    if (password.isEmpty) return "Password is required";
    if (password.length < 6) return "Password must be at least 6 characters";
    return null;
  }
  
  // Form state
  bool get hasErrors => emailError != null || passwordError != null;
  bool get canSubmit => isValid && !hasErrors && !isLoading;
}
```

### **Pattern 5: Pagination Models**

```dart
@freezed
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const PaginatedResponse._();
  
  @JsonSerializable(explicitToJson: true)
  factory PaginatedResponse({
    @JsonKey(name: "data") required List<T> items,
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "to") int? to,
  }) = _PaginatedResponse<T>;
  
  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$PaginatedResponseFromJson(json, fromJsonT);
  
  // Pagination helpers
  bool get hasNextPage => currentPage < lastPage;
  bool get hasPreviousPage => currentPage > 1;
  bool get isEmpty => items.isEmpty;
  bool get isNotEmpty => items.isNotEmpty;
  
  int get nextPage => hasNextPage ? currentPage + 1 : currentPage;
  int get previousPage => hasPreviousPage ? currentPage - 1 : currentPage;
}
```

---

## 🔧 **Model Creation Workflow**

### **Step-by-Step Process**

#### **Step 1: Plan Your Model**

```dart
// 1. Identify the data structure
// 2. Determine if it needs to be mutable (@unfreezed) or immutable (@freezed)
// 3. Plan nested models
// 4. Identify required vs optional fields
// 5. Plan custom getters and methods
```

#### **Step 2: Create Model Structure**

```dart
// Create folder structure
lib/features/{feature}/data/models/{model_name}/
├── {model_name}.dart
├── {model_name}.freezed.dart (generated)
└── {model_name}.g.dart (generated)
```

#### **Step 3: Write Model Definition**

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part '{model_name}.freezed.dart';
part '{model_name}.g.dart';

@freezed // or @unfreezed
class {ModelName} with _${ModelName} {
  const {ModelName}._();
  
  @JsonSerializable(explicitToJson: true)
  factory {ModelName}({
    // Fields here
  }) = _{ModelName};
  
  factory {ModelName}.fromJson(Map<String, dynamic> json) =>
      _${ModelName}FromJson(json);
  
  // Custom methods here
}
```

#### **Step 4: Generate Code**

```bash
flutter packages pub run build_runner build
```

#### **Step 5: Test Model**

```dart
// Test JSON serialization
final model = ModelName.fromJson(jsonData);
final json = model.toJson();

// Test copyWith (if @unfreezed)
final updatedModel = model.copyWith(field: newValue);

// Test custom methods
final result = model.customMethod();
```

---

## 🚨 **Troubleshooting**

### **Common Issues**

#### **Issue 1: Code Generation Fails**

```bash
# Error: Could not find part 'model.freezed.dart'
# Solution: Run build runner
flutter packages pub run build_runner build
```

#### **Issue 2: JSON Serialization Errors**

```dart
// Error: type 'String' is not a subtype of type 'int'
// Solution: Use proper types or converters

// ❌ WRONG
@JsonKey(name: "id") String id,  // API returns int but model expects String

// ✅ CORRECT
@JsonKey(name: "id") int id,    // Match API type
// OR
@JsonKey(name: "id") @StringToIntConverter() int id,  // Use converter
```

#### **Issue 3: Null Safety Issues**

```dart
// Error: Null check operator used on a null value
// Solution: Handle null values properly

// ❌ WRONG
String get fullName => "$firstName $lastName";  // firstName could be null

// ✅ CORRECT
String get fullName => "${firstName ?? ""} ${lastName ?? ""}";
// OR
String? get fullName => firstName != null && lastName != null 
    ? "$firstName $lastName" 
    : null;
```

#### **Issue 4: Circular Dependencies**

```dart
// Error: Circular dependency between models
// Solution: Use forward declarations or restructure

// ❌ WRONG
class UserModel {
  List<PostModel> posts;  // PostModel references UserModel
}

class PostModel {
  UserModel author;       // Circular dependency
}

// ✅ CORRECT
class UserModel {
  List<PostModel> posts;
}

class PostModel {
  int authorId;           // Reference by ID instead
}
```

#### **Issue 5: Build Runner Conflicts**

```bash
# Error: Conflicting outputs
# Solution: Clean and rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs
```

---

## 📚 **Model Examples from Codebase**

### **Example 1: Simple Model**

```dart
// lib/core/models/encrypted_model/encrypted_model.dart
@freezed
class EncryptedModel with _$EncryptedModel {
  const EncryptedModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory EncryptedModel({
    required String message,
    required String status,
    required String data,
  }) = _EncryptedModel;
  
  factory EncryptedModel.fromJson(Map<String, dynamic> json) =>
      _$EncryptedModelFromJson(json);
}
```

### **Example 2: Complex Model with Business Logic**

```dart
// lib/features/auth/data/models/profile_model/profile_model.dart
@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory ProfileModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    // ... many more fields
  }) = _ProfileModel;
  
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  
  // Custom getters with localization
  String get getName {
    var context = getIt<GlobalContext>().context();
    return (context.isArabic ? lastName ?? firstName : firstName ?? lastName) ?? "";
  }
  
  String get getCityName {
    var context = getIt<GlobalContext>().context();
    var currentLang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return (currentLang == "en" ? cityNameEn : cityNameAr) ?? city ?? "";
  }
}
```

### **Example 3: Service Model with Calculations**

```dart
// lib/features/profile/data/models/service_model/service_model.dart
@unfreezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory ServiceModel({
    @JsonKey(name: "id") int? id,
    required String name,
    @JsonKey(name: "name_ar") required String nameAr,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "discount_rate") double? discountRate,
    @Default(false) bool selected,
    @Default(0) int quantity,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
  
  // Price calculations
  String get getDiscountPrice {
    double priceFinal = price;
    double discount = discountRate ?? 1;
    final price1 = (priceFinal / (1 - discount));
    return getIt<Utilities>().handleThousandFormat(price1.toString());
  }
  
  String get getPrice {
    double priceFinal = price;
    return getIt<Utilities>().handleThousandFormat(priceFinal.toString());
  }
}
```

---

## 🎯 **Summary**

### **Key Takeaways**

✅ **Use @freezed for immutable models** with union types
✅ **Use @unfreezed for mutable models** with copyWith
✅ **Always use @JsonSerializable(explicitToJson: true)**
✅ **Use @JsonKey for API field mapping**
✅ **Add custom getters for business logic**
✅ **Handle null safety properly**
✅ **Generate code with build_runner**
✅ **Organize models by feature**

### **Model Types**

| Type | Use Case | Example |
|------|----------|---------|
| `@freezed` | Immutable, union types | `ApiResponse<T>` |
| `@unfreezed` | Mutable, copyWith | `UserModel`, `FormModel` |
| Regular class | Custom logic | `LocalizedNameModel` |

### **Essential Annotations**

```dart
@JsonSerializable(explicitToJson: true)  // Always use
@JsonKey(name: "field_name")             // API field mapping
@Default(value)                          // Default values
@JsonKey(defaultValue: value)            // Alternative default
```

### **Code Generation Commands**

```bash
# Generate all
flutter packages pub run build_runner build

# Watch for changes
flutter packages pub run build_runner watch

# Clean rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs
```

---

**This guide covers everything you need to create robust, type-safe models using Freezed and JSON serialization!** 🚀📝✨

