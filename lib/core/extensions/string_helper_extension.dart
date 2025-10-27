import 'package:intl/intl.dart' as international;

extension StringExtension on String? {
  /// Return true only if
  ///
  /// value is not empty && value is not null
  bool get isNotBlank => this?.isNotEmpty == true;

  bool get isBlank => this == null || (this ?? '').isEmpty;

  bool get isRTL => international.Bidi.detectRtlDirectionality(this!);

  String get reFormatToNormal {
    return (this ?? "").trim().replaceAll(' ', '');
  }

  String get reFormatToNormalWithComma {
    return (this ?? "").trim().replaceAll(' ', '');
  }

  String get startWithCapitalLetter =>
      international.toBeginningOfSentenceCase(this) ?? "";

  String get removeThousandSeparators =>
      (this ?? "").replaceAll(RegExp(r'[^0-9.]'), '');
}
