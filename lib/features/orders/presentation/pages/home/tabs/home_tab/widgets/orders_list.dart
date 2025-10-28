import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/widgets/empty_view.dart';
import 'package:flutter_tdd/features/orders/presentation/pages/home/tabs/home_tab/widgets/order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrdersList extends StatelessWidget {
  final List<OrderModel>? orders;
  final HomeTabController controller;

  const OrdersList({
    super.key,
    required this.orders,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (orders == null || orders!.isEmpty) {
      return const EmptyView();
    }

    final ordersList = orders!; // Safe to use ! here since we checked for null above

    return CupertinoScrollbar(
      child: SmartRefresher(
        controller: controller.refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: controller.onRefresh,
        onLoading: controller.onLoadMore,
        child: ListView.separated(
          controller: controller.scrollController,
          padding: const EdgeInsets.all(16),
          itemCount: ordersList.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return OrderCard(
              order: ordersList[index],
              controller: controller,
            );
          },
        ),
      ),
    );
  }
}
