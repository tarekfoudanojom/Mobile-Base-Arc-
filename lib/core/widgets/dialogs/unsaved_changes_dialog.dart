import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class UnsavedChangesDialog extends StatelessWidget {
  const UnsavedChangesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Blur effect
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Text(
              Translate.s.unsaved_changes_title,
              style: AppTextStyle.s18_w600(color: context.colors.black),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap16,
            
            // Subtitle/Message
            Text(
              Translate.s.unsaved_changes_subtitle,
              style: AppTextStyle.s16_w400(color: context.colors.ashGray2),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap24,
            
            // Buttons
            Column(
              children: [
                // Discard Changes Button (Red)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.paleRed,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      Translate.s.discard_changes,
                      style: AppTextStyle.s16_w600(color: context.colors.darkRed),
                    ),
                  ),
                ),
                Gaps.vGap12,
                
                // Continue Editing Button (Blue)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: context.colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      Translate.s.continue_editing,
                      style: AppTextStyle.s16_w600(color: context.colors.appColorBlue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }

  /// Static method to show the dialog
  static Future<bool> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const UnsavedChangesDialog(),
    ) ?? false;
  }
}
