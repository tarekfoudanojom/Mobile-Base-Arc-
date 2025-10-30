import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
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
        SectionTitle(title: Translate.s.customer_information),
        const SizedBox(height: 12),
        GenericTextField(
          controller: controller.customerNameController,
          hint: Translate.s.customer_name,
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
          hint: Translate.s.customer_email,
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
          hint: Translate.s.customer_phone_optional,
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
          hint: Translate.s.shipping_address,
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
          hint: Translate.s.item_count,
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
