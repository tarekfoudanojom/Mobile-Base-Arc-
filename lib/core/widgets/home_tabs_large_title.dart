import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class HomeTabsLargeTitle extends StatelessWidget {
  final String title;
  const HomeTabsLargeTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final isBoldTextEnabled =
        WidgetsBinding.instance.platformDispatcher.accessibilityFeatures.boldText;
    return Text(
      title,
      style: isBoldTextEnabled
          ? AppTextStyle.s32_w900(color: context.colors.black)
          : AppTextStyle.s32_w700(color: context.colors.black),
    );
  }
}
