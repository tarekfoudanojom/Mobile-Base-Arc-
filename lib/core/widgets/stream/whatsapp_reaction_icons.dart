import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

/// WhatsApp-style reaction icons configuration for Stream Chat
class WhatsAppReactionIcons {
  
  /// Get WhatsApp-style reaction icons list
  static List<StreamReactionIcon> getReactionIcons() {
    return [
      StreamReactionIcon(
        type: 'like',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'like'),
      ),
      StreamReactionIcon(
        type: 'love',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'love'),
      ),
      StreamReactionIcon(
        type: 'haha',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'haha'),
      ),
      StreamReactionIcon(
        type: 'wow',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'wow'),
      ),
      StreamReactionIcon(
        type: 'sad',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'sad'),
      ),
      StreamReactionIcon(
        type: 'angry',
        builder: (context, highlight, size) => _buildEmojiReaction(context, highlight, size, 'angry'),
      ),
    ];
  }

  /// Build emoji reaction widget with WhatsApp-style design
  static Widget _buildEmojiReaction(
    BuildContext context,
    bool highlight,
    double size,
    String reactionType,
  ) {
    // Map reaction types to WhatsApp-style emojis
    final Map<String, String> reactionEmojis = {
      'like': '👍',
      'love': '❤️', 
      'haha': '😂',
      'wow': '😮',
      'sad': '😢',
      'angry': '😠',
    };
    
    final emoji = reactionEmojis[reactionType] ?? '👍';
    
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Text(
          emoji,
          style: TextStyle(
            fontSize: size * 0.9, // Much bigger emoji - 90% of container size
            height: 1,
            fontFamily: 'Apple Color Emoji', // Better emoji rendering
          ),
        ),
      ),
    );
  }

  /// Get reaction emoji for a given type (for display in reaction lists)
  static String getEmojiForType(String type) {
    final Map<String, String> reactionEmojis = {
      'like': '👍',
      'love': '❤️',
      'haha': '😂',
      'wow': '😮',
      'sad': '😢',
      'angry': '😠',
    };
    
    return reactionEmojis[type] ?? '👍';
  }

  /// Get reaction name for a given type (for accessibility)
  static String getNameForType(String type) {
    switch (type) {
      case 'like':
        return Translate.s.reaction_like;
      case 'love':
        return Translate.s.reaction_love;
      case 'haha':
        return Translate.s.reaction_haha;
      case 'wow':
        return Translate.s.reaction_wow;
      case 'sad':
        return Translate.s.reaction_sad;
      case 'angry':
        return Translate.s.reaction_angry;
      default:
        return Translate.s.reaction_like;
    }
  }
} 