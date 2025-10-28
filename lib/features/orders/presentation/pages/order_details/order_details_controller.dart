import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/errors/unknown_error.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/order_repository.dart';

class OrderDetailsController {
  // BaseBloc for order details with loading/success/error states
  final BaseBloc<OrderModel> orderBloc = BaseBloc<OrderModel>();
  
  // ObsValue for UI state
  final ObsValue<bool> isLoadingObs = ObsValue<bool>.withInit(false);
  
  final int orderId;

  OrderDetailsController({required this.orderId});

  /// Initialize page
  void initPage(BuildContext context) {
    fetchOrderDetails();
  }

  /// Fetch order details from repository
  Future<void> fetchOrderDetails() async {
    orderBloc.loadingState();

    final result = await getIt<OrderRepository>().getOrderById(orderId);
    
    result.when(
      isSuccess: (data) {
        if (data != null) {
          orderBloc.successState(data);
        } else {
          orderBloc.failedState(
            UnknownError(msg: "Order not found"), 
            () => fetchOrderDetails()
          );
        }
      },
      isError: (error) {
        orderBloc.failedState(error, () => fetchOrderDetails());
      },
    );
  }

  /// Update order status
  Future<void> updateOrderStatus(OrderStatus newStatus) async {
    isLoadingObs.setValue(true);
    
    final result = await getIt<OrderRepository>().updateOrderStatus(orderId, newStatus);
    
    result.when(
      isSuccess: (_) {
        // Refresh order details to get updated data
        fetchOrderDetails();
      },
      isError: (error) {
        // Handle error - could show snackbar or dialog
        print('Failed to update order status: ${error.message}');
      },
    );
    
    isLoadingObs.setValue(false);
  }

  /// Get available status transitions for current order
  List<OrderStatus> getAvailableStatusTransitions(OrderStatus currentStatus) {
    return currentStatus.when(
      pending: () => [const OrderStatus.processing(), const OrderStatus.cancelled()],
      processing: () => [const OrderStatus.shipped(), const OrderStatus.cancelled()],
      shipped: () => [const OrderStatus.delivered()],
      delivered: () => [const OrderStatus.completed()],
      completed: () => <OrderStatus>[], // No transitions from completed
      cancelled: () => <OrderStatus>[], // No transitions from cancelled
    );
  }

  /// Dispose resources
  void dispose() {
    // No controllers to dispose in this case
  }
}
