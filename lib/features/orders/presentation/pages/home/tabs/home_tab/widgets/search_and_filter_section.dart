import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/home_tab_controller.dart';

class SearchAndFilterSection extends StatelessWidget {
  final HomeTabController controller;

  const SearchAndFilterSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: context.colors.white,
      child: Column(
        children: [
          // Search Bar
          CupertinoTextField(
            controller: controller.searchController,
            placeholder: 'Search orders...',
            placeholderStyle: AppTextStyle.s14_w400(color: context.colors.grey),
            style: AppTextStyle.s14_w400(color: context.colors.textPrimary),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: context.colors.grey.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(CupertinoIcons.search, color: context.colors.grey),
            ),
            suffix: ObsValueConsumer<String>(
              observable: controller.searchQueryObs,
              builder: (context, query) {
                if (query.isNotEmpty) {
                  return CupertinoButton(
                    padding: const EdgeInsets.only(right: 8),
                    onPressed: controller.clearSearch,
                    child: Icon(CupertinoIcons.clear_circled_solid, color: context.colors.grey),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            onChanged: controller.searchOrders,
          ),
          
          const SizedBox(height: 12),
          
          // Status Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.statusFilters.map((status) {
                return ObsValueConsumer<OrderStatus?>(
                  observable: controller.selectedStatusObs,
                  builder: (context, selectedStatus) {
                    final isSelected = selectedStatus == status;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CupertinoButton(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: isSelected ? context.colors.primary : context.colors.grey.withValues(alpha: 0.1),
                        child: Text(
                          controller.getStatusDisplayName(status),
                          style: AppTextStyle.s14_w500(
                            color: isSelected ? context.colors.white : context.colors.textPrimary,
                          ),
                        ),
                        onPressed: () => controller.filterByStatus(status),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
