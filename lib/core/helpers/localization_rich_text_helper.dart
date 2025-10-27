import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

/// Helper class for creating rich text widgets with localized content
class LocalizationRichTextHelper {
  const LocalizationRichTextHelper._();

  /// Creates a rich text widget for "removed from draft" message
  /// with the name in bold and proper localization support
  static Widget buildRemovedFromDraftMessage({
    required BuildContext context,
    required String name,
    Color? textColor,
    Color? nameColor,
  }) {
    final regularColor = textColor ?? Colors.black;
    final boldColor = nameColor ?? Colors.black;
    
    return RichText(
      text: TextSpan(
        children: [
          // Prefix text (empty for English, "تمت إزالة" for Arabic)
          if (Translate.s.removed_from_draft_prefix.isNotEmpty)
            TextSpan(
              text: '${Translate.s.removed_from_draft_prefix} ',
              style: AppTextStyle.s14_w400(color: regularColor),
            ),
          
          // Name in bold
          TextSpan(
            text: name,
            style: AppTextStyle.s14_w600(color: boldColor),
          ),
          
          // Suffix text ("has been removed from draft" for English, "من المسودة" for Arabic)
          TextSpan(
            text: ' ${Translate.s.removed_from_draft_suffix}',
            style: AppTextStyle.s14_w400(color: regularColor),
          ),
        ],
      ),
    );
  }

  /// Generic method for creating rich text with bold name
  /// Can be extended for other similar use cases
  static Widget buildRichTextWithBoldName({
    required String name,
    required String prefix,
    required String suffix,
    Color? textColor,
    Color? nameColor,
    TextStyle? regularStyle,
    TextStyle? boldStyle,
  }) {
    final regularColor = textColor ?? Colors.black;
    final boldColor = nameColor ?? Colors.black;
    
    return RichText(
      text: TextSpan(
        children: [
          if (prefix.isNotEmpty)
            TextSpan(
              text: prefix,
              style: regularStyle ?? AppTextStyle.s14_w400(color: regularColor),
            ),
          
          TextSpan(
            text: name,
            style: boldStyle ?? AppTextStyle.s14_w600(color: boldColor),
          ),
          
          if (suffix.isNotEmpty)
            TextSpan(
              text: suffix,
              style: regularStyle ?? AppTextStyle.s14_w400(color: regularColor),
            ),
        ],
      ),
    );
  }
}
