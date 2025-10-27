import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/LoadingButton.dart';

class NavButtonWidget extends StatelessWidget {
  final ObsValue<bool> activeButtonObs;
  final GlobalKey<CustomButtonState> btnKey;
  final dynamic Function() onTap;
  final double? horizontalMargin;
  final double? topMargin;
  final double? elevation;
  final String? title;
  final bool canClick;
  final Color? selectedColor;
  final Color? nonActiveColor;
  final double? radius;
  final double? height;
  final Widget? child;

  const NavButtonWidget({
    super.key,
    required this.activeButtonObs,
    required this.btnKey,
    required this.onTap,
    this.horizontalMargin = 16,
    this.topMargin = 12,
    this.title,
    this.canClick = false,
    this.elevation,
    this.selectedColor,
    this.nonActiveColor,
    this.radius,
    this.height,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: activeButtonObs,
      builder: (context, value) {
        return AbsorbPointer(
          absorbing: !value && !canClick,
          child: LoadingButton(
            title: title ?? Translate.s.next,
            onTap: onTap,
            elevation: elevation,
            color: !value ? nonActiveColor ?? context.colors.slightBlueGray : selectedColor ?? context.colors.black,
            btnKey: btnKey,
            borderRadius: radius ?? 100,
            margin: EdgeInsets.only(
              bottom: 20,
              left: horizontalMargin!,
              right: horizontalMargin!,
              top: topMargin ?? 12,
            ),
            height: height ?? 48,
            titleTextStyle: AppTextStyle.s16_w600(
              color: !value ? context.colors.lightGray : context.colors.white,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
