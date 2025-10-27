import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';

 class BottomSheetContent{
  static void showDeleteBottomSheet(
  BuildContext context,
  {bool? showSureText,
   void Function()? onPressKeepIt,
  required String itemName,
  required String sheetTitle,
  required void Function() onPressDelete,
  }) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
        context: context,
        builder: (ctx) {
          return DeleteBottomSheetWidget(
            itemName: itemName,
            title: sheetTitle,
            showSureText:showSureText??true,
            onPressKeepIt:onPressKeepIt ?? ()=>AutoRouter.of(context).pop(),
            onPressDelete:onPressDelete,
          );
        });
  }

  static void showSaveChangesBottomSheet(BuildContext context, {
    required void Function() onPressDiscard,
    required void Function() onPressSave}) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
        context: context,
        builder: (ctx) {
          return SaveChangesBottomSheet(
            onPressDiscard: onPressDiscard,
            onPressSave: onPressSave,);
        });


 }
 }

 class DeleteBottomSheetWidget extends StatelessWidget {
  final String itemName;
  final String title;
  final bool? showSureText;
  final void Function() onPressKeepIt;
  final void Function() onPressDelete;

  const DeleteBottomSheetWidget(
      {super.key,
        required this.itemName,
        this.showSureText,
        required this.onPressKeepIt,
        required this.onPressDelete,
        required this.title});

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
                  text: ' "$itemName"',
                  style:
                  AppTextStyle.s16_w400(color: context.colors.textColor)
                      .copyWith(height: 1.2,),
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

 class SaveChangesBottomSheet extends StatelessWidget {
  final void Function() onPressDiscard;
  final void Function() onPressSave;

  const SaveChangesBottomSheet(
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



