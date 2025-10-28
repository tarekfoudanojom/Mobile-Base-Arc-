import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.doc_text,
            size: 64,
            color: context.colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            'No orders found',
            style: AppTextStyle.s18_w500(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 8),
          Text(
            'Pull down to refresh or try a different filter',
            style: AppTextStyle.s14_w400(color: context.colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
