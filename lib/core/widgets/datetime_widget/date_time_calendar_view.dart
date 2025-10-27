import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/date_helper.dart';
import 'package:flutter_tdd/core/widgets/datetime_widget/time_picker_view.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'date_calender_view.dart';

class DateTimeCalendarView extends StatefulWidget {
  final ValueChanged<List<DateTime?>> onValueChanged;
  final List<DateTime?>? value;
  final bool isRange;

  const DateTimeCalendarView({
    super.key,
    required this.onValueChanged,
    required this.value,
    required this.isRange,
  });

  @override
  State<StatefulWidget> createState() => _DateTimeCalendarViewState();
}

class _DateTimeCalendarViewState extends State<DateTimeCalendarView> {
  DateTime? startDateTime = DateHelper.nowAtCurrentTimeZone();
  DateTime? endDateTime = DateHelper.nowAtCurrentTimeZone();
  List<DateTime?>? selectedDates = [], selectedTimes = [];

  @override
  void initState() {
    var today = DateHelper.nowAtCurrentTimeZone();
    if (widget.value == null) {
      if (widget.isRange) {
        selectedDates = [today, today];
        selectedTimes = [today, today];
      } else {
        selectedDates = [today];
        selectedTimes = [today];
      }
    } else {
      selectedDates = widget.value;
      selectedTimes = widget.value;
    }
    super.initState();
  }

  void onDateTimeChanged() {
    if (selectedDates?.firstOrNull != null) {
      startDateTime = DateTime(
        selectedDates?.first?.year ?? 0,
        selectedDates?.first?.month ?? 0,
        selectedDates?.first?.day ?? 0,
        selectedTimes?.first?.hour ?? 0,
        selectedTimes?.first?.minute ?? 0,
      );
    }
    if (widget.isRange) {
      if (selectedDates?.lastOrNull != null) {
        endDateTime = DateTime(
          selectedDates?.last?.year ?? 0,
          selectedDates?.last?.month ?? 0,
          selectedDates?.last?.day ?? 0,
          selectedTimes?.last?.hour ?? 0,
          selectedTimes?.last?.minute ?? 0,
        );
      }
      widget.onValueChanged([startDateTime, endDateTime]);
    } else {
      widget.onValueChanged([startDateTime]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateCalenderView(
          value: selectedDates,
          onValueChanged: (dates) {
            selectedDates = dates;
            onDateTimeChanged();
          },
          isRange: widget.isRange,
          type: DateRangePickerView.month,
        ),
        Directionality(
          textDirection: TextDirection.ltr,
          child: TimePickerView(
            isRange: widget.isRange,
            onValueChanged: (times) {
              selectedTimes = times;
              onDateTimeChanged();
            },
            value: selectedTimes,
          ),
        ),
      ],
    );
  }
}
