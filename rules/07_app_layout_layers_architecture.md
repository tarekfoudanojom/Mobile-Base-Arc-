# 🏛️ App Layout & Layers Architecture Guide

This comprehensive guide explains how to implement general app layouts and understand the multi-layer architecture of Flutter applications, including network layer, theme management, providers, and more.

---

## 📋 **Table of Contents**

1. [App Initialization Flow](#app-initialization-flow)
2. [MyApp Widget Architecture](#myapp-widget-architecture)
3. [Layer-by-Layer Breakdown](#layer-by-layer-breakdown)
4. [Network Layer Implementation](#network-layer-implementation)
5. [Theme Management](#theme-management)
6. [Localization Setup](#localization-setup)
7. [Global Providers](#global-providers)
8. [Router Configuration](#router-configuration)
9. [Creating Custom Layers](#creating-custom-layers)
10. [Complete Examples](#complete-examples)

---

## 🚀 **App Initialization Flow**

### **main.dart - Entry Point**

**Location:** `lib/main.dart`

```dart
void main() async {
  if (kDebugMode) {
    // Debug mode - simple initialization
    await _init();
    runApp(
      BlocProvider(
        create: (BuildContext context) => DeviceCubit(),
        child: Phoenix(child: const MyApp()),
      ),
    );
  } else {
    // Production mode - with error tracking
    runZonedGuarded(
      () async {
        await _init();
        
        await SentryFlutter.init(
          (options) {
            options.dsn = FlutterEnvironmentConfigReader.instance.getSentryDSN();
            options.sendDefaultPii = true;
          },
          appRunner: () {
            runApp(
              SentryWidget(
                child: BlocProvider(
                  create: (BuildContext context) => DeviceCubit(),
                  child: Phoenix(child: const MyApp()),
                ),
              ),
            );
          },
        );
      },
      (exception, stackTrace) async {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      },
    );
  }
}

Future _init() async {
  // 1. Initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();
  
  // 2. Initialize core services
  // await CoreServices.initialize();
  
  // 3. Setup error handling
  // FlutterError.onError = ErrorHandler.recordError;
  
  // 4. Initialize SharedPreferences
  var pref = await SharedPreferences.getInstance();
  getIt.registerSingleton(pref);
  
  // 5. Register Router
  getIt.registerSingleton(AppRouter());
  
  // 6. Configure Dependency Injection
  await configureDependencies();
  
  // 7. Setup Push Notifications
  getIt<GlobalNotification>().setupNotification();
  
  // 8. Initialize Analytics
  getIt<AmplitudeClass>().init();
}
```

### **Initialization Order**

✅ **Critical order must be maintained:**

1. **WidgetsFlutterBinding** - Flutter framework initialization
2. **Core Services** - App services
3. **Error Handling** - Error reporting
4. **SharedPreferences** - Local storage
5. **AppRouter** - Navigation system
6. **Dependency Injection** - Service locator
7. **Notifications** - Push notification setup
8. **Analytics** - Event tracking

---

## 🏗️ **MyApp Widget Architecture**

### **Widget Tree Structure**

```
MyApp (StatefulWidget)
  └── MultiBlocProvider (Global Providers)
      └── BlocBuilder<DeviceCubit> (App State)
          └── AdaptiveTheme (Light/Dark Theme)
              └── OverlaySupport (Overlay Notifications)
                  └── MaterialApp.router (Router Config)
                      └── EasyLoading (Loading Dialogs)
                          └── ScreenUtil (Responsive Design)
                              └── WhatsappLayout (Floating WhatsApp Button)
                                  └── NetworkLayerWidget (Internet Connection)
                                      └── MediaQuery (Text Scaling)
                                          └── GestureDetector (Dismiss Keyboard)
                                              └── Chat Integration
                                                  └── Router Content (Pages)
```

### **Complete MyApp Implementation**

**Location:** `lib/my_app.dart`

```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Chat client initialization
  // final client = ChatClient(
  //   FlutterEnvironmentConfigReader.instance.getChatKey(),
    logLevel: Level.INFO,
    connectTimeout: const Duration(hours: 2),
    receiveTimeout: const Duration(hours: 2),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // Layer 1: Global Providers
      providers: GeneralProviders.instance.providers(context),
      
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
            // Layer 2: Theme Management
            light: AppLightTheme(language: state.model.locale.languageCode).theme,
            dark: AppDarkTheme(language: state.model.locale.languageCode).theme,
            initial: state.model.themeMode,
            
            builder: (theme, darkTheme) {
              bool isUser = PrefHelper.getUserType() == UserTypeEnum.user;
              
              return OverlaySupport(
                // Layer 3: Overlay Support
                child: MaterialApp.router(
                  // Layer 4: Router Configuration
                  debugShowCheckedModeBanner: false,
                  title: FlutterEnvironmentConfigReader.instance.getAppNameEN(),
                  theme: theme,
                  darkTheme: darkTheme,
                  locale: state.model.locale,
                  supportedLocales: S.delegate.supportedLocales,
                  
                  // Localization delegates
                  localizationsDelegates: const [
                    S.delegate,
                    DefaultCupertinoLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    // ...GlobalChatLocalizations.delegates,
                    // ArChatLocalizations.delegate,
                  ],
                  
                  // Router setup
                  routerDelegate: getIt.get<AppRouter>().delegate(
                    navigatorObservers: () => [
                      if (isUser) UserScreenLogger() else AdminScreenLogger(),
                      // SentryNavigatorObserver(),
                      // AmplitudeObserver(),
                    ],
                  ),
                  routeInformationParser: getIt.get<AppRouter>().defaultRouteParser(),
                  
                  // Builder with layers
                  builder: EasyLoading.init(builder: (ctx, child) {
                    // Layer 5: ScreenUtil Initialization
                    ScreenUtil.init(ctx);
                    
                    return WhatsappLayout(
                      // Layer 6: WhatsApp Floating Button
                      showWhatsApp: state.model.showWhatsApp,
                      
                      child: NetworkLayerWidget(
                        // Layer 7: Network Status Banner
                        isNetworkConnected: state.model.isNetworkConnected,
                        
                        child: MediaQuery(
                          // Layer 8: Text Scaling Control
                          data: _getMediaQueryData(ctx, state.model.locale),
                          
                          child: GestureDetector(
                            // Layer 9: Keyboard Dismissal
                            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                            
                            child: ChatWidget(
                              // Layer 10: Chat Integration
                              // client: client,
                              // backgroundKeepAlive: const Duration(minutes: 60),
                              // chatThemeData: ChatThemeData.light(),
                              
                              child: child!,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              );
            },
          );
        },
      ),
    );
  }

  MediaQueryData _getMediaQueryData(BuildContext ctx, Locale locale) {
    if (locale.languageCode == ApplicationConstants.langAR && Platform.isIOS) {
      return MediaQuery.of(ctx).copyWith(
        boldText: false,
        textScaler: const TextScaler.linear(1.0),
      );
    }
    return MediaQuery.of(ctx).copyWith(
      boldText: false,
      textScaler: const TextScaler.linear(1.0),
    );
  }
}
```

---

## 📚 **Layer-by-Layer Breakdown**

### **Layer 1: MultiBlocProvider - Global State Providers**

**Purpose:** Provides global BLoC instances accessible throughout the app.

**File:** `lib/core/helpers/general_providers.dart`

```dart
class GeneralProviders {
  static GeneralProviders instance = GeneralProviders._();
  
  List<BlocProvider> providers(BuildContext context) => [
    // Device state (theme, locale, network)
    BlocProvider<DeviceCubit>(
      create: (context) => DeviceCubit(),
    ),
    
    // Add more global cubits here as needed
    // Example: CountriesCubit, NotificationsCubit, etc.
  ];
}
```

**Usage:**
```dart
// Access DeviceCubit anywhere in the app
context.read<DeviceCubit>().updateLanguage(Locale('ar'));
context.read<DeviceCubit>().toggleTheme();
```

---

### **Layer 2: AdaptiveTheme - Theme Management**

**Purpose:** Manages light and dark themes with system theme support.

```dart
AdaptiveTheme(
  light: AppLightTheme(language: languageCode).theme,
  dark: AppDarkTheme(language: languageCode).theme,
  initial: AdaptiveThemeMode.light,  // or .dark or .system
  builder: (theme, darkTheme) {
    return MaterialApp.router(
      theme: theme,
      darkTheme: darkTheme,
      // ...
    );
  },
)
```

**Features:**
- ✅ Automatic theme switching
- ✅ System theme detection
- ✅ Language-aware themes
- ✅ Persistent theme selection

**Usage:**
```dart
// Switch theme
AdaptiveTheme.of(context).setLight();
AdaptiveTheme.of(context).setDark();
AdaptiveTheme.of(context).setSystem();
AdaptiveTheme.of(context).toggleThemeMode();

// Get current theme
final mode = AdaptiveTheme.of(context).mode;
```

---

### **Layer 3: OverlaySupport - Overlay Notifications**

**Purpose:** Enables overlay notifications and in-app messages.

```dart
OverlaySupport(
  child: MaterialApp.router(
    // ...
  ),
)
```

**Usage:**
```dart
// Show overlay notification
showOverlayNotification((context) {
  return Card(
    child: Text('Notification message'),
  );
});
```

---

### **Layer 4: MaterialApp.router - App Router**

**Purpose:** Configures navigation, localization, and theme.

```dart
MaterialApp.router(
  debugShowCheckedModeBanner: false,
  title: 'MyApp',
  theme: lightTheme,
  darkTheme: darkTheme,
  locale: currentLocale,
  supportedLocales: [Locale('en'), Locale('ar')],
  
  // Localization
  localizationsDelegates: const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  
  // Routing
  routerDelegate: appRouter.delegate(
    navigatorObservers: () => [
      ScreenLogger(),
      SentryNavigatorObserver(),
      // AmplitudeObserver(),
    ],
  ),
  routeInformationParser: appRouter.defaultRouteParser(),
  
  // Builder for additional layers
  builder: (context, child) => child!,
)
```

**Navigator Observers:**
- **ScreenLogger** - Log screen views for analytics
- **ErrorNavigatorObserver** - Track navigation for error context
- **AnalyticsObserver** - Track screen views for analytics

---

### **Layer 5: EasyLoading - Loading Dialogs**

**Purpose:** Initialize EasyLoading for global loading indicators.

```dart
builder: EasyLoading.init(builder: (ctx, child) {
  return child!;
})
```

---

### **Layer 6: ScreenUtil - Responsive Design**

**Purpose:** Initialize responsive sizing system.

```dart
builder: EasyLoading.init(builder: (ctx, child) {
  ScreenUtil.init(ctx);
  return child!;
})
```

**Usage in widgets:**
```dart
// Responsive sizing
Container(
  width: 100.w,   // 100 width units
  height: 50.h,   // 50 height units
  padding: EdgeInsets.all(16.r),  // 16 radius units
)
```

---

### **Layer 7: WhatsappLayout - Floating WhatsApp Button**

**Purpose:** Displays draggable WhatsApp support button.

**Location:** `lib/core/widgets/Whatsapp_layout.dart`

```dart
WhatsappLayout(
  showWhatsApp: shouldShowWhatsApp,
  child: yourContent,
)
```

**Features:**
- ✅ Draggable floating button
- ✅ Snaps to screen edges
- ✅ Opens WhatsApp on tap
- ✅ Can be shown/hidden dynamically

**Control visibility:**
```dart
// Show WhatsApp button
context.read<DeviceCubit>().updateWhatsAppMode(true);

// Hide WhatsApp button
context.read<DeviceCubit>().updateWhatsAppMode(false);

// Common use: Hide on bottom sheets
AppBottomSheets.showScrollableBody(
  context: context,
  enableChangeWhatsAppMode: true,  // Auto hide/show
  builder: (context) => YourSheet(),
);
```

---

### **Layer 8: NetworkLayerWidget - Internet Connection Banner**

**Purpose:** Shows banner when internet connection is lost/restored.

**Location:** `lib/core/widgets/network_layer/network_layer_widget.dart`

```dart
NetworkLayerWidget(
  isNetworkConnected: state.model.isNetworkConnected,
  child: yourContent,
)
```

**Implementation:**

```dart
class NetworkLayerWidget extends StatefulWidget {
  final Widget child;
  final bool isNetworkConnected;

  const NetworkLayerWidget({
    required this.child,
    required this.isNetworkConnected,
  });

  @override
  State<NetworkLayerWidget> createState() => _NetworkLayerWidgetState();
}

class _NetworkLayerWidgetState extends State<NetworkLayerWidget> {
  final ObsValue<bool> _visibilityObs = ObsValue<bool>.withInit(false);

  @override
  void didUpdateWidget(covariant NetworkLayerWidget oldWidget) {
    if (!widget.isNetworkConnected) {
      // Show banner when disconnected
      _visibilityObs.setValue(true);
    } else {
      // Hide banner after 1 second when connected
      Future.delayed(const Duration(milliseconds: 1000), () {
        _visibilityObs.setValue(false);
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          // Main content
          Expanded(child: widget.child),
          
          // Network status banner
          ObsValueConsumer(
            observable: _visibilityObs,
            builder: (context, visible) {
              return Visibility(
                visible: visible,
                child: Container(
                  height: Platform.isIOS ? 35 : 30,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 6),
                  color: widget.isNetworkConnected 
                      ? context.colors.green 
                      : context.colors.black,
                  child: Text(
                    widget.isNetworkConnected 
                        ? Translate.s.connected 
                        : Translate.s.no_internet_connection,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s12_w400(color: context.colors.white),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
```

**Features:**
- ✅ Auto-detect connection status
- ✅ Shows "No Internet" banner when offline
- ✅ Shows "Connected" briefly when reconnected
- ✅ Auto-hides after 1 second
- ✅ Platform-specific height (iOS/Android)

**Network status managed by:**
```dart
// In DeviceCubit
void setNetworkStatus(bool isNetworkConnected) {
  emit(DeviceUpdateState(
    state.model.copyWith(isNetworkConnected: isNetworkConnected)
  ));
}

// Updated automatically by GenericHttpImpl before each request
await getIt<NetworkInfoImpl>().isConnected.then((connected) {
  context.read<DeviceCubit>().setNetworkStatus(connected);
});
```

---

### **Layer 9: MediaQuery - Text Scaling Control**

**Purpose:** Control text scaling and accessibility.

```dart
MediaQuery(
  data: MediaQuery.of(context).copyWith(
    boldText: false,
    textScaler: const TextScaler.linear(1.0),
  ),
  child: child,
)
```

**Why?**
- ✅ Prevents system text size from breaking layouts
- ✅ Maintains consistent design
- ✅ Handles Arabic text on iOS properly

---

### **Layer 10: GestureDetector - Keyboard Dismissal**

**Purpose:** Tap anywhere to dismiss keyboard.

```dart
GestureDetector(
  onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
  child: yourContent,
)
```

**Usage:**
User taps outside text field → keyboard dismisses automatically.

---

### **Layer 11: Chat Integration**

**Purpose:** Integrate Chat SDK.

```dart
ChatWidget(
  // client: client,
  // backgroundKeepAlive: const Duration(minutes: 60),
  // chatThemeData: ChatThemeData.light(),
  child: yourContent,
)
```

---

## 🌐 **Network Layer Implementation**

### **How It Works**

```
API Request Triggered
    ↓
GenericHttpImpl Checks Internet
    ↓
NetworkInfoImpl.isConnected
    ↓
Updates DeviceCubit.setNetworkStatus()
    ↓
NetworkLayerWidget Listens to State
    ↓
Shows/Hides Banner Based on Status
```

### **Creating Your Own Network-Aware Widget**

```dart
class MyNetworkAwareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceCubit, DeviceState>(
      builder: (context, state) {
        if (!state.model.isNetworkConnected) {
          // Offline UI
          return OfflineView();
        }
        
        // Online UI
        return OnlineView();
      },
    );
  }
}
```

---

## 🎨 **Theme Management**

### **DeviceCubit - Theme State**

**Location:** `lib/core/bloc/device_cubit/device_cubit.dart`

```dart
class DeviceCubit extends Cubit<DeviceState> {
  void updateThemeMode(AdaptiveThemeMode mode) {
    emit(DeviceUpdateState(state.model.copyWith(themeMode: mode)));
  }
}
```

### **Theme Switching**

```dart
// In settings page
void changeTheme(BuildContext context, AdaptiveThemeMode mode) {
  // Update AdaptiveTheme
  if (mode == AdaptiveThemeMode.light) {
    AdaptiveTheme.of(context).setLight();
  } else if (mode == AdaptiveThemeMode.dark) {
    AdaptiveTheme.of(context).setDark();
  } else {
    AdaptiveTheme.of(context).setSystem();
  }
  
  // Update DeviceCubit
  context.read<DeviceCubit>().updateThemeMode(mode);
}
```

---

## 🌍 **Localization Setup**

### **Supported Languages**

```dart
supportedLocales: [
  Locale('en', 'US'),  // English
  Locale('ar', 'SA'),  // Arabic
]
```

### **Localization Delegates**

```dart
localizationsDelegates: const [
  S.delegate,                              // App translations
  GlobalMaterialLocalizations.delegate,    // Material widgets
  GlobalWidgetsLocalizations.delegate,     // Widget localization
  GlobalCupertinoLocalizations.delegate,   // Cupertino widgets
  DefaultCupertinoLocalizations.delegate,  // iOS specific
  ...GlobalStreamChatLocalizations.delegates,  // Chat localization
  ArStreamChatLocalizations.delegate,      // Arabic chat
]
```

### **Language Switching**

```dart
// Change language
void changeLanguage(BuildContext context, String languageCode) {
  final locale = Locale(languageCode);
  
  // Update DeviceCubit
  context.read<DeviceCubit>().updateLanguage(locale);
  
  // Save to preferences
  PrefHelper.setLanguage(languageCode);
  
  // Save to GlobalState
  GlobalState.instance.set('lang', languageCode);
}

// Usage
changeLanguage(context, 'ar');  // Switch to Arabic
changeLanguage(context, 'en');  // Switch to English
```

---

## 🔧 **Global Providers**

### **DeviceCubit - Device & App State**

**Manages:**
- Theme mode (light/dark/system)
- Locale (en/ar)
- Network connection status
- WhatsApp button visibility
- Device type (phone/tablet)
- User authentication status
- Currency

```dart
class DeviceCubit extends Cubit<DeviceState> {
  // Theme
  void updateThemeMode(AdaptiveThemeMode mode);
  
  // Language
  void updateLanguage(Locale locale);
  
  // Currency
  void updateCurrency(String currency);
  
  // Network
  void setNetworkStatus(bool isNetworkConnected);
  
  // WhatsApp
  void updateWhatsAppMode(bool show);
  
  // Auth
  void updateUserAuth(bool auth);
  
  // Device
  void updateDeviceType(bool isTablet);
  void updateSmallPhone(bool isSmallPhone);
  void updateIsBundle(bool isBundle);
}
```

**Usage:**
```dart
// Read state
final locale = context.read<DeviceCubit>().state.model.locale;
final isAuth = context.read<DeviceCubit>().state.model.auth;
final isConnected = context.read<DeviceCubit>().state.model.isNetworkConnected;

// Update state
context.read<DeviceCubit>().updateLanguage(Locale('ar'));
context.read<DeviceCubit>().setNetworkStatus(true);
context.read<DeviceCubit>().updateUserAuth(true);
```

---

### **Additional Global Cubits**

Add more global cubits as your app grows:

**Examples:**
- `CountriesCubit` - Countries and cities data
- `NotificationsCubit` - Notification preferences
- `SettingsCubit` - App settings

**Note:** Keep global state minimal. Prefer feature-specific state management with BaseBloc/ObsValue.

---

### **CountriesCubit - Countries Data**

**Manages:**
- Countries list
- Cities list
- States list

---

### **ServiceFilterCubit - Service Filters**

**Manages:**
- Active filters
- Filter selections
- Search queries

---

## 🧭 **Router Configuration**

### **Navigator Observers**

```dart
routerDelegate: getIt.get<AppRouter>().delegate(
  navigatorObservers: () => [
    // Screen tracking (different for user/admin)
    if (isUser) 
      UserScreenLogger() 
    else 
      AdminScreenLogger(),
    
    // Error tracking
    SentryNavigatorObserver(),
    
    // Analytics tracking
    // AmplitudeObserver(),
  ],
)
```

**Purpose of Observers:**
- **ScreenLogger**: Log which screens users visit
- **ErrorNavigator**: Attach navigation breadcrumbs to errors
- **AnalyticsObserver**: Track user journey for analytics

---

## 🎯 **Creating Custom Layers**

### **Pattern: Connection Status Layer**

```dart
class ConnectionStatusLayer extends StatelessWidget {
  final Widget child;
  final bool isConnected;

  const ConnectionStatusLayer({
    required this.child,
    required this.isConnected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        
        // Connection banner
        if (!isConnected)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              color: context.colors.alertRed,
              child: Text(
                'No Internet Connection',
                style: AppTextStyle.s14_w500(color: context.colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
```

---

### **Pattern: Maintenance Mode Layer**

```dart
class MaintenanceLayer extends StatelessWidget {
  final Widget child;
  final bool isUnderMaintenance;

  const MaintenanceLayer({
    required this.child,
    required this.isUnderMaintenance,
  });

  @override
  Widget build(BuildContext context) {
    if (isUnderMaintenance) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.construction, size: 100),
              SizedBox(height: 24),
              Text(
                'App Under Maintenance',
                style: AppTextStyle.h3(color: context.colors.textColor),
              ),
              SizedBox(height: 8),
              Text(
                'We\'ll be back soon!',
                style: AppTextStyle.s16_w400(color: context.colors.grey),
              ),
            ],
          ),
        ),
      );
    }
    
    return child;
  }
}
```

---

### **Pattern: Feature Flag Layer**

```dart
class FeatureFlagLayer extends StatelessWidget {
  final Widget child;
  final Map<String, bool> features;

  const FeatureFlagLayer({
    required this.child,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<Map<String, bool>>.value(
      value: features,
      child: child,
    );
  }
}

// Usage
bool isFeatureEnabled = Provider.of<Map<String, bool>>(context)['new_feature'] ?? false;

if (isFeatureEnabled) {
  // Show new feature
}
```

---

### **Pattern: Analytics Layer**

```dart
class AnalyticsLayer extends StatelessWidget {
  final Widget child;

  const AnalyticsLayer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      observers: [
        AnalyticsObserver(),
      ],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => child,
        );
      },
    );
  }
}
```

---

## 💡 **Complete Examples**

### **Example 1: Adding Update Available Layer**

```dart
class UpdateAvailableLayer extends StatelessWidget {
  final Widget child;
  final bool updateAvailable;
  final String latestVersion;

  const UpdateAvailableLayer({
    required this.child,
    required this.updateAvailable,
    required this.latestVersion,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        
        // Update banner at top
        if (updateAvailable)
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 0,
            right: 0,
            child: Material(
              color: context.colors.primaryBlue,
              child: InkWell(
                onTap: () {
                  // Navigate to update page
                  _showUpdateDialog(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.system_update,
                        color: context.colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Update available: v$latestVersion',
                          style: AppTextStyle.s14_w500(
                            color: context.colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Update',
                        style: AppTextStyle.s14_w600(
                          color: context.colors.white,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: context.colors.white,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _showUpdateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Available'),
        content: Text('A new version $latestVersion is available.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Later'),
          ),
          ElevatedButton(
            onPressed: () {
              // Open store
              _openStore();
            },
            child: Text('Update Now'),
          ),
        ],
      ),
    );
  }

  void _openStore() {
    // Launch App Store/Play Store
  }
}
```

---

### **Example 2: Adding Auth Guard Layer**

```dart
class AuthGuardLayer extends StatelessWidget {
  final Widget child;

  const AuthGuardLayer({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceCubit, DeviceState>(
      builder: (context, state) {
        final token = PrefHelper.getUserToken();
        final isAuthenticated = state.model.auth && token != null;

        if (!isAuthenticated) {
          // Not authenticated - show login
          return LoginPage();
        }

        // Authenticated - show app
        return child;
      },
    );
  }
}
```

---

### **Example 3: Complete App with All Layers**

```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GeneralProviders.instance.providers(context),
      
      child: BlocBuilder<DeviceCubit, DeviceState>(
        builder: (context, state) {
          return AdaptiveTheme(
            light: AppLightTheme(language: state.model.locale.languageCode).theme,
            dark: AppDarkTheme(language: state.model.locale.languageCode).theme,
            initial: state.model.themeMode,
            
            builder: (theme, darkTheme) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'My App',
                theme: theme,
                darkTheme: darkTheme,
                locale: state.model.locale,
                supportedLocales: S.delegate.supportedLocales,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                routerDelegate: router.delegate(),
                routeInformationParser: router.defaultRouteParser(),
                
                builder: EasyLoading.init(builder: (ctx, child) {
                  ScreenUtil.init(ctx);
                  
                  return WhatsappLayout(
                    showWhatsApp: state.model.showWhatsApp,
                    child: NetworkLayerWidget(
                      isNetworkConnected: state.model.isNetworkConnected,
                      child: UpdateAvailableLayer(
                        updateAvailable: false,  // Check from remote config
                        latestVersion: '1.0.1',
                        child: MaintenanceLayer(
                          isUnderMaintenance: false,  // Check from remote config
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
                            child: child!,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
          );
        },
      ),
    );
  }
}
```

---

## 🎨 **Best Practices**

### **1. Layer Organization**

```dart
// ✅ CORRECT: Organized from outside to inside
MultiBlocProvider          // Outermost - State
  └── AdaptiveTheme        // Theme management
      └── MaterialApp      // App configuration
          └── EasyLoading  // Loading system
              └── Layers   // Custom layers
                  └── Content  // Actual app content
```

---

### **2. State Management**

```dart
// ✅ CORRECT: Use DeviceCubit for app-wide state
context.read<DeviceCubit>().updateLanguage(locale);
context.read<DeviceCubit>().setNetworkStatus(connected);

// ❌ WRONG: Using local state for app-wide settings
setState(() {
  currentLanguage = 'ar';
});
```

---

### **3. Network Handling**

```dart
// ✅ CORRECT: Let NetworkLayerWidget handle display
// GenericHttpImpl automatically updates connection status

// ✅ CORRECT: Disable features when offline
BlocBuilder<DeviceCubit, DeviceState>(
  builder: (context, state) {
    return ElevatedButton(
      onPressed: state.model.isNetworkConnected ? onPressed : null,
      child: Text('Submit'),
    );
  },
)
```

---

### **4. Loading Management**

```dart
// ✅ CORRECT: Use EasyLoading for global loading
getIt<LoadingHelper>().showLoadingDialog();

// ✅ CORRECT: Use BaseBloc for screen-specific loading
itemsBloc.loadingState();

// ❌ WRONG: Multiple overlapping loading indicators
```

---

### **5. Theme Consistency**

```dart
// ✅ CORRECT: Always use theme colors
Container(
  color: context.colors.background,
  child: Text(
    'Hello',
    style: AppTextStyle.s16_w400(color: context.colors.textColor),
  ),
)

// ❌ WRONG: Hardcoded colors
Container(
  color: Colors.white,
  child: Text('Hello', style: TextStyle(color: Colors.black)),
)
```

---

## 🔧 **Advanced Implementations**

### **Custom Loading Layer with Percent**

```dart
class LoadingPercentLayer extends StatelessWidget {
  final Widget child;
  final ObsValue<int>? loadingPercent;

  const LoadingPercentLayer({
    required this.child,
    this.loadingPercent,
  });

  @override
  Widget build(BuildContext context) {
    if (loadingPercent == null) return child;

    return Stack(
      children: [
        child,
        
        // Loading overlay
        ObsValueConsumer(
          observable: loadingPercent!,
          builder: (context, percent) {
            if (percent == 0 || percent == 100) return SizedBox.shrink();
            
            return Container(
              color: Colors.black54,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(value: percent / 100),
                    SizedBox(height: 16),
                    Text(
                      '$percent%',
                      style: AppTextStyle.s16_w600(
                        color: context.colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
```

---

### **Disable Interaction Layer**

```dart
class DisableInteractionLayer extends StatelessWidget {
  final Widget child;
  final bool isDisabled;

  const DisableInteractionLayer({
    required this.child,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisabled,
      child: Opacity(
        opacity: isDisabled ? 0.5 : 1.0,
        child: child,
      ),
    );
  }
}

// Usage
DisableInteractionLayer(
  isDisabled: isProcessing,
  child: YourForm(),
)
```

---

### **Debug Banner Layer**

```dart
class DebugBannerLayer extends StatelessWidget {
  final Widget child;
  final String environment;

  const DebugBannerLayer({
    required this.child,
    required this.environment,
  });

  @override
  Widget build(BuildContext context) {
    if (environment == 'production') return child;

    return Stack(
      children: [
        child,
        
        // Environment banner
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: environment == 'dev' 
                  ? Colors.orange 
                  : Colors.purple,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              environment.toUpperCase(),
              style: AppTextStyle.s10_w600(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
```

---

## 📝 **Implementation Checklist**

### **When Creating App-Wide Features**

- [ ] Determine if it needs to be a layer (wraps all content)
- [ ] Decide positioning (before/after which layer)
- [ ] Create widget with child parameter
- [ ] Make it reactive (use Cubit/ObsValue if needed)
- [ ] Add to MyApp builder chain
- [ ] Test with theme changes
- [ ] Test with language changes
- [ ] Test with network changes
- [ ] Document usage

---

### **When Adding Global State**

- [ ] Add property to DeviceModel
- [ ] Add update method to DeviceCubit
- [ ] Use BlocBuilder to listen to changes
- [ ] Save to SharedPreferences if persistent
- [ ] Add to GlobalState if temporary
- [ ] Document the new state

---

## 🎯 **Summary**

### **App Architecture Layers (Outside → Inside)**

1. **MultiBlocProvider** - Global state providers
2. **AdaptiveTheme** - Theme management (light/dark)
3. **OverlaySupport** - Overlay notifications
4. **MaterialApp.router** - App configuration & routing
5. **EasyLoading** - Loading dialog system
6. **ScreenUtil** - Responsive sizing
7. **WhatsappLayout** - Floating WhatsApp button
8. **NetworkLayerWidget** - Connection status banner
9. **MediaQuery** - Text scaling control
10. **GestureDetector** - Keyboard dismissal
11. **StreamChat** - Chat SDK integration
12. **Router Content** - Actual pages

### **Global State (DeviceCubit)**

Manages:
- ✅ Theme mode
- ✅ Locale
- ✅ Network status
- ✅ WhatsApp visibility
- ✅ Auth status
- ✅ Currency
- ✅ Device type

### **Key Patterns**

1. **Wrap Pattern**: Each layer wraps its child
2. **State Pattern**: Use Cubit for reactive updates
3. **Builder Pattern**: Use builder for context access
4. **Observer Pattern**: Navigate with observers
5. **Configuration Pattern**: Centralized config in MyApp

---

## ✅ **Best Practices**

### **Do's:**
- ✅ Use DeviceCubit for app-wide state
- ✅ Let NetworkLayerWidget handle connection display
- ✅ Use AdaptiveTheme for theme management
- ✅ Add navigator observers for tracking
- ✅ Initialize services in main.dart
- ✅ Wrap MaterialApp with necessary layers
- ✅ Use BlocBuilder to react to state changes
- ✅ Maintain layer order (outside to inside)

### **Don'ts:**
- ❌ Don't add too many layers (performance impact)
- ❌ Don't duplicate functionality across layers
- ❌ Don't use setState for app-wide settings
- ❌ Don't hardcode theme values
- ❌ Don't skip initialization steps
- ❌ Don't create circular dependencies

---

## 🚀 **Quick Reference**

| Need | Solution | Location |
|------|----------|----------|
| Show loading | `LoadingHelper` | In HTTP layer |
| Network banner | `NetworkLayerWidget` | In MyApp |
| Theme switching | `AdaptiveTheme.of(context)` | Throughout app |
| Language change | `DeviceCubit.updateLanguage()` | Settings |
| WhatsApp button | `WhatsappLayout` | In MyApp |
| Global state | `DeviceCubit` | Anywhere |
| Persistent data | `PrefHelper` | Anywhere |
| Temporary data | `GlobalState` | Anywhere |
| Dismiss keyboard | `GestureDetector` | In MyApp |
| Text scaling | `MediaQuery` override | In MyApp |

---

**This architecture ensures a robust, maintainable, and feature-rich app with proper separation of concerns!** 🏛️

