import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';

class MessagesSection extends StatelessWidget {
  final CreateOrderController controller;

  const MessagesSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Error Message
        ObsValueConsumer<String?>(
          observable: controller.errorMessageObs,
          builder: (context, errorMessage) {
            if (errorMessage == null) return const SizedBox.shrink();
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colors.error.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.exclamationmark_triangle,
                    color: context.colors.error,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      errorMessage,
                      style: AppTextStyle.s14_w400(color: context.colors.error),
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 24),

        // Success Message
        ObsValueConsumer<OrderModel?>(
          observable: controller.createdOrderObs,
          builder: (context, createdOrder) {
            if (createdOrder == null) return const SizedBox.shrink();
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colors.success.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.checkmark_circle,
                    color: context.colors.success,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      Translate.s.order_created_success_message(createdOrder.orderNumber),
                      style: AppTextStyle.s14_w400(color: context.colors.success),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
