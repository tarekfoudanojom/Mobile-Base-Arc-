import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/device_cubit/device_cubit.dart';
import 'di.dart';
import 'global_context.dart';

String formatDateToArabic(DateTime date, {String? format}) {
  BuildContext context = getIt<GlobalContext>().context();
  String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
  if(lang == 'en') {
    return DateFormat(format ?? 'EEEE, d MMM, y', 'en').format(date);
  }
  // Arabic names mapping
  Map<String, String> arabicDays = {
    'Saturday': 'السبت',
    'Sunday': 'الأحد',
    'Monday': 'الإثنين',
    'Tuesday': 'الثلاثاء',
    'Wednesday': 'الأربعاء',
    'Thursday': 'الخميس',
    'Friday': 'الجمعة',
  };

  Map<String, String> arabicMonths = {
    'January': 'يناير',
    'February': 'فبراير',
    'March': 'مارس',
    'April': 'أبريل',
    'May': 'مايو',
    'June': 'يونيو',
    'July': 'يوليو',
    'August': 'أغسطس',
    'September': 'سبتمبر',
    'October': 'أكتوبر',
    'November': 'نوفمبر',
    'December': 'ديسمبر',
  };

  // Format the date in English to keep numbers in English
  String formattedDate = DateFormat(format ?? 'EEEE, d MMMM, y', 'en').format(date);

  // Replace English day and month names with Arabic equivalents
  arabicDays.forEach((en, ar) {
    formattedDate = formattedDate.replaceAll(en, ar);
  });

  arabicMonths.forEach((en, ar) {
    formattedDate = formattedDate.replaceAll(en, ar);
  });

  // Replace AM/PM with Arabic equivalents
  formattedDate = formattedDate.replaceAll('AM', 'ص').replaceAll('PM', 'م');

  return formattedDate;
}

