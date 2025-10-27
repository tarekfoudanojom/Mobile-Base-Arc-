import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class TabTitleWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;

  const TabTitleWidget({super.key, required this.title, this.padding});

  @override
  Widget build(BuildContext context) {
    final isBoldTextEnabled =
        WidgetsBinding.instance.platformDispatcher.accessibilityFeatures.boldText;
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 55,right: 16,left: 16),
      child: Text(
        title,
        style: isBoldTextEnabled
            ? AppTextStyle.s32_w900(color: context.colors.black)
            : AppTextStyle.s32_w700(color: context.colors.black),
      ),
    );
  }
}
