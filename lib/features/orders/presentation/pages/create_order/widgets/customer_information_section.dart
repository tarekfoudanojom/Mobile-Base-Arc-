import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/widgets/section_title.dart';

class CustomerInformationSection extends StatelessWidget {
  final CreateOrderController controller;

  const CustomerInformationSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Customer Information'),
        const SizedBox(height: 12),
        GenericTextField(
          controller: controller.customerNameController,
          hint: 'Customer Name',
          validate: controller.validateCustomerName,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.next,
          onChange: (_) => controller.notifyFormChange(),
          prefixIcon: Icon(
            CupertinoIcons.person,
            color: context.colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        GenericTextField(
          controller: controller.customerEmailController,
          hint: 'Customer Email',
          validate: controller.validateCustomerEmail,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.emailAddress,
          action: TextInputAction.next,
          onChange: (_) => controller.notifyFormChange(),
          prefixIcon: Icon(
            CupertinoIcons.mail,
            color: context.colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        GenericTextField(
          controller: controller.customerPhoneController,
          hint: 'Customer Phone (Optional)',
          validate: controller.validateCustomerPhone,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.next,
          onChange: (_) => controller.notifyFormChange(),
          prefixIcon: Icon(
            CupertinoIcons.phone,
            color: context.colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        GenericTextField(
          controller: controller.shippingAddressController,
          hint: 'Shipping Address',
          validate: controller.validateShippingAddress,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.multiline,
          action: TextInputAction.newline,
          maxLines: 3,
          onChange: (_) => controller.notifyFormChange(),
          prefixIcon: Icon(
            CupertinoIcons.location,
            color: context.colors.grey,
          ),
        ),
        const SizedBox(height: 16),
        GenericTextField(
          controller: controller.itemCountController,
          hint: 'Item Count',
          validate: controller.validateItemCount,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.number,
          action: TextInputAction.next,
          onChange: (_) => controller.notifyFormChange(),
          prefixIcon: Icon(
            CupertinoIcons.number,
            color: context.colors.grey,
          ),
        ),
      ],
    );
  }
}
