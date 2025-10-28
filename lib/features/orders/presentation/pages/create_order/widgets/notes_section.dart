import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/create_order_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/create_order/widgets/section_title.dart';

class NotesSection extends StatelessWidget {
  final CreateOrderController controller;

  const NotesSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Notes (Optional)'),
        const SizedBox(height: 12),
        GenericTextField(
          controller: controller.notesController,
          hint: 'Order Notes (Optional)',
          fieldTypes: FieldTypes.rich,
          type: TextInputType.multiline,
          action: TextInputAction.newline,
          maxLines: 5,
          validate: (value) => null, // No validation for notes
          onChange: (_) => controller.notifyFormChange(),
          // prefixIcon: Icon(
          //   CupertinoIcons.doc_text,
          //   color: context.colors.grey,
          // ),
        ),
      ],
    );
  }
}
