import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';

class BottomSheetButtonWidget extends StatelessWidget {
  final String? customSaveText;
  final VoidCallback? onSaveTextPressed;
  final EdgeInsets? padding;
  final VoidCallback? onCancelPressed;

  const BottomSheetButtonWidget({
    super.key,
    this.customSaveText,
    this.onSaveTextPressed,
    this.padding,
    this.onCancelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppTextButton.minPrimary(
            text: Translate.s.cancel,
            onPressed: () async {
              if (onCancelPressed != null) {
                onCancelPressed!();
              } else {
                Navigator.pop(context);
              }
            },
          ),
          // Gaps.hGap8,
          // AppTextButton.minPrimary(
          //   text: customSaveText ?? Translate.s.save,
          //   onPressed: onSaveTextPressed,
          // ),
        ],
      ),
    );
  }
}
