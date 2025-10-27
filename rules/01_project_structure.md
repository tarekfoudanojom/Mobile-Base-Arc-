# 📁 Project Structure Guide

This document provides a comprehensive overview of the Nojom Flutter application's project structure, folder organization, and architectural patterns.

---

## 🏗️ **Root Directory Structure**

```
nojom_star/
├── android/                    # Android native configuration
├── ios/                        # iOS native configuration
├── macos/                      # macOS native configuration
├── linux/                      # Linux native configuration
├── windows/                    # Windows native configuration
├── web/                        # Web configuration
├── assets/                     # Application assets (images, fonts, icons)
├── lib/                        # Main application code (Dart/Flutter)
├── test/                       # Unit and widget tests
├── build/                      # Build artifacts (auto-generated)
├── rules/                      # Project documentation and rules
├── pubspec.yaml               # Project dependencies and configuration
├── pubspec.lock               # Locked dependency versions
├── analysis_options.yaml      # Linter and analyzer configuration
└── README.md                  # Project overview
```

---

## 📱 **lib/ Directory Structure**

### **High-Level Organization**

```
lib/
├── main.dart                  # Application entry point
├── my_app.dart               # MyApp widget configuration
├── res.dart                  # Resource imports (auto-generated)
├── brand_res.dart            # Brand-specific resources (auto-generated)
├── core/                     # Core modules and shared utilities
├── features/                 # Feature-based modules
├── generated/                # Auto-generated code
├── l10n/                     # Localization files
└── env/                      # Environment configurations
```

---

## 🎯 **Core Directory Structure**

The `core/` directory contains all shared utilities, widgets, and configurations used across features.

```
lib/core/
├── api/                      # API client configuration
│   ├── base_api.dart        # Base API class
│   ├── api_config.dart      # API endpoints and configuration
│   └── interceptors/        # HTTP interceptors
│
├── constants/                # Application constants
│   ├── app_config.dart      # App configuration values
│   ├── dimens.dart          # Spacing and dimension constants
│   ├── gaps.dart            # Spacing widgets
│   └── assets.dart          # Asset path constants
│
├── di/                       # Dependency Injection
│   ├── injection.dart       # GetIt configuration
│   └── injection.config.dart # Auto-generated DI config
│
├── enums/                    # Global enumerations
│   ├── field_types.dart     # Input field types
│   ├── status_enum.dart     # Status types
│   └── ...
│
├── error/                    # Error handling
│   ├── base_error.dart      # Base error class
│   ├── error_handler.dart   # Error handling logic
│   └── failures.dart        # Failure types
│
├── extensions/               # Dart/Flutter extensions
│   ├── context_extension.dart    # BuildContext extensions
│   ├── string_extension.dart     # String utilities
│   ├── date_extension.dart       # Date formatting
│   └── ...
│
├── models/                   # Global models
│   ├── base_model.dart      # Base model interface
│   ├── pagination_model.dart # Pagination handling
│   └── ...
│
├── navigation/               # Navigation and routing
│   ├── router.dart          # App router configuration
│   ├── routes.dart          # Route definitions
│   └── navigator_service.dart # Navigation service
│
├── network/                  # Network layer
│   ├── network_info.dart    # Network connectivity
│   └── dio_client.dart      # Dio HTTP client
│
├── theme/                    # Theme configuration
│   ├── app_theme.dart       # Theme data
│   ├── app_colors.dart      # Color definitions
│   ├── app_text_style.dart  # Text styles
│   └── theme_cubit.dart     # Theme state management
│
├── utils/                    # Utility classes
│   ├── validators.dart      # Input validation
│   ├── formatters.dart      # Text formatters
│   ├── date_utils.dart      # Date utilities
│   └── ...
│
└── widgets/                  # Shared/reusable widgets
    ├── buttons/
    │   ├── generic_button.dart
    │   └── loading_button.dart
    │
    ├── inputs/
    │   ├── generic_text_field.dart
    │   └── phone_input_field.dart
    │
    ├── cards/
    │   ├── base_card.dart
    │   └── info_card.dart
    │
    ├── dialogs/
    │   ├── base_dialog.dart
    │   └── confirmation_dialog.dart
    │
    ├── loading/
    │   ├── loading_indicator.dart
    │   └── shimmer_loading.dart
    │
    ├── design_system_components.dart  # Design system components
    └── ...
```

---

## 🎨 **Features Directory Structure**

Each feature follows **Clean Architecture** with three distinct layers: **data**, **domain**, and **presentation**.

### **Standard Feature Structure**

```
lib/features/{feature_name}/
├── data/                     # Data Layer
│   ├── data_source/         # External data sources
│   │   ├── {feature}_data_source.dart
│   │   └── {feature}_remote_data_source.dart
│   │
│   ├── repositories/        # Repository implementations
│   │   └── impl_{feature}_repository.dart
│   │
│   ├── models/             # Data Transfer Objects (DTOs)
│   │   ├── {model}_model.dart
│   │   └── {model}_response.dart
│   │
│   └── enums/              # Data-specific enumerations
│       └── {enum}_enum.dart
│
├── domain/                  # Domain Layer
│   ├── entity/             # Business entities
│   │   └── {entity}.dart
│   │
│   ├── repositories/       # Repository interfaces (contracts)
│   │   └── {feature}_repository.dart
│   │
│   ├── models/            # Domain models
│   │   ├── {model}_params.dart
│   │   └── {model}_domain.dart
│   │
│   ├── requesters/        # Use cases/business logic
│   │   └── {action}_requester.dart
│   │
│   └── enums/             # Domain enumerations
│       └── {enum}_enum.dart
│
└── presentation/            # Presentation Layer
    ├── pages/              # Screen implementations
    │   └── {screen}/
    │       ├── {screen}_page.dart
    │       ├── {screen}_controller.dart
    │       └── widgets/    # Page-specific widgets
    │           ├── {widget}_widget.dart
    │           └── ...
    │
    ├── widgets/            # Feature-level shared widgets
    │   └── {widget}.dart
    │
    └── manager/            # State management
        ├── {feature}_cubit.dart
        ├── {feature}_state.dart
        └── {feature}_controller.dart
```

### **Example: Authentication Feature**

```
lib/features/auth/
├── data/
│   ├── data_source/
│   │   └── auth_data_source.dart
│   ├── repositories/
│   │   └── impl_auth_repository.dart
│   └── models/
│       ├── login_model.dart
│       └── user_response.dart
│
├── domain/
│   ├── entity/
│   │   └── user_entity.dart
│   ├── repositories/
│   │   └── auth_repository.dart
│   └── models/
│       ├── login_params.dart
│       └── signup_params.dart
│
└── presentation/
    ├── pages/
    │   ├── login/
    │   │   ├── login_page.dart
    │   │   ├── login_controller.dart
    │   │   └── widgets/
    │   │       ├── login_form_widget.dart
    │   │       └── social_login_widget.dart
    │   │
    │   └── signup/
    │       ├── signup_page.dart
    │       └── signup_controller.dart
    │
    └── manager/
        ├── auth_cubit.dart
        └── auth_state.dart
```

---

## 🖼️ **Assets Directory Structure**

```
assets/
├── brand/                   # Brand-specific assets
│   └── images/
│       ├── logos/
│       ├── icons/
│       └── illustrations/
│
├── fonts/                   # Custom fonts
│   ├── sf_text/            # SF Pro Text family
│   ├── SF-Arabic.ttf       # Arabic font
│   ├── SF-Pro.ttf          # English font
│   └── SaudiRiyalFont.ttf  # Currency font
│
└── images/                  # Global images and icons
    ├── icons/              # SVG/PNG icons
    ├── illustrations/      # Illustrations
    └── backgrounds/        # Background images
```

### **Asset Naming Conventions**

```
# Icons (SVG preferred)
ic_{name}.svg               # Example: ic_home.svg, ic_profile.svg

# Images
img_{name}.png              # Example: img_banner.png, img_logo.png

# Illustrations
ill_{name}.svg              # Example: ill_empty_state.svg

# Brand-specific
brand_{name}.svg            # Example: brand_logo.svg
```

---

## 🌍 **Localization Structure**

```
lib/l10n/
├── intl_en.arb            # English translations
└── intl_ar.arb            # Arabic translations

lib/generated/
└── intl/                  # Auto-generated localization files
    ├── messages_all.dart
    ├── messages_ar.dart
    └── messages_en.dart
```

### **Translation File Format**

```json
// intl_en.arb
{
  "@@locale": "en",
  "app_name": "Nojom",
  "welcome_message": "Welcome to Nojom",
  "@welcome_message": {
    "description": "Welcome message shown on home screen"
  }
}

// intl_ar.arb
{
  "@@locale": "ar",
  "app_name": "نجوم",
  "welcome_message": "مرحباً بك في نجوم"
}
```

---

## ⚙️ **Environment Configuration**

```
lib/env/
├── env.dart               # Environment base class
├── env_dev.dart          # Development environment
├── env_staging.dart      # Staging environment
├── env_production.dart   # Production environment
└── env_config.dart       # Environment configuration
```

### **Environment Usage**

```dart
// Select environment in main.dart
void main() {
  Env.init(EnvDev()); // Development
  // Env.init(EnvStaging()); // Staging
  // Env.init(EnvProduction()); // Production
  
  runApp(MyApp());
}
```

---

## 🧪 **Test Directory Structure**

```
test/
├── unit/                   # Unit tests
│   ├── core/
│   │   └── utils/
│   └── features/
│       └── {feature}/
│           ├── data/
│           ├── domain/
│           └── presentation/
│
├── widget/                 # Widget tests
│   └── features/
│       └── {feature}/
│
├── integration/            # Integration tests
│   └── {feature}/
│
└── fixtures/              # Test data/mocks
    └── {feature}/
```

---

## 📋 **Configuration Files**

### **pubspec.yaml Structure**

```yaml
name: flutter_tdd
description: Nojom Flutter Application

dependencies:
  flutter:
    sdk: flutter
  
  # State Management
  flutter_bloc: ^X.X.X
  
  # Dependency Injection
  get_it: ^X.X.X
  injectable: ^X.X.X
  
  # Networking
  dio: ^X.X.X
  
  # ... other dependencies

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^X.X.X
  injectable_generator: ^X.X.X

flutter:
  uses-material-design: true
  
  assets:
    - assets/images/
    - assets/brand/images/
  
  fonts:
    - family: SFPro
      fonts:
        - asset: assets/fonts/SF-Pro.ttf
```

### **analysis_options.yaml**

Contains linter rules and analyzer configuration for code quality.

---

## 🔄 **Code Generation**

### **Files Requiring Generation**

```bash
# Generate dependency injection
flutter pub run build_runner build --delete-conflicting-outputs

# Generate localization
flutter gen-l10n

# Generate JSON serialization
flutter pub run build_runner build
```

### **Auto-Generated Files**

```
lib/core/di/injection.config.dart          # DI configuration
lib/generated/intl/messages_*.dart         # Localization
lib/res.dart                               # Resource constants
lib/brand_res.dart                         # Brand resources
```

---

## 📐 **Architectural Boundaries**

### **Layer Dependencies**

```
Presentation Layer
       ↓
  Domain Layer
       ↓
   Data Layer
```

**Rules:**
- ✅ Presentation can depend on Domain
- ✅ Data can depend on Domain
- ❌ Domain CANNOT depend on Presentation or Data
- ❌ Data CANNOT depend on Presentation

---

## 🎯 **Feature Organization Guidelines**

### **When to Create a New Feature**

Create a new feature module when:
- It represents a distinct business domain
- It has its own data sources/repositories
- It can be developed/tested independently
- It has multiple related screens/widgets

### **When to Add to Existing Feature**

Add to existing feature when:
- It's closely related to existing functionality
- It shares the same data sources
- It's a sub-feature or extension

### **Example Feature Organization**

```
features/
├── auth/                  # Authentication & authorization
├── home/                  # Home screen and dashboard
├── profile/               # User profile management
├── services/              # Service listings and booking
├── chat/                  # Messaging functionality
├── notifications/         # Notification center
├── payments/              # Payment processing
└── settings/              # App settings
```

---

## 📱 **Platform-Specific Structure**

### **Android**

```
android/
├── app/
│   ├── src/main/
│   │   ├── kotlin/       # Kotlin code
│   │   ├── res/          # Android resources
│   │   └── AndroidManifest.xml
│   ├── build.gradle      # App-level Gradle
│   └── google-services.json
└── build.gradle          # Project-level Gradle
```

### **iOS**

```
ios/
├── Runner/
│   ├── Info.plist        # iOS configuration
│   ├── Assets.xcassets/  # iOS assets
│   └── AppDelegate.swift
├── Podfile               # CocoaPods dependencies
└── Runner.xcworkspace/
```

---

## 🔑 **Key Principles**

1. **Feature-Based Organization**: Group by feature, not by layer type
2. **Clean Architecture**: Maintain clear separation between layers
3. **Dependency Rule**: Dependencies point inward (toward domain)
4. **Scalability**: Easy to add new features without affecting existing ones
5. **Testability**: Each layer can be tested independently
6. **Maintainability**: Clear structure makes code easy to find and modify

---

## 📝 **Naming Conventions**

### **Files**

```dart
// Pages
{screen}_page.dart              // login_page.dart

// Controllers
{screen}_controller.dart        // login_controller.dart

// Widgets
{widget}_widget.dart            // login_form_widget.dart

// Models
{model}_model.dart              // user_model.dart

// Repositories
{feature}_repository.dart       // auth_repository.dart
impl_{feature}_repository.dart  // impl_auth_repository.dart

// Data Sources
{feature}_data_source.dart      // auth_data_source.dart

// Cubits/Blocs
{feature}_cubit.dart            // auth_cubit.dart
{feature}_state.dart            // auth_state.dart
```

### **Directories**

```
{feature_name}/                 # Lowercase with underscores
{widget_type}s/                 # Plural form (widgets, pages, models)
```

---

## ✅ **Checklist for New Features**

When creating a new feature, ensure:

- [ ] Create three-layer structure (data/domain/presentation)
- [ ] Define repository interface in domain layer
- [ ] Implement repository in data layer
- [ ] Create necessary models and entities
- [ ] Add to dependency injection (injection.dart)
- [ ] Create page with controller
- [ ] Add route to router configuration
- [ ] Create reusable widgets in feature/widgets
- [ ] Add localization keys (en & ar)
- [ ] Follow naming conventions
- [ ] Document complex logic
- [ ] Write unit tests for domain/data layers
- [ ] Write widget tests for presentation layer

---

## 🚀 **Getting Started**

### **Project Setup**

```bash
# Get dependencies
flutter pub get

# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Generate localization
flutter gen-l10n

# Run the app
flutter run
```

### **Creating a New Feature**

```bash
# Create feature structure
mkdir -p lib/features/my_feature/{data,domain,presentation}
mkdir -p lib/features/my_feature/data/{data_source,repositories,models}
mkdir -p lib/features/my_feature/domain/{entity,repositories,models,requesters}
mkdir -p lib/features/my_feature/presentation/{pages,widgets,manager}
```

---

This structure ensures a scalable, maintainable, and testable codebase that follows industry best practices and Clean Architecture principles.

