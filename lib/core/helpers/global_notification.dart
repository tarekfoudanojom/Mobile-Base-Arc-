import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/storage_helper.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    log("Handling a background message: ${message.messageId}");
    log("Background message data: ${message.toMap()}");

    await Firebase.initializeApp();

    final instance = GlobalNotification.instance;

    if (instance._isStreamCallMessage(message)) {
      // await StreamCallManager.handleBackgroundCallNotification(message);
    } else if (instance._isStreamChatMessage(message)) {
      await instance._handleStreamChatMessage(message);
    } else {
      await instance._showLocalNotification(message);
    }
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

  // Navigation context for handling notification taps
  BuildContext? _navigationContext;

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
    _navigationContext = context;

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
          _reRegisterStreamChatDevice(token);
        }
      } catch (e) {
        log("❌ Error requesting notification permissions: $e");
      }

      messaging.setForegroundNotificationPresentationOptions();

      // Handle foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log("_____________________Message data:${message.data}");
        log("_____________________notification:${message.notification?.title}");

        // Check if it's a Stream Chat message
        if (_isStreamCallMessage(message)) {
          return;
        }
        if (_isStreamChatMessage(message)) {
          _handleStreamChatMessage(message);
        } else {
          // Handle your existing notifications
          _showLocalNotification(message);
          _onMessageStreamController.add(message.data);

          if (int.parse(message.data["type"] ?? "0") == -1) {
            StorageHelper.instance.clearSavedData();
          }
        }
      });

      // Handle notification taps when app is in background
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        log('onMessageOpenedApp event was published!');
        if (_isStreamChatMessage(message)) {
          _handleStreamChatNotificationTap(message);
        } else {
          flutterNotificationClick(json.encode(message.data));
        }
      });

      // Handle token refresh
      messaging.onTokenRefresh.listen((String token) {
        log('FCM Token refreshed: $token');
        GlobalState.instance.set('fcm_token', token);
        // Re-register with Stream Chat if user is connected
        _reRegisterStreamChatDevice(token);
      });

      // Use the top-level function instead of static method
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    }
  }

  // Register FCM token with Stream Chat using your existing helper
  Future<void> registerStreamChatDevice(BuildContext context) async {
    try {
      final token = await GlobalState.instance.get('fcm_token');
      log('FCM Token: $token');
      if (token != null && token.isNotEmpty) {
        final client = StreamChat.of(context).client;
        await client.addDevice(token, PushProvider.firebase, pushProviderName: "Nogom");
        log('Device registered with Stream Chat successfully');
      }
    } catch (e) {
      log('Error registering device with Stream Chat: $e');
    }
  }

  // Re-register device token when token refreshes
  Future<void> _reRegisterStreamChatDevice(String token) async {
    try {
      if (_navigationContext != null) {
        final client = StreamChat.of(_navigationContext!).client;
        final currentUser = client.state.currentUser;
        if (currentUser != null) {
          await client.addDevice(token, PushProvider.firebase, pushProviderName: "Nogom");
          log('Device re-registered with Stream Chat after token refresh');
        }
      }
    } catch (e) {
      log('Error re-registering device with Stream Chat: $e');
    }
  }

  // Check if the message is from Stream Chat
  bool _isStreamChatMessage(RemoteMessage message) {
    return message.data.containsKey('channel_id') ||
        message.data.containsKey('channel_type') ||
        message.data.containsKey('message_id') ||
        message.data.containsKey('sender') && message.data['sender'] == 'stream.chat';
  }

  bool _isStreamCallMessage(RemoteMessage message) {
    return message.data.containsKey('call_cid') ||
        message.data.containsKey('sender') && message.data['sender'] == 'stream.chat';
  }

  // Handle Stream Chat messages in foreground
  Future<void> _handleStreamChatMessage(RemoteMessage message) async {
    try {
      final currentChannelId = await GlobalState.instance.get("channel_id");
      if (message.data["channel_id"] == currentChannelId) return;

      final body = message.notification?.body ?? message.data["body"] ?? 'New Chat message';
      final title = message.notification?.title ?? message.data["title"] ?? 'Chat Message';

      log('Received Stream Chat message: $body');
      log('Message data: ${message.data}');
      log('Full message data: ${message.toMap()}');

      await _showStreamChatNotification(title: title, body: body, data: message.data);

      _onMessageStreamController.add({
        'type': 'stream_chat',
        'data': message.data,
      });
    } catch (e, stack) {
      log("Error handling Stream Chat message: $e\n$stack");
    }
  }

  // Handle Stream Chat notification tap
  void _handleStreamChatNotificationTap(RemoteMessage message) {
    log('Stream Chat notification tapped: ${message.data}');

    if (_navigationContext != null) {
      _navigateToStreamChannel(message.data);
    }
  }

  // Navigate to Stream Chat channel using your existing structure
  void _navigateToStreamChannel(Map<String, dynamic> data) {
    try {
      String? channelId = data['channel_id'];
      String channelType = data['channel_type'] ?? 'messaging';
      String? channelCid = data['channel_cid'];

      if (_navigationContext != null) {
        final client = StreamChat.of(_navigationContext!).client;

        // Create channel reference
        Channel? channel;
        if (channelCid != null) {
          // Parse channel CID (format: "type:id")
          final parts = channelCid.split(':');
          if (parts.length == 2) {
            channel = client.channel(parts[0], id: parts[1]);
          }
        } else if (channelId != null) {
          channel = client.channel(channelType, id: channelId);
        }

        if (channel != null) {

          if (_navigationContext!.mounted) {
            _navigationContext!.router.pushNamed('/chat-room');
          }
        }
      }
    } catch (e) {
      log('Error navigating to Stream channel: $e');
    }
  }

  Future<void> _showStreamChatNotification({
    required String title,
    required String body,
    required Map<String, dynamic> data,
  }) async {
    try {
      const android = AndroidNotificationDetails(
        "stream_chat_channel",
        "Stream Chat",
        channelDescription: "Notifications for Stream Chat messages",
        importance: Importance.max,
        priority: Priority.high,
        icon: "@mipmap/ic_launcher",
        playSound: true,
      );

      const ios = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      const platform = NotificationDetails(android: android, iOS: ios);

      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      await _notificationsPlugin.show(
        id,
        title,
        body,
        platform,
        payload: json.encode({'type': 'stream_chat', 'data': data}),
      );

      log("✅ Stream Chat notification shown with title: $title, body: $body");
    } catch (e) {
      log("❌ Error showing Stream Chat notification: $e");
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

        if (data['type'] == 'stream_chat') {
          _handleRoute(data["data"]['channel_id']);
        } else {
          log('Regular notification clicked: $data');
        }
      } catch (e) {
        log('Error parsing notification payload: $e');
      }
    }
  }

  static Future<void> _handleRoute(String channelId) async {
    log('Stream Chat notification clicked');
    final context = getIt<GlobalContext>().context();
    final channel = StreamChat.of(context).client.state.channels.values.firstWhereOrNull(
          (channel) => channel.id == channelId,
        );
    if (channel != null) {
    } else {
      AutoRouter.of(context).pushAndPopUntil(
        HomePageRoute(initialChannelId: channelId),
        predicate: (r) => r.settings.name == HomePageRoute.name,
      );
    }
  }

  // Remove device from Stream Chat (call on logout)
  Future<void> removeStreamChatDevice(BuildContext context) async {
    try {
      final token = await GlobalState.instance.get('fcm_token');
      if (token != null && token.isNotEmpty) {
        final client = StreamChat.of(context).client;
        await client.removeDevice(token);
        log('Device removed from Stream Chat');
      }
    } catch (e) {
      log('Error removing device from Stream Chat: $e');
    }
  }

  void updateNavigationContext(BuildContext context) {
    _navigationContext = context;
  }
}
