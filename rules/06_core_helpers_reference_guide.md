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
11. [Core Services Integration](#core-services-integration)
12. [Navigation & Routing](#navigation--routing)

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

---

## 🔧 **Utilities**

### **2. phone_helper.dart**

**Purpose:** Handle phone number formatting and validation.

**Location:** `lib/core/helpers/phone_helper.dart`

**Functions:** Phone number utilities and formatting.

---

### **3. color_helper.dart**

**Purpose:** Color manipulation utilities.

**Location:** `lib/core/helpers/color_helper.dart`

**Functions:** Color conversion and manipulation.

---

## 🎯 **State Management**

### **4. global_state.dart**

**Purpose:** Global in-memory key-value storage for app state.

**Location:** `lib/core/helpers/global_state.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `set(key, value)` | Store value in memory | `void` |
| `get(key)` | Retrieve value from memory | `dynamic` |

#### **Usage:**

```dart
// Store data
GlobalState.set('user_id', '12345');
GlobalState.set('is_logged_in', true);

// Retrieve data
String? userId = GlobalState.get('user_id');
bool? isLoggedIn = GlobalState.get('is_logged_in');

// Use in widgets
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userId = GlobalState.get('user_id');
    return Text('User ID: $userId');
  }
}
```

---

### **5. global_context.dart**

**Purpose:** Provides global access to BuildContext.

**Location:** `lib/core/helpers/global_context.dart`

#### **Usage:**

```dart
// Set global context (usually in main.dart)
GlobalContext.setContext(context);

// Access anywhere in the app
final context = GlobalContext.context;
if (context != null) {
  Navigator.of(context).pushNamed('/home');
}
```

---

## 💬 **UI & Messaging**

### **6. app_snack_bar_service.dart**

**Purpose:** Centralized snackbar and toast management.

**Location:** `lib/core/helpers/app_snack_bar_service.dart`

#### **Functions:**

| Function | Purpose | Parameters |
|----------|---------|------------|
| `showSuccessSnackBar({title, message})` | Show success message | `title`, `message` |
| `showErrorSnackBar({title, message, error})` | Show error message | `title`, `message`, `error` |
| `showWarningSnackBar({title, message})` | Show warning message | `title`, `message` |
| `showToast({message, duration})` | Show toast notification | `message`, `duration` |
| `showUndoSnackBar({title, message, onUndo})` | Show undo action | `title`, `message`, `onUndo` |
| `removeTopToast()` | Remove active toast | none |

#### **Usage Examples:**

```dart
// Success message
AppSnackBar.showSuccessSnackBar(
  title: 'Success',
  message: 'Profile updated successfully',
);

// Error message
AppSnackBar.showErrorSnackBar(
  title: 'Error',
  message: 'Failed to update profile',
  error: 'Network error',
);

// Warning message
AppSnackBar.showWarningSnackBar(
  title: 'Warning',
  message: 'Please check your input',
);

// Toast notification
AppSnackBar.showToast(
  message: 'Copied to clipboard',
  duration: Duration(seconds: 2),
);

// Undo action
AppSnackBar.showUndoSnackBar(
  title: 'Item deleted',
  message: 'Tap to undo',
  onUndo: () {
    // Restore the deleted item
    restoreItem();
  },
);

// Remove active toast
AppSnackBar.removeTopToast();
```

---

### **7. loading_helper.dart**

**Purpose:** Manage loading dialogs and indicators.

**Location:** `lib/core/helpers/loading_helper.dart`

#### **Functions:**

| Function | Purpose | Parameters |
|----------|---------|------------|
| `showLoading({message})` | Show loading dialog | `message` |
| `dismissLoading()` | Hide loading dialog | none |
| `isShowObs` | Observable for loading state | `ObsValue<bool>` |

#### **Usage:**

```dart
// Show loading
LoadingHelper.showLoading(message: 'Please wait...');

// Dismiss loading
LoadingHelper.dismissLoading();

// Check loading state
ObsValueConsumer(
  observable: LoadingHelper.isShowObs,
  builder: (context, isLoading) {
    return isLoading ? CircularProgressIndicator() : Container();
  },
)

// In API calls
Future<void> fetchData() async {
  LoadingHelper.showLoading(message: 'Loading data...');
  
  try {
    final data = await api.getData();
    // Handle success
  } catch (e) {
    // Handle error
  } finally {
    LoadingHelper.dismissLoading();
  }
}
```

---

## 📁 **File & Media Services**

### **8. file_service.dart**

**Purpose:** File picking, image selection, and media handling.

**Location:** `lib/core/helpers/file_service.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `pickImage({source})` | Pick image from gallery/camera | `Future<File?>` |
| `pickMultipleImages()` | Pick multiple images | `Future<List<File>>` |
| `pickFile({allowedExtensions})` | Pick any file | `Future<File?>` |
| `deleteFile(file)` | Delete file from device | `Future<void>` |

#### **Usage:**

```dart
// Pick single image
final imageFile = await FileService.pickImage(source: ImageSource.gallery);

// Pick multiple images
final imageFiles = await FileService.pickMultipleImages();

// Pick document
final documentFile = await FileService.pickFile(
  allowedExtensions: ['pdf', 'doc', 'docx'],
);

// Delete file
if (imageFile != null) {
  await FileService.deleteFile(imageFile);
}
```

---

### **9. download_service.dart**

**Purpose:** Download files from URLs.

**Location:** `lib/core/helpers/download_service.dart`

**Functions:** Download files with progress tracking.

---

### **10. local_images_cache.dart**

**Purpose:** Cache images locally.

**Location:** `lib/core/helpers/local_images_cache.dart`

**Functions:** Image caching and retrieval.

---

## 📅 **Date & Time**

### **11. date_helper.dart**

**Purpose:** Date/time utilities.

**Location:** `lib/core/helpers/date_helper.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `nowAtCurrentTimeZone()` | Get current date/time in local timezone | `DateTime` |

#### **Usage:**

```dart
// Get current time
final now = DateHelper.nowAtCurrentTimeZone();
print('Current time: $now');
```

---

### **12. date_formatter.dart**

**Purpose:** Advanced date formatting.

**Location:** `lib/core/helpers/date_formatter.dart`

**Functions:** Format dates for display.

---

### **13. adaptive_picker.dart**

**Purpose:** Platform-adaptive date/time pickers.

**Location:** `lib/core/helpers/adaptive_picker.dart`

**Functions:** Show iOS/Android appropriate pickers.

---

## 🌐 **Network & External Services**

### **14. share_services.dart**

**Purpose:** Share content to other apps.

**Location:** `lib/core/helpers/share_services.dart`

**Functions:** Share text, files, URLs.

---

## 🔐 **Permissions**

### **15. psermission_services.dart**

**Purpose:** Handle app permissions.

**Location:** `lib/core/helpers/psermission_services.dart`

#### **Functions:**

| Function | Purpose | Returns |
|----------|---------|---------|
| `requestPermission(permission)` | Request specific permission | `Future<bool>` |
| `checkPermission(permission)` | Check permission status | `Future<bool>` |
| `openAppSettings()` | Open app settings | `Future<void>` |

#### **Usage:**

```dart
// Request camera permission
final hasPermission = await PermissionServices.requestPermission(
  Permission.camera,
);

if (hasPermission) {
  // Use camera
} else {
  // Show permission denied message
}

// Check permission status
final isGranted = await PermissionServices.checkPermission(
  Permission.location,
);

// Open app settings
await PermissionServices.openAppSettings();
```

---

## 💾 **Storage & Preferences**

### **16. storage_helper.dart**

**Purpose:** Additional storage utilities.

**Location:** `lib/core/helpers/storage_helper.dart`

**Functions:** Extended storage operations.

---

## 🔧 **Dependency Injection**

### **17. di.dart**

**Purpose:** Dependency injection setup with GetIt.

**Location:** `lib/core/helpers/di.dart`

#### **Code:**

```dart
final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();
}
```

#### **Usage:**

```dart
// Register dependencies
getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());

// Access dependencies
final authRepo = getIt<AuthRepository>();
```

---

### **18. di.config.dart**

**Purpose:** Auto-generated dependency injection configuration.

**Location:** `lib/core/helpers/di.config.dart`

**Note:** This file is auto-generated. Do not edit manually.

---

## 🔥 **Core Services Integration**

### **19. analytics_helper.dart**

**Purpose:** Analytics tracking.

**Location:** `lib/core/helpers/analytics_helper.dart`

**Functions:** Track user events and analytics.

---

### **20. global_notification.dart**

**Purpose:** Push notifications / Local notifications.

**Location:** `lib/core/helpers/global_notification.dart`

**Functions:** Handle push notifications and FCM.

---

## 🧭 **Navigation & Routing**

### **21. app_navigator_observer.dart**

**Purpose:** Observe navigation events.

**Location:** `lib/core/helpers/app_navigator_observer.dart`

**Functions:** Track navigation changes and analytics.

---

## 🧩 **Additional Helpers**

### **22. recording_sound_helper.dart**

**Purpose:** Audio recording utilities.

**Location:** `lib/core/helpers/recording_sound_helper.dart`

**Functions:** Record and manage audio files.

---

### **23. localization_rich_text_helper.dart**

**Purpose:** Handle rich text with localization.

**Location:** `lib/core/helpers/localization_rich_text_helper.dart`

**Functions:** Rich text formatting with translations.

---

### **24. general_providers.dart**

**Purpose:** General app providers.

**Location:** `lib/core/helpers/general_providers.dart`

**Functions:** Global BlocProviders configuration.

---

## 📖 **Common Usage Patterns**

### **Pattern 1: Form Validation**

```dart
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: _emailController,
            label: 'Email',
            validate: (value) => value?.validateEmail(),
          ),
          GenericTextField(
            controller: _passwordController,
            label: 'Password',
            obscureText: true,
            validate: (value) => value?.validatePassword(),
          ),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with login
      _performLogin();
    }
  }

  void _performLogin() async {
    LoadingHelper.showLoading(message: 'Logging in...');
    
    try {
      // Perform login
      await authService.login(
        _emailController.text,
        _passwordController.text,
      );
      
      AppSnackBar.showSuccessSnackBar(
        title: 'Success',
        message: 'Login successful',
      );
    } catch (e) {
      AppSnackBar.showErrorSnackBar(
        title: 'Error',
        message: 'Login failed',
        error: e.toString(),
      );
    } finally {
      LoadingHelper.dismissLoading();
    }
  }
}
```

---

### **Pattern 2: File Upload with Progress**

```dart
Future<void> uploadFile(File file) async {
  LoadingHelper.showLoading(message: 'Uploading file...');
  
  try {
    final result = await FileService.uploadFile(
      file,
      onProgress: (progress) {
        // Update progress if needed
        print('Upload progress: ${progress * 100}%');
      },
    );
    
    AppSnackBar.showSuccessSnackBar(
      title: 'Success',
      message: 'File uploaded successfully',
    );
  } catch (e) {
    AppSnackBar.showErrorSnackBar(
      title: 'Error',
      message: 'Failed to upload file',
      error: e.toString(),
    );
  } finally {
    LoadingHelper.dismissLoading();
  }
}
```

---

### **Pattern 3: Permission Request**

```dart
Future<void> requestCameraPermission() async {
  final hasPermission = await PermissionServices.requestPermission(
    Permission.camera,
  );
  
  if (hasPermission) {
    // Permission granted, proceed
    _openCamera();
  } else {
    // Permission denied
    AppSnackBar.showWarningSnackBar(
      title: 'Permission Required',
      message: 'Camera permission is needed to take photos',
    );
    
    // Optionally open settings
    await PermissionServices.openAppSettings();
  }
}
```

---

### **Pattern 4: Share Content**

```dart
Future<void> shareContent(String text, {File? file}) async {
  try {
    if (file != null) {
      await ShareServices.shareFile(file, text: text);
    } else {
      await ShareServices.shareText(text);
    }
    
    AppSnackBar.showSuccessSnackBar(
      title: 'Shared',
      message: 'Content shared successfully',
    );
  } catch (e) {
    AppSnackBar.showErrorSnackBar(
      title: 'Error',
      message: 'Failed to share content',
      error: e.toString(),
    );
  }
}
```

---

### **Pattern 5: Persistent Storage**

```dart
class UserPreferences {
  static const String _keyUserId = 'user_id';
  static const String _keyIsLoggedIn = 'is_logged_in';
  
  // Save user data
  static Future<void> saveUserData(String userId, bool isLoggedIn) async {
    await PrefHelper.setString(_keyUserId, userId);
    await PrefHelper.setBool(_keyIsLoggedIn, isLoggedIn);
  }
  
  // Get user data
  static Future<Map<String, dynamic>> getUserData() async {
    final userId = await PrefHelper.getString(_keyUserId);
    final isLoggedIn = await PrefHelper.getBool(_keyIsLoggedIn);
    
    return {
      'userId': userId,
      'isLoggedIn': isLoggedIn ?? false,
    };
  }
  
  // Clear user data
  static Future<void> clearUserData() async {
    await PrefHelper.remove(_keyUserId);
    await PrefHelper.remove(_keyIsLoggedIn);
  }
}
```

---

## ✅ **Best Practices**

### **1. Always Use Helpers Instead of Direct Implementation**

```dart
// ❌ Don't do this
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('Success')),
);

// ✅ Do this instead
AppSnackBar.showSuccessSnackBar(
  title: 'Success',
  message: 'Operation completed',
);
```

---

### **2. Use GetIt for Accessing Helpers**

```dart
// ❌ Don't create instances manually
final fileService = FileService();

// ✅ Use dependency injection
final fileService = getIt<FileService>();
```

---

### **3. Handle Errors Properly**

```dart
Future<void> performAction() async {
  LoadingHelper.showLoading();
  
  try {
    await riskyOperation();
    AppSnackBar.showSuccessSnackBar(
      title: 'Success',
      message: 'Action completed',
    );
  } catch (e) {
    AppSnackBar.showErrorSnackBar(
      title: 'Error',
      message: 'Action failed',
      error: e.toString(),
    );
  } finally {
    LoadingHelper.dismissLoading();
  }
}
```

---

### **4. Always Dismiss Loading**

```dart
// ❌ Don't forget to dismiss loading
LoadingHelper.showLoading();
await apiCall();
// Loading stays forever!

// ✅ Always dismiss in finally block
LoadingHelper.showLoading();
try {
  await apiCall();
} finally {
  LoadingHelper.dismissLoading();
}
```

---

### **5. Use Appropriate Storage**

```dart
// For temporary data (app session)
GlobalState.set('temp_data', value);

// For persistent data (user preferences)
await PrefHelper.setString('user_name', name);

// For sensitive data (use secure storage)
await SecureStorage.setString('token', authToken);
```

---

## 📝 **Summary**

### **Helper Categories**

✅ **Validation (1)**: Input validation extensions  
✅ **Utilities (2)**: Phone, color helpers  
✅ **State Management (2)**: Global state, context  
✅ **UI & Messaging (2)**: SnackBar, loading  
✅ **File & Media (3)**: File service, download, cache  
✅ **Date & Time (3)**: Date helpers, formatters, pickers  
✅ **Network (1)**: Share services  
✅ **Permissions (1)**: Permission handling  
✅ **Storage (1)**: Storage utilities  
✅ **Dependency Injection (2)**: DI setup and config  
✅ **Core Services (2)**: Analytics, notifications  
✅ **Navigation (1)**: Navigator observer  
✅ **Additional (3)**: Recording, localization, providers  

### **Total: 24 Helper Files**

---

**Last Updated:** October 27, 2025  
**Status:** ✅ Cleaned up and accurate to current codebase