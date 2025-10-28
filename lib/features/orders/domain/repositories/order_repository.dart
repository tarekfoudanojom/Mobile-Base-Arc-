import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/create_order_params.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';

/// Repository interface for Order management
/// Defines contracts for order data operations
abstract class OrderRepository {
  /// Get list of orders with pagination
  Future<MyResult<List<OrderModel>>> getOrders({int page = 1, int limit = 10});

  /// Get single order by ID
  Future<MyResult<OrderModel>> getOrderById(int id);

  /// Get orders by status
  Future<MyResult<List<OrderModel>>> getOrdersByStatus(OrderStatus status, {int page = 1});

  /// Search orders by customer name or order number
  Future<MyResult<List<OrderModel>>> searchOrders(String query, {int page = 1});

  /// Update order status
  Future<MyResult<bool>> updateOrderStatus(int orderId, OrderStatus status);

  /// Get orders statistics
  Future<MyResult<Map<String, int>>> getOrderStatistics();

  /// Create new order
  Future<MyResult<OrderModel>> createOrder(CreateOrderParams params);
}
