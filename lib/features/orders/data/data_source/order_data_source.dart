import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/create_order_params.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';

/// Data source interface for Order management
abstract class OrderDataSource {
  Future<MyResult<List<OrderModel>>> getOrders({int page = 1, int limit = 10});
  Future<MyResult<OrderModel>> getOrderById(int id);
  Future<MyResult<List<OrderModel>>> getOrdersByStatus(OrderStatus status, {int page = 1});
  Future<MyResult<List<OrderModel>>> searchOrders(String query, {int page = 1});
  Future<MyResult<bool>> updateOrderStatus(int orderId, OrderStatus status);
  Future<MyResult<Map<String, int>>> getOrderStatistics();
  Future<MyResult<OrderModel>> createOrder(CreateOrderParams params);
}
