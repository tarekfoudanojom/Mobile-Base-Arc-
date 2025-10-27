class DurationConstants {
  const DurationConstants._();

  static const connectTimeoutDuration = Duration(milliseconds: 15000);
  static const receiveTimeoutDuration = Duration(milliseconds: 15000);


  static const normalAnimationDuration = Duration(milliseconds: 400);

  static const shortAnimationDuration = Duration(milliseconds: 300);

  static const longAnimationDuration = Duration(milliseconds: 800);

  static const longDuration = Duration(seconds: 3);

  static  DateTime minDateTimeDuration = DateTime.now().subtract(const Duration(days: 356 * 4));
  static  DateTime maxDateTimeDuration = DateTime.now().add(const Duration(days: 356 * 4));
}


const String minDatetimePicker = "1900 01 01 00:00:00";

/// Default value of maximum datetime.
const String maxDatetimePicker = "2100 12 31 23:59:59";

const String datePickerFormat = 'yyyy MMMM dd';

const String monthYearPickerFormat = 'yyyy MMMM';

const String monthPickerFormat = 'MMMM';

const String yearPickerFormat = 'yyyy';

/// Default value of time format
const String timePickerFormat = 'HH:mm a';

/// Default value of datetime format
const String datetimePickerFormat = 'dd MMM yyyy HH:mm a';

const List<int> solarMonthsOf31Days = <int>[1, 3, 5, 7, 8, 10, 12];
