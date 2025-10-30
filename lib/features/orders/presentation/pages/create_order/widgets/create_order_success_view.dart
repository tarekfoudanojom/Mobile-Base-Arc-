import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

class CreateOrderSuccessView extends StatelessWidget {
  final OrderModel order;
  final VoidCallback onBackToHome;
  final VoidCallback onCreateAnother;

  const CreateOrderSuccessView({
    super.key,
    required this.order,
    required this.onBackToHome,
    required this.onCreateAnother,
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
              CupertinoIcons.checkmark_circle_fill,
              size: 80,
              color: context.colors.success,
            ),
            const SizedBox(height: 24),
            Text(
              Translate.s.order_created_successfully,
              style: AppTextStyle.s24_w700(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              '${Translate.s.order_number}: ${order.orderNumber}',
              style: AppTextStyle.s18_w600(color: context.colors.primary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '${Translate.s.total_amount}: ${order.formattedTotalAmount}',
              style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '${Translate.s.customer}: ${order.customerName}',
              style: AppTextStyle.s14_w400(color: context.colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
                onPressed: onBackToHome,
                child: Text(Translate.s.back_to_home),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                color: context.colors.primary.withValues(alpha: 0.1),
                onPressed: onCreateAnother,
                child: Text(
                  Translate.s.create_another,
                  style: AppTextStyle.s16_w500(color: context.colors.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
