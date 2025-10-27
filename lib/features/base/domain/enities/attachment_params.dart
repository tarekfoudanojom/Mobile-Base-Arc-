import 'dart:io';

class AttachmentParams{
  final File attachment;

  AttachmentParams({required this.attachment});

  Map<String, dynamic> toJson() => {'attachment': attachment};
}