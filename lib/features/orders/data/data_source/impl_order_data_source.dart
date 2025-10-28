import 'dart:math';
import 'package:flutter_tdd/core/errors/unknown_error.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/data_source/order_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderDataSource)
class ImplOrderDataSource extends OrderDataSource {
  
  // Mock data for orders
  final List<OrderModel> _mockOrders = [
    OrderModel(
      id: 1,
      orderNumber: "ORD-2024-001",
      customerName: "Ahmed Hassan",
      customerEmail: "ahmed.hassan@email.com",
      totalAmount: 299.99,
      status: const OrderStatus.completed(),
      orderDate: "2024-01-15T10:30:00Z",
      deliveryDate: "2024-01-18T14:00:00Z",
      shippingAddress: "123 Main Street, Dubai, UAE",
      paymentMethod: "Credit Card",
      notes: "Please deliver after 2 PM",
      itemsCount: 3,
    ),
    OrderModel(
      id: 2,
      orderNumber: "ORD-2024-002",
      customerName: "Sarah Al-Mansouri",
      customerEmail: "sarah.mansouri@email.com",
      totalAmount: 450.50,
      status: const OrderStatus.pending(),
      orderDate: "2024-01-16T09:15:00Z",
      deliveryDate: "2024-01-20T16:00:00Z",
      shippingAddress: "456 Sheikh Zayed Road, Abu Dhabi, UAE",
      paymentMethod: "Bank Transfer",
      notes: "Fragile items - handle with care",
      itemsCount: 5,
    ),
    OrderModel(
      id: 3,
      orderNumber: "ORD-2024-003",
      customerName: "Mohammed Al-Rashid",
      customerEmail: "mohammed.rashid@email.com",
      totalAmount: 125.75,
      status: const OrderStatus.processing(),
      orderDate: "2024-01-17T14:45:00Z",
      shippingAddress: "789 Al Wasl Road, Dubai, UAE",
      paymentMethod: "Cash on Delivery",
      itemsCount: 2,
    ),
    OrderModel(
      id: 4,
      orderNumber: "ORD-2024-004",
      customerName: "Fatima Al-Zahra",
      customerEmail: "fatima.zahra@email.com",
      totalAmount: 675.25,
      status: const OrderStatus.completed(),
      orderDate: "2024-01-18T11:20:00Z",
      deliveryDate: "2024-01-21T10:00:00Z",
      shippingAddress: "321 Corniche Road, Abu Dhabi, UAE",
      paymentMethod: "Credit Card",
      itemsCount: 7,
    ),
    OrderModel(
      id: 5,
      orderNumber: "ORD-2024-005",
      customerName: "Omar Al-Khatib",
      customerEmail: "omar.khatib@email.com",
      totalAmount: 89.99,
      status: const OrderStatus.cancelled(),
      orderDate: "2024-01-19T16:30:00Z",
      shippingAddress: "654 Jumeirah Beach Road, Dubai, UAE",
      paymentMethod: "Credit Card",
      notes: "Customer requested cancellation",
      itemsCount: 1,
    ),
    OrderModel(
      id: 6,
      orderNumber: "ORD-2024-006",
      customerName: "Layla Al-Mahmoud",
      customerEmail: "layla.mahmoud@email.com",
      totalAmount: 320.00,
      status: const OrderStatus.pending(),
      orderDate: "2024-01-20T08:45:00Z",
      deliveryDate: "2024-01-23T12:00:00Z",
      shippingAddress: "987 Al Ain Road, Abu Dhabi, UAE",
      paymentMethod: "Bank Transfer",
      itemsCount: 4,
    ),
    OrderModel(
      id: 7,
      orderNumber: "ORD-2024-007",
      customerName: "Khalid Al-Sabah",
      customerEmail: "khalid.sabah@email.com",
      totalAmount: 550.75,
      status: const OrderStatus.processing(),
      orderDate: "2024-01-21T13:15:00Z",
      shippingAddress: "147 Al Khor Road, Dubai, UAE",
      paymentMethod: "Credit Card",
      itemsCount: 6,
    ),
    OrderModel(
      id: 8,
      orderNumber: "ORD-2024-008",
      customerName: "Aisha Al-Farisi",
      customerEmail: "aisha.farisi@email.com",
      totalAmount: 199.50,
      status: const OrderStatus.completed(),
      orderDate: "2024-01-22T10:00:00Z",
      deliveryDate: "2024-01-25T15:30:00Z",
      shippingAddress: "258 Al Barsha Road, Dubai, UAE",
      paymentMethod: "Cash on Delivery",
      itemsCount: 3,
    ),
    OrderModel(
      id: 9,
      orderNumber: "ORD-2024-009",
      customerName: "Yousef Al-Maktoum",
      customerEmail: "yousef.maktoum@email.com",
      totalAmount: 425.25,
      status: const OrderStatus.pending(),
      orderDate: "2024-01-23T15:30:00Z",
      deliveryDate: "2024-01-26T11:00:00Z",
      shippingAddress: "369 Al Qudra Road, Dubai, UAE",
      paymentMethod: "Bank Transfer",
      itemsCount: 5,
    ),
    OrderModel(
      id: 10,
      orderNumber: "ORD-2024-010",
      customerName: "Nour Al-Din",
      customerEmail: "nour.din@email.com",
      totalAmount: 750.00,
      status: const OrderStatus.processing(),
      orderDate: "2024-01-24T12:45:00Z",
      shippingAddress: "741 Al Reem Island, Abu Dhabi, UAE",
      paymentMethod: "Credit Card",
      itemsCount: 8,
    ),
  ];

  @override
  Future<MyResult<List<OrderModel>>> getOrders({int page = 1, int limit = 10}) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 500 + Random().nextInt(1000)));
    
    try {
      // Calculate pagination
      final startIndex = (page - 1) * limit;
      final endIndex = startIndex + limit;
      
      if (startIndex >= _mockOrders.length) {
        return const MyResult.isSuccess([]);
      }
      
      final orders = _mockOrders.sublist(
        startIndex, 
        endIndex > _mockOrders.length ? _mockOrders.length : endIndex
      );
      
      return MyResult<List<OrderModel>>.isSuccess(orders);
    } catch (e) {
      return MyResult<List<OrderModel>>.isError(UnknownError(msg: "Failed to fetch orders: ${e.toString()}"));
    }
  }

  @override
  Future<MyResult<OrderModel>> getOrderById(int id) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 300 + Random().nextInt(500)));
    
    try {
      final order = _mockOrders.firstWhere((order) => order.id == id);
      return MyResult<OrderModel>.isSuccess(order);
    } catch (e) {
      return MyResult<OrderModel>.isError(UnknownError(msg: "Order not found"));
    }
  }

  @override
  Future<MyResult<List<OrderModel>>> getOrdersByStatus(OrderStatus status, {int page = 1}) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 400 + Random().nextInt(600)));
    
    try {
      final filteredOrders = _mockOrders.where((order) => 
        order.status == status
      ).toList();
      
      // Apply pagination
      const limit = 10;
      final startIndex = (page - 1) * limit;
      final endIndex = startIndex + limit;
      
      if (startIndex >= filteredOrders.length) {
        return const MyResult.isSuccess([]);
      }
      
      final orders = filteredOrders.sublist(
        startIndex, 
        endIndex > filteredOrders.length ? filteredOrders.length : endIndex
      );
      
      return MyResult<List<OrderModel>>.isSuccess(orders);
    } catch (e) {
      return MyResult<List<OrderModel>>.isError(UnknownError(msg: "Failed to fetch orders by status: ${e.toString()}"));
    }
  }

  @override
  Future<MyResult<List<OrderModel>>> searchOrders(String query, {int page = 1}) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 600 + Random().nextInt(800)));
    
    try {
      final searchResults = _mockOrders.where((order) => 
        order.customerName.toLowerCase().contains(query.toLowerCase()) ||
        order.orderNumber.toLowerCase().contains(query.toLowerCase()) ||
        order.customerEmail.toLowerCase().contains(query.toLowerCase())
      ).toList();
      
      // Apply pagination
      const limit = 10;
      final startIndex = (page - 1) * limit;
      final endIndex = startIndex + limit;
      
      if (startIndex >= searchResults.length) {
        return const MyResult.isSuccess([]);
      }
      
      final orders = searchResults.sublist(
        startIndex, 
        endIndex > searchResults.length ? searchResults.length : endIndex
      );
      
      return MyResult<List<OrderModel>>.isSuccess(orders);
    } catch (e) {
      return MyResult<List<OrderModel>>.isError(UnknownError(msg: "Failed to search orders: ${e.toString()}"));
    }
  }

  @override
  Future<MyResult<bool>> updateOrderStatus(int orderId, OrderStatus status) async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 800 + Random().nextInt(1200)));
    
    try {
      final orderIndex = _mockOrders.indexWhere((order) => order.id == orderId);
      
      if (orderIndex == -1) {
        return MyResult<bool>.isError(UnknownError(msg: "Order not found"));
      }
      
      // Update the order status (in real implementation, this would be a database update)
      final updatedOrder = _mockOrders[orderIndex].copyWith(status: status);
      _mockOrders[orderIndex] = updatedOrder;
      
      return const MyResult<bool>.isSuccess(true);
    } catch (e) {
      return MyResult<bool>.isError(UnknownError(msg: "Failed to update order status: ${e.toString()}"));
    }
  }

  @override
  Future<MyResult<Map<String, int>>> getOrderStatistics() async {
    // Simulate network delay
    await Future.delayed(Duration(milliseconds: 300 + Random().nextInt(500)));
    
    try {
      final stats = <String, int>{};
      
      // Count orders by status
      for (final order in _mockOrders) {
        final statusKey = order.status.toJson();
        stats[statusKey] = (stats[statusKey] ?? 0) + 1;
      }
      
      // Add total count
      stats['total'] = _mockOrders.length;
      
      return MyResult<Map<String, int>>.isSuccess(stats);
    } catch (e) {
      return MyResult<Map<String, int>>.isError(UnknownError(msg: "Failed to fetch order statistics: ${e.toString()}"));
    }
  }
}
