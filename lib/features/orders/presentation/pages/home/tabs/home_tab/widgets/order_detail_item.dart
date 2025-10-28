import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class OrderDetailItem extends StatelessWidget {
  final String label;
  final String value;

  const OrderDetailItem({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyle.s12_w400(color: context.colors.grey),
        ),
        Text(
          value,
          style: AppTextStyle.s14_w500(color: context.colors.textPrimary),
        ),
      ],
    );
  }
}
