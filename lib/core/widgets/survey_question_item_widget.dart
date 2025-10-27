import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SurveyQuestionItemWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const SurveyQuestionItemWidget({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 18),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
              style:AppTextStyle.s16_w500(color: context.colors.textColor) ),
            Icon(Icons.keyboard_arrow_down_outlined,
            color: context.colors.textGrayOpacity,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
