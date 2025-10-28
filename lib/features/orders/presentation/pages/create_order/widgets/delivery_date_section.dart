import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/widgets/section_title.dart';

class DeliveryDateSection extends StatelessWidget {
  final CreateOrderController controller;

  const DeliveryDateSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Delivery Date (Optional)'),
        const SizedBox(height: 12),
        ObsValueConsumer<DateTime?>(
          observable: controller.selectedDeliveryDateObs,
          builder: (context, selectedDate) {
            return GenericTextField(
              controller: controller.deliveryDateController,
              fieldTypes: FieldTypes.clickable,
              type: TextInputType.datetime,
              action: TextInputAction.done,
              hint: 'Select delivery date',
              onTap: () {
                controller.notifyFormChange();
                _showAdaptiveDatePicker(context);
              },
              prefixIcon: Icon(
                CupertinoIcons.calendar_today,
                color: context.colors.grey,
              ),
              suffixWidget: Icon(
                CupertinoIcons.calendar,
                color: context.colors.primary,
                size: 20,
              ),
              validate: (value) => null, // No validation for optional field
            );
          },
        ),
      ],
    );
  }

  void _showAdaptiveDatePicker(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: controller.selectedDeliveryDateObs.getValue() ??
          DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now().subtract(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: context.colors.primary,
              onPrimary: context.colors.white,
              surface: context.colors.white,
              onSurface: context.colors.textPrimary,
              secondary: context.colors.primary,
              onSecondary: context.colors.white,
              error: context.colors.error,
              onError: context.colors.white,
            ),
            textTheme: Theme.of(context).textTheme.copyWith(
                  bodyLarge: TextStyle(color: context.colors.textPrimary),
                  bodyMedium: TextStyle(color: context.colors.textPrimary),
                  bodySmall: TextStyle(color: context.colors.textPrimary),
                  labelLarge: TextStyle(color: context.colors.textPrimary),
                  labelMedium: TextStyle(color: context.colors.textPrimary),
                  labelSmall: TextStyle(color: context.colors.textPrimary),
                ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: context.colors.primary,
                textStyle: AppTextStyle.s16_w500(color: context.colors.primary),
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.white,
                textStyle: AppTextStyle.s16_w500(color: context.colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null) {
      controller.setDeliveryDate(selectedDate);
      controller.notifyFormChange();
    controller.notifyFormChange();
    }
  }
}
