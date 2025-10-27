import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class ShareServices {
  static ShareServices get instance => GetIt.I<ShareServices>();

  void copyToClipBoard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((value) {
        AppSnackBar.showSimpleToast(msg: "Copied successfully");
    });
  }

  Future<bool?> launchURL({required String url}) async {
    final uri = Uri.parse(url);
    return await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Future<bool?> launchURLInApp({required String url}) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      final launched = await launchUrl(uri, mode: LaunchMode.inAppWebView);
      return launched;
    } else {
      return null;
      // throw 'Could not launch $url';
    }
  }

  Future<bool?> launchURLExternally({required String url}) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      return launched;
    } else {
      return null;
      // throw 'Could not launch $url';
    }
  }

  void launchWhatsApp(phone) async {
    // String message = 'مرحبا بك';
    String message = ' ';
    var whatsAppUrl = "https://wa.me/$phone/?text=$message";
    if (await canLaunchUrl(Uri.parse(whatsAppUrl))) {
      await launchUrl(Uri.parse(whatsAppUrl));
    } else {
      AppSnackBar.showSimpleToast(msg: Translate.s.something_went_wrong);
    }
  }

  void callPhone({required String phone}) async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phone,
    );
    await launchUrl(phoneLaunchUri);
  }

  void sendEmail({required String email}) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(emailLaunchUri);
  }

  void onLink({required BuildContext context, required String link}) {
    launchURL(url: link);
  }

  /// Share attachment from Stream Chat
  Future<void> shareAttachment(Attachment attachment) async {
    try {
      // Handle different attachment types
      switch (attachment.type) {
        case AttachmentType.image:
        case AttachmentType.video:
        case AttachmentType.giphy:
        case AttachmentType.file:
          await _shareMediaAttachment(attachment);
          break;
        case AttachmentType.urlPreview:
          await _shareUrlAttachment(attachment);
          break;
        case AttachmentType.voiceRecording:
          await _shareVoiceAttachment(attachment);
          break;
        default:
          // For other types, share the attachment URL or fallback
          await _shareGenericAttachment(attachment);
          break;
      }
    } catch (e) {
      AppSnackBar.showSimpleToast(
        msg: Translate.s.failed_to_share,
        type: ToastType.error,
      );
      debugPrint('Error sharing attachment: $e');
    }
  }

  /// Share media attachments (image, video, file) by downloading and sharing as file
  Future<void> _shareMediaAttachment(Attachment attachment) async {
    final url = attachment.assetUrl ?? 
               attachment.imageUrl ?? 
               attachment.thumbUrl;
    
    if (url != null && url.isNotEmpty) {
      try {
        // Download the file first
        final downloadedFile = await _downloadAttachmentFile(url, attachment);
        
        if (downloadedFile != null) {
          // Share the downloaded file
          final xFile = XFile(downloadedFile.path);
          await SharePlus.instance.share(ShareParams(files: [xFile]));
          
          // Clean up the temporary file after a delay
          _cleanupTempFile(downloadedFile);
        } else {
          throw Exception('Failed to download attachment file');
        }
      } catch (e) {
        // Fallback to sharing URL if download fails
        debugPrint('Failed to download file, sharing URL instead: $e');
        await SharePlus.instance.share(ShareParams(text: url));
      }
    } else {
      throw Exception('No valid URL found for media attachment');
    }
  }

  /// Share URL preview attachments
  Future<void> _shareUrlAttachment(Attachment attachment) async {
    final url = attachment.ogScrapeUrl ?? 
               attachment.titleLink;
    
    if (url != null && url.isNotEmpty) {
      String shareText = '';
      if (attachment.title != null && attachment.title!.isNotEmpty) {
        shareText += '${attachment.title!}\n';
      }
      if (attachment.text != null && attachment.text!.isNotEmpty) {
        shareText += '${attachment.text!}\n';
      }
      shareText += url;
      
      await SharePlus.instance.share(ShareParams(text: shareText));
    } else {
      throw Exception('No valid URL found for URL attachment');
    }
  }

  /// Share voice recording attachments by downloading and sharing as file
  Future<void> _shareVoiceAttachment(Attachment attachment) async {
    final url = attachment.assetUrl;
    
    if (url != null && url.isNotEmpty) {
      try {
        // Download the voice file first
        final downloadedFile = await _downloadAttachmentFile(url, attachment);
        
        if (downloadedFile != null) {
          // Share the downloaded voice file
          final xFile = XFile(downloadedFile.path);
          await SharePlus.instance.share(ShareParams(files: [xFile]));
          
          // Clean up the temporary file after a delay
          _cleanupTempFile(downloadedFile);
        } else {
          throw Exception('Failed to download voice attachment');
        }
      } catch (e) {
        // Fallback to sharing URL if download fails
        debugPrint('Failed to download voice file, sharing URL instead: $e');
        await SharePlus.instance.share(ShareParams(text: url));
      }
    } else {
      throw Exception('No valid URL found for voice attachment');
    }
  }

  /// Share generic attachments
  Future<void> _shareGenericAttachment(Attachment attachment) async {
    String shareText = '';
    
    if (attachment.title != null && attachment.title!.isNotEmpty) {
      shareText += '${attachment.title!}\n';
    }
    if (attachment.text != null && attachment.text!.isNotEmpty) {
      shareText += '${attachment.text!}\n';
    }
    
    final url = attachment.assetUrl ?? 
               attachment.imageUrl ?? 
               attachment.thumbUrl ?? 
               attachment.titleLink;
    
    if (url != null && url.isNotEmpty) {
      shareText += url;
    }
    
    if (shareText.isNotEmpty) {
      await SharePlus.instance.share(ShareParams(text: shareText));
    } else {
      throw Exception('No content available to share');
    }
  }

  /// Download attachment file to temporary directory
  Future<File?> _downloadAttachmentFile(String url, Attachment attachment) async {
    try {
      final dio = Dio();
      
      // Get temporary directory
      final tempDir = await getTemporaryDirectory();
      
      // Generate unique filename based on attachment info
      final fileName = _generateFileName(attachment, url);
      final filePath = '${tempDir.path}/$fileName';
      
      // Download the file
      final response = await dio.download(
        url,
        filePath,
        options: Options(
          receiveTimeout: const Duration(minutes: 2), // 2 minute timeout
          sendTimeout: const Duration(minutes: 2),
        ),
      );
      
      if (response.statusCode == 200) {
        final file = File(filePath);
        if (await file.exists()) {
          return file;
        }
      }
      
      return null;
    } catch (e) {
      debugPrint('Error downloading attachment file: $e');
      return null;
    }
  }

  /// Generate a unique filename for the attachment
  String _generateFileName(Attachment attachment, String url) {
    // Try to get filename from attachment title or URL
    String fileName = attachment.title ?? '';
    
    // If no title, extract from URL
    if (fileName.isEmpty) {
      final uri = Uri.parse(url);
      fileName = uri.pathSegments.isNotEmpty ? uri.pathSegments.last : 'attachment';
    }
    
    // Clean up filename and ensure it has an extension
    fileName = fileName.replaceAll(RegExp(r'[<>:"/\\|?*]'), '_');
    
    // Add extension based on attachment type if missing
    if (!fileName.contains('.')) {
      switch (attachment.type) {
        case AttachmentType.image:
          fileName += '.jpg';
          break;
        case AttachmentType.video:
          fileName += '.mp4';
          break;
        case AttachmentType.voiceRecording:
          fileName += '.m4a';
          break;
        case AttachmentType.file:
          fileName += '.pdf'; // Default to PDF for generic files
          break;
        default:
          fileName += '.bin';
          break;
      }
    }
    
    // Add timestamp to ensure uniqueness
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final parts = fileName.split('.');
    if (parts.length > 1) {
      final extension = parts.last;
      final nameWithoutExt = parts.sublist(0, parts.length - 1).join('.');
      fileName = '${nameWithoutExt}_$timestamp.$extension';
    } else {
      fileName = '${fileName}_$timestamp';
    }
    
    return fileName;
  }

  /// Clean up temporary file after sharing
  void _cleanupTempFile(File file) {
    // Delay cleanup to ensure share operation is complete
    Future.delayed(const Duration(seconds: 30), () async {
      try {
        if (await file.exists()) {
          await file.delete();
          debugPrint('Cleaned up temporary file: ${file.path}');
        }
      } catch (e) {
        debugPrint('Error cleaning up temporary file: $e');
      }
    });
  }

}
