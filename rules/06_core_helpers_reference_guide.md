# 🛠️ Core Helpers Reference Guide

This comprehensive guide documents all helper files in `/lib/core/helpers/`, explaining the purpose of each file and all functions within them.

---

## 📋 **Table of Contents**

1. [Validation Helpers](#validation-helpers)
2. [Utilities](#utilities)
3. [State Management](#state-management)
4. [UI & Messaging](#ui--messaging)
5. [File & Media Services](#file--media-services)
6. [Date & Time](#date--time)
7. [Network & External Services](#network--external-services)
8. [Permissions](#permissions)
9. [Storage & Preferences](#storage--preferences)
10. [Dependency Injection](#dependency-injection)
11. [Chat & Streaming](#chat--streaming)
12. [Firebase Integration](#firebase-integration)

---

## ✅ **Validation Helpers**

### **1. validator.dart**

**Purpose:** Provides validation extension methods for strings to validate form inputs.

**Location:** `lib/core/helpers/validator.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `noValidate()` | Skip validation | `null` (always valid) |
| `validateEmpty({message})` | Check if field is empty | Error message or `null` |
| `validateName({message})` | Validate name (2-30 characters) | Error message or `null` |
| `validateEmail({message})` | Validate email format | Error message or `null` |
| `validateEmailORNull({message})` | Validate email if not empty | Error message or `null` |
| `validatePassword({message})` | Validate password (min 8 chars) | Error message or `null` |
| `validatePasswordConfirm({pass, message})` | Match password confirmation | Error message or `null` |
| `validatePhone({message})` | Validate phone number | Error message or `null` |
| `validatePhoneOrNull({message})` | Validate phone if not empty | Error message or `null` |
| `validateOnCode(dialCode)` | Validate phone with country code | `bool` |
| `validateIban()` | Validate IBAN format | Error message or `null` |
| `validateLink({message})` | Validate URL format | Error message or `null` |
| `validateAddLink({message})` | Validate URL (flexible) | Error message or `null` |
| `validateCompanyLink({message})` | Validate company URL | Error message or `null` |
| `validateSnapChatUSerNameLink({message})` | Validate Snapchat profile link | Error message or `null` |
| `validateYouTubeUrl()` | Validate YouTube URL | Error message or `null` |
| `arabicToEnglishNumbers` | Convert Arabic numerals to English | `String` |

#### **Usage Examples:**

```dart
// Email validation
GenericTextField(
  controller: emailController,
  validate: (value) => value?.validateEmail(),
)

// Password validation
GenericTextField(
  controller: passwordController,
  validate: (value) => value?.validatePassword(),
)

// Password confirmation
GenericTextField(
  controller: confirmPasswordController,
  validate: (value) => value?.validatePasswordConfirm(pass: password),
)

// Phone validation
GenericTextField(
  controller: phoneController,
  validate: (value) => value?.validatePhone(),
)

// Name validation
GenericTextField(
  controller: nameController,
  validate: (value) => value?.validateName(),
)

// No validation needed
GenericTextField(
  controller: optionalController,
  validate: (value) => value?.noValidate(),
)

// Convert Arabic numbers
String arabicNumber = "١٢٣";
String englishNumber = arabicNumber.arabicToEnglishNumbers; // "123"
```

#### **Helper Function:**

```dart
// Validate dropdown selection
String? validateDropDown(dynamic model, {String? message}) {
  if (model == null) {
    return message ?? Translate.s.fillField;
  }
  return null;
}

// Usage
DropdownButtonFormField(
  validator: (value) => validateDropDown(value, message: 'Please select'),
)
```

---

## 🔧 **Utilities**

### **2. utilities.dart**

**Purpose:** General utility functions for common tasks like date formatting, file picking, number formatting, etc.

**Location:** `lib/core/helpers/utilities.dart`

#### **Main Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `formatDate(date, {dateFormatter})` | Format date to string | `String` |
| `formatNumber(number)` | Format number (K/M notation) | `String` |
| `handleScrollUpButtonVisibility(controller, obs)` | Show/hide scroll-to-top button | `void` |
| `moveItem({oldIndex, newIndex, data, onReorder})` | Reorder list items | `void` |
| `deviceToken` | Get Firebase device token | `Future<String>` |
| `changeLanguage(lang, context)` | Change app language | `Future<void>` |
| `changeCurrency(context, currency)` | Change app currency | `Future<void>` |
| `getCameraImage(context)` | Capture image from camera | `Future<File?>` |
| `getImageFile(context, {fileType, showFile, sheetTitle})` | Show image source picker | `Future<File?>` |
| `getImageGallery(context, {fileType})` | Pick image from gallery | `Future<File?>` |
| `pickImageWithValidation(context, imageObs, {isCustom, imagePixHeight, imagePixWidth, onPickImageConfirm})` | Pick image with size validation | `Future<File?>` |
| `getFile(context)` | Pick any file | `Future<File?>` |
| `getFileBrand(context, {allowedExtensions, type})` | Pick file with extensions | `Future<File?>` |
| `pickVideoOrImage(context, videoImageObs, {isCustom, imagePixHeight, imagePixWidth, onPickImageConfirm})` | Pick video or image with validation | `Future<void>` |
| `copyToClipBoard(context, copiedText, {color})` | Copy text to clipboard | `void` |
| `launchUrlLauncher({url, isApp})` | Open URL in browser | `void` |
| `callNumber({number})` | Make phone call | `void` |
| `onShare({url})` | Share content | `void` |
| `goWhatsapp(contact)` | Open WhatsApp | `Future<void>` |
| `sendAnEmail(email)` | Open email client | `Future<void>` |
| `pickContact(context)` | Pick contact from phone | `Future<Contact?>` |
| `convertArNumToEn(text)` | Convert Arabic to English numbers | `String` |
| `handleDecimalFormat(percentage)` | Format decimal numbers | `String` |
| `handleThousandFormat(price)` | Format with thousand separators | `String` |
| `handleThousandFormatWithRemoveDecimalZero(price)` | Format price removing trailing zeros | `String` |
| `convertDigitsToLatin(s)` | Convert digits to Latin | `String` |
| `getFileSize(fileUrl)` | Get remote file size | `Future<int?>` |
| `reverseNumbersToString(input)` | Reverse numbers for RTL | `String` |

#### **Usage Examples:**

```dart
// Format number
String followers = getIt<Utilities>().formatNumber(125000); // "125K"
String views = getIt<Utilities>().formatNumber(2500000); // "2.5M"

// Handle scroll button
void initState() {
  scrollController.addListener(() {
    getIt<Utilities>().handleScrollUpButtonVisibility(
      scrollController,
      showScrollUpButtonObs,
    );
  });
}

// Pick image with validation
await getIt<Utilities>().pickImageWithValidation(
  context,
  profileImageObs,
  isCustom: true,
  imagePixWidth: 800,
  imagePixHeight: 800,
);

// Copy to clipboard
getIt<Utilities>().copyToClipBoard(
  context,
  'https://example.com/profile',
);

// Launch URL
getIt<Utilities>().launchUrlLauncher(url: 'https://example.com');

// Call phone number
getIt<Utilities>().callNumber(number: '+966501234567');

// Share content
getIt<Utilities>().onShare(url: 'Check out this amazing app!');

// Format price
String price = getIt<Utilities>().handleThousandFormat('1500'); // "1,500"

// Move item in list
getIt<Utilities>().moveItem(
  oldIndex: 2,
  newIndex: 5,
  data: itemsBloc,
  onReorder: () {
    // Save new order
  },
);
```

---

### **3. phone_helper.dart**

**Purpose:** Handle phone number formatting and validation.

**Location:** `lib/core/helpers/phone_helper.dart`

**Functions:** Phone number utilities specific to the app's requirements.

---

### **4. color_helper.dart**

**Purpose:** Color manipulation utilities.

**Location:** `lib/core/helpers/color_helper.dart`

**Functions:** Helper functions for color operations.

---

## 🎯 **State Management**

### **5. global_state.dart**

**Purpose:** Global in-memory key-value storage for app state.

**Location:** `lib/core/helpers/global_state.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `set(key, value)` | Store value in memory | `dynamic` |
| `get(key)` | Retrieve value from memory | `dynamic` |

#### **Usage:**

```dart
// Store data
GlobalState.instance.set('token', 'abc123');
GlobalState.instance.set('currentPage', 1);
GlobalState.instance.set('selectedId', 42);

// Retrieve data
String? token = GlobalState.instance.get('token');
int? page = GlobalState.instance.get('currentPage');

// Common usage
GlobalState.instance.set('lang', 'ar');
String? currentLang = GlobalState.instance.get('lang');
```

**Note:** This is in-memory storage. Data is lost on app restart. Use `PrefHelper` for persistent storage.

---

### **6. global_context.dart**

**Purpose:** Provides global access to BuildContext.

**Location:** `lib/core/helpers/global_context.dart`

#### **Usage:**

```dart
@lazySingleton
class GlobalContext {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  BuildContext context() {
    return navigatorKey.currentContext!;
  }
}

// Usage
BuildContext context = getIt<GlobalContext>().context();
```

---

## 💬 **UI & Messaging**

### **7. app_snack_bar_service.dart**

**Purpose:** Centralized snackbar and toast management.

**Location:** `lib/core/helpers/app_snack_bar_service.dart`

#### **Functions:**

| Function | Purpose | Parameters |
|----------|---------|------------|
| `showSuccessSnackBar(message, {callback})` | Show success message | message, optional callback |
| `showErrorSnackBar({error, callback})` | Show error message | BaseError, optional callback |
| `showUnknownErrorSnackBar({callback})` | Show unknown error | optional callback |
| `showWarningSnackBar({message, color})` | Show warning message | message, optional color |
| `showSimpleToast({msg, color, textColor, gravity, type})` | Show simple toast | message, optional styling |
| `showCustomTopToast(context, message, {icon, top, duration})` | Show custom positioned toast at top | context, message, optional params |
| `showCustomBottomToast(context, message, {icon, bottom, duration})` | Show custom positioned toast at bottom | context, message, optional params |
| `showUndoSnackBar({message, onUndo, onComplete, duration})` | Show snackbar with undo action | message, callbacks |
| `showCampaignSuccessSnackBar({message, actionText, onAction, duration})` | Show success with action button | message, action |
| `removeTopToast()` | Remove active toast | none |

#### **Usage Examples:**

```dart
// Success message
AppSnackBar.showSuccessSnackBar('Profile updated successfully');

// Error message
AppSnackBar.showErrorSnackBar(
  error: CustomError(msg: 'Failed to save'),
);

// Warning
AppSnackBar.showWarningSnackBar(message: 'Please fill all fields');

// Simple toast
AppSnackBar.showSimpleToast(
  msg: 'Item added to favorites',
  type: ToastType.success,
);

// Custom positioned toast
AppSnackBar.showCustomTopToast(
  context,
  'New message received',
  icon: Icon(Icons.message, color: Colors.white),
  duration: 3,
);

// Undo snackbar
AppSnackBar.showUndoSnackBar(
  message: Text('Item deleted'),
  onUndo: () {
    // Restore deleted item
    restoreItem();
  },
  onComplete: () {
    // Permanently delete
    permanentlyDelete();
  },
  duration: Duration(seconds: 5),
);

// Campaign success
AppSnackBar.showCampaignSuccessSnackBar(
  message: Text('Campaign created successfully'),
  actionText: 'View',
  onAction: () {
    // Navigate to campaign
    AutoRouter.of(context).push(CampaignDetailsRoute());
  },
);
```

**Toast Types:**
- `ToastType.success` - Green background
- `ToastType.error` - Red background
- `ToastType.info` - Yellow background

---

### **8. loading_helper.dart**

**Purpose:** Manage loading dialogs and indicators.

**Location:** `lib/core/helpers/loading_helper.dart`

#### **Functions:**

| Function | Purpose | Parameters |
|----------|---------|------------|
| `showLoadingDialog({dismissOnTap, loadingPercent})` | Show loading overlay | optional dismissOnTap, optional progress percentage |
| `dismissDialog()` | Hide loading overlay | none |
| `isShowObs` | Observable for loading state | `ObsValue<bool>` |

#### **Usage:**

```dart
// Show simple loading
getIt<LoadingHelper>().showLoadingDialog();

// Perform async operation
await performAsyncTask();

// Hide loading
getIt<LoadingHelper>().dismissDialog();

// With progress percentage (for uploads)
ObsValue<int> uploadProgress = ObsValue.withInit(0);
getIt<LoadingHelper>().showLoadingDialog(loadingPercent: uploadProgress);

// Update progress
uploadProgress.setValue(50); // 50%

// Complete
getIt<LoadingHelper>().dismissDialog();

// Check if loading is showing
ObsValueConsumer(
  observable: getIt<LoadingHelper>().isShowObs,
  builder: (context, isLoading) {
    return isLoading ? Text('Loading...') : Text('Ready');
  },
);
```

**Note:** Loading automatically dismisses after 15 seconds timeout.

---

## 📁 **File & Media Services**

### **9. file_service.dart**

**Purpose:** File picking, image selection, and media handling.

**Location:** `lib/core/helpers/file_service.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `pickFile(context, {allowedMimeType, allowedExtensions, fileType, maxFileSize, allowMultiple})` | Pick file(s) from device | `Future<List<File>?>` |
| `pickImagesFiles(context, {allowMulti, sheetTitle, sheetSubTitle, showFileOption})` | Pick images with action sheet | `Future<List<File>?>` |
| `pickImage(context, source, {maxWidth, maxHeight, imageQuality})` | Pick single image | `Future<File?>` |
| `pickImages(context, {maxWidth, maxHeight, imageQuality})` | Pick multiple images | `Future<List<File>?>` |
| `pickVideo(context)` | Pick video file | `Future<File?>` |
| `deleteFile(file)` | Delete file from device | `Future<void>` |

#### **Usage:**

```dart
// Pick single file
List<File>? files = await getIt<AppFileService>().pickFile(
  context,
  fileType: FileType.custom,
  allowedExtensions: ['pdf', 'doc', 'docx'],
  maxFileSize: 5 * 1024 * 1024, // 5MB
);

// Pick multiple images
List<File>? images = await getIt<AppFileService>().pickImagesFiles(
  context,
  allowMulti: true,
  sheetTitle: 'Select Photos',
);

// Pick PDF only
List<File>? pdfs = await getIt<AppFileService>().pickFile(
  context,
  fileType: FileType.custom,
  allowedExtensions: ['pdf'],
);

// Pick any file
List<File>? anyFiles = await getIt<AppFileService>().pickFile(
  context,
  fileType: FileType.any,
  allowMultiple: true,
);
```

---

### **10. download_service.dart**

**Purpose:** Download files from URLs.

**Location:** `lib/core/helpers/download_service.dart`

**Functions:** File downloading utilities.

---

### **11. image_editor_helper.dart**

**Purpose:** Image editing and manipulation.

**Location:** `lib/core/helpers/image_editor_helper.dart`

**Functions:** Image cropping, resizing, filtering.

---

### **12. local_images_cache.dart**

**Purpose:** Cache images locally.

**Location:** `lib/core/helpers/local_images_cache.dart`

**Functions:** Image caching management.

---

## 📅 **Date & Time**

### **13. date_helper.dart**

**Purpose:** Date/time utilities.

**Location:** `lib/core/helpers/date_helper.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `nowAtCurrentTimeZone()` | Get current date/time in local timezone | `DateTime` |

#### **Usage:**

```dart
// Get current date/time
DateTime now = DateHelper.nowAtCurrentTimeZone();

// Usage in timestamp
String timestamp = DateHelper.nowAtCurrentTimeZone().toString();
```

---

### **14. date_formatter.dart**

**Purpose:** Advanced date formatting.

**Location:** `lib/core/helpers/date_formatter.dart`

**Functions:** Various date format conversions.

---

### **15. adaptive_picker.dart**

**Purpose:** Platform-adaptive date/time pickers.

**Location:** `lib/core/helpers/adaptive_picker.dart`

**Functions:** Show iOS/Android appropriate pickers.

---

## 🌐 **Network & External Services**

### **16. app_link_helper.dart**

**Purpose:** Handle deep links and app links.

**Location:** `lib/core/helpers/app_link_helper.dart`

**Functions:** Deep link routing and handling.

---

### **17. share_services.dart**

**Purpose:** Share content to other apps.

**Location:** `lib/core/helpers/share_services.dart`

**Functions:** Share text, files, URLs.

---

### **18. youtube_details_helper.dart**

**Purpose:** Fetch YouTube video details.

**Location:** `lib/core/helpers/youtube_details_helper.dart`

**Functions:** Get video title, thumbnail, duration.

---

### **19. socket_helper.dart**

**Purpose:** WebSocket connections.

**Location:** `lib/core/helpers/socket_helper.dart`

**Functions:** Real-time communication.

---

### **20. location_service.dart**

**Purpose:** GPS and location services.

**Location:** `lib/core/helpers/location_service.dart`

**Functions:** Get current location, track location.

---

## 🔐 **Permissions**

### **21. psermission_services.dart**

**Purpose:** Handle app permissions.

**Location:** `lib/core/helpers/psermission_services.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `requestPermission(permission, context)` | Request specific permission | `Future<bool>` |
| `checkPermission(permission)` | Check if permission is granted | `Future<bool>` |
| `requestMultiplePermissions(permissions, context)` | Request multiple permissions | `Future<Map<Permission, bool>>` |
| `openAppSettings()` | Open app settings | `Future<void>` |

#### **Usage:**

```dart
// Request camera permission
bool granted = await getIt<PermissionServices>().requestPermission(
  Permission.camera,
  context,
);

if (granted) {
  // Use camera
} else {
  // Show error
}

// Request multiple permissions
Map<Permission, bool> results = await getIt<PermissionServices>()
    .requestMultiplePermissions([
  Permission.camera,
  Permission.photos,
  Permission.microphone,
], context);

// Open settings
await getIt<PermissionServices>().openAppSettings();
```

---

## 💾 **Storage & Preferences**

### **22. pref_helper.dart**

**Purpose:** Persistent storage using SharedPreferences.

**Location:** `lib/core/helpers/pref_helper.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `getUserData()` | Get user data JSON | `String?` |
| `setUserData(value)` | Save user data | `void` |
| `getUserProfile()` | Get user profile JSON | `String?` |
| `setUserProfile(value)` | Save user profile | `void` |
| `getUserToken()` | Get auth token | `String?` |
| `setUserToken(value)` | Save auth token | `void` |
| `getUserType()` | Get user type (star/brand) | `UserTypeEnum?` |
| `setUserType(type)` | Save user type | `void` |
| `getLanguage()` | Get selected language | `String?` |
| `setLanguage(value)` | Save language | `void` |
| `getCurrency()` | Get selected currency | `String?` |
| `setCurrency(value)` | Save currency | `void` |
| `getAccounts()` | Get linked accounts | `String?` |
| `setAccounts(value)` | Save linked accounts | `void` |
| `clear()` | Clear all preferences | `void` |

#### **Usage:**

```dart
// Save user data
PrefHelper.setUserToken('abc123xyz');
PrefHelper.setUserType(UserTypeEnum.brand);
PrefHelper.setLanguage('ar');

// Retrieve data
String? token = PrefHelper.getUserToken();
UserTypeEnum? userType = PrefHelper.getUserType();
String? lang = PrefHelper.getLanguage();

// Check user type
if (PrefHelper.getUserType() == UserTypeEnum.star) {
  // Star user logic
} else {
  // Brand user logic
}

// Clear on logout
PrefHelper.clear();
```

---

### **23. storage_helper.dart**

**Purpose:** Additional storage utilities.

**Location:** `lib/core/helpers/storage_helper.dart`

**Functions:** Advanced storage operations.

---

## 🔧 **Dependency Injection**

### **24. di.dart**

**Purpose:** Dependency injection setup with GetIt.

**Location:** `lib/core/helpers/di.dart`

#### **Code:**

```dart
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
```

#### **Usage:**

```dart
// In main.dart
await configureDependencies();

// Access services
final repository = getIt<MyRepository>();
final helper = getIt<Utilities>();
final service = getIt<AppFileService>();
```

---

### **25. di.config.dart**

**Purpose:** Auto-generated dependency injection configuration.

**Location:** `lib/core/helpers/di.config.dart`

**Note:** This file is auto-generated by `build_runner`. Never edit manually.

---

## 💬 **Chat & Streaming**

### **26. get_streem_chat_helper.dart**

**Purpose:** Stream Chat integration for stars.

**Location:** `lib/core/helpers/get_streem_chat_helper.dart`

**Functions:** Initialize and manage Stream Chat.

---

### **27. brand_get_streem_chat_helper.dart**

**Purpose:** Stream Chat integration for brands.

**Location:** `lib/core/helpers/brand_get_streem_chat_helper.dart`

**Functions:** Initialize and manage Stream Chat for brands.

---

### **28. recording_sound_helper.dart**

**Purpose:** Audio recording utilities.

**Location:** `lib/core/helpers/recording_sound_helper.dart`

**Functions:** Record, play, and manage audio.

---

### **29. video_playback_manager.dart**

**Purpose:** Manage video playback state.

**Location:** `lib/core/helpers/video_playback_manager.dart`

**Functions:** Control video player instances.

---

## 🔥 **Firebase Integration**

### **30. firebase_analytics_helper.dart**

**Purpose:** Firebase Analytics tracking.

**Location:** `lib/core/helpers/firebase_analytics_helper.dart`

**Functions:** Log events, set user properties.

---

### **31. remote_config_helper.dart**

**Purpose:** Firebase Remote Config.

**Location:** `lib/core/helpers/remote_config_helper.dart`

**Functions:** Fetch and apply remote configurations.

---

### **32. global_notification.dart**

**Purpose:** Firebase Cloud Messaging / Push notifications.

**Location:** `lib/core/helpers/global_notification.dart`

**Functions:** Handle push notifications.

---

## 🔐 **Security & Encryption**

### **33. aes_service.dart**

**Purpose:** AES encryption/decryption.

**Location:** `lib/core/helpers/aes_service.dart`

**Functions:** Encrypt and decrypt sensitive data.

---

## 🧭 **Navigation & Routing**

### **34. app_navigator_observer.dart**

**Purpose:** Observe navigation events.

**Location:** `lib/core/helpers/app_navigator_observer.dart`

**Functions:** Track route changes for analytics.

---

## 🧩 **Additional Helpers**

### **35. user_services_helper.dart**

**Purpose:** User-related operations (logout, delete account, etc.).

**Location:** `lib/core/helpers/user_services_helper.dart`

**Functions:** User management utilities.

---

### **36. debouncer.dart**

**Purpose:** Debounce function calls.

**Location:** `lib/core/helpers/debouncer.dart`

#### **Usage:**

```dart
final debouncer = Debouncer(milliseconds: 500);

void onSearchChanged(String query) {
  debouncer.run(() {
    // This runs 500ms after user stops typing
    performSearch(query);
  });
}
```

---

### **37. request_cancel_token_manager.dart**

**Purpose:** Manage Dio request cancellation tokens.

**Location:** `lib/core/helpers/request_cancel_token_manager.dart`

**Functions:** Create and manage cancel tokens for API requests.

---

### **38. smart_button.dart**

**Purpose:** Smart button with loading states.

**Location:** `lib/core/helpers/smart_button.dart`

**Functions:** Button with automatic loading management.

---

### **39. localization_rich_text_helper.dart**

**Purpose:** Handle rich text with localization.

**Location:** `lib/core/helpers/localization_rich_text_helper.dart`

**Functions:** Format localized rich text.

---

### **40. general_providers.dart**

**Purpose:** General app providers.

**Location:** `lib/core/helpers/general_providers.dart`

**Functions:** Provide common app-wide data.

---

## 📖 **Common Usage Patterns**

### **Pattern 1: Form Validation**

```dart
class LoginForm extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void submit() {
    if (formKey.currentState?.validate() == true) {
      // Form is valid
      login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            label: 'Email',
            validate: (value) => value?.validateEmail(),
          ),
          GenericTextField(
            controller: passwordController,
            fieldTypes: FieldTypes.password,
            type: TextInputType.visiblePassword,
            action: TextInputAction.done,
            label: 'Password',
            validate: (value) => value?.validatePassword(),
          ),
          AppTextButton.maxPrimary(
            text: 'Login',
            onPressed: submit,
          ),
        ],
      ),
    );
  }
}
```

---

### **Pattern 2: File Upload with Progress**

```dart
Future<void> uploadFile(File file) async {
  // Show loading
  ObsValue<int> uploadProgress = ObsValue.withInit(0);
  getIt<LoadingHelper>().showLoadingDialog(loadingPercent: uploadProgress);

  try {
    // Upload file (progress updated automatically)
    await repository.uploadFile(file);
    
    // Hide loading
    getIt<LoadingHelper>().dismissDialog();
    
    // Show success
    AppSnackBar.showSuccessSnackBar('File uploaded successfully');
  } catch (e) {
    getIt<LoadingHelper>().dismissDialog();
    AppSnackBar.showErrorSnackBar(
      error: CustomError(msg: 'Upload failed'),
    );
  }
}
```

---

### **Pattern 3: Image Picker with Validation**

```dart
final ObsValue<File?> selectedImageObs = ObsValue.withInit(null);

Future<void> pickProfileImage() async {
  await getIt<Utilities>().pickImageWithValidation(
    context,
    selectedImageObs,
    isCustom: true,
    imagePixWidth: 500,
    imagePixHeight: 500,
    onPickImageConfirm: () {
      // Image validated and selected
      uploadProfileImage(selectedImageObs.getValue()!);
    },
  );
}
```

---

### **Pattern 4: Permission Request**

```dart
Future<void> requestCameraPermission() async {
  bool granted = await getIt<PermissionServices>().requestPermission(
    Permission.camera,
    context,
  );

  if (granted) {
    // Open camera
    File? image = await getIt<Utilities>().getCameraImage(context);
    if (image != null) {
      // Use image
    }
  } else {
    AppSnackBar.showWarningSnackBar(
      message: 'Camera permission is required',
    );
    // Optionally open settings
    await getIt<PermissionServices>().openAppSettings();
  }
}
```

---

### **Pattern 5: Language Change**

```dart
Future<void> changeAppLanguage(String languageCode) async {
  await getIt<Utilities>().changeLanguage(languageCode, context);
  
  // Save to preferences
  PrefHelper.setLanguage(languageCode);
  
  // Show success
  AppSnackBar.showSuccessSnackBar('Language changed to $languageCode');
}
```

---

### **Pattern 6: Share Content**

```dart
void shareProfile() {
  String shareUrl = 'https://app.example.com/profile/${userId}';
  getIt<Utilities>().onShare(url: shareUrl);
}
```

---

### **Pattern 7: Format Numbers**

```dart
Widget buildFollowersCount(int followers) {
  String formatted = getIt<Utilities>().formatNumber(followers);
  return Text('$formatted followers');
}

// Examples:
// 500 → "500"
// 1,500 → "1.5K"
// 125,000 → "125K"
// 2,500,000 → "2.5M"
```

---

### **Pattern 8: Copy to Clipboard**

```dart
void copyProfileLink() {
  String profileUrl = 'https://app.example.com/profile/${userId}';
  getIt<Utilities>().copyToClipBoard(context, profileUrl);
  // Automatically shows "Copied" toast
}
```

---

### **Pattern 9: Launch External Links**

```dart
// Open website
void openWebsite() {
  getIt<Utilities>().launchUrlLauncher(url: 'https://example.com');
}

// Call phone
void callSupport() {
  getIt<Utilities>().callNumber(number: '+966501234567');
}

// Send email
void contactSupport() {
  getIt<Utilities>().sendAnEmail('support@example.com');
}

// Open WhatsApp
void chatOnWhatsApp() {
  getIt<Utilities>().goWhatsapp('+966501234567');
}
```

---

### **Pattern 10: Persistent Storage**

```dart
// Save on login
void onLoginSuccess(String token, UserTypeEnum type, UserData user) {
  PrefHelper.setUserToken(token);
  PrefHelper.setUserType(type);
  PrefHelper.setUserData(jsonEncode(user.toJson()));
  GlobalState.instance.set('token', token);
}

// Load on app start
void loadUserData() {
  String? token = PrefHelper.getUserToken();
  UserTypeEnum? type = PrefHelper.getUserType();
  String? userData = PrefHelper.getUserData();
  
  if (token != null && userData != null) {
    // User is logged in
    GlobalState.instance.set('token', token);
    navigateToHome();
  } else {
    navigateToLogin();
  }
}

// Clear on logout
void logout() {
  PrefHelper.clear();
  GlobalState.instance.set('token', null);
  navigateToLogin();
}
```

---

## 🎯 **Quick Reference Table**

| Need | Helper | Function |
|------|--------|----------|
| Validate email | `validator.dart` | `value?.validateEmail()` |
| Validate phone | `validator.dart` | `value?.validatePhone()` |
| Validate password | `validator.dart` | `value?.validatePassword()` |
| Pick image | `utilities.dart` | `getImageFile(context)` |
| Pick file | `file_service.dart` | `pickFile(context)` |
| Show loading | `loading_helper.dart` | `showLoadingDialog()` |
| Show success | `app_snack_bar_service.dart` | `showSuccessSnackBar(msg)` |
| Show error | `app_snack_bar_service.dart` | `showErrorSnackBar(error)` |
| Format number | `utilities.dart` | `formatNumber(number)` |
| Copy to clipboard | `utilities.dart` | `copyToClipBoard(context, text)` |
| Launch URL | `utilities.dart` | `launchUrlLauncher(url: url)` |
| Save token | `pref_helper.dart` | `setUserToken(token)` |
| Get token | `pref_helper.dart` | `getUserToken()` |
| Store temporary data | `global_state.dart` | `GlobalState.instance.set(key, value)` |
| Get current date | `date_helper.dart` | `nowAtCurrentTimeZone()` |
| Request permission | `psermission_services.dart` | `requestPermission(permission, context)` |
| Change language | `utilities.dart` | `changeLanguage(lang, context)` |
| Share content | `utilities.dart` | `onShare(url: url)` |

---

## ✅ **Best Practices**

### **1. Always Use Helpers Instead of Direct Implementation**

```dart
// ❌ WRONG
TextEditingController controller;
String? validate(String? value) {
  if (value?.isEmpty == true) return 'Required';
  if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
    return 'Invalid email';
  }
  return null;
}

// ✅ CORRECT
validate: (value) => value?.validateEmail()
```

---

### **2. Use GetIt for Accessing Helpers**

```dart
// ✅ CORRECT
getIt<Utilities>().formatNumber(1000);
getIt<LoadingHelper>().showLoadingDialog();
getIt<AppFileService>().pickFile(context);
```

---

### **3. Handle Errors Properly**

```dart
// ✅ CORRECT
try {
  await performAction();
  AppSnackBar.showSuccessSnackBar('Success!');
} catch (e) {
  AppSnackBar.showErrorSnackBar(
    error: CustomError(msg: e.toString()),
  );
}
```

---

### **4. Always Dismiss Loading**

```dart
// ✅ CORRECT
getIt<LoadingHelper>().showLoadingDialog();
try {
  await performAction();
} finally {
  getIt<LoadingHelper>().dismissDialog();
}
```

---

### **5. Use Appropriate Storage**

```dart
// ✅ Persistent data (survives app restart)
PrefHelper.setUserToken(token);

// ✅ Temporary data (lost on app restart)
GlobalState.instance.set('currentPage', 1);
```

---

## 📝 **Summary**

### **Helper Categories**

✅ **Validation (1)**: Input validation extensions
✅ **Utilities (4)**: General utilities for common tasks
✅ **State Management (2)**: Global state and context
✅ **UI & Messaging (2)**: Snackbars, toasts, loading
✅ **File & Media (4)**: File picking, image handling
✅ **Date & Time (3)**: Date formatting and pickers
✅ **Network (5)**: Links, sharing, location, sockets
✅ **Permissions (1)**: Permission management
✅ **Storage (2)**: Persistent and temporary storage
✅ **DI (2)**: Dependency injection setup
✅ **Chat (4)**: Streaming, recording, video
✅ **Firebase (3)**: Analytics, notifications, remote config
✅ **Security (1)**: Encryption/decryption
✅ **Navigation (1)**: Route observation
✅ **Additional (6)**: User services, debouncing, etc.

### **Total: 40+ Helper Files**

---

**This reference guide ensures efficient use of all helper utilities in the Nojom application!** 🚀

