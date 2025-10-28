import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';

class OrderDetailsHeader extends StatelessWidget {
  final OrderModel order;

  const OrderDetailsHeader({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
          // Order Number
          Text(
            order.orderNumber,
            style: AppTextStyle.s24_w700(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 8),
          
          // Customer Name
          Text(
            order.customerName,
            style: AppTextStyle.s18_w500(color: context.colors.textPrimary),
          ),
          const SizedBox(height: 4),
          
          // Customer Email
          Text(
            order.customerEmail,
            style: AppTextStyle.s14_w400(color: context.colors.grey),
          ),
          const SizedBox(height: 16),
          
          // Order Date and Total
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Date',
                      style: AppTextStyle.s12_w400(color: context.colors.grey),
                    ),
                    Text(
                      order.formattedOrderDate,
                      style: AppTextStyle.s14_w500(color: context.colors.textPrimary),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Amount',
                      style: AppTextStyle.s12_w400(color: context.colors.grey),
                    ),
                    Text(
                      order.formattedTotalAmount,
                      style: AppTextStyle.s18_w600(color: context.colors.primary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
