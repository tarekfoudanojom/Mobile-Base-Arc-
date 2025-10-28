import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

class OrderDetailsInfo extends StatelessWidget {
  final OrderModel order;

  const OrderDetailsInfo({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
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
            'Order Information',
            style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 16),
          
          // Items Count
          _buildInfoRow(context, 'Items Count', '${order.itemsCount}'),
          const SizedBox(height: 12),
          
          // Payment Method
          _buildInfoRow(context, 'Payment Method', order.paymentMethod),
          const SizedBox(height: 12),
          
          // Shipping Address
          _buildInfoRow(context, 'Shipping Address', order.shippingAddress),
          
          // Delivery Date (if available)
          if (order.deliveryDate != null) ...[
            const SizedBox(height: 12),
            _buildInfoRow(context, 'Delivery Date', order.formattedDeliveryDate!),
          ],
          
          // Notes (if available)
          if (order.notes != null && order.notes!.isNotEmpty) ...[
            const SizedBox(height: 12),
            _buildInfoRow(context, 'Notes', order.notes!),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: AppTextStyle.s14_w500(color: context.colors.grey),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
          ),
        ),
      ],
    );
  }
}
