import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';

class OrderStatusChip extends StatelessWidget {
  final OrderStatus status;

  const OrderStatusChip({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor = status.when(
      completed: () => context.colors.success,
      pending: () => context.colors.warning,
      processing: () => context.colors.primary,
      cancelled: () => context.colors.error,
      shipped: () => context.colors.primary,
      delivered: () => context.colors.success,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status.displayName.toUpperCase(),
        style: AppTextStyle.s12_w500(color: statusColor),
      ),
    );
  }
}
