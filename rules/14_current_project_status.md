# 📊 Current Project Status & Configuration

Quick reference for the current state of the Nojom brand app after recent refactoring.

---

## 📁 **Current Features**

### **✅ Active Features**

```
lib/features/
└── auth/                    # Authentication feature
    ├── data/
    │   ├── data_source/
    │   │   ├── auth_data_source.dart
    │   │   └── impl_auth_data_source.dart
    │   └── repositories/
    │       └── impl_auth_repository.dart
    ├── domain/
    │   ├── entity/
    │   │   └── login_params.dart
    │   └── repositories/
    │       └── auth_repository.dart
    └── presentation/
        ├── pages/
        │   ├── splash/
        │   │   ├── splash_imports.dart
        │   │   ├── splash_page.dart
        │   │   └── splash_controller.dart
        │   └── login/
        │       ├── login_imports.dart
        │       ├── login_page.dart
        │       └── login_controller.dart
        └── manager/
            └── routes/
                └── auth_routes.dart
```

---

## 🎨 **UI Components**

### **Pages Implemented**

1. **Splash Page**
   - Animated Nojom logo
   - Fade-in and scale animations
   - Auto-navigates to login after 3 seconds
   - Status bar: dark icons on light background

2. **Login Page**
   - Modern bottom sheet design
   - Phone number input with country code selector
   - Saudi Arabia (+966) default
   - Real-time validation
   - Error states with visual feedback
   - LoadingButton with Cupertino loading indicator
   - Terms and conditions link
   - Status bar: dark icons on light background

---

## 🔧 **Global Configuration**

### **State Management**

**Global Providers** (`lib/core/helpers/general_providers.dart`):
```dart
List<BlocProvider> providers(BuildContext context) => [
  BlocProvider<DeviceCubit>(
    create: (BuildContext context) => DeviceCubit(),
  ),
];
```

**Current Global State:**
- ✅ `DeviceCubit` only
- ❌ No AuthCubit (removed)
- ❌ No UserCubit (removed)  
- ❌ No ProfileCubit (removed)

---

## 🎨 **Theme & Assets**

### **Fonts**
Currently **disabled** in `pubspec.yaml`:
- ❌ SaudiRiyalFont.ttf
- ❌ SFProEn family
- ❌ SFArabic

**Status:** Using system default fonts. Custom fonts commented out until files are added to `assets/fonts/`.

### **Images**
- ✅ 670+ image assets available
- ✅ Accessed via `Res.dart`
- ✅ SVG and PNG formats

**Key Assets:**
- `Res.nojomLogo` - Main Nojom logo
- `Res.nojomSlogan` - Nojom slogan
- `Res.nojomIcon` - App icon

---

## 🌐 **Localization**

### **Supported Languages**
- ✅ English (en)
- ✅ Arabic (ar) with RTL support

### **New Strings Added**
```dart
// English
login_or_create_account
sign_up_with_phone_number
sign_in_or_create_account_now
phone_number
please_enter_valid_phone_number
by_clicking_continue_you_agree_to
terms_and_conditions_and_privacy_policy
keep_going

// Arabic equivalents also added
```

---

## 🛣️ **Routing**

### **Current Routes**

**File:** `lib/core/routes/router.dart`

```dart
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    ...authRoutes,  // Splash (initial) + Login
  ];
}
```

**Auth Routes** (`lib/features/auth/presentation/manager/routes/auth_routes.dart`):
```dart
List<AutoRoute> authRoutes = [
  AutoRoute(
    page: SplashRoute.page,
    initial: true,            // App starts here
  ),
  AutoRoute(
    page: LoginRoute.page,
  ),
];
```

---

## 📦 **Dependencies Status**

### **Core Dependencies**
- ✅ `flutter_bloc` - State management
- ✅ `get_it` - Dependency injection
- ✅ `injectable` - DI annotations
- ✅ `auto_route` - Routing
- ✅ `freezed` - Immutable models
- ✅ `dio` - HTTP client

### **UI Dependencies**
- ✅ `flutter_svg` - SVG support
- ✅ `cached_network_image` - Image caching
- ✅ `flutter_screenutil` - Responsive design
- ✅ `adaptive_theme` - Theme management
- ✅ `flutter_easyloading` - Loading dialogs
- ✅ `fluttertoast` - Toast messages

### **Firebase**
- ✅ `firebase_core`
- ✅ `firebase_messaging`
- ✅ `firebase_crashlytics`

---

## ⚙️ **Build Configuration**

### **Build Commands**

**Generate Routes & DI:**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Run on iOS Simulator:**
```bash
flutter run -d "iPhone 16 Pro Max"
```

**Run on Physical iPhone:**
```bash
flutter run -d "tarek's iPhone (3)"
```

**Analyze Code:**
```bash
flutter analyze lib/features/auth
```

---

## 🚨 **Known Issues**

### **Resolved**
- ✅ Missing font files - Commented out in pubspec.yaml
- ✅ Status bar icons color - Set to dark/black
- ✅ LoadingHelper usage - Updated to use DI
- ✅ AppSnackBar usage - Fixed method signatures
- ✅ Page structure - Using part of pattern with separate controller files

### **Active TODOs**
- [ ] Implement OTP verification page
- [ ] Add country code picker functionality
- [ ] Implement navigation after successful login
- [ ] Add authentication token storage
- [ ] Connect to actual backend API

---

## 📋 **Architecture Patterns Used**

### **Clean Architecture**
- ✅ **Data Layer**: Repositories, data sources
- ✅ **Domain Layer**: Entities, repository interfaces
- ✅ **Presentation Layer**: Pages, controllers, widgets

### **State Management**
- ✅ **BaseBloc**: For complex states (login flow)
- ✅ **ObsValue**: For simple reactive states (loading, errors, country code)

### **Dependency Injection**
- ✅ `@Injectable` for repository implementations
- ✅ `getIt` for accessing dependencies
- ✅ `configureDependencies()` in main.dart

### **File Organization**
- ✅ **Imports File**: `{page}_imports.dart` with all imports
- ✅ **Page File**: `{page}_page.dart` (part of imports)
- ✅ **Controller File**: `{page}_controller.dart` (part of imports)
- ✅ **Widgets**: Built as methods (`_buildHeader()`) in page state

---

## 🎯 **Next Steps for Development**

### **Immediate Tasks**
1. ✅ Auth feature structure - **DONE**
2. ✅ Splash page with animation - **DONE**
3. ✅ Login page with phone input - **DONE**
4. ✅ Routes and navigation - **DONE**
5. ✅ Localization (EN/AR) - **DONE**

### **Coming Next**
1. OTP verification screen
2. Home/dashboard screen
3. Profile management
4. Additional features as needed

---

## 🔍 **Quick Commands**

```bash
# Check current structure
ls -la lib/features/

# Run build runner
flutter pub run build_runner build --delete-conflicting-outputs

# Check for issues
flutter analyze

# Run app
flutter run -d "iPhone 16 Pro Max"

# Clean build
flutter clean && flutter pub get

# Check outdated packages
flutter pub outdated
```

---

## 📚 **Updated Documentation**

### **New Guides Added**
- ✅ **Guide 13**: Loading & SnackBar Services Guide

### **Updated Guides**
- ✅ **Guide 01**: Project structure updated with current auth example
- ✅ **Guide 07**: Global providers updated (removed old cubits)
- ✅ **Guide 08**: State management updated (simplified global state)

---

## 💡 **Key Differences from Previous Version**

### **Removed**
- ❌ Old auth feature (with multiple pages and cubits)
- ❌ Base feature entirely
- ❌ AuthCubit, UserCubit, ProfileCubit
- ❌ Separate widget files for simple UIs
- ❌ Custom fonts configuration

### **Simplified**
- ✅ Single auth feature with 2 pages only
- ✅ Controllers as separate files in page folders
- ✅ Widgets as methods in page state
- ✅ Minimal global state (DeviceCubit only)

### **Added**
- ✅ Proper `part of` pattern implementation
- ✅ Status bar icon color configuration
- ✅ Modern bottom sheet login design
- ✅ Comprehensive LoadingHelper and AppSnackBar documentation

---

**Last Updated:** October 27, 2025  
**Version:** 3.0 - Simplified Architecture  
**Status:** ✅ Clean, minimal, ready for growth

