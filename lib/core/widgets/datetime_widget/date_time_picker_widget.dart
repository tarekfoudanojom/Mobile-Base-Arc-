import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/duration_constants.dart';
import 'package:flutter_tdd/core/helpers/date_helper.dart';
import 'package:flutter_tdd/core/lib/custom_datetime_picker/src/date_picker.dart';
import 'package:flutter_tdd/core/lib/custom_datetime_picker/src/date_picker_theme.dart';
import 'package:flutter_tdd/core/lib/custom_datetime_picker/src/i18n/date_picker_i18n.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class DateTimePicker extends StatelessWidget {
  final Widget child;

  /// if its null then it will open date picker directly else it will open Date time picker depends on functions return
  final bool Function()? openDateTimePicker;
  final DateTimePickerMode mode;
  final VoidCallback? onCancel;
  final VoidCallback? onClose;
  final Function(DateTime dateTime, List<int> selectedIndex)? onChange;
  final Function(DateTime dateTime, List<int> selectedIndex)? onConfirm;
  final DateTime? initialDateTime;
  final DateTime? minDateTime;
  final DateTime? maxDateTime;

  const DateTimePicker({
    Key? key,
    required this.child,
    required this.mode,
    this.openDateTimePicker,
    this.onCancel,
    this.onClose,
    this.onChange,
    this.onConfirm,
    this.initialDateTime,
    this.minDateTime,
    this.maxDateTime,
  }) : super(key: key);

  String get _format {
    switch (mode) {
      case DateTimePickerMode.date:
        return datePickerFormat;
      case DateTimePickerMode.time:
        return timePickerFormat;
      case DateTimePickerMode.datetime:
        return datetimePickerFormat;
      case DateTimePickerMode.monthYear:
        return monthYearPickerFormat;
      case DateTimePickerMode.month:
        return monthPickerFormat;
      case DateTimePickerMode.year:
        return yearPickerFormat;
    }
  }

  DateTimePickerLocale _locale(BuildContext context) {
    if (Localizations.localeOf(context).languageCode == "ar") {
      return DateTimePickerLocale.ar_eg;
    } else {
      return DateTimePickerLocale.en_us;
    }
  }

  String getConfirmText(BuildContext context) {
    return Translate.s.app_confirm;
  }

  String getCancelText(BuildContext context) {
    return Translate.s.app_cancel;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (openDateTimePicker == null) {
          dateTimePickerWidget(
              context, _format, _locale(context), getConfirmText(context), getCancelText(context));
        } else {
          if (openDateTimePicker!() == false) {
            return;
          } else {
            dateTimePickerWidget(context, _format, _locale(context), getConfirmText(context),
                getCancelText(context));
          }
        }
      },
      child: child,
    );
  }

  void dateTimePickerWidget(BuildContext context, String dateFormat, DateTimePickerLocale locale,
      String confirmText, String cancelText) {
    log('Hello ...');
    DatePicker.showDatePicker(
      context,
      dateFormat: dateFormat,
      initialDateTime: initialDateTime ?? DateHelper.nowAtCurrentTimeZone(),
      minDateTime: minDateTime ?? DurationConstants.minDateTimeDuration,
      maxDateTime: maxDateTime ?? DurationConstants.maxDateTimeDuration,
      pickerMode: DateTimePickerMode.time,
      onMonthChangeStartWithFirstDate: true,
      onChange: onChange,
      onCancel: onCancel,
      onClose: onClose,
      locale: locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        backgroundColor: context.colors.white,
        itemHeight: 40,
        titleHeight: 85,
        itemTextStyle: TextStyle(color: context.colors.black, fontSize: 12.0),
        pickerHeight: MediaQuery.of(context).size.height * 0.4,
      ),
      onConfirm: onConfirm,
    );
  }
}
