import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';

class PaymentSection extends StatelessWidget {
  final CreateOrderController controller;

  const PaymentSection({
    super.key,
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
          Text(
            'Payment & Delivery',
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          const SizedBox(height: 16),
          
          // Payment Method
          Text(
            'Payment Method',
            style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
          ),
          
          const SizedBox(height: 8),
          
          ObsValueConsumer<String>(
            observable: controller.selectedPaymentMethodObs,
            builder: (context, selectedMethod) {
              return Wrap(
                spacing: 8,
                runSpacing: 8,
                children: controller.paymentMethods.map((method) {
                  final isSelected = selectedMethod == method;
                  
                  return CupertinoButton(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: isSelected ? context.colors.primary : context.colors.grey.withValues(alpha: 0.1),
                    onPressed: () => controller.setPaymentMethod(method),
                    child: Text(
                      method,
                      style: AppTextStyle.s14_w500(
                        color: isSelected ? context.colors.white : context.colors.textPrimary,
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
          
          const SizedBox(height: 16),
          
          // Delivery Date
          Text(
            'Delivery Date (Optional)',
            style: AppTextStyle.s16_w500(color: context.colors.textPrimary),
          ),
          
          const SizedBox(height: 8),
          
          ObsValueConsumer<DateTime?>(
            observable: controller.selectedDeliveryDateObs,
            builder: (context, selectedDate) {
              return Row(
                children: [
                  Expanded(
                    child: CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      color: context.colors.grey.withValues(alpha: 0.1),
                      onPressed: () => _showDatePicker(context),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.calendar,
                            color: context.colors.grey,
                            size: 16,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            selectedDate != null
                                ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                                : 'Select delivery date',
                            style: AppTextStyle.s14_w400(
                              color: selectedDate != null 
                                  ? context.colors.textPrimary 
                                  : context.colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  if (selectedDate != null) ...[
                    const SizedBox(width: 8),
                    CupertinoButton(
                      padding: const EdgeInsets.all(8),
                      onPressed: controller.clearDeliveryDate,
                      child: Icon(
                        CupertinoIcons.clear_circled_solid,
                        color: context.colors.error,
                        size: 20,
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  void _showDatePicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          color: context.colors.white,
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: context.colors.grey.withValues(alpha: 0.1),
                  border: Border(
                    bottom: BorderSide(
                      color: context.colors.grey.withValues(alpha: 0.2),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        'Cancel',
                        style: AppTextStyle.s16_w400(color: context.colors.grey),
                      ),
                    ),
                    Text(
                      'Select Date',
                      style: AppTextStyle.s16_w600(color: context.colors.textPrimary),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        'Done',
                        style: AppTextStyle.s16_w600(color: context.colors.primary),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Date Picker
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now().add(const Duration(days: 1)),
                  minimumDate: DateTime.now(),
                  maximumDate: DateTime.now().add(const Duration(days: 365)),
                  onDateTimeChanged: (DateTime newDate) {
                    controller.setDeliveryDate(newDate);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
