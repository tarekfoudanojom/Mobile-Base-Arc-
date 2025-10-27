# 🔔 Firebase Notifications Implementation Guide

This comprehensive guide explains how to implement Firebase Cloud Messaging (FCM) and local notifications in the Nojom Flutter application, including setup, handling, and navigation from notifications.

---

## 📋 **Table of Contents**

1. [Notification System Overview](#notification-system-overview)
2. [Setup & Configuration](#setup--configuration)
3. [GlobalNotification Class](#globalnotification-class)
4. [Notification States](#notification-states)
5. [Implementation Guide](#implementation-guide)
6. [Notification Types](#notification-types)
7. [Handling Notification Taps](#handling-notification-taps)
8. [Background Messages](#background-messages)
9. [Token Management](#token-management)
10. [Stream Chat Integration](#stream-chat-integration)
11. [Platform-Specific Setup](#platform-specific-setup)
12. [Testing Notifications](#testing-notifications)
13. [Best Practices](#best-practices)
14. [Troubleshooting](#troubleshooting)

---

## 🎯 **Notification System Overview**

### **Architecture**

```
Firebase Cloud Messaging (FCM)
    ├── Remote Notifications (from server)
    │   ├── Foreground (app open)
    │   ├── Background (app minimized)
    │   └── Terminated (app closed)
    │
    └── Local Notifications (flutter_local_notifications)
        ├── Show notification UI
        ├── Handle notification taps
        └── Custom notification channels
```

### **Components**

1. **Firebase Messaging** - Receive push notifications from server
2. **Local Notifications** - Display notifications with custom UI
3. **GlobalNotification** - Centralized notification manager
4. **Background Handler** - Handle messages when app is closed
5. **Navigation Router** - Navigate to screens from notification taps

---

## ⚙️ **Setup & Configuration**

### **Step 1: Add Dependencies**

**File:** `pubspec.yaml`

```yaml
dependencies:
  # Firebase
  firebase_core: ^latest
  firebase_messaging: ^latest
  
  # Local notifications
  flutter_local_notifications: ^latest
```

### **Step 2: Firebase Project Setup**

1. **Create Firebase Project** at https://console.firebase.google.com
2. **Add Android App**:
   - Download `google-services.json`
   - Place in `android/app/`
3. **Add iOS App**:
   - Download `GoogleService-Info.plist`
   - Place in `ios/Runner/`

### **Step 3: Android Configuration**

**File:** `android/app/build.gradle`

```gradle
dependencies {
    implementation platform('com.google.firebase:firebase-bom:latest')
    implementation 'com.google.firebase:firebase-messaging'
}

apply plugin: 'com.google.gms.google-services'
```

**File:** `android/app/src/main/AndroidManifest.xml`

```xml
<manifest>
    <application>
        <!-- Firebase Messaging Service -->
        <service
            android:name="com.google.firebase.messaging.FirebaseMessagingService"
            android:exported="false">
            <intent-filter>
                <action android:name="com.google.firebase.MESSAGING_EVENT" />
            </intent-filter>
        </service>
        
        <!-- Default notification icon -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_icon"
            android:resource="@mipmap/ic_launcher" />
        
        <!-- Default notification color -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_color"
            android:resource="@color/colorPrimary" />
        
        <!-- Default notification channel -->
        <meta-data
            android:name="com.google.firebase.messaging.default_notification_channel_id"
            android:value="default_channel" />
    </application>
    
    <!-- Permissions -->
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
</manifest>
```

### **Step 4: iOS Configuration**

**File:** `ios/Runner/AppDelegate.swift`

```swift
import UIKit
import Flutter
import Firebase
import flutter_local_notifications

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    
    // Request notification permissions
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }
    
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

**File:** `ios/Runner/Info.plist`

```xml
<key>UIBackgroundModes</key>
<array>
    <string>fetch</string>
    <string>remote-notification</string>
</array>
```

### **Step 5: Initialize in App**

**File:** `lib/main.dart`

```dart
Future _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // 1. Initialize Firebase
  await Firebase.initializeApp();
  
  // 2. Setup Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  
  // 3. Other initializations...
  await configureDependencies();
  
  // 4. Setup Notifications (IMPORTANT: After DI)
  getIt<GlobalNotification>().setupNotification();
}
```

---

## 🏗️ **GlobalNotification Class**

### **Class Structure**

**Location:** `lib/core/helpers/global_notification.dart`

```dart
@lazySingleton
class GlobalNotification {
  // Singleton instance
  static GlobalNotification? _instance;
  static GlobalNotification get instance {
    _instance ??= GlobalNotification();
    return _instance!;
  }

  // Firebase Messaging
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  // Local Notifications Plugin
  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;

  // Navigation context
  BuildContext? _navigationContext;

  // Stream controller for notification data
  static final StreamController<Map<String, dynamic>> _onMessageStreamController 
      = StreamController.broadcast();

  // Safe getter for notifications plugin
  FlutterLocalNotificationsPlugin get _notificationsPlugin {
    if (_flutterLocalNotificationsPlugin == null) {
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      const android = AndroidInitializationSettings("@mipmap/launcher_icon");
      const ios = DarwinInitializationSettings();
      const initSettings = InitializationSettings(android: android, iOS: ios);
      _flutterLocalNotificationsPlugin!.initialize(initSettings);
    }
    return _flutterLocalNotificationsPlugin!;
  }

  // Stream for listening to notifications
  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }
}
```

---

## 🚀 **Implementation Guide**

### **Step 1: Setup Notification System**

```dart
Future<void> setupNotification({BuildContext? context}) async {
  // 1. Save navigation context
  _navigationContext = context;

  // 2. Initialize Local Notifications
  _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  
  const android = AndroidInitializationSettings("@mipmap/launcher_icon");
  const ios = DarwinInitializationSettings();
  const initSettings = InitializationSettings(android: android, iOS: ios);

  await _flutterLocalNotificationsPlugin!.initialize(
    initSettings,
    onDidReceiveNotificationResponse: (details) {
      // Handle notification tap
      flutterNotificationClick(details.payload);
    },
  );

  // 3. Initialize Firebase
  await Firebase.initializeApp();

  // 4. Request Permissions
  final settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: true,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    log('User granted notification permission');
    
    // 5. Get FCM Token
    final token = await messaging.getToken();
    log("FCM Token: $token");

    if (token != null) {
      // Store token
      await GlobalState.instance.set('fcm_token', token);
      
      // Register with backend
      await sendTokenToServer(token);
      
      // Register with Stream Chat
      _reRegisterStreamChatDevice(token);
    }

    // 6. Setup Message Listeners
    _setupMessageListeners();
    
    // 7. Setup Token Refresh Listener
    _setupTokenRefreshListener();
    
    // 8. Setup Background Handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } else if (settings.authorizationStatus == AuthorizationStatus.denied) {
    log('User declined or has not accepted notification permission');
  }
}
```

---

### **Step 2: Setup Message Listeners**

```dart
void _setupMessageListeners() {
  // FOREGROUND: App is open and visible
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    log("Foreground Message: ${message.messageId}");
    log("Title: ${message.notification?.title}");
    log("Body: ${message.notification?.body}");
    log("Data: ${message.data}");

    // Check message type
    if (_isStreamCallMessage(message)) {
      // Handle call notification
      return;
    } else if (_isStreamChatMessage(message)) {
      // Handle chat message
      _handleStreamChatMessage(message);
    } else {
      // Handle app notification
      _showLocalNotification(message);
      _onMessageStreamController.add(message.data);
      
      // Handle special actions
      if (int.parse(message.data["type"] ?? "0") == -1) {
        // Force logout
        StorageHelper.instance.clearSavedData();
      }
    }
  });

  // BACKGROUND: App is minimized
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    log('Notification tapped (app was in background)');
    
    if (_isStreamChatMessage(message)) {
      _handleStreamChatNotificationTap(message);
    } else {
      // Navigate to appropriate screen
      flutterNotificationClick(json.encode(message.data));
    }
  });
}
```

---

### **Step 3: Setup Token Refresh**

```dart
void _setupTokenRefreshListener() {
  messaging.onTokenRefresh.listen((String newToken) {
    log('FCM Token refreshed: $newToken');
    
    // Store new token
    GlobalState.instance.set('fcm_token', newToken);
    
    // Update on server
    sendTokenToServer(newToken);
    
    // Re-register with Stream Chat
    _reRegisterStreamChatDevice(newToken);
  });
}

Future<void> sendTokenToServer(String token) async {
  try {
    await repository.updateFCMToken(token);
  } catch (e) {
    log('Error sending token to server: $e');
  }
}
```

---

## 📬 **Notification States**

### **App State Scenarios**

```
┌─────────────────┬──────────────┬───────────────┬─────────────────┐
│ App State       │ Received Via │ Handler       │ Shows In        │
├─────────────────┼──────────────┼───────────────┼─────────────────┤
│ Foreground      │ onMessage    │ App handles   │ Local notif     │
│ Background      │ System       │ OS shows      │ System tray     │
│ Terminated      │ System       │ Background    │ System tray     │
│ Tap (BG/Term)   │ onMessageOpened│ App handles │ Navigate        │
└─────────────────┴──────────────┴───────────────┴─────────────────┘
```

### **1. Foreground (App Open)**

**Handler:** `FirebaseMessaging.onMessage`

```dart
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  // App is visible, show local notification
  _showLocalNotification(message);
  
  // Add to stream for in-app handling
  _onMessageStreamController.add(message.data);
});
```

### **2. Background (App Minimized)**

**Handler:** `FirebaseMessaging.onMessageOpenedApp`

```dart
FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  // User tapped notification, navigate to screen
  navigateToNotificationScreen(message.data);
});
```

### **3. Terminated (App Closed)**

**Handler:** Top-level `firebaseMessagingBackgroundHandler`

```dart
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  
  final instance = GlobalNotification.instance;
  
  // Show local notification
  await instance._showLocalNotification(message);
}
```

**Note:** Must be top-level function (not class method).

---

## 🔔 **Notification Types**

### **Type Detection**

The app distinguishes between different notification types:

```dart
// 1. Stream Call Notification
bool _isStreamCallMessage(RemoteMessage message) {
  return message.data.containsKey('call_cid');
}

// 2. Stream Chat Notification
bool _isStreamChatMessage(RemoteMessage message) {
  return message.data.containsKey('channel_id') ||
         message.data.containsKey('channel_type') ||
         message.data.containsKey('message_id') ||
         message.data.containsKey('stream') ||
         message.data['sender'] == 'stream.chat';
}

// 3. App-Specific Notification
// If neither of above, it's an app notification
```

### **Handling Different Types**

```dart
if (_isStreamCallMessage(message)) {
  // Handle incoming call
  await StreamCallManager.handleBackgroundCallNotification(message);
} else if (_isStreamChatMessage(message)) {
  // Handle chat message
  await _handleStreamChatMessage(message);
} else {
  // Handle app notification
  await _showLocalNotification(message);
}
```

---

## 📲 **Showing Local Notifications**

### **Basic Notification**

```dart
Future<void> _showLocalNotification(RemoteMessage? message) async {
  if (message == null) return;

  try {
    // Android configuration
    final android = AndroidNotificationDetails(
      "${DateTime.now()}",              // Channel ID (unique)
      "Default",                        // Channel name
      priority: Priority.high,          // High priority
      importance: Importance.max,       // Max importance
      icon: "@mipmap/ic_launcher",      // Notification icon
      playSound: true,                  // Play sound
    );

    // iOS configuration
    const ios = DarwinNotificationDetails(
      presentAlert: true,                // Show alert
      presentBadge: true,                // Show badge
      presentSound: true,                // Play sound
    );

    const platform = NotificationDetails(
      android: android,
      iOS: ios,
    );

    // Show notification
    await _notificationsPlugin.show(
      DateTime.now().microsecond,       // Unique ID
      message.notification?.title,      // Title
      message.notification?.body,       // Body
      platform,                          // Platform details
      payload: json.encode(message.data), // Data for tap handling
    );
    
    log("✅ Notification shown");
  } catch (e) {
    log("❌ Error showing notification: $e");
  }
}
```

### **Custom Notification with Channel**

```dart
Future<void> _showStreamChatNotification({
  required String title,
  required String body,
  required Map<String, dynamic> data,
}) async {
  try {
    // Android with custom channel
    const android = AndroidNotificationDetails(
      "stream_chat_channel",           // Channel ID
      "Stream Chat",                   // Channel name
      channelDescription: "Notifications for Stream Chat messages",
      importance: Importance.max,
      priority: Priority.high,
      icon: "@mipmap/ic_launcher",
      playSound: true,
      enableVibration: true,
      color: Color(0xFF2970FF),        // Notification color
    );

    // iOS configuration
    const ios = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: 'default',
    );

    const platform = NotificationDetails(android: android, iOS: ios);

    // Generate unique ID
    final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    // Show notification
    await _notificationsPlugin.show(
      id,
      title,
      body,
      platform,
      payload: json.encode({
        'type': 'stream_chat',
        'data': data,
      }),
    );

    log("✅ Chat notification shown: $title");
  } catch (e) {
    log("❌ Error showing chat notification: $e");
  }
}
```

### **Notification with Actions**

```dart
Future<void> showNotificationWithActions({
  required String title,
  required String body,
  required Map<String, dynamic> data,
}) async {
  // Android with action buttons
  final android = AndroidNotificationDetails(
    "actionable_channel",
    "Actionable Notifications",
    priority: Priority.high,
    importance: Importance.max,
    icon: "@mipmap/ic_launcher",
    actions: [
      AndroidNotificationAction(
        'accept',
        'Accept',
        icon: DrawableResourceAndroidBitmap('@mipmap/ic_check'),
      ),
      AndroidNotificationAction(
        'decline',
        'Decline',
        icon: DrawableResourceAndroidBitmap('@mipmap/ic_close'),
      ),
    ],
  );

  const ios = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
  );

  final platform = NotificationDetails(android: android, iOS: ios);

  await _notificationsPlugin.show(
    DateTime.now().microsecond,
    title,
    body,
    platform,
    payload: json.encode(data),
  );
}
```

---

## 🎯 **Handling Notification Taps**

### **Tap Handler**

```dart
static Future flutterNotificationClick(String? payload) async {
  if (payload == null) return;

  try {
    final data = json.decode(payload);
    
    // Check notification type
    if (data['type'] == 'stream_chat') {
      // Navigate to chat
      bool isStar = PrefHelper.getUserType() == UserTypeEnum.star;
      if (isStar) {
        _handleStarRoute(data['data']['channel_id']);
      } else {
        _handleBrandRoute(data['data']['channel_id']);
      }
    } else if (data['type'] == 'order') {
      // Navigate to order
      _navigateToOrder(data['order_id']);
    } else if (data['type'] == 'campaign') {
      // Navigate to campaign
      _navigateToCampaign(data['campaign_id']);
    } else {
      // Default handling
      log('Regular notification clicked: $data');
    }
  } catch (e) {
    log('Error parsing notification payload: $e');
  }
}
```

### **Navigation Examples**

```dart
static Future<void> _handleStarRoute(String channelId) async {
  final context = getIt<GlobalContext>().context();
  
  // Find channel in Stream Chat
  final channel = StreamChat.of(context)
      .client
      .state
      .channels
      .values
      .firstWhereOrNull((channel) => channel.id == channelId);

  if (channel != null) {
    // Channel loaded, navigate directly
    ChatRoom.channel = channel;
    AutoRouter.of(context).push(ChatRoomRoute()).then((_) {
      ChatRoom.channel = null;
    });
  } else {
    // Channel not loaded, navigate to home with channel ID
    AutoRouter.of(context).pushAndPopUntil(
      HomePageRoute(initialChannelId: channelId),
      predicate: (route) => route.settings.name == HomePageRoute.name,
    );
  }
}

// Navigate to specific screens
void _navigateToOrder(int orderId) {
  final context = getIt<GlobalContext>().context();
  AutoRouter.of(context).push(OrderDetailsRoute(orderId: orderId));
}

void _navigateToCampaign(int campaignId) {
  final context = getIt<GlobalContext>().context();
  AutoRouter.of(context).push(CampaignDetailsRoute(campaignId: campaignId));
}
```

---

## 🌙 **Background Messages**

### **Background Handler (Top-Level Function)**

**Must be defined at top level of file:**

```dart
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    log("Background message: ${message.messageId}");
    log("Data: ${message.toMap()}");

    // Initialize Firebase
    await Firebase.initializeApp();

    final instance = GlobalNotification.instance;

    // Handle different message types
    if (instance._isStreamCallMessage(message)) {
      await StreamCallManager.handleBackgroundCallNotification(message);
    } else if (instance._isStreamChatMessage(message)) {
      await instance._handleStreamChatMessage(message);
    } else {
      await instance._showLocalNotification(message);
    }
  } catch (e) {
    log("❌ Error in background handler: $e");
  }
}
```

**Register background handler:**

```dart
// In setupNotification()
FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
```

---

## 🔑 **Token Management**

### **Get FCM Token**

```dart
Future<String?> getFCMToken() async {
  try {
    final token = await FirebaseMessaging.instance.getToken();
    log("FCM Token: $token");
    return token;
  } catch (e) {
    log("Error getting FCM token: $e");
    return null;
  }
}
```

### **Send Token to Backend**

```dart
Future<void> sendTokenToBackend(String token) async {
  try {
    await getIt<UserRepository>().updateDeviceToken(
      token: token,
      platform: Platform.isIOS ? 'ios' : 'android',
    );
    log("Token sent to backend");
  } catch (e) {
    log("Error sending token: $e");
  }
}
```

### **Token Refresh**

```dart
FirebaseMessaging.instance.onTokenRefresh.listen((String newToken) {
  log('Token refreshed: $newToken');
  
  // Update stored token
  GlobalState.instance.set('fcm_token', newToken);
  
  // Update backend
  sendTokenToBackend(newToken);
  
  // Update Stream Chat
  _reRegisterStreamChatDevice(newToken);
});
```

### **Delete Token (Logout)**

```dart
Future<void> deleteToken() async {
  try {
    await FirebaseMessaging.instance.deleteToken();
    GlobalState.instance.set('fcm_token', null);
    log("FCM token deleted");
  } catch (e) {
    log("Error deleting token: $e");
  }
}
```

---

## 💬 **Stream Chat Integration**

### **Register Device with Stream Chat**

```dart
Future<void> registerStreamChatDevice(BuildContext context) async {
  try {
    final token = await GlobalState.instance.get('fcm_token');
    
    if (token != null && token.isNotEmpty) {
      final client = StreamChat.of(context).client;
      
      await client.addDevice(
        token,
        PushProvider.firebase,
        pushProviderName: "Nogom",
      );
      
      log('✅ Device registered with Stream Chat');
    }
  } catch (e) {
    log('❌ Error registering with Stream Chat: $e');
  }
}
```

### **Remove Device from Stream Chat (Logout)**

```dart
Future<void> removeStreamChatDevice(BuildContext context) async {
  try {
    final token = await GlobalState.instance.get('fcm_token');
    
    if (token != null && token.isNotEmpty) {
      final client = StreamChat.of(context).client;
      await client.removeDevice(token);
      log('✅ Device removed from Stream Chat');
    }
  } catch (e) {
    log('❌ Error removing device: $e');
  }
}
```

### **Handle Chat Messages**

```dart
Future<void> _handleStreamChatMessage(RemoteMessage message) async {
  try {
    // Get current open channel
    final currentChannelId = await GlobalState.instance.get("channel_id");
    
    // Don't show notification if user is in this channel
    if (message.data["channel_id"] == currentChannelId) {
      return;
    }

    // Extract message info
    final title = message.notification?.title ?? 
                  message.data["title"] ?? 
                  'Chat Message';
    final body = message.notification?.body ?? 
                 message.data["body"] ?? 
                 'New message';

    // Show notification
    _showStreamChatNotification(
      title: title,
      body: body,
      data: message.data,
    );

    // Emit to stream
    _onMessageStreamController.add({
      'type': 'stream_chat',
      'data': message.data,
    });
  } catch (e) {
    log("Error handling chat message: $e");
  }
}
```

---

## 📱 **Platform-Specific Setup**

### **Android**

#### **1. Notification Channels**

Create notification channels for Android 8.0+:

```dart
Future<void> createNotificationChannels() async {
  if (Platform.isAndroid) {
    // Default channel
    const defaultChannel = AndroidNotificationChannel(
      'default_channel',
      'Default Notifications',
      description: 'General app notifications',
      importance: Importance.high,
      playSound: true,
    );

    // Chat channel
    const chatChannel = AndroidNotificationChannel(
      'stream_chat_channel',
      'Chat Messages',
      description: 'Notifications for chat messages',
      importance: Importance.max,
      playSound: true,
      enableVibration: true,
    );

    // Create channels
    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(defaultChannel);

    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(chatChannel);
  }
}
```

#### **2. Notification Icon**

```dart
// Use app icon from mipmap
icon: "@mipmap/ic_launcher"

// Use custom icon from drawable
icon: "@drawable/notification_icon"
```

**Icon requirements:**
- White icon with transparent background
- Place in `android/app/src/main/res/drawable/`
- Sizes: hdpi, mdpi, xhdpi, xxhdpi, xxxhdpi

---

### **iOS**

#### **1. Request Permissions**

```dart
final settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: true,    // Provisional permission (iOS 12+)
  sound: true,
);

if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  log('User granted permission');
} else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
  log('User granted provisional permission');
} else {
  log('User declined permission');
}
```

#### **2. APNs Configuration**

**File:** `ios/Runner/AppDelegate.swift`

```swift
import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  // Handle notification tap when app is terminated
  override func application(
    _ application: UIApplication,
    didReceiveRemoteNotification userInfo: [AnyHashable : Any],
    fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
  ) {
    completionHandler(.newData)
  }
}
```

---

## 🎯 **Complete Implementation Example**

### **Example: Order Notification System**

```dart
// 1. Define notification data structure
class OrderNotification {
  final int orderId;
  final String title;
  final String message;
  final String status;

  OrderNotification({
    required this.orderId,
    required this.title,
    required this.message,
    required this.status,
  });

  factory OrderNotification.fromJson(Map<String, dynamic> json) {
    return OrderNotification(
      orderId: json['order_id'],
      title: json['title'],
      message: json['message'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() => {
    'order_id': orderId,
    'title': title,
    'message': message,
    'status': status,
    'type': 'order',
  };
}

// 2. Show order notification
Future<void> showOrderNotification(OrderNotification notification) async {
  final android = AndroidNotificationDetails(
    "orders_channel",
    "Orders",
    channelDescription: "Order status notifications",
    importance: Importance.high,
    priority: Priority.high,
    icon: "@mipmap/ic_launcher",
    color: _getColorForStatus(notification.status),
  );

  const ios = DarwinNotificationDetails(
    presentAlert: true,
    presentBadge: true,
    presentSound: true,
  );

  final platform = NotificationDetails(android: android, iOS: ios);

  await _notificationsPlugin.show(
    notification.orderId,
    notification.title,
    notification.message,
    platform,
    payload: json.encode(notification.toJson()),
  );
}

Color _getColorForStatus(String status) {
  switch (status) {
    case 'completed':
      return Colors.green;
    case 'pending':
      return Colors.orange;
    case 'cancelled':
      return Colors.red;
    default:
      return Colors.blue;
  }
}

// 3. Handle notification tap
void _handleOrderNotification(Map<String, dynamic> data) {
  final orderId = data['order_id'];
  final context = getIt<GlobalContext>().context();
  
  AutoRouter.of(context).push(
    OrderDetailsRoute(orderId: orderId),
  );
}
```

---

## 📊 **Listening to Notifications**

### **Listen in Widget**

```dart
class NotificationListener extends StatefulWidget {
  @override
  State<NotificationListener> createState() => _NotificationListenerState();
}

class _NotificationListenerState extends State<NotificationListener> {
  StreamSubscription? _notificationSubscription;

  @override
  void initState() {
    super.initState();
    
    // Listen to notifications
    _notificationSubscription = getIt<GlobalNotification>()
        .notificationSubject
        .stream
        .listen((data) {
      _handleNotificationData(data);
    });
  }

  void _handleNotificationData(Map<String, dynamic> data) {
    final type = data['type'];
    
    switch (type) {
      case 'new_message':
        _showNewMessageBanner();
        break;
      case 'new_order':
        _refreshOrders();
        break;
      case 'profile_update':
        _refreshProfile();
        break;
      default:
        log('Unknown notification type: $type');
    }
  }

  @override
  void dispose() {
    _notificationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YourWidget();
  }
}
```

---

## ✅ **Best Practices**

### **1. Notification Permissions**

```dart
// ✅ CORRECT: Request permission early
await messaging.requestPermission(
  alert: true,
  badge: true,
  sound: true,
  provisional: true,  // iOS: Ask later
);

// ✅ CORRECT: Check permission status
final settings = await messaging.getNotificationSettings();
if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  // Notifications enabled
} else {
  // Show prompt to enable
  _showEnableNotificationsPrompt();
}
```

---

### **2. Handle All States**

```dart
// ✅ CORRECT: Handle all three states
// Foreground
FirebaseMessaging.onMessage.listen((message) {
  _showLocalNotification(message);
});

// Background tap
FirebaseMessaging.onMessageOpenedApp.listen((message) {
  _handleNotificationTap(message);
});

// Terminated
FirebaseMessaging.onBackgroundMessage(backgroundHandler);
```

---

### **3. Notification IDs**

```dart
// ✅ CORRECT: Unique IDs
final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

// ✅ CORRECT: Use object ID for updates
await _notificationsPlugin.show(
  orderId,  // Same ID will update existing notification
  title,
  body,
  platform,
);

// ❌ WRONG: Fixed ID (will replace all notifications)
await _notificationsPlugin.show(
  1,  // Bad: always same ID
  title,
  body,
  platform,
);
```

---

### **4. Payload Format**

```dart
// ✅ CORRECT: Structured JSON payload
payload: json.encode({
  'type': 'order',
  'order_id': 123,
  'status': 'completed',
  'metadata': {
    'user_id': 456,
  },
})

// ❌ WRONG: Plain string
payload: "Order #123 completed"
```

---

### **5. Channel Organization**

```dart
// ✅ CORRECT: Different channels for different types
const chatChannel = "chat_channel";
const ordersChannel = "orders_channel";
const alertsChannel = "alerts_channel";

// ✅ CORRECT: Descriptive channel names
AndroidNotificationDetails(
  "chat_channel",
  "Chat Messages",
  channelDescription: "Notifications for new chat messages",
)
```

---

## 🐛 **Troubleshooting**

### **Problem: No Notifications Showing**

**Check:**
- ✅ Firebase is initialized
- ✅ Permissions are granted
- ✅ FCM token exists
- ✅ Token sent to backend
- ✅ Notification channel created (Android)
- ✅ Background handler registered

```dart
// Debug info
final token = await messaging.getToken();
log("FCM Token: $token");

final settings = await messaging.getNotificationSettings();
log("Auth status: ${settings.authorizationStatus}");
```

---

### **Problem: Background Notifications Not Working**

**Solution:**

1. **Ensure background handler is top-level:**
```dart
// ✅ CORRECT: At top of file
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Handler code
}

// ❌ WRONG: Inside class
class MyClass {
  static Future<void> backgroundHandler(RemoteMessage message) async {}
}
```

2. **Register in setupNotification:**
```dart
FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
```

---

### **Problem: Notifications Not Navigating**

**Solution:**

```dart
// ✅ CORRECT: Save navigation context
getIt<GlobalNotification>().updateNavigationContext(context);

// ✅ CORRECT: Use router for navigation
AutoRouter.of(context).push(TargetRoute());

// ❌ WRONG: Direct Navigator (won't work with AutoRoute)
Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
```

---

### **Problem: iOS Not Receiving Notifications**

**Check:**
1. APNs certificate configured in Firebase
2. Capabilities enabled in Xcode:
   - Push Notifications
   - Background Modes → Remote notifications
3. Provisioning profile includes push notifications
4. AppDelegate properly configured

---

## 📝 **Summary**

### **Notification Flow**

```
Firebase Sends Notification
    ↓
FCM Receives
    ↓
App State Check (Foreground/Background/Terminated)
    ↓
Process Message Type (Chat/Call/App)
    ↓
Show Local Notification (if foreground)
    ↓
User Taps Notification
    ↓
Parse Payload
    ↓
Navigate to Screen
```

### **Key Components**

✅ **Firebase Messaging** - Receive push notifications
✅ **Local Notifications** - Display notifications
✅ **Background Handler** - Handle when app closed
✅ **Token Management** - Store and update tokens
✅ **Navigation** - Route from notification taps
✅ **Stream Integration** - Chat notifications
✅ **Permissions** - Request and check

### **Essential Methods**

| Method | Purpose |
|--------|---------|
| `setupNotification()` | Initialize notification system |
| `getFCMToken()` | Get device token |
| `sendTokenToBackend()` | Register token with server |
| `_showLocalNotification()` | Display notification |
| `flutterNotificationClick()` | Handle tap |
| `registerStreamChatDevice()` | Register with chat |
| `removeStreamChatDevice()` | Unregister on logout |

---

**This guide ensures robust push notification implementation with proper handling of all states and scenarios!** 🔔

