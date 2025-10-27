import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/file_service.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_notification.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_constants.dart';

enum LocationType {
  current,
  place,
  live,
}

class StreamChatHelper {
  static Future<User?> connectCurrentUserWithNotifications(
      BuildContext context) async {
    try {
      log("🔧 Connecting user to StreamChat with notifications...");

      // Step 1: Connect user to StreamChat
      final user = await connectCurrentUser();
      if (user == null) {
        log("❌ User connection failed");
        return null;
      }

      // Step 2: Verify connection was successful
      final client = StreamChat.of(context).client;
      if (client.state.currentUser == null) {
        log("❌ StreamChat connection verification failed - currentUser is null");
        return null;
      }

      log("✅ StreamChat user connected: ${client.state.currentUser!.name} (${client.state.currentUser!.id})");

      // Step 3: Register device for push notifications after successful connection
      try {
        final notificationService = getIt<GlobalNotification>();
        await notificationService.registerStreamChatDevice(context);
        log("✅ Push notifications registered successfully");
      } catch (e) {
        log('⚠️ Error registering push notifications (continuing anyway): $e');
      }

      return user;
    } catch (e, stackTrace) {
      log("❌ Error in connectCurrentUserWithNotifications: $e");
      log("Stack trace: $stackTrace");
      return null;
    }
  }

  // Updated connectUser method with push notification registration
  static Future<void> connectUserWithNotifications(
      BuildContext context, int userId) async {
    createOtherToken(
        userId); // Register device for push notifications after successful connection
    try {
      final notificationService = getIt<GlobalNotification>();
      await notificationService.registerStreamChatDevice(context);
    } catch (e) {
      log('Error registering push notifications: $e');
    }
  }

  // Method to handle logout and cleanup push notifications
  static Future<void> disconnectUserWithNotifications(
      BuildContext context) async {
    try {
      // Remove device from Stream Chat push notifications
      final notificationService = getIt<GlobalNotification>();
      await notificationService.removeStreamChatDevice(context);
    } catch (e) {
      log('Error removing push notification device: $e');
    }

    // Disconnect user
    final client = StreamChat.of(context).client;
    await client.disconnectUser();
  }

  static void whenStreamChat({
    required BuildContext context,
    required void Function(Event event) onNewMessage,
    required void Function(Event event) onConnectionRecovered,
    required void Function(Event event) onConnectionLost,
    required void Function(Event event) onTypingStart,
    required void Function(Event event) onTypingStop,
  }) {
    final channel = StreamChannel.of(context).channel;

    channel.on(EventType.messageNew).listen(onNewMessage);
    channel.on(EventType.connectionRecovered).listen(onConnectionRecovered);
    channel.on(EventType.connectionChanged).listen(onConnectionLost);
    channel.on(EventType.typingStart).listen(onTypingStart);
    channel.on(EventType.typingStop).listen(onTypingStop);
  }

  static Future<User?> connectCurrentUser() async {
    try {
      log("📡 Starting StreamChat user connection...");
      var context = getIt<GlobalContext>().context();
      final userData = context.read<ProfileCubit>().state.model;
      if (userData == null) {
        log("❌ No user data available for connection");
        return null;
      }

      final client = StreamChat.of(context).client;
      final token =
      GlobalState.instance.get(ApplicationConstants.keyStreamChatToken);

      if (token == null || token.toString().isEmpty) {
        log("❌ No valid token available for StreamChat connection");
        return null;
      }

      final userId = userData.id.toString();
      final username = userData.getConcatenatedName;
      final userImage = userData.filePath?.pathProfilePicClient != null
          ? "${userData.filePath?.pathProfilePicClient}${userData.profileImage}"
          : 'https://getstream.io/random_png/?id=$userId&name=$username';

      // Following Stream documentation user object pattern
      final user = User(
        id: userId,
        name: username,
        image: userImage,
        extraData: {
          'email': '$userId@example.com',
          'role': 'user',
          'localized_name': {
            'ar': userData.lastName ?? userData.firstName,
            'en': userData.firstName ?? userData.lastName,
          },
        },
      );

      log("📡 Connecting user '$userId' ($username) to StreamChat...");

      // Clean disconnection first, following Stream best practices
      if (client.state.currentUser != null) {
        try {
          log("🔄 Disconnecting existing user...");
          await client.disconnectUser();
        } catch (e) {
          log("⚠️ Error disconnecting existing user: $e");
        }
      }

      // Connect with token - following Stream Chat documentation
      log("🔗 Calling client.connectUser...");
      await client.connectUser(user, token);

      // Connection verification - currentUser should now be available
      await Future.delayed(
          const Duration(milliseconds: 100)); // Brief delay for state update

      if (client.state.currentUser?.id != userId) {
        throw Exception(
            'User connection verification failed. Expected: $userId, Got: ${client.state.currentUser?.id}');
      }

      log("✅ StreamChat connection established successfully");
      log("👤 Connected user: ${client.state.currentUser!.name} (${client.state.currentUser!.id})");
      return user;
    } catch (e, stackTrace) {
      log("Stack trace: $stackTrace");
      return null;
    }
  }

  static Future<Channel> openOrCreateChannelWithUser(BuildContext context,
      {required int otherUserId}) async {
    await createOtherToken(otherUserId);

    await connectCurrentUser();
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) throw Exception('User not authenticated');

    final client = StreamChat.of(context).client;
    final members = [otherUserId.toString(), currentUser.id]..toSet();
    final channelId = '${members.join("-")}-direct';
    try {
      final existingChannels = await client
          .queryChannels(filter: Filter.equal('id', channelId))
          .first;

      if (existingChannels.isNotEmpty) return existingChannels.first;

      final channel = client.channel(
        'messaging',
        id: channelId,
        extraData: {
          'members': members,
          'archived': [],
          'pined': [],
          'unread': [],
        },
      );
      await channel.watch();
      // connectUserWithNotifications(context, otherUserId);
      return channel;
    } catch (e) {
      throw Exception('Failed to create/open channel: $e');
    }
  }

  static Future<void> createOtherToken(int userId) async {
    // await getIt.get<ChatRepository>().getStreamChatToken(params: userId).then(
    //       (value) async {
    //     value.when(
    //       isSuccess: (val) => log("Stream Chat Token: $val"),
    //       isError: (error) => throw Exception(error),
    //     );
    //   },
    // );
  }

  static Future<List<User>> queryUsers(BuildContext context,
      {int limit = 25}) async {
    final client = StreamChat.of(context).client;
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) throw Exception('User not connected');

    final response = await client.queryUsers(
      filter: Filter.notEqual('id', currentUser.id),
      sort: const [SortOption('name')],
    );

    return response.users;
  }

  static Future<List<Channel>> queryChannels(BuildContext context,
      {int limit = 100, String? search}) async {
    try {
      final currentUser = getCurrentUserData(context);
      if (currentUser == null) throw Exception('User not connected');
      final filter = Filter.and([
        Filter.equal('type', 'messaging'),
        if (search != null && search != "")
          Filter.autoComplete('member.user.name', search),
        Filter.in_('members', [currentUser.id]),
        const Filter.raw(value: {
          'last_message_at': {'\$exists': true}
        })
      ]);

      final client = StreamChat.of(context).client;
      const List<SortOption<ChannelState>> sort = [
        SortOption('last_message_at', direction: SortOption.DESC)
      ];

      final stream = client.queryChannels(
        filter: filter,
        channelStateSort: sort,
        memberLimit: limit,
      );

      final channels = await stream.first;
      for (var channel in channels) {
        log("Channel created at: ${channel.createdAt}");
      }
      List<Channel> pinnedChannels = [];
      var allChannels = channels.where((e) {
        final archivedList = e.extraData["archived"] as List<dynamic>? ?? [];
        final pinedList = e.extraData["pined"] as List<dynamic>? ?? [];
        final currentUserId = getCurrentUserData(context)?.id;
        if (pinedList.contains(currentUserId) &&
            !archivedList.contains(currentUserId)) {
          pinnedChannels.add(e);
          return false; // Exclude pinned channels from the main list
        }
        return !(archivedList.contains(currentUserId));
      }).toList();
      allChannels.insertAll(0, pinnedChannels);
      return allChannels;
    } catch (e) {
      return [];
    }
  }

  static Future<bool> archiveChannel(
      BuildContext context, Channel channel) async {
    var archivedList = channel.extraData["archived"] as List<dynamic>? ?? [];
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) return false;

    if (archivedList.contains(currentUser.id)) {
      archivedList.remove(currentUser.id);
    } else {
      archivedList.add(currentUser.id);
    }
    await channel.updatePartial(
      set: {"archived": archivedList},
    );
    return archivedList.contains(currentUser.id);
  }

  static Future<bool> pinChannel(BuildContext context, Channel channel) async {
    var archivedList = channel.extraData["pined"] as List<dynamic>? ?? [];
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) return false;

    if (archivedList.contains(currentUser.id)) {
      archivedList.remove(currentUser.id);
    } else {
      archivedList.add(currentUser.id);
    }
    await channel.updatePartial(
      set: {"pined": archivedList},
    );
    return archivedList.contains(currentUser.id);
  }

  static String getPeerUserLocalizedName(BuildContext context, Channel channel) {
    final client = StreamChat.of(context).client;
    var current =  client.state.currentUser;
    var peerUser = channel.state?.members.firstWhereOrNull((e) => e.userId != current?.id)?.user;
    if (peerUser == null) return "";
    var localizedName = peerUser.extraData['localized_name'] as Map<String, dynamic>?;
    if (localizedName == null) return peerUser.name;
    if(context.isArabic){
      return localizedName['ar'] ?? peerUser.name;
    } else {
      return localizedName['en'] ?? peerUser.name;
    }
  }

  static Future<bool> unreadChannel(BuildContext context, Channel channel,
      {bool read = false}) async {
    var archivedList = channel.extraData["unread"] as List<dynamic>? ?? [];
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) return false;

    if (archivedList.contains(currentUser.id)) {
      archivedList.remove(currentUser.id);
    } else {
      if (!read) {
        archivedList.add(currentUser.id);
      }
    }
    await channel.updatePartial(
      set: {"unread": archivedList},
    );
    return !archivedList.contains(currentUser.id);
  }

  static bool isUnreadChannel(BuildContext context, Channel channel) {
    var archivedList = channel.extraData["unread"] as List<dynamic>? ?? [];
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) return false;
    return archivedList.contains(currentUser.id);
  }

  static bool isPinedChannel(BuildContext context, Channel channel) {
    var archivedList = channel.extraData["pined"] as List<dynamic>? ?? [];
    final currentUser = getCurrentUserData(context);
    if (currentUser == null) return false;
    return archivedList.contains(currentUser.id);
  }

  static Future<List<Channel>> queryArchivedChannels(BuildContext context, {int limit = 100}) async {
    try {
      final currentUser = getCurrentUserData(context);
      if (currentUser == null) throw Exception('User not connected');
      final filter = Filter.and([
        Filter.equal('type', 'messaging'),
        Filter.in_('members', [currentUser.id]),
      ]);

      final client = StreamChat.of(context).client;
      const List<SortOption<ChannelState>> sort = [
        SortOption('last_message_at', direction: SortOption.DESC)
      ];

      final stream = client.queryChannels(
        filter: filter,
        channelStateSort: sort,
        memberLimit: limit,
        watch: true,
      );

      final channels = await stream.first;
      for (var channel in channels) {
        log("Channel created at: ${channel.createdAt}");
      }
      List<Channel> pinnedChannels = [];
      var archivedChannels = channels.where((e) {
        final pinedList = e.extraData["pined"] as List<dynamic>? ?? [];
        final archivedList = e.extraData["archived"] as List<dynamic>? ?? [];
        final currentUserId = getCurrentUserData(context)?.id;
        if (pinedList.contains(currentUserId) && archivedList.contains(currentUserId)) {
          pinnedChannels.add(e);
          return false; // Exclude pinned channels from the main list
        }
        return archivedList.contains(currentUserId);
      }).toList();
      archivedChannels.insertAll(0, pinnedChannels);
      return archivedChannels;
    } catch (e) {
      return [];
    }
  }


  static Future<List<Channel>> queryPinnedChannels(BuildContext context,
      {int limit = 100, String? search}) async {
    try {
      final currentUser = getCurrentUserData(context);
      if (currentUser == null) throw Exception('User not connected');
      final filter = Filter.and([
        Filter.equal('type', 'messaging'),
        if (search != null && search != "") Filter.autoComplete('name', search),
        Filter.in_('members', [currentUser.id]),
      ]);

      final client = StreamChat.of(context).client;
      const List<SortOption<ChannelState>> sort = [
        SortOption('last_message_at', direction: SortOption.DESC)
      ];

      final stream = client.queryChannels(
        filter: filter,
        channelStateSort: sort,
        memberLimit: limit,
        watch: true,
      );

      final channels = await stream.first;
      for (var channel in channels) {
        log("Channel created at: ${channel.createdAt}");
      }
      return channels.where((e) {
        final archivedList = e.extraData["pined"] as List<dynamic>? ?? [];
        final currentUserId = getCurrentUserData(context)?.id;
        return archivedList.contains(currentUserId);
      }).toList();
    } catch (e) {
      return [];
    }
  }

  static Future<void> sendMessage(
      BuildContext context, {
        required String text,
        List<Attachment>? attachments,
        Message? parentMessage,
      }) async {
    // Ensure StreamChat client is connected before attempting to send a message.
    // This covers the case when the app was resumed from background/terminated
    // and the StreamChat connection was lost.

    if (!isStreamChatConnected(context)) {
      // Attempt a silent reconnection. If it fails, we still try to proceed but
      // the sendMessage call below will throw and can be handled by caller UI.
      await connectCurrentUser();
    }

    final channel = StreamChannel.of(context).channel;
    final message = Message(
      text: text,
      attachments: attachments ?? [],
      quotedMessage: parentMessage,
      quotedMessageId: parentMessage?.id,
    );

    await channel.sendMessage(message);
  }

  static Future<List<Attachment>> pickImages({
    required ImageSource source,
    int maxImages = 10,
  }) async {
    final picker = ImagePicker();
    final attachments = <Attachment>[];

    if (source == ImageSource.gallery) {
      final pickedFiles = await picker.pickMultiImage();
      for (var i = 0; i < pickedFiles.length && i < maxImages; i++) {
        final file = File(pickedFiles[i].path);
        final bytes = await file.readAsBytes();
        attachments.add(
          Attachment(
            type: 'image',
            file: AttachmentFile(
                bytes: bytes, size: bytes.length, path: file.path),
            title: path.basename(file.path),
          ),
        );
      }
    } else {
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        final file = File(pickedFile.path);
        final bytes = await file.readAsBytes();
        attachments.add(
          Attachment(
            type: 'image',
            file: AttachmentFile(
                bytes: bytes, size: bytes.length, path: file.path),
            title: path.basename(file.path),
          ),
        );
      }
    }

    return attachments;
  }

  static Future<List<Attachment>> pickVideos({
    int maxImages = 3,
  }) async {
    BuildContext context = getIt<GlobalContext>().context();
    final attachments = <Attachment>[];

    List<File>? videos = await getIt.get<AppFileService>().pickVideoFiles(
      context,
      allowMultiple: true,
    );
    if (videos == null || videos.isEmpty) {
      log("No videos selected");
      return attachments;
    }

    for(var i = 0; i < videos.length; i++) {
      var video = videos[i];
      final fileObj = File(video.path);
      final bytes = await fileObj.readAsBytes();
      String? mimeType = getMimeType(video.path);
      attachments.add(
        Attachment(
          type: determineAttachmentType(
              mimeType ?? 'application/octet-stream'),
          file: AttachmentFile(bytes: bytes, size: bytes.length, path: video.path),
          title: video.path.split('/').last,
          extraData: {
            'mime_type': mimeType ?? 'application/octet-stream',
          },
        ),
      );
    }

    return attachments;
  }

  static Future<List<Attachment>> pickFiles() async {
    final result = await FilePicker.platform
        .pickFiles(allowMultiple: true, type: FileType.any);
    final attachments = <Attachment>[];

    if (result?.files.isNotEmpty ?? false) {
      for (final file in result!.files) {
        if (file.path != null) {
          final fileObj = File(file.path!);
          final bytes = await fileObj.readAsBytes();
          String? mimeType = getMimeType(file.path!);
          attachments.add(
            Attachment(
              type: determineAttachmentType(
                  mimeType ?? 'application/octet-stream'),
              file: AttachmentFile(
                  bytes: bytes, size: bytes.length, path: file.path),
              title: file.name,
              extraData: {
                'mime_type': mimeType ?? 'application/octet-stream',
              },
            ),
          );
        }
      }
    }

    return attachments;
  }

  static String? getMimeType(String filePath) {
    return lookupMimeType(filePath);
  }

  static AttachmentType determineAttachmentType(String mimeType) {
    if (mimeType.startsWith('image/')) {
      return AttachmentType.image;
    } else if (mimeType.startsWith('video/')) {
      return AttachmentType.video;
    } else if (mimeType.startsWith('audio/')) {
      return AttachmentType.audio;
    } else {
      return AttachmentType.file; // Default to file for other types
    }
  }

  /// Records audio and returns an Attachment for voice messages
  static Future<Attachment?> recordVoiceMessage({
    Duration? maxDuration,
    void Function(Duration duration)? onDurationUpdate,
    void Function()? onRecordingStarted,
    void Function()? onRecordingStopped,
  }) async {
    FlutterSoundRecorder? recorder;
    String? recordingPath;

    try {
      // Check and request microphone permission
      final status = await Permission.microphone.request();
      if (status != PermissionStatus.granted) {
        throw Exception('Microphone permission is required for voice messages');
      }

      // Initialize recorder
      recorder = FlutterSoundRecorder();
      await recorder.openRecorder();
      await recorder.setSubscriptionDuration(const Duration(milliseconds: 100));

      // Create recording file path
      final directory = await getTemporaryDirectory();
      recordingPath =
      '${directory.path}/voice_message_${DateTime.now().millisecondsSinceEpoch}.aac';

      // Start recording
      await recorder.startRecorder(
        toFile: recordingPath,
        codec: Codec.aacADTS,
      );

      onRecordingStarted?.call();
      log('Voice recording started: $recordingPath');

      // Monitor recording duration
      Duration recordingDuration = Duration.zero;
      bool isRecording = true;

      // Set up duration monitoring
      final durationTimer =
      Stream.periodic(const Duration(seconds: 1), (count) {
        recordingDuration = Duration(seconds: count + 1);
        onDurationUpdate?.call(recordingDuration);

        // Auto-stop if max duration reached
        if (maxDuration != null && recordingDuration >= maxDuration) {
          isRecording = false;
        }

        return recordingDuration;
      }).takeWhile((_) => isRecording).listen(null);

      // Wait for recording to complete (this would be controlled by your UI)
      // In practice, you'd call stopRecording from your UI controls

      return null; // This method sets up recording, actual stopping handled by UI
    } catch (e) {
      log('Error in voice recording: $e');
      await recorder?.closeRecorder();

      // Clean up recording file if it exists
      if (recordingPath != null) {
        final file = File(recordingPath);
        if (await file.exists()) {
          await file.delete();
        }
      }

      throw Exception('Failed to record voice message: $e');
    }
  }

  /// Stops voice recording and returns the audio attachment
  static Future<Attachment?> stopVoiceRecording(
      FlutterSoundRecorder recorder, String recordingPath) async {
    try {
      await recorder.stopRecorder();
      await recorder.closeRecorder();

      final audioFile = File(recordingPath);
      if (!await audioFile.exists()) {
        throw Exception('Recording file not found');
      }

      final bytes = await audioFile.readAsBytes();
      final fileSize = await audioFile.length();

      // Get audio duration (approximate based on file size and codec)
      // For more accurate duration, you might want to use a separate audio analysis package
      final approximateDuration = _estimateAudioDuration(fileSize);

      log('Voice recording completed: ${path.basename(recordingPath)}, Size: ${(fileSize / 1024).toStringAsFixed(1)}KB, Duration: ${approximateDuration.inSeconds}s');

      return Attachment(
        type: 'audio',
        file: AttachmentFile(
          bytes: bytes,
          size: fileSize,
          path: recordingPath,
        ),
        title: 'Voice Message',
        extraData: {
          'duration': approximateDuration.inMilliseconds,
          'waveform_data': [], // You can add waveform data if needed
          'mime_type': 'audio/aac',
        },
      );
    } catch (e) {
      log('Error stopping voice recording: $e');
      await recorder.closeRecorder();

      // Clean up recording file
      final file = File(recordingPath);
      if (await file.exists()) {
        await file.delete();
      }

      throw Exception('Failed to stop voice recording: $e');
    }
  }

  /// Cancels voice recording and cleans up files
  static Future<void> cancelVoiceRecording(
      FlutterSoundRecorder recorder, String recordingPath) async {
    try {
      await recorder.stopRecorder();
      await recorder.closeRecorder();

      // Delete the recording file
      final file = File(recordingPath);
      if (await file.exists()) {
        await file.delete();
        log('Voice recording cancelled and file deleted');
      }
    } catch (e) {
      log('Error cancelling voice recording: $e');
    }
  }

  /// Estimates audio duration based on file size (rough approximation for AAC)
  static Duration _estimateAudioDuration(int fileSizeBytes) {
    // AAC at ~128 kbps = ~16 KB/second
    // This is a rough estimate, for precise duration use audio analysis packages
    const int avgBytesPerSecond = 16 * 1024; // 16 KB/s
    final int estimatedSeconds = (fileSizeBytes / avgBytesPerSecond).round();
    return Duration(seconds: estimatedSeconds);
  }

  /// Sends a voice message
  static Future<void> sendVoiceMessage(
      BuildContext context, Attachment voiceAttachment) async {
    try {
      if (!isStreamChatConnected(context)) {
        // Attempt a silent reconnection. If it fails, we still try to proceed but
        // the sendMessage call below will throw and can be handled by caller UI.
        await connectCurrentUser();
      }

      final channel = StreamChannel.of(context).channel;

      final message = Message(
        attachments: [voiceAttachment],
        extraData: {
          'message_type': 'audio',
          'voice_duration': voiceAttachment.extraData['duration'] ?? 0,
        },
      );

      await channel.sendMessage(message);
      log('Voice message sent successfully');
    } catch (e) {
      log('Error sending voice message: $e');
      throw Exception('Failed to send voice message: $e');
    }
  }

  /// Utility method to format voice message duration for UI display
  static String formatVoiceDuration(int durationMilliseconds) {
    final duration = Duration(milliseconds: durationMilliseconds);
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  /// Checks if a message is a voice message
  static bool isVoiceMessage(Message message) {
    return message.attachments.any((attachment) =>
    attachment.type == 'audio' ||
        message.extraData['message_type'] == 'voice');
  }

  /// Gets voice message duration from message
  static Duration? getVoiceMessageDuration(Message message) {
    if (!isVoiceMessage(message)) return null;

    final durationMs = message.extraData['voice_duration'] as int?;
    if (durationMs != null) {
      return Duration(milliseconds: durationMs);
    }

    // Try to get from attachment
    final voiceAttachment = message.attachments
        .firstWhereOrNull((attachment) => attachment.type == 'audio');

    final attachmentDurationMs = voiceAttachment?.extraData['duration'] as int?;
    return attachmentDurationMs != null
        ? Duration(milliseconds: attachmentDurationMs)
        : null;
  }

  static Future<void> sendLocationMessage(
      BuildContext context, 
      LatLng location, {
      String? placeName,
      String? placeAddress,
      LocationType type = LocationType.current,
      int? liveDurationMinutes,
    }) async {
    final channel = StreamChannel.of(context).channel;
    try {
      String messageText;
      Map<String, dynamic> locationData;

      switch (type) {
        case LocationType.current:
          messageText = "📍 Current location";
          locationData = {
            'type': 'current',
            'latitude': location.latitude,
            'longitude': location.longitude,
            'timestamp': DateTime.now().millisecondsSinceEpoch,
            'maps_url': 'https://maps.google.com/?q=${location.latitude},${location.longitude}',
          };
          break;
        case LocationType.place:
          messageText = "📍 ${placeName ?? 'Location'}";
          locationData = {
            'type': 'place',
            'latitude': location.latitude,
            'longitude': location.longitude,
            'place_name': placeName,
            'place_address': placeAddress,
            'timestamp': DateTime.now().millisecondsSinceEpoch,
            'maps_url': 'https://maps.google.com/?q=${location.latitude},${location.longitude}',
          };
          break;
        case LocationType.live:
          messageText = "📍 Live location (${liveDurationMinutes}min)";
          locationData = {
            'type': 'live',
            'latitude': location.latitude,
            'longitude': location.longitude,
            'timestamp': DateTime.now().millisecondsSinceEpoch,
            'duration_minutes': liveDurationMinutes,
            'expires_at': DateTime.now().add(Duration(minutes: liveDurationMinutes ?? 15)).millisecondsSinceEpoch,
            'maps_url': 'https://maps.google.com/?q=${location.latitude},${location.longitude}',
            'is_active': true,
          };
          break;
      }
      Navigator.pop(context); // Close any open location picker
      await channel.sendMessage(Message(
        text: messageText,
        extraData: {
          'location': locationData,
          'message_type': 'location',
        },
      ));
    } catch (e) {
      log('Error sending location: $e');
    }
  }

  /// Check if a message is a location message
  static bool isLocationMessage(Message message) {
    return message.extraData['message_type'] == 'location' && 
           message.extraData['location'] != null;
  }

  /// Get location data from message
  static Map<String, dynamic>? getLocationData(Message message) {
    if (!isLocationMessage(message)) return null;
    return message.extraData['location'] as Map<String, dynamic>?;
  }

  /// Check if location is live and still active
  static bool isLiveLocationActive(Message message) {
    final locationData = getLocationData(message);
    if (locationData == null || locationData['type'] != 'live') return false;
    
    final expiresAt = locationData['expires_at'] as int?;
    final isActive = locationData['is_active'] as bool?;
    
    if (expiresAt == null) return false;
    
    return (isActive ?? false) && 
           DateTime.now().millisecondsSinceEpoch < expiresAt;
  }

  /// Get location type from message
  static LocationType getLocationType(Message message) {
    final locationData = getLocationData(message);
    if (locationData == null) return LocationType.current;
    
    final type = locationData['type'] as String?;
    switch (type) {
      case 'current':
        return LocationType.current;
      case 'place':
        return LocationType.place;
      case 'live':
        return LocationType.live;
      default:
        return LocationType.current;
    }
  }

  /// Update live location coordinates
  static Future<void> updateLiveLocation(
      BuildContext context, 
      Message message, 
      LatLng newLocation) async {
    final channel = StreamChannel.of(context).channel;
    final locationData = getLocationData(message);
    
    if (locationData == null || !isLiveLocationActive(message)) return;

    try {
      final updatedLocationData = Map<String, dynamic>.from(locationData);
      updatedLocationData['latitude'] = newLocation.latitude;
      updatedLocationData['longitude'] = newLocation.longitude;
      updatedLocationData['timestamp'] = DateTime.now().millisecondsSinceEpoch;
      updatedLocationData['maps_url'] = 'https://maps.google.com/?q=${newLocation.latitude},${newLocation.longitude}';

      final updatedMessage = message.copyWith(
        extraData: {
          ...message.extraData,
          'location': updatedLocationData,
        },
      );

      await channel.updateMessage(updatedMessage);
    } catch (e) {
      log('Error updating live location: $e');
    }
  }

  /// Stop live location sharing
  static Future<void> stopLiveLocation(
      BuildContext context, 
      Message message) async {
    final channel = StreamChannel.of(context).channel;
    final locationData = getLocationData(message);
    
    if (locationData == null || locationData['type'] != 'live') return;

    try {
      final updatedLocationData = Map<String, dynamic>.from(locationData);
      updatedLocationData['is_active'] = false;

      final updatedMessage = message.copyWith(
        extraData: {
          ...message.extraData,
          'location': updatedLocationData,
        },
      );

      await channel.updateMessage(updatedMessage);
    } catch (e) {
      log('Error stopping live location: $e');
    }
  }

  /// Open location in maps app
  static void openLocationInMaps(Message message) async {
    final locationData = getLocationData(message);
    if (locationData == null) return;
    
    final lat = locationData['latitude'] as double?;
    final lng = locationData['longitude'] as double?;
    final mapsUrl = locationData['maps_url'] as String?;
    
    if (lat != null && lng != null) {
      final url = mapsUrl ?? 'https://maps.google.com/?q=$lat,$lng';
      try {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        }
      } catch (e) {
        log('Error opening maps: $e');
      }
    }
  }

  static Future<void> sendContactMessage(
      BuildContext context, Channel channel) async {
    await getIt.get<Utilities>().pickContact(context).then((contact) async {
      if (contact == null) return;
      final phoneNumbers = contact.phones.map((phone) => phone.number).toList();
      final message = Message(
        text: "📞 ${contact.displayName}",
        extraData: {
          'contact': {
            'name': contact.displayName,
            'phone_numbers': phoneNumbers.firstOrNull ?? "",
            'photo_url': convertUint8ListToString(contact.photo),
          }
        },
      );
      await channel.sendMessage(message);
    });
  }

  static String? convertUint8ListToString(Uint8List? data) {
    if (data == null) return null;
    return base64Encode(data);
  }

  // static String getChannelName(BuildContext context,
  //     {required Channel channel}) {
  //   final currentUserId = StreamChat.of(context).currentUser?.id;
  //
  //   if (channel.memberCount == 2 && channel.name == null) {
  //     final otherMembers = channel.state?.members.where((m) {
  //       return m.user?.id != currentUserId;
  //     }).toList();
  //     if (otherMembers?.isNotEmpty ?? false) {
  //       return otherMembers!.first.user?.name ??
  //           otherMembers.first.userId ??
  //           "Unnamed";
  //     }
  //   }
  //   return channel.name ?? "Unnamed Channel";
  // }

  static String getChannelImage(BuildContext context,
      {required Channel channel}) {
    final currentUserId = StreamChat.of(context).currentUser?.id;

    if (channel.memberCount == 2 && (channel.image?.isEmpty ?? true)) {
      final otherMembers = channel.state?.members
          .where((m) => m.userId != currentUserId)
          .toList();
      if (otherMembers?.isNotEmpty ?? false) {
        return otherMembers!.first.user?.image ?? '';
      }
    }

    return channel.image ?? '';
  }

  static String formatMsgDateTime(DateTime? dateTime, {bool showTime = true}) {
    if (dateTime == null) return '';

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (dateTime.isAfter(today)) {
      return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else if (dateTime.isAfter(yesterday)) {
      return 'Yesterday, ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }

  static String formatMsgDate(DateTime? dateTime) {
    if (dateTime == null) return '';

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    if (dateTime.isAfter(today)) return 'Today';
    if (dateTime.isAfter(yesterday)) return 'Yesterday';

    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  static String formatMsgTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    return DateFormat('hh:mm a').format(dateTime);
  }

  static Future<void> disconnectUser(BuildContext context) async {
    final client = StreamChat.of(context).client;
    await client.disconnectUser();
  }

  static OwnUser? getCurrentUserData(BuildContext context) {
    final client = StreamChat.of(context).client;
    return client.state.currentUser;
  }

  /// Check if StreamChat is properly connected with a user
  /// Following Stream Chat documentation best practices
  static bool isStreamChatConnected(BuildContext context,
      {String? expectedUserId}) {
    try {
      final client = StreamChat.of(context).client;
      final currentUser = client.state.currentUser;

      if (currentUser == null) return false;
      if (expectedUserId != null && currentUser.id != expectedUserId)
        return false;

      return true;
    } catch (e) {
      log("Error checking StreamChat connection status: $e");
      return false;
    }
  }

  /// Get connection status information for debugging
  /// Following Stream Chat documentation patterns for diagnostics
  static Map<String, dynamic> getConnectionInfo(BuildContext context) {
    try {
      final client = StreamChat.of(context).client;
      final currentUser = client.state.currentUser;
      return {
        'currentUserId': currentUser?.id,
        'currentUserName': currentUser?.name,
        'hasUser': currentUser != null,
        'isConnected': currentUser != null,
        'clientState': 'StreamChat client active',
      };
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  static Future<void> clearChatChannel(
      BuildContext context, Channel channel) async {
    try {
      await channel.delete();
    } catch (e) {
      log('Error clearing chat: $e');
    }
  }

  /// Block or unblock a channel with extra parameters
  static Future<bool> blockChannel(
      BuildContext context,
      Channel channel, {
        String? reason,
        bool? forceBlock,
        Map<String, dynamic>? extraData,
      }) async {
    final currentUserId = StreamChat.of(context).currentUser?.id;
    log('Managing block status for user: $currentUserId');

    final memberId =
        channel.state?.members.firstWhereOrNull((m) => m.userId != currentUserId)?.userId;

    log('Target member ID: $memberId');

    try {
      if (memberId == null) return false;

      final isCurrentlyBlocked = isChannelBlocked(context, channel);
      final shouldBlock = forceBlock ?? !isCurrentlyBlocked;

      if (shouldBlock) {
        // Block the user
        final blockData = {
          "blocked": true,
          "blocked_by": currentUserId,
          "blocked_at": DateTime.now().millisecondsSinceEpoch,
          "block_reason": reason ?? "User blocked",
          if (extraData != null) ...extraData,
        };

        await channel.banMember(memberId, blockData);
        await channel.updatePartial(set: {"blocked": true, "blocked_data": blockData});

        log('✅ User blocked successfully');
        return true;
      } else {
        // Unblock the user
        await channel.unbanMember(memberId);
        await channel.updatePartial(unset: ["blocked", "blocked_data"]);

        log('✅ User unblocked successfully');
        return false;
      }
    } catch (e) {
      log('❌ Error managing block status: $e');
      return isChannelBlocked(context, channel);
    }
  }


  /// Check if a channel is currently blocked
  static bool isChannelBlocked(BuildContext context, Channel channel) {
    try {
      final blockingInfo = getBlockingInfo(context, channel);
      if(blockingInfo == null) {
        return false; // No block status available
      }
      return blockingInfo["blocked"] ?? false;
    } catch (e) {
      log('Error checking block status: $e');
      return false;
    }
  }

  /// Get blocking information
  static Map<String, dynamic>? getBlockingInfo(BuildContext context, Channel channel) {
    try {
      return channel.extraData['blocked_data'] as Map<String, dynamic>?;
    } catch (e) {
      log('Error getting blocking info: $e');
      return null;
    }
  }

  /// Check if current user is blocked by the other user
  static bool isCurrentUserBlocked(BuildContext context, Channel channel) {
    try {
      final currentUserId = StreamChat.of(context).currentUser?.id;
      final blockingInfo = getBlockingInfo(context, channel);

      if (blockingInfo == null) return false;
      final blockedBy = blockingInfo['blocked_by'];
      return blockedBy != null && blockedBy != currentUserId;
    } catch (e) {
      log('Error checking if current user is blocked: $e');
      return false;
    }
  }

}
