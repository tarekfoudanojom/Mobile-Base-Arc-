import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/date_helper.dart';

import 'single_time_picker.dart';

class TimePickerView extends StatefulWidget {
  final ValueChanged<List<DateTime?>> onValueChanged;
  final List<DateTime?>? value;
  final bool isRange;

  const TimePickerView({
    super.key,
    required this.onValueChanged,
    required this.value,
    required this.isRange,
  });

  @override
  State<TimePickerView> createState() => _TimePickerViewState();
}

class _TimePickerViewState extends State<TimePickerView> {
  DateTime? startTime = DateHelper.nowAtCurrentTimeZone();
  DateTime? endTime = DateHelper.nowAtCurrentTimeZone();

  @override
  void initState() {
    if (widget.value != null) {
      if (widget.value!.isNotEmpty) {
        startTime = widget.value!.first;
        if (widget.value!.length == 2) {
          endTime = widget.value!.last;
        }
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          SingleTimePicker(
            isRange: widget.isRange,
            time: startTime,
            onChange: (time) {
              startTime = time;
              if (widget.isRange) {
                widget.onValueChanged([startTime, endTime]);
              } else {
                widget.onValueChanged([startTime]);
              }
            },
          ),
          if (widget.isRange)
            SingleTimePicker(
              isRange: widget.isRange,
              time: endTime,
              onChange: (time) {
                endTime = time;
                if (widget.isRange) {
                  widget.onValueChanged([startTime, endTime]);
                } else {
                  widget.onValueChanged([startTime]);
                }
              },
            ),
        ],
      ),
    );
  }
}
