import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/widgets/order_detail_item.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/widgets/order_status_chip.dart';

class OrderCard extends StatelessWidget {
  final OrderModel order;
  final HomeTabController controller;

  const OrderCard({
    super.key,
    required this.order,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.orderNumber,
                      style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                    ),
                    Text(
                      order.customerName,
                      style: AppTextStyle.s14_w400(color: context.colors.grey),
                    ),
                  ],
                ),
              ),
              OrderStatusChip(status: order.status),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // Order Details
          Row(
            children: [
              Expanded(
                child: OrderDetailItem(label: Translate.s.total, value: order.formattedTotalAmount),
              ),
              Expanded(
                child: OrderDetailItem(label: Translate.s.items, value: '${order.itemsCount}'),
              ),
              Expanded(
                child: OrderDetailItem(label: Translate.s.date, value: order.formattedOrderDate),
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // Payment Method
          Text(
            '${Translate.s.payment}: ${order.paymentMethod}',
            style: AppTextStyle.s12_w400(color: context.colors.grey),
          ),
          
          if (order.notes != null) ...[
            const SizedBox(height: 8),
            Text(
              '${Translate.s.notes}: ${order.notes}',
              style: AppTextStyle.s12_w400(color: context.colors.grey),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          
          const SizedBox(height: 12),
          
          // Action Buttons
          Row(
            children: [
              Expanded(
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  color: context.colors.primary.withValues(alpha: 0.1),
                  child: Text(
                    Translate.s.view_details,
                    style: AppTextStyle.s14_w500(color: context.colors.primary),
                  ),
                  onPressed: () {
                    // Navigate to order details page using Auto Route
                    context.router.push(OrderDetailsRoute(orderId: order.id));
                  },
                ),
              ),
              const SizedBox(width: 8),
              if (order.status == const OrderStatus.pending()) ...[
                CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  color: context.colors.success,
                  child: Text(
                    Translate.s.process,
                    style: AppTextStyle.s14_w500(color: context.colors.white),
                  ),
                  onPressed: () => controller.updateOrderStatus(order.id, const OrderStatus.processing()),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
