import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/order_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeTabController {
  // BaseBloc for orders list with loading/success/error states
  final BaseBloc<List<OrderModel>> ordersBloc = BaseBloc<List<OrderModel>>();
  
  // ObsValue for simple UI state
  final ObsValue<OrderStatus?> selectedStatusObs = ObsValue<OrderStatus?>.withInit(null);
  final ObsValue<String> searchQueryObs = ObsValue<String>.withInit('');
  final ObsValue<bool> showScrollUpButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<bool> isFilteringObs = ObsValue<bool>.withInit(false);
  
  // Controllers
  final RefreshController refreshController = RefreshController(initialRefresh: false);
  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  
  // Pagination
  int currentPage = 1;
  bool hasMoreData = true;
  static const int pageSize = 10;

  /// Initialize page
  void initPage(BuildContext context) {
    fetchOrders();
    scrollController.addListener(_handleScrollUpButtonVisibility);
  }

  /// Fetch orders from repository
  Future<void> fetchOrders({bool onRefresh = false}) async {
    if (!onRefresh) {
      ordersBloc.loadingState();
    }

    final status = selectedStatusObs.getValue();
    final query = searchQueryObs.getValue();
    
    MyResult<List<OrderModel>> result;
    
    if (query.isNotEmpty) {
      result = await getIt<OrderRepository>().searchOrders(query, page: currentPage);
    } else if (status != null) {
      result = await getIt<OrderRepository>().getOrdersByStatus(status, page: currentPage);
    } else {
      result = await getIt<OrderRepository>().getOrders(page: currentPage, limit: pageSize);
    }
    
    result.when(
      isSuccess: (data) {
        if (data == null || data.isEmpty) {
          hasMoreData = false;
          if (currentPage == 1) {
            ordersBloc.successState([]);
          }
          return;
        }
        
        if (currentPage > 1 && ordersBloc.hasData) {
          // Append to existing data for pagination
          final allData = List<OrderModel>.from(ordersBloc.data ?? []);
          allData.addAll(data);
          ordersBloc.successState(allData);
        } else {
          // First page or refresh
          ordersBloc.successState(data);
        }
        
        hasMoreData = data.length >= pageSize;
      },
      isError: (error) {
        if (currentPage == 1) {
          ordersBloc.failedState(error, () => fetchOrders());
        }
      },
    );
  }

  /// Handle pull-to-refresh
  Future<void> onRefresh() async {
    currentPage = 1;
    hasMoreData = true;
    await fetchOrders(onRefresh: true);
    refreshController.refreshCompleted();
  }

  /// Handle load more (pagination)
  Future<void> onLoadMore() async {
    if (!hasMoreData) {
      refreshController.loadNoData();
      return;
    }
    
    currentPage++;
    await fetchOrders(onRefresh: true);
    refreshController.loadComplete();
  }

  /// Filter orders by status
  void filterByStatus(OrderStatus? status) {
    selectedStatusObs.setValue(status);
    currentPage = 1;
    hasMoreData = true;
    isFilteringObs.setValue(true);
    fetchOrders(onRefresh: true).then((_) {
      isFilteringObs.setValue(false);
    });
  }

  /// Search orders
  void searchOrders(String query) {
    searchQueryObs.setValue(query);
    currentPage = 1;
    hasMoreData = true;
    isFilteringObs.setValue(true);
    fetchOrders(onRefresh: true).then((_) {
      isFilteringObs.setValue(false);
    });
  }

  /// Clear search
  void clearSearch() {
    searchController.clear();
    searchQueryObs.setValue('');
    currentPage = 1;
    hasMoreData = true;
    isFilteringObs.setValue(true);
    fetchOrders(onRefresh: true).then((_) {
      isFilteringObs.setValue(false);
    });
  }

  /// Update order status
  Future<void> updateOrderStatus(int orderId, OrderStatus newStatus) async {
    final result = await getIt<OrderRepository>().updateOrderStatus(orderId, newStatus);
    
    result.when(
      isSuccess: (_) {
        // Update the order in the current list
        final currentOrders = ordersBloc.data ?? [];
        final updatedOrders = currentOrders.map((order) {
          if (order.id == orderId) {
            return order.copyWith(status: newStatus);
          }
          return order;
        }).toList();
        
        ordersBloc.successState(updatedOrders);
      },
      isError: (error) {
        // Handle error - could show snackbar or dialog
        print('Failed to update order status: ${error.message}');
      },
    );
  }

  /// Handle scroll up button visibility
  void _handleScrollUpButtonVisibility() {
    final shouldShow = scrollController.offset > 100;
    if (showScrollUpButtonObs.getValue() != shouldShow) {
      showScrollUpButtonObs.setValue(shouldShow);
    }
  }

  /// Scroll to top
  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Get available status filters
  List<OrderStatus?> get statusFilters => [
    null, // All orders
    const OrderStatus.pending(),
    const OrderStatus.processing(),
    const OrderStatus.shipped(),
    const OrderStatus.delivered(),
    const OrderStatus.completed(),
    const OrderStatus.cancelled(),
  ];

  /// Get status display name
  String getStatusDisplayName(OrderStatus? status) {
    if (status == null) return 'All Orders';
    return status.displayName;
  }

  /// Dispose resources
  void dispose() {
    refreshController.dispose();
    scrollController.dispose();
    searchController.dispose();
  }
}