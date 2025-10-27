import 'package:flutter_tdd/core/constants/global_imports.dart';

class StarNameTextWidget extends StatelessWidget {
  final String? textAr;
  final String? textEn;
  final TextStyle textStyle;
  final Widget? separator;

  const StarNameTextWidget({
    super.key,
    required this.textAr,
    required this.textEn,
    required this.textStyle,
    this.separator,
  });

  @override
  Widget build(BuildContext context) {
    var fontFamily = ApplicationConstants.fontFamilySFPro;
    if (context.isArabic) {
      return Text(
        textAr ?? textEn ?? "",
        style: textStyle.copyWith(fontFamily: fontFamily),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      );
    }
    return Text(
      textEn ?? textAr ?? "",
      style: textStyle.copyWith(fontFamily: fontFamily),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
