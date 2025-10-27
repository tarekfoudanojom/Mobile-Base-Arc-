import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/storage_helper.dart';
import 'package:injectable/injectable.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    log("Handling a background message: ${message.messageId}");
    log("Background message data: ${message.toMap()}");

    await Firebase.initializeApp();

    final instance = GlobalNotification.instance;

    await instance._showLocalNotification(message);

  } catch (e) {
    log("❌ Error in background message handler: $e");
  }
}

@lazySingleton
class GlobalNotification {
  static final StreamController<Map<String, dynamic>> _onMessageStreamController = StreamController.broadcast();
  static GlobalNotification? _instance;

  // Make this nullable and provide a safe getter
  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;
  static FirebaseMessaging messaging = FirebaseMessaging.instance;


  // Singleton getter
  static GlobalNotification get instance {
    _instance ??= GlobalNotification();
    return _instance!;
  }

  // Safe getter for the notifications plugin
  FlutterLocalNotificationsPlugin get _notificationsPlugin {
    if (_flutterLocalNotificationsPlugin == null) {
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      // Initialize with basic settings for background context
      const android = AndroidInitializationSettings("@mipmap/launcher_icon");
      const ios = DarwinInitializationSettings();
      const initSettings = InitializationSettings(android: android, iOS: ios);

      _flutterLocalNotificationsPlugin!.initialize(initSettings);
    }
    return _flutterLocalNotificationsPlugin!;
  }

  Future<void> setupNotification({BuildContext? context}) async {

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/launcher_icon");
    const ios = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: ios);

    _flutterLocalNotificationsPlugin!.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (details) => flutterNotificationClick(details.payload),
    );

    await Firebase.initializeApp();
    final settings = await messaging.requestPermission(provisional: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      try {
        final token = await messaging.getToken();
        log("FCM Token: $token");

        // Store token for later use when user connects to Stream Chat
        if (token != null) {
          await GlobalState.instance.set('fcm_token', token);
        }
      } catch (e) {
        log("❌ Error requesting notification permissions: $e");
      }

      messaging.setForegroundNotificationPresentationOptions();

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log("_____________________Message data:${message.data}");
        log("_____________________notification:${message.notification?.title}");

        // Handle your existing notifications
        _showLocalNotification(message);
        _onMessageStreamController.add(message.data);

        if (int.parse(message.data["type"] ?? "0") == -1) {
          StorageHelper.instance.clearSavedData();
        }
      });

      // Handle notification taps when app is in background
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('onMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });

      // Handle token refresh
      messaging.onTokenRefresh.listen((String token) {
        log('FCM Token refreshed: $token');
        GlobalState.instance.set('fcm_token', token);
      });

      // Use the top-level function instead of static method
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    }
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  Future<void> _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;

    try {
      final android = AndroidNotificationDetails(
        "${DateTime.now()}",
        "Default",
        priority: Priority.high,
        importance: Importance.max,
        shortcutId: DateTime.now().toIso8601String(),
      );
      const ios = DarwinNotificationDetails();
      final platform = NotificationDetails(android: android, iOS: ios);

      await _notificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        platform,
        payload: json.encode(message.data),
      );
    } catch (e) {
      log("❌ Error showing local notification: $e");
    }
  }

  static Future flutterNotificationClick(String? payload) async {
    if (payload != null) {
      try {
        final data = json.decode(payload);

        final context = getIt<GlobalContext>().context();
        // Navigate to the home screen or any specific screen

      } catch (e) {
        log('Error parsing notification payload: $e');
      }
    }
  }



}
