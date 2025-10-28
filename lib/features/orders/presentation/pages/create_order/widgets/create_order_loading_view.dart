import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class CreateOrderLoadingView extends StatelessWidget {
  const CreateOrderLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CupertinoActivityIndicator(radius: 20),
          const SizedBox(height: 16),
          Text(
            'Creating Order...',
            style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 8),
          Text(
            'Please wait while we process your order',
            style: AppTextStyle.s14_w400(color: context.colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
