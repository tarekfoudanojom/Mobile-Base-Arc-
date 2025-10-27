import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import '../constants/dimens.dart';

class TabBarItemWidget extends StatelessWidget {
  final void Function() onTab;
  final String text;
  final bool value;
  final TextStyle? txtStyle;

  const TabBarItemWidget(
      {super.key, required this.onTab, required this.text, required this.value, this.txtStyle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTab,
        child: Container(
          padding: Dimens.paddingV10PX,
          margin: Dimens.paddingAll3PX,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: value ? context.colors.white : Colors.transparent,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: txtStyle ??
                (
                  value
                      ? AppTextStyle.s16_w700(
                          color: value ? context.colors.black : context.colors.textGrayOpacity,
                        )
                      : AppTextStyle.s16_w500(
                          color: value ? context.colors.black : context.colors.textGrayOpacity)),
          ),
        ),
      ),
    );
  }
}
