import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import '../../constants/dimens.dart';
import '../../constants/gaps.dart';
import '../../localization/translate.dart';
import '../../theme/text/app_text_style.dart';
import '../app_button.dart';

class DeleteBottomSheetWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool? showSureText;
  final void Function() onPressKeepIt;
  final void Function() onPressDelete;

  const DeleteBottomSheetWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.showSureText = false,
      required this.onPressKeepIt,
      required this.onPressDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
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
            title,
            style: AppTextStyle.s17_w600(color: context.colors.textColor),
          ),
          Gaps.vGap15,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: Translate.s.confirm_delete_txt,
                  style:
                      AppTextStyle.s16_w400(color: context.colors.textColor),
                ),
                TextSpan(
                  text: '"$subtitle"',
                  style: AppTextStyle.s16_w600(color: context.colors.textColor)
                      .copyWith(
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap10,
          Visibility(
            visible: showSureText ?? false,
            replacement: Gaps.empty,
            child: Text(
              Translate.s.are_you_sure,
              style: AppTextStyle.s16_w400(color: context.colors.textColor),
            ),
          ),
          Gaps.vGap20,
          AppTextButton.maxCustom(
            maxHeight: 48,
            text: Translate.s.confirm_delete,
            borderColor: context.colors.red,
            margin: Dimens.paddingBottom15PX,
            bgColor: context.colors.red,
            textStyle: AppTextStyle.s14_w500(color: context.colors.white),
            onPressed: onPressDelete,
            borderRadius: 52,
          ),
          AppTextButton.maxCustom(
            text: Translate.s.keep_it,
            maxHeight: 48,
            margin: Dimens.paddingBottom15PX,
            bgColor: context.colors.white,
            borderColor: context.colors.red,
            textStyle: AppTextStyle.s14_w500(color: context.colors.red),
            onPressed: onPressKeepIt,
            borderRadius: 52,
          )
        ],
      ),
    );
  }
}
