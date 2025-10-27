import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';

class SaveChangesBottomSheetWidget extends StatelessWidget {
  final void Function() onPressDiscard;
  final void Function() onPressSave;

  const SaveChangesBottomSheetWidget(
      {super.key, required this.onPressDiscard, required this.onPressSave});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: 35,
              height: 5,
              decoration: BoxDecoration(
                  color: context.colors.textGaryColor.withValues(alpha:0.7),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Gaps.vGap20,
          Text(
            Translate.s.save_changes,
            style: AppTextStyle.s17_w600(color: context.colors.textColor),
          ),
          Gaps.vGap15,
          Text(
            Translate.s.confirm_save_txt,
            style: AppTextStyle.s15_w400(color: context.colors.textColor),
          ),
          Gaps.vGap20,
          AppTextButton.maxCustom(
            text: Translate.s.save,
            margin: const EdgeInsets.only(bottom: 15),
            bgColor: context.colors.textColor,
            textStyle: AppTextStyle.s14_w600(color: context.colors.white),
            onPressed: onPressSave,
            borderRadius: 52,
          ),
          AppTextButton.maxCustom(
            text: Translate.s.discard,
            margin: const EdgeInsets.only(bottom: 15),
            bgColor: context.colors.white,
            textStyle: AppTextStyle.s14_w600(color: context.colors.textColor),
            onPressed: onPressDiscard,
            borderRadius: 52,
          )
        ],
      ),
    );
  }
}
