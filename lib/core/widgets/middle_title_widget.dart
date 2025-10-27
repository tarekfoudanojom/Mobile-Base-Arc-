import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class MiddleTitleWidget extends StatelessWidget {
  final String title;
  const MiddleTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTextStyle.s18_w600(color: context.colors.black),
      child: Text(
        title,
      ),
    );
  }
}
