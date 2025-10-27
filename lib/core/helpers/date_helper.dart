
abstract class DateHelper {
  static DateTime nowAtCurrentTimeZone() => DateTime.now().toUtc().toLocal();

}
