import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';

class AdaptivePicker {
  static void datePicker({
    required BuildContext context,
    required Function(DateTime? date) onConfirm,
    required String title,
    DateTime? initial,
    DateTime? minDate,
    DateTime? maxDate,
    bool dateAndTime = false,
    final bool showHeaderAndButton = true,
  }) async {
    _iosDatePicker(context, onConfirm, title,
        initial: initial,
        minDate: minDate,
        maxDate: maxDate,
        dateAndTime: dateAndTime,
        showHeaderAndButton: showHeaderAndButton);
  }

  static void _iosDatePicker(
    BuildContext context,
    Function(DateTime? date) onConfirm,
    String title, {
    DateTime? initial,
    DateTime? minDate,
    DateTime? maxDate,
    bool? dateAndTime,
    final bool showHeaderAndButton = true,
  }) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (ctx) {
        return cupertinoDatePicker(context, onConfirm, title,
            initial: initial,
            minDate: minDate,
            maxDate: maxDate,
            dateAndTime: dateAndTime,
            showHeaderAndButton: showHeaderAndButton);
      },
    );
  }

  static Widget cupertinoDatePicker(
    BuildContext context,
    Function(DateTime? date) onConfirm,
    String title, {
    DateTime? initial,
    DateTime? minDate,
    DateTime? maxDate,
    bool? dateAndTime,
    final bool showHeaderAndButton = true,
  }) {
    DateTime dateNow = initial ?? DateTime.now();
    return Container(
      // padding: Dimens.paddingH16PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        // borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Gaps.vGap6,
          // Center(
          //   child: Container(
          //     width: 36,
          //     height: 5,
          //     decoration: BoxDecoration(
          //       color: context.colors.textGaryColor.withValues(alpha:0.3),
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //   ),
          // ),
          Divider(
            color: context.colors.grey,
            thickness: .7,
            height: 0,
          ),
          Visibility(
            visible: showHeaderAndButton,
            replacement: GestureDetector(
              onTap: () {
                onConfirm(dateNow);
                Navigator.of(context).pop();
              },
              child: Container(
                padding: Dimens.paddingH16V14PX,
                alignment: Alignment.centerLeft,
                child: Text(
                  Translate.s.done,
                  style: AppTextStyle.s17_w600(
                    color: context.colors.appColorBlue,
                  ),
                ),
              ),
            ),
            child: Padding(
              padding: Dimens.paddingH16V5PX,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.s17_w600(color: context.colors.black),
                  ),
                  InkWell(
                    onTap: () => AutoRouter.of(context).maybePop(),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: context.colors.textGaryColor
                              .withValues(alpha: 0.2),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.close_rounded,
                        color: context.colors.closeIconColor,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Flexible(
            child: Container(
                color: CupertinoColors.white, // Base system gray,
                height: 230,
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20, // Optional
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: initial ?? DateTime.now(),
                    onDateTimeChanged: (date) {
                      dateNow = date;
                    },
                    maximumDate: maxDate ?? DateTime(2050),
                    dateOrder: DatePickerDateOrder.dmy,
                    backgroundColor: Colors.transparent,
                    minimumDate: minDate ??
                        DateTime.now().add(const Duration(hours: -1)),
                    mode: dateAndTime == true
                        ? CupertinoDatePickerMode.dateAndTime
                        : CupertinoDatePickerMode.date,
                  ),
                )),
          ),
          if (showHeaderAndButton)
            AppTextButton.maxCustom(
              text: Translate.s.save,
              borderRadius: 50,
              bgColor: context.colors.textColor,
              onPressed: () {
                onConfirm(dateNow);
                Navigator.of(context).pop();
              },
              textStyle: AppTextStyle.s16_w600(color: context.colors.white),
              margin: Dimens.paddingAll16PX,
            ),
        ],
      ),
    );
  }

  static void timePicker(
      {required BuildContext context,
      required String title,
      required Function(DateTime? date) onConfirm,
      final bool showHeaderAndButton = true,
      DateTime? initDate}) async {
    _iosTimePicker(context, title, onConfirm,
        showHeaderAndButton: showHeaderAndButton, initDate: initDate);
  }

  static void _iosTimePicker(
      BuildContext context, String title, Function(DateTime? date) onConfirm,
      {bool showHeaderAndButton = true, DateTime? initDate}) {
    AppBottomSheets.showScrollableBodyFixedHeaderSheet(
      context: context,
      builder: (ctx) {
        return cupertinoTimePicker(context, title, onConfirm,
            showHeaderAndButton: showHeaderAndButton, initDate: initDate);
      },
    );
  }

  static Widget cupertinoTimePicker(
      BuildContext context, String title, Function(DateTime? date) onConfirm,
      {bool showHeaderAndButton = true, DateTime? initDate}) {
    DateTime dateNow = DateTime.now();
    return Container(
      decoration: BoxDecoration(
        color: context.colors.white,
        // borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: context.colors.grey,
            thickness: .7,
            height: 0,
          ),
          Visibility(
            visible: showHeaderAndButton,
            replacement: GestureDetector(
              onTap: () {
                onConfirm(dateNow);
                Navigator.of(context).pop();
              },
              child: Container(
                padding: Dimens.paddingH16V14PX,
                alignment: Alignment.centerLeft,
                child: Text(
                  Translate.s.done,
                  style: AppTextStyle.s17_w600(
                    color: context.colors.appColorBlue,
                  ),
                ),
              ),
            ),
            child: Padding(
              padding: Dimens.paddingH16V5PX,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppTextStyle.s17_w600(color: context.colors.black),
                  ),
                  InkWell(
                    onTap: () => AutoRouter.of(context).maybePop(),
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: context.colors.textGaryColor
                              .withValues(alpha: 0.2),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.close_rounded,
                        color: context.colors.closeIconColor,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Divider(
          //   color: context.colors.background1,
          //   thickness: 1.4,
          //   height: 0,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         title,
          //         style: AppTextStyle.s14_w500(color: context.colors.white),
          //       ),
          //       AppTextButton.minPrimary(
          //         text: "Done",
          //         onPressed: () {
          //           onConfirm(dateNow);
          //           Navigator.of(context).pop();
          //         },
          //       )
          //     ],
          //   ),
          // ),
          Flexible(
            child: Container(
              color: CupertinoColors.white, // Base system gray,
              height: 230,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  brightness: Brightness.light, // Force light mode
                ),
                child: CupertinoDatePicker(
                  onDateTimeChanged: (date) {
                    dateNow = date;
                  },
                  initialDateTime: initDate,
                  mode: CupertinoDatePickerMode.time,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          if (showHeaderAndButton)
            AppTextButton.maxCustom(
              text: Translate.s.save,
              borderRadius: 50,
              bgColor: context.colors.black,
              onPressed: () {
                onConfirm(dateNow);
                Navigator.of(context).pop();
              },
              textStyle: AppTextStyle.s16_w600(color: context.colors.white),
              margin: Dimens.paddingAll16PX,
            ),
        ],
      ),
    );
  }

  static Future bottomSheet(
      {required BuildContext context, required Widget child}) {
    return showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.dp10),
        ),
      ),
      backgroundColor: context.colors.white,
      context: context,
      builder: (context) => SizedBox(
        height: 320,
        child: child,
      ),
    );
  }
}
