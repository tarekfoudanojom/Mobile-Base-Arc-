import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateCalenderView extends StatelessWidget {
  final ValueChanged<List<DateTime?>> onValueChanged;
  final List<DateTime?>? value;
  final bool? allowViewNavigation;
  final bool isRange;
  final DateRangePickerView type;

  const DateCalenderView({
    super.key,
    required this.onValueChanged,
    required this.type,
    required this.value,
    required this.isRange,
    this.allowViewNavigation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: type == DateRangePickerView.year ? 35 : 0),
      child: SfDateRangePicker(
        backgroundColor: context.colors.white,
        view: type,
        selectionMode:
            isRange ? DateRangePickerSelectionMode.range : DateRangePickerSelectionMode.single,
        allowViewNavigation: allowViewNavigation ?? true,
        showTodayButton: false,
        initialDisplayDate: getSelectedDate(),
        initialSelectedDate: getSelectedDate(),
        initialSelectedRange: getRangeDate(),
        // minDate: DateTime.now(),
        // enablePastDates: false,
        navigationMode: DateRangePickerNavigationMode.snap,
        showNavigationArrow: type != DateRangePickerView.year,
        headerHeight: type != DateRangePickerView.year ? 40 : 0,
        onSelectionChanged: (DateRangePickerSelectionChangedArgs dates) {
          if (isRange) {
            PickerDateRange value = dates.value as PickerDateRange;
            onValueChanged([value.startDate, value.endDate]);
          } else {
            onValueChanged([dates.value]);
          }
        },
        // cellBuilder: (context, cellDetails) {
        //   return Container(
        //     key: Key(cellDetails.date.formatDate),
        //     decoration: BoxDecoration(
        //       color: context.colors.white,
        //       borderRadius: BorderRadius.circular(5),
        //     ),
        //     child: Center(
        //       child: Text(
        //         cellDetails.date.day.toString(),
        //         style: AppTextStyle.s12_w400(color: context.colors.black),
        //       ),
        //     ),
        //   );
        // },
        headerStyle: DateRangePickerHeaderStyle(
          backgroundColor: context.colors.white,
          textStyle: AppTextStyle.s12_w500(color: context.colors.black),
        ),
        rangeTextStyle: AppTextStyle.s12_w400(color: context.colors.grey),
        selectionTextStyle: AppTextStyle.s12_w400(color: context.colors.white),
        yearCellStyle: DateRangePickerYearCellStyle(
          textStyle: AppTextStyle.s10_w400(color: context.colors.black),
        ),
        monthCellStyle: DateRangePickerMonthCellStyle(
          textStyle: AppTextStyle.s10_w400(color: context.colors.black),
        ),
        monthViewSettings: DateRangePickerMonthViewSettings(
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
            textStyle: AppTextStyle.s10_w400(
              color: context.colors.black,
            ),
          ),
        ),
      ),
    );
  }

  PickerDateRange? getRangeDate() {
    if (value?.length == 2 && isRange) {
      return PickerDateRange(value!.first, value!.last);
    }
    return null;
  }

  DateTime? getSelectedDate() {
    if (value?.length == 1 && !isRange) {
      return value!.first;
    }
    return null;
  }
}
