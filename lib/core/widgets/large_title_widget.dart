import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class LargeTitleWidget extends StatelessWidget {
  final String title;

  const LargeTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final isBoldTextEnabled = WidgetsBinding.instance.platformDispatcher.accessibilityFeatures.boldText;
    return Text(
      title,
      style: AppTextStyle.noSize(
        color: context.colors.black,
        fontWeight: isBoldTextEnabled ? FontWeight.w900 : FontWeight.w700,
      ),
    );
  }
}
