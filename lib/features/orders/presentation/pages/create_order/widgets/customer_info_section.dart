import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';

class CustomerInfoSection extends StatelessWidget {
  final CreateOrderController controller;

  const CustomerInfoSection({
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
            Translate.s.customer_information,
            style: AppTextStyle.s18_w600(color: context.colors.textPrimary),
          ),
          
          const SizedBox(height: 16),
          
          // Customer Name
          GenericTextField(
            controller: controller.customerNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            hint: Translate.s.customer_name,
            onChange: (_) => controller.notifyFormChange(),
            fillColor: context.colors.white,
            validate: controller.validateCustomerName,
            prefixIcon: Icon(
              CupertinoIcons.person,
              color: context.colors.grey,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Customer Email
          GenericTextField(
            controller: controller.customerEmailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            hint: Translate.s.customer_email,
            onChange: (_) => controller.notifyFormChange(),
            fillColor: context.colors.white,
            validate: controller.validateCustomerEmail,
            prefixIcon: Icon(
              CupertinoIcons.mail,
              color: context.colors.grey,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Customer Phone
          GenericTextField(
            controller: controller.customerPhoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            hint: Translate.s.customer_phone_optional,
            onChange: (_) => controller.notifyFormChange(),
            fillColor: context.colors.white,
            validate: controller.validateCustomerPhone,
            prefixIcon: Icon(
              CupertinoIcons.phone,
              color: context.colors.grey,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Shipping Address
          GenericTextField(
            controller: controller.shippingAddressController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.multiline,
            action: TextInputAction.newline,
            hint: Translate.s.shipping_address,
            fillColor: context.colors.white,
            maxLines: 3,
            onChange: (_) => controller.notifyFormChange(),
            validate: controller.validateShippingAddress,
            prefixIcon: Icon(
              CupertinoIcons.location,
              color: context.colors.grey,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Notes
          GenericTextField(
            controller: controller.notesController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.multiline,
            action: TextInputAction.newline,
            hint: Translate.s.notes_optional,
            fillColor: context.colors.white,
            onChange: (_) => controller.notifyFormChange(),
            maxLines: 2,
            validate: (value) => null, // No validation for optional field
            prefixIcon: Icon(
              CupertinoIcons.doc_text,
              color: context.colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
