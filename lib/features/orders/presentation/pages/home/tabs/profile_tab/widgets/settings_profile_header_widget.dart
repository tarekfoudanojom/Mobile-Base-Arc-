import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SettingsProfileHeaderWidget extends StatelessWidget {
  const SettingsProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colors.primary.withValues(alpha: 0.1),
            context.colors.primary.withValues(alpha: 0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(Dimens.dp20),
        border: Border.all(
          color: context.colors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
            boxShadow: [
              BoxShadow(
                color: context.colors.primary.withValues(alpha: 0.1),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
              BoxShadow(
                color: context.colors.white.withValues(alpha: 0.8),
                blurRadius: 1,
                offset: const Offset(0, -1),
              ),
            ],
      ),
      child: Row(
        children: [
          // Enhanced Avatar
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  context.colors.primary,
                  context.colors.primary.withValues(alpha: 0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: context.colors.primary.withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              CupertinoIcons.person_fill,
              color: Colors.white,
              size: 35,
            ),
          ),
          const SizedBox(width: Dimens.dp20),
          
          // Enhanced Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translate.s.welcome_message,
                  style: AppTextStyle.s20_w700(color: context.colors.textColor),
                ),
                const SizedBox(height: 6),
                Text(
                  Translate.s.settings,
                  style: AppTextStyle.s16_w500(
                    color: context.colors.textGaryColor,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          
          // Settings Icon
          Container(
            padding: const EdgeInsets.all(Dimens.dp12),
            decoration: BoxDecoration(
              color: context.colors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(Dimens.dp12),
              border: Border.all(
                color: context.colors.primary.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: Icon(
              CupertinoIcons.settings,
              color: context.colors.primary,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
