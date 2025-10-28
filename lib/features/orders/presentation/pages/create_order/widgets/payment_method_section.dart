import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/widgets/section_title.dart';

class PaymentMethodSection extends StatelessWidget {
  final CreateOrderController controller;

  const PaymentMethodSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Payment Method'),
        const SizedBox(height: 12),
        ObsValueConsumer<String>(
          observable: controller.selectedPaymentMethodObs,
          builder: (context, selectedMethod) {
            return GenericTextField(
              controller: controller.paymentMethodController,
              fieldTypes: FieldTypes.clickable,
              type: TextInputType.text,
              action: TextInputAction.done,
              hint: 'Select payment method',
              onTap: () {
                controller.notifyFormChange();
                _showPaymentMethodBottomSheet(context);
              },
              prefixIcon: Icon(
                CupertinoIcons.creditcard,
                color: context.colors.grey,
              ),
              suffixIcon: Icon(
                CupertinoIcons.chevron_down,
                color: context.colors.primary,
                size: 20,
              ),
              validate: (value) => controller.validatePaymentMethod(),
            );
          },
        ),
      ],
    );
  }

  void _showPaymentMethodBottomSheet(BuildContext context) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        height: 400,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            // Handle bar
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: context.colors.grey.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Select Payment Method',
                style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
              ),
            ),

            // Payment methods list
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: controller.paymentMethods.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final method = controller.paymentMethods[index];
                  return ObsValueConsumer<String>(
                    observable: controller.selectedPaymentMethodObs,
                    builder: (context, selectedMethod) {
                      final isSelected = selectedMethod == method;
                      return CupertinoButton(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        color: isSelected
                            ? context.colors.primary
                            : context.colors.grey.withValues(alpha: 0.1),
                        onPressed: () {
                          controller.setPaymentMethod(method);
                          controller.notifyFormChange();
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            Icon(
                              isSelected
                                  ? CupertinoIcons.checkmark_circle_fill
                                  : CupertinoIcons.circle,
                              color: isSelected ? context.colors.white : context.colors.grey,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                method,
                                style: AppTextStyle.s16_w500(
                                  color: isSelected
                                      ? context.colors.white
                                      : context.colors.textPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),

            // Cancel button
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: context.colors.grey.withValues(alpha: 0.1),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Cancel',
                    style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
