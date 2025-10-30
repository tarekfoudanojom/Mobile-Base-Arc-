import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/order_details_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/widgets/order_details_header.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/widgets/order_details_info.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/widgets/order_details_actions.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/order_details/widgets/order_status_chip.dart';

class OrderDetailsContent extends StatefulWidget {
  final OrderModel order;
  final OrderDetailsController controller;

  const OrderDetailsContent({
    super.key,
    required this.order,
    required this.controller,
  });

  @override
  State<OrderDetailsContent> createState() => _OrderDetailsContentState();
}

class _OrderDetailsContentState extends State<OrderDetailsContent> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      controller: _scrollController,
      child: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            OrderDetailsHeader(order: widget.order),
            
            const SizedBox(height: 24),
            
            // Status Section
            Container(
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
                    'Order Status',
                    style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                  ),
                  const SizedBox(height: 12),
                  OrderStatusChip(status: widget.order.status),
                ],
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Order Information Section
            OrderDetailsInfo(order: widget.order),
            
            const SizedBox(height: 16),
            
            // Actions Section
            ObsValueConsumer<bool>(
              observable: widget.controller.isLoadingObs,
              builder: (context, isLoading) {
                return OrderDetailsActions(
                  order: widget.order,
                  controller: widget.controller,
                  isLoading: isLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
