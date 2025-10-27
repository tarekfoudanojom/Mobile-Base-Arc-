# 🌍 Multi-Environment Setup Guide

This comprehensive guide explains how to implement and manage multiple environments (Development, Staging, Production) in the Nojom Flutter application.

---

## 📋 **Table of Contents**

1. [Environment System Overview](#environment-system-overview)
2. [Environment Configuration Architecture](#environment-configuration-architecture)
3. [Setting Up Environments](#setting-up-environments)
4. [Configuration Files](#configuration-files)
5. [Running Different Environments](#running-different-environments)
6. [Environment-Specific Settings](#environment-specific-settings)
7. [Build & Release](#build--release)
8. [Platform-Specific Configuration](#platform-specific-configuration)
9. [Best Practices](#best-practices)
10. [Troubleshooting](#troubleshooting)

---

## 🎯 **Environment System Overview**

### **Supported Environments**

The Nojom app supports **multiple environments**:

```
Environments
├── Development (dev)    # Local development, debug features
├── Staging (stage)      # Testing environment, mirrors production
└── Production (prod)    # Live app for end users
```

### **Architecture**

```
Environment Configuration
    ├── JSON Config Files (.run/json/*.json)
    │   ├── dev.json
    │   ├── stage.json
    │   └── prod.json
    │
    ├── Environment Reader (FlutterEnvironmentConfigReader)
    │   └── Reads values via String.fromEnvironment()
    │
    ├── Config Handler (config_handler.dart)
    │   └── Processes environment setup
    │
    └── Build Flavors (Android/iOS)
        ├── Android: productFlavors
        └── iOS: Schemes
```

---

## 🏗️ **Environment Configuration Architecture**

### **File Structure**

```
lib/env/
├── app_env_type.dart                    # Environment enum
├── i_environment_config_reader.dart     # Interface
├── environment_config_reader.dart       # Flutter implementation
├── dart_environment_config_reader.dart  # Dart implementation
├── config_handler.dart                  # Setup handler
├── xml_args_parser.dart                 # XML parser
└── env_specific_handlers/
    ├── prod_handler.dart                # Production setup
    └── stage_handler.dart               # Staging setup

.run/json/
├── dev.json                             # Development config
├── stage.json                           # Staging config
└── prod.json                            # Production config

.vscode/
└── launch.json                          # VS Code run configs
```

---

## ⚙️ **Setting Up Environments**

### **Step 1: Define Environment Type**

**File:** `lib/env/app_env_type.dart`

```dart
enum AppEnvType {
  dev('.run/dev.run.xml', 'dev'),
  stage('.run/stage.run.xml', 'stage'),
  prod('.run/prod.run.xml', 'prod');

  final String path;
  final String value;

  const AppEnvType(this.path, this.value);

  factory AppEnvType.fromValue(String value) {
    try {
      return AppEnvType.values.firstWhere(
        (element) => element.value == value
      );
    } catch (_) {
      return stage; // Default to stage if not found
    }
  }
}
```

---

### **Step 2: Create Environment Interface**

**File:** `lib/env/i_environment_config_reader.dart`

```dart
abstract class IEnvironmentConfigReader {
  // Base URLs
  String getStarBaseUrl();
  String getBrandBaseUrl();
  
  // App Info
  String getAppNameAr();
  String getAppNameEN();
  String getLogo();
  String getAppEnvName();
  
  // App IDs
  String getAndroidAppId();
  String getAppleAppId();
  
  // API Keys
  String getClientId();
  String getAnonymousClientId();
  String getAnonymousClientSECRET();
  String getAnonymousGrantType();
  
  // Third-party services
  String getStreamKey();
  String getWebsiteUrl();
  String getAuth0Domain();
  String getAuth0ClientId();
  String getPaymentKey();
  String getMerchantKey();
  String getSentryDSN();
  
  // Assets
  String? getLocalLogoAssetsPath();
}
```

---

### **Step 3: Implement Environment Reader**

**File:** `lib/env/environment_config_reader.dart`

```dart
import 'package:flutter_tdd/core/models/localized_name_model/localized_name_model.dart';
import 'app_env_type.dart';
import 'i_environment_config_reader.dart';

class FlutterEnvironmentConfigReader implements IEnvironmentConfigReader {
  // Singleton
  FlutterEnvironmentConfigReader._();
  static FlutterEnvironmentConfigReader get instance =>
      FlutterEnvironmentConfigReader._();

  // Current environment
  AppEnvType get env => AppEnvType.stage; // Default

  // Read from dart-define values
  @override
  String getStarBaseUrl() => 
      const String.fromEnvironment('APP_BASE_URL_STAR');

  @override
  String getBrandBaseUrl() => 
      const String.fromEnvironment('APP_BASE_URL_BRAND');

  @override
  String getAppNameAr() => 
      const String.fromEnvironment('APP_APP_NAME_AR');

  @override
  String getAppNameEN() => 
      const String.fromEnvironment('APP_APP_NAME_EN');

  @override
  String getAppEnvName() => 
      const String.fromEnvironment('APP_ENV_NAME');

  @override
  String getAndroidAppId() => 
      const String.fromEnvironment('ANDROID_APP_ID');

  @override
  String getAppleAppId() => 
      const String.fromEnvironment('APPLE_APP_ID');

  @override
  String getStreamKey() => 
      const String.fromEnvironment('GET_STREAM_KEY');

  @override
  String getWebsiteUrl() => 
      const String.fromEnvironment('WEBSITE_URL');

  @override
  String getSentryDSN() => 
      const String.fromEnvironment('SENTRY_DSN');

  @override
  String getPaymentKey() => 
      const String.fromEnvironment('PAYMENT_KEY');

  @override
  String getMerchantKey() => 
      const String.fromEnvironment('PAYMENT_MERCHANT_ID');

  @override
  String getAuth0Domain() => 
      const String.fromEnvironment('AUTH0_DOMAIN');

  @override
  String getAuth0ClientId() => 
      const String.fromEnvironment('AUTH0_CLIENT_ID');

  @override
  String? getLocalLogoAssetsPath() =>
      const String.fromEnvironment('APP_LOCAL_LOGO');

  // Helper methods
  LocalizedNameModel getAppLocalizedName() => LocalizedNameModel.fromJson({
    "ar": getAppNameAr(),
    "en": getAppNameEN(),
  });
}
```

---

## 📁 **Configuration Files**

### **Step 4: Create JSON Configuration Files**

Create folder: `.run/json/`

#### **Development Config**

**File:** `.run/json/dev.json`

```json
{
  "APP_ENV_NAME": "dev",
  "APP_BASE_URL_STAR": "https://dev-api-star.example.com/api/v1/",
  "APP_BASE_URL_BRAND": "https://dev-api-brand.example.com/api/v1/",
  "APP_APP_NAME_EN": "Nojom Dev",
  "APP_APP_NAME_AR": "نجوم تطوير",
  "APP_LOCAL_LOGO": "assets/brand/images/logo_dev.png",
  "ANDROID_APP_ID": "com.nojom.app.dev",
  "APPLE_APP_ID": "com.nojom.app.dev",
  "GET_STREAM_KEY": "dev_stream_api_key_here",
  "WEBSITE_URL": "https://dev.nojom.com",
  "AUTH0_DOMAIN": "dev-nojom.auth0.com",
  "AUTH0_CLIENT_ID": "dev_auth0_client_id",
  "PAYMENT_KEY": "dev_payment_key",
  "PAYMENT_MERCHANT_ID": "dev_merchant_id",
  "SENTRY_DSN": "https://dev_sentry_dsn@sentry.io/project_id",
  "APP_CLIENT_ID": "dev_client_id",
  "APP_ANONYMOUS_CLIENT_ID": "dev_anonymous_id",
  "APP_ANONYMOUS_CLIENT_SECRET": "dev_anonymous_secret",
  "APP_GRANT_TYPE": "password"
}
```

#### **Staging Config**

**File:** `.run/json/stage.json`

```json
{
  "APP_ENV_NAME": "stage",
  "APP_BASE_URL_STAR": "https://stage-api-star.example.com/api/v1/",
  "APP_BASE_URL_BRAND": "https://stage-api-brand.example.com/api/v1/",
  "APP_APP_NAME_EN": "Nojom Staging",
  "APP_APP_NAME_AR": "نجوم تجريبي",
  "APP_LOCAL_LOGO": "assets/brand/images/logo_stage.png",
  "ANDROID_APP_ID": "com.nojom.app.stage",
  "APPLE_APP_ID": "com.nojom.app.stage",
  "GET_STREAM_KEY": "stage_stream_api_key_here",
  "WEBSITE_URL": "https://stage.nojom.com",
  "AUTH0_DOMAIN": "stage-nojom.auth0.com",
  "AUTH0_CLIENT_ID": "stage_auth0_client_id",
  "PAYMENT_KEY": "stage_payment_key",
  "PAYMENT_MERCHANT_ID": "stage_merchant_id",
  "SENTRY_DSN": "https://stage_sentry_dsn@sentry.io/project_id",
  "APP_CLIENT_ID": "stage_client_id",
  "APP_ANONYMOUS_CLIENT_ID": "stage_anonymous_id",
  "APP_ANONYMOUS_CLIENT_SECRET": "stage_anonymous_secret",
  "APP_GRANT_TYPE": "password"
}
```

#### **Production Config**

**File:** `.run/json/prod.json`

```json
{
  "APP_ENV_NAME": "prod",
  "APP_BASE_URL_STAR": "https://api-star.nojom.com/api/v1/",
  "APP_BASE_URL_BRAND": "https://api-brand.nojom.com/api/v1/",
  "APP_APP_NAME_EN": "Nojom",
  "APP_APP_NAME_AR": "نجوم",
  "APP_LOCAL_LOGO": "assets/brand/images/logo_prod.png",
  "ANDROID_APP_ID": "com.nojom.app",
  "APPLE_APP_ID": "com.nojom.app",
  "GET_STREAM_KEY": "prod_stream_api_key_here",
  "WEBSITE_URL": "https://nojom.com",
  "AUTH0_DOMAIN": "nojom.auth0.com",
  "AUTH0_CLIENT_ID": "prod_auth0_client_id",
  "PAYMENT_KEY": "prod_payment_key",
  "PAYMENT_MERCHANT_ID": "prod_merchant_id",
  "SENTRY_DSN": "https://prod_sentry_dsn@sentry.io/project_id",
  "APP_CLIENT_ID": "prod_client_id",
  "APP_ANONYMOUS_CLIENT_ID": "prod_anonymous_id",
  "APP_ANONYMOUS_CLIENT_SECRET": "prod_anonymous_secret",
  "APP_GRANT_TYPE": "password"
}
```

---

### **Step 5: Create VS Code Launch Configurations**

**File:** `.vscode/launch.json`

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter Dev",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "flutterMode": "debug",
      "args": [
        "--flavor",
        "dev",
        "--dart-define-from-file=.run/json/dev.json"
      ]
    },
    {
      "name": "Flutter Stage",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "flutterMode": "debug",
      "args": [
        "--flavor",
        "stage",
        "--dart-define-from-file=.run/json/stage.json"
      ]
    },
    {
      "name": "Flutter Prod",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "flutterMode": "debug",
      "args": [
        "--flavor",
        "prod",
        "--dart-define-from-file=.run/json/prod.json"
      ]
    },
    {
      "name": "Flutter Prod Release",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "flutterMode": "release",
      "args": [
        "--flavor",
        "prod",
        "--dart-define-from-file=.run/json/prod.json"
      ]
    }
  ]
}
```

---

## 🔧 **Platform-Specific Configuration**

### **Android Setup**

**File:** `android/app/build.gradle`

```gradle
// Read dart-define values
def dartEnvironmentVariables = [:]
if (project.hasProperty('dart-defines')) {
    project.property('dart-defines')
        .split(',')
        .each { item ->
            def keyValue = new String(item.decodeBase64(), 'UTF-8').split('=')
            dartEnvironmentVariables[keyValue[0]] = keyValue[1]
        }
}

android {
    // ... other config
    
    defaultConfig {
        applicationId dartEnvironmentVariables.ANDROID_APP_ID ?: "com.nojom.app"
        minSdkVersion 24
        targetSdkVersion 34
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
    }

    // Build types
    buildTypes {
        release {
            signingConfig signingConfigs.release
            minifyEnabled false
            shrinkResources false
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
        debug {
            minifyEnabled false
        }
    }

    // Product Flavors for environments
    flavorDimensions "app"
    productFlavors {
        dev {
            dimension "app"
            applicationId dartEnvironmentVariables.ANDROID_APP_ID
            resValue "string", "app_name", dartEnvironmentVariables.APP_APP_NAME_EN
            
            // Copy google-services.json for dev
            copy {
                from 'src/dev/'
                include '*.json'
                into '.'
            }
        }
        
        stage {
            dimension "app"
            applicationId dartEnvironmentVariables.ANDROID_APP_ID
            resValue "string", "app_name", dartEnvironmentVariables.APP_APP_NAME_EN
            
            // Copy google-services.json for staging
            copy {
                from 'src/stage/'
                include '*.json'
                into '.'
            }
        }
        
        prod {
            dimension "app"
            applicationId dartEnvironmentVariables.ANDROID_APP_ID
            resValue "string", "app_name", dartEnvironmentVariables.APP_APP_NAME_EN
            
            // Copy google-services.json for production
            copy {
                from 'src/prod/'
                include '*.json'
                into '.'
            }
        }
    }
}
```

**Folder Structure for Firebase configs:**

```
android/app/src/
├── dev/
│   └── google-services.json        # Dev Firebase config
├── stage/
│   └── google-services.json        # Staging Firebase config
└── prod/
    └── google-services.json        # Production Firebase config
```

---

### **iOS Setup**

#### **Step 1: Create Schemes in Xcode**

1. Open `ios/Runner.xcworkspace` in Xcode
2. Go to **Product → Scheme → Manage Schemes**
3. Duplicate Runner scheme three times:
   - Runner-dev
   - Runner-stage
   - Runner-prod

#### **Step 2: Configure Build Settings**

For each scheme:
1. Edit Scheme
2. Run → Info → Build Configuration
3. Pre-actions → New Run Script:

```bash
# For dev scheme
cp "${PROJECT_DIR}/Runner/Firebase/Dev/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

# For stage scheme
cp "${PROJECT_DIR}/Runner/Firebase/Stage/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"

# For prod scheme
cp "${PROJECT_DIR}/Runner/Firebase/Prod/GoogleService-Info.plist" "${PROJECT_DIR}/Runner/GoogleService-Info.plist"
```

**Folder Structure:**

```
ios/Runner/
├── Firebase/
│   ├── Dev/
│   │   └── GoogleService-Info.plist
│   ├── Stage/
│   │   └── GoogleService-Info.plist
│   └── Prod/
│       └── GoogleService-Info.plist
└── GoogleService-Info.plist (copied by build script)
```

#### **Step 3: Configure Info.plist**

**File:** `ios/Runner/Info.plist`

Add configuration reading:

```xml
<key>CFBundleDisplayName</key>
<string>$(APP_DISPLAY_NAME)</string>

<key>CFBundleIdentifier</key>
<string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
```

---

## 🚀 **Running Different Environments**

### **Method 1: VS Code**

1. Press `F5` or click Run
2. Select environment from dropdown:
   - Flutter Dev
   - Flutter Stage
   - Flutter Prod

---

### **Method 2: Command Line**

```bash
# Development
flutter run --flavor dev --dart-define-from-file=.run/json/dev.json

# Staging
flutter run --flavor stage --dart-define-from-file=.run/json/stage.json

# Production
flutter run --flavor prod --dart-define-from-file=.run/json/prod.json

# Production Release
flutter run --release --flavor prod --dart-define-from-file=.run/json/prod.json
```

---

### **Method 3: Android Studio / IntelliJ**

**Create run configurations:**

**File:** `.run/dev.run.xml`

```xml
<component name="ProjectRunConfigurationManager">
  <configuration default="false" name="dev" type="FlutterRunConfigurationType" factoryName="Flutter">
    <option name="additionalArgs" value="--dart-define-from-file=.run/json/dev.json" />
    <option name="buildFlavor" value="dev" />
    <option name="filePath" value="$PROJECT_DIR$/lib/main.dart" />
    <method v="2" />
  </configuration>
</component>
```

**File:** `.run/stage.run.xml`

```xml
<component name="ProjectRunConfigurationManager">
  <configuration default="false" name="stage" type="FlutterRunConfigurationType" factoryName="Flutter">
    <option name="additionalArgs" value="--dart-define-from-file=.run/json/stage.json" />
    <option name="buildFlavor" value="stage" />
    <option name="filePath" value="$PROJECT_DIR$/lib/main.dart" />
    <method v="2" />
  </configuration>
</component>
```

**File:** `.run/prod.run.xml`

```xml
<component name="ProjectRunConfigurationManager">
  <configuration default="false" name="prod" type="FlutterRunConfigurationType" factoryName="Flutter">
    <option name="additionalArgs" value="--dart-define-from-file=.run/json/prod.json" />
    <option name="buildFlavor" value="prod" />
    <option name="filePath" value="$PROJECT_DIR$/lib/main.dart" />
    <method v="2" />
  </configuration>
</component>
```

---

## 🎯 **Using Environment Variables**

### **In Code**

```dart
// Get environment-specific base URL
String starBaseUrl = FlutterEnvironmentConfigReader.instance.getStarBaseUrl();
String brandBaseUrl = FlutterEnvironmentConfigReader.instance.getBrandBaseUrl();

// Get app name
String appName = FlutterEnvironmentConfigReader.instance.getAppNameEN();

// Get environment name
String envName = FlutterEnvironmentConfigReader.instance.getAppEnvName();

// Check environment
if (FlutterEnvironmentConfigReader.instance.env == AppEnvType.prod) {
  // Production-specific code
  enableAnalytics();
} else {
  // Development/Staging code
  enableDebugTools();
}
```

### **In AppConfig**

**File:** `lib/core/constants/app_config.dart`

```dart
class AppConfig {
  static AppConfig instance = AppConfig._();
  
  AppConfig._();

  // Get base URL based on user type
  String get baseUrl {
    bool isStar = PrefHelper.getUserType() == UserTypeEnum.star;
    
    if (isStar) {
      return FlutterEnvironmentConfigReader.instance.getStarBaseUrl();
    }
    return FlutterEnvironmentConfigReader.instance.getBrandBaseUrl();
  }

  String get starBaseUrl => 
      FlutterEnvironmentConfigReader.instance.getStarBaseUrl();

  String get brandBaseUrl => 
      FlutterEnvironmentConfigReader.instance.getBrandBaseUrl();
      
  String get environment => 
      FlutterEnvironmentConfigReader.instance.getAppEnvName();
      
  bool get isProduction => environment == AppEnvType.prod.value;
  bool get isDevelopment => environment == AppEnvType.dev.value;
  bool get isStaging => environment == AppEnvType.stage.value;
}
```

---

## 🛠️ **Environment-Specific Settings**

### **API Endpoints**

```dart
// Automatically uses environment-specific URL
class StarApiNames {
  static String baseUrl = AppConfig.instance.starBaseUrl;
  
  static String login = "${baseUrl}login";
  static String profile = "${baseUrl}profile";
}

// Development: https://dev-api-star.example.com/api/v1/login
// Staging:    https://stage-api-star.example.com/api/v1/login
// Production: https://api-star.nojom.com/api/v1/login
```

---

### **Logging & Debugging**

```dart
// Show different logs based on environment
if (AppConfig.instance.isDevelopment) {
  // Verbose logging
  Logger.setLevel(Level.debug);
  debugPrint('Detailed debug info: $data');
} else if (AppConfig.instance.isStaging) {
  // Moderate logging
  Logger.setLevel(Level.info);
} else {
  // Minimal logging
  Logger.setLevel(Level.error);
}
```

---

### **Feature Flags**

```dart
// Enable features per environment
bool get showDebugMenu => 
    AppConfig.instance.isDevelopment || 
    AppConfig.instance.isStaging;

bool get enableAnalytics => 
    AppConfig.instance.isProduction;

bool get showEnvironmentBanner => 
    !AppConfig.instance.isProduction;

// In UI
if (showDebugMenu) {
  actions.add(
    IconButton(
      icon: Icon(Icons.bug_report),
      onPressed: () => showDebugTools(),
    ),
  );
}
```

---

### **Error Tracking**

```dart
// Configure Sentry per environment
if (kReleaseMode && AppConfig.instance.isProduction) {
  await SentryFlutter.init(
    (options) {
      options.dsn = FlutterEnvironmentConfigReader.instance.getSentryDSN();
      options.environment = AppConfig.instance.environment;
      options.tracesSampleRate = 1.0;
    },
  );
}
```

---

### **Analytics**

```dart
// Configure analytics per environment
void initializeAnalytics() {
  if (AppConfig.instance.isProduction) {
    // Enable full analytics
    getIt<AmplitudeClass>().init();
    getIt<FirebaseAnalyticsHelper>().init();
  } else if (AppConfig.instance.isStaging) {
    // Enable with test mode
    getIt<AmplitudeClass>().init(testMode: true);
  } else {
    // Disable analytics in development
    log('Analytics disabled in development');
  }
}
```

---

## 📦 **Build & Release**

### **Build APK**

```bash
# Development APK
flutter build apk --flavor dev --dart-define-from-file=.run/json/dev.json

# Staging APK
flutter build apk --flavor stage --dart-define-from-file=.run/json/stage.json

# Production APK
flutter build apk --release --flavor prod --dart-define-from-file=.run/json/prod.json

# Split APKs (smaller size)
flutter build apk --split-per-abi --flavor prod --dart-define-from-file=.run/json/prod.json
```

---

### **Build App Bundle (AAB)**

```bash
# Development
flutter build appbundle --flavor dev --dart-define-from-file=.run/json/dev.json

# Staging
flutter build appbundle --flavor stage --dart-define-from-file=.run/json/stage.json

# Production
flutter build appbundle --release --flavor prod --dart-define-from-file=.run/json/prod.json
```

---

### **Build iOS**

```bash
# Development
flutter build ios --flavor dev --dart-define-from-file=.run/json/dev.json

# Staging
flutter build ios --flavor stage --dart-define-from-file=.run/json/stage.json

# Production
flutter build ios --release --flavor prod --dart-define-from-file=.run/json/prod.json

# Build IPA
flutter build ipa --flavor prod --dart-define-from-file=.run/json/prod.json
```

---

## 🎨 **Environment-Specific Assets**

### **Different App Icons**

```
assets/brand/images/
├── logo_dev.png          # Development logo (with "DEV" badge)
├── logo_stage.png        # Staging logo (with "STAGE" badge)
└── logo_prod.png         # Production logo (clean)
```

**Update in JSON config:**

```json
{
  "APP_LOCAL_LOGO": "assets/brand/images/logo_dev.png"
}
```

---

### **Different App Names**

Each environment can have different names:

```json
// dev.json
{
  "APP_APP_NAME_EN": "Nojom Dev",
  "APP_APP_NAME_AR": "نجوم تطوير"
}

// stage.json
{
  "APP_APP_NAME_EN": "Nojom Staging",
  "APP_APP_NAME_AR": "نجوم تجريبي"
}

// prod.json
{
  "APP_APP_NAME_EN": "Nojom",
  "APP_APP_NAME_AR": "نجوم"
}
```

This allows users to distinguish between apps if multiple are installed.

---

## 🎯 **Complete Implementation Example**

### **Example: Environment-Aware API Service**

```dart
class ApiService {
  final String baseUrl;
  final bool enableLogging;
  final Duration timeout;

  ApiService() 
      : baseUrl = _getBaseUrl(),
        enableLogging = _shouldEnableLogging(),
        timeout = _getTimeout();

  static String _getBaseUrl() {
    final env = AppConfig.instance.environment;
    
    switch (env) {
      case 'dev':
        return 'https://dev-api.example.com/api/v1/';
      case 'stage':
        return 'https://stage-api.example.com/api/v1/';
      case 'prod':
        return 'https://api.example.com/api/v1/';
      default:
        return 'https://stage-api.example.com/api/v1/';
    }
  }

  static bool _shouldEnableLogging() {
    return !AppConfig.instance.isProduction;
  }

  static Duration _getTimeout() {
    if (AppConfig.instance.isDevelopment) {
      return Duration(seconds: 60); // Longer for debugging
    }
    return Duration(seconds: 30);
  }

  Future<Response> get(String endpoint) async {
    if (enableLogging) {
      log('GET: $baseUrl$endpoint');
    }
    
    // Make request...
  }
}
```

---

### **Example: Environment Banner**

```dart
class EnvironmentBanner extends StatelessWidget {
  final Widget child;

  const EnvironmentBanner({required this.child});

  @override
  Widget build(BuildContext context) {
    final env = FlutterEnvironmentConfigReader.instance.getAppEnvName();
    
    // Don't show banner in production
    if (env == 'prod') {
      return child;
    }

    return Stack(
      children: [
        child,
        
        // Environment indicator
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: env == 'dev' ? Colors.orange : Colors.purple,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              env.toUpperCase(),
              style: AppTextStyle.s12_w600(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

// Add to MyApp builder
builder: (ctx, child) {
  return EnvironmentBanner(
    child: YourAppContent(),
  );
}
```

---

## 📋 **Environment Configuration Checklist**

### **Before Adding New Environment**

- [ ] Create JSON config file (`.run/json/{env}.json`)
- [ ] Add to `AppEnvType` enum
- [ ] Create Android flavor in `build.gradle`
- [ ] Create iOS scheme in Xcode
- [ ] Add Firebase config (`google-services.json` / `GoogleService-Info.plist`)
- [ ] Create run configuration (VS Code / Android Studio)
- [ ] Add environment handler (if needed)
- [ ] Test build for Android
- [ ] Test build for iOS
- [ ] Update documentation

---

## ✅ **Best Practices**

### **1. Never Commit Secrets**

```bash
# Add to .gitignore
.run/json/prod.json
.run/json/stage.json
*.env

# Keep dev.json for reference, but without real keys
.run/json/dev.json  # Use dummy values
```

**Instead:**
- Use CI/CD environment variables
- Use secret management tools
- Provide template files

---

### **2. Use Environment Variables**

```dart
// ✅ CORRECT: Use environment reader
final apiUrl = FlutterEnvironmentConfigReader.instance.getStarBaseUrl();

// ❌ WRONG: Hardcode URLs
final apiUrl = "https://api.example.com";
```

---

### **3. Validate Environment**

```dart
void validateEnvironment() {
  final baseUrl = FlutterEnvironmentConfigReader.instance.getStarBaseUrl();
  
  if (baseUrl.isEmpty) {
    throw Exception('BASE_URL not configured for current environment');
  }
  
  log('Environment: ${AppConfig.instance.environment}');
  log('Base URL: $baseUrl');
}

// Call in main.dart
void main() async {
  await _init();
  validateEnvironment();
  runApp(MyApp());
}
```

---

### **4. Environment-Specific Build Numbers**

```dart
// Append environment to version
String getVersionString() {
  final version = '1.0.0';
  final buildNumber = '123';
  final env = AppConfig.instance.environment;
  
  if (env == 'prod') {
    return '$version ($buildNumber)';
  }
  
  return '$version-${env.toUpperCase()} ($buildNumber)';
}

// dev:   1.0.0-DEV (123)
// stage: 1.0.0-STAGE (123)
// prod:  1.0.0 (123)
```

---

### **5. Separate Firebase Projects**

```
Firebase Console
├── Nojom Dev
│   ├── Android: com.nojom.app.dev
│   └── iOS: com.nojom.app.dev
│
├── Nojom Staging
│   ├── Android: com.nojom.app.stage
│   └── iOS: com.nojom.app.stage
│
└── Nojom Production
    ├── Android: com.nojom.app
    └── iOS: com.nojom.app
```

---

## 🔒 **Security Considerations**

### **1. Protect Production Secrets**

```dart
// Never log sensitive data in production
if (!AppConfig.instance.isProduction) {
  log('API Key: ${apiKey}');
  log('Token: ${token}');
}
```

---

### **2. API Security**

```dart
// Different API keys per environment
String getApiKey() {
  switch (AppConfig.instance.environment) {
    case 'dev':
      return 'dev_api_key_safe_to_commit';
    case 'stage':
      return FlutterEnvironmentConfigReader.instance.getClientId();
    case 'prod':
      return FlutterEnvironmentConfigReader.instance.getClientId();
    default:
      throw Exception('Unknown environment');
  }
}
```

---

### **3. SSL Pinning**

```dart
// Enable SSL pinning only in production
if (AppConfig.instance.isProduction) {
  // Add SSL certificate pinning
  SecurityContext context = SecurityContext();
  // Configure SSL pinning
}
```

---

## 🧪 **Testing in Different Environments**

### **Test API Endpoints**

```dart
void testEnvironmentSetup() {
  test('Dev environment has dev API', () {
    // Set dev environment
    final url = FlutterEnvironmentConfigReader.instance.getStarBaseUrl();
    expect(url, contains('dev'));
  });

  test('Prod environment has production API', () {
    // Set prod environment
    final url = FlutterEnvironmentConfigReader.instance.getStarBaseUrl();
    expect(url, isNot(contains('dev')));
    expect(url, isNot(contains('stage')));
  });
}
```

---

## 🚀 **CI/CD Integration**

### **GitHub Actions**

```yaml
name: Build

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
      - uses: actions/checkout@v2
      
      - uses: actions/setup-java@v2
        with:
          java-version: '11'
      
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.x'
      
      # Build for staging
      - name: Build Staging APK
        run: |
          flutter build apk \
            --flavor stage \
            --dart-define-from-file=.run/json/stage.json
        env:
          # Add secrets here
          FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
      
      # Build for production
      - name: Build Production AAB
        run: |
          flutter build appbundle \
            --release \
            --flavor prod \
            --dart-define-from-file=.run/json/prod.json
```

---

### **Fastlane**

**File:** `android/fastlane/Fastfile`

```ruby
default_platform(:android)

platform :android do
  desc "Build and deploy staging"
  lane :staging do
    gradle(
      task: "assemble",
      flavor: "stage",
      build_type: "Release",
      properties: {
        "dart-defines" => "from-file=.run/json/stage.json"
      }
    )
    upload_to_play_store(track: 'internal')
  end

  desc "Build and deploy production"
  lane :production do
    gradle(
      task: "bundle",
      flavor: "prod",
      build_type: "Release",
      properties: {
        "dart-defines" => "from-file=.run/json/prod.json"
      }
    )
    upload_to_play_store(track: 'production')
  end
end
```

---

## 📝 **Summary**

### **Key Components**

✅ **AppEnvType** - Environment enumeration
✅ **IEnvironmentConfigReader** - Configuration interface
✅ **FlutterEnvironmentConfigReader** - Runtime config reader
✅ **JSON Config Files** - Environment-specific values
✅ **Build Flavors** - Android/iOS variants
✅ **VS Code Launch Configs** - Easy switching

### **Configuration Levels**

1. **JSON Files** - Store all environment variables
2. **dart-define-from-file** - Load at build time
3. **String.fromEnvironment()** - Read in code
4. **Build Flavors** - Platform-specific configuration
5. **App Config** - Centralized access

### **Supported Environments**

- ✅ **Development** - Local testing
- ✅ **Staging** - QA testing
- ✅ **Production** - Live users

### **Environment Variables**

- ✅ API URLs (Star & Brand)
- ✅ App names (EN & AR)
- ✅ App IDs (Android & iOS)
- ✅ API keys (Stream, Auth0, Payment, Sentry)
- ✅ Client credentials
- ✅ Website URLs
- ✅ Firebase configurations

### **Commands Reference**

```bash
# Run
flutter run --flavor {env} --dart-define-from-file=.run/json/{env}.json

# Build APK
flutter build apk --flavor {env} --dart-define-from-file=.run/json/{env}.json

# Build AAB
flutter build appbundle --flavor {env} --dart-define-from-file=.run/json/{env}.json

# Build iOS
flutter build ios --flavor {env} --dart-define-from-file=.run/json/{env}.json
```

---

**This guide ensures proper multi-environment setup with secure configuration management!** 🌍

