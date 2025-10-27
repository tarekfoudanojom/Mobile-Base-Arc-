import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class HintText extends StatelessWidget {
  final String hintText;
  final TextStyle? hintStyle;

  const HintText({super.key, required this.hintText, this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return Text(hintText, style:hintStyle?? AppTextStyle.s16_w400(color: AppColors.noContextInstance.blackOpacity));
  }
}
