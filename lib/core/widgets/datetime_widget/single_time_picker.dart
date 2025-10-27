import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class SingleTimePicker extends StatelessWidget {
  final DateTime? time;
  final bool isRange;
  final Function(DateTime time) onChange;

  const SingleTimePicker({
    super.key,
    required this.time,
    required this.onChange,
    required this.isRange,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TimePickerSpinner(
          is24HourMode: false,
          normalTextStyle: AppTextStyle.s12_w400(color: context.colors.black),
          highlightedTextStyle: AppTextStyle.s16_w500(color: context.colors.black),
          spacing: isRange ? 10 : 50,
          itemHeight: 30,
          isForce2Digits: true,
          time: time,
          onTimeChange: onChange,
        ),
      ),
    );
  }
}
