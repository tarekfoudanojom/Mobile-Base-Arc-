import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class ErrorView extends StatelessWidget {
  final BaseError error;
  final VoidCallback retry;

  const ErrorView({
    super.key,
    required this.error,
    required this.retry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
            error.message,
            style: AppTextStyle.s16_w400(color: context.colors.textPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          CupertinoButton.filled(
            onPressed: retry,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
