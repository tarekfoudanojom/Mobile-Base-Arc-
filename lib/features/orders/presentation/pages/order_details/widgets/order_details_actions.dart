import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/order_details_controller.dart';

class OrderDetailsActions extends StatelessWidget {
  final OrderModel order;
  final OrderDetailsController controller;
  final bool isLoading;

  const OrderDetailsActions({
    super.key,
    required this.order,
    required this.controller,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final availableTransitions = controller.getAvailableStatusTransitions(order.status);
    
    if (availableTransitions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Update Status',
            style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 16),
          
          if (isLoading)
            const Center(
              child: CupertinoActivityIndicator(radius: 16),
            )
          else
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: availableTransitions.map((status) {
                return CupertinoButton(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: _getStatusColor(context, status),
                  child: Text(
                    'Mark as ${status.displayName}',
                    style: AppTextStyle.s14_w500(color: context.colors.white),
                  ),
                  onPressed: () => _showStatusUpdateConfirmation(context, status),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }

  Color _getStatusColor(BuildContext context, OrderStatus status) {
    return status.when(
      pending: () => context.colors.warning,
      processing: () => context.colors.primary,
      shipped: () => context.colors.primary,
      delivered: () => context.colors.success,
      completed: () => context.colors.success,
      cancelled: () => context.colors.error,
    );
  }

  void _showStatusUpdateConfirmation(BuildContext context, OrderStatus newStatus) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Update Order Status'),
        content: Text('Are you sure you want to mark this order as ${newStatus.displayName}?'),
        actions: [
          CupertinoDialogAction(
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text('Update'),
            onPressed: () {
              Navigator.of(context).pop();
              controller.updateOrderStatus(newStatus);
            },
          ),
        ],
      ),
    );
  }
}
