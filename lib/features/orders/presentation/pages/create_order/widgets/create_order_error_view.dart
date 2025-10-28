import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class CreateOrderErrorView extends StatelessWidget {
  final BaseError error;
  final VoidCallback retry;

  const CreateOrderErrorView({
    super.key,
    required this.error,
    required this.retry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.exclamationmark_triangle,
              size: 64,
              color: context.colors.error,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to Create Order',
              style: AppTextStyle.s20_w600(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              error.message,
              style: AppTextStyle.s16_w400(color: context.colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            CupertinoButton.filled(
              onPressed: retry,
              child: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
