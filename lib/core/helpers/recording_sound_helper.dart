import 'package:flutter/services.dart';

/// Helper class for WhatsApp-style recording sounds and haptic feedback
class RecordingSoundHelper {
  static final RecordingSoundHelper _instance = RecordingSoundHelper._internal();
  factory RecordingSoundHelper() => _instance;
  RecordingSoundHelper._internal();

  /// Initialize the helper
  Future<void> initialize() async {
    print('🔊 RecordingSoundHelper: Ready for WhatsApp-style feedback');
  }

  /// Play recording start sound and haptic feedback like WhatsApp
  Future<void> playRecordingStartSound() async {
    try {
      print('🔊 Playing recording START sound + haptic');
      
      // Play system UI sound for recording start (like camera shutter)
      await SystemSound.play(SystemSoundType.click);
      
      // Add slight delay then play a second subtle click for WhatsApp feel
      await Future.delayed(const Duration(milliseconds: 50));
      await SystemSound.play(SystemSoundType.click);
      
      print('✅ Recording start sound played successfully');
    } catch (e) {
      print('❌ Failed to play start sound: $e');
    }
  }

  /// Play recording end haptic feedback like WhatsApp
  Future<void> playRecordingEndSound() async {
    try {
      print('🔊 Playing recording END haptic');
      // Light haptic for end
      HapticFeedback.lightImpact();
      print('✅ Recording end haptic played successfully');
    } catch (e) {
      print('❌ Failed to play end haptic: $e');
    }
  }

  /// Play recording cancel haptic feedback like WhatsApp
  Future<void> playRecordingCancelSound() async {
    try {
      print('🔊 Playing recording CANCEL haptic');
      // Strong haptic for cancel
      HapticFeedback.heavyImpact();
      print('✅ Recording cancel haptic played successfully');
    } catch (e) {
      print('❌ Failed to play cancel haptic: $e');
    }
  }

  /// Play recording lock haptic feedback like WhatsApp
  Future<void> playRecordingLockSound() async {
    try {
      print('🔊 Playing recording LOCK haptic');
      // Selection click for lock
      HapticFeedback.selectionClick();
      print('✅ Recording lock haptic played successfully');
    } catch (e) {
      print('❌ Failed to play lock haptic: $e');
    }
  }

  /// Dispose (no-op for haptic feedback)
  void dispose() {
    print('🔊 RecordingSoundHelper disposed');
  }
} 