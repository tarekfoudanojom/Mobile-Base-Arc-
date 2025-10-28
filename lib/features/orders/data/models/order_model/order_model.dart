import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const OrderModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory OrderModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "order_number") required String orderNumber,
    @JsonKey(name: "customer_name") required String customerName,
    @JsonKey(name: "customer_email") required String customerEmail,
    @JsonKey(name: "total_amount") required double totalAmount,
    @JsonKey(name: "status") required OrderStatus status,
    @JsonKey(name: "order_date") required String orderDate,
    @JsonKey(name: "delivery_date") String? deliveryDate,
    @JsonKey(name: "shipping_address") required String shippingAddress,
    @JsonKey(name: "payment_method") required String paymentMethod,
    @JsonKey(name: "notes") String? notes,
    @JsonKey(name: "items_count") @Default(0) int itemsCount,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
      
  /// Get formatted total amount
  String get formattedTotalAmount {
    return '\$${totalAmount.toStringAsFixed(2)}';
  }
  
  /// Get formatted order date
  String get formattedOrderDate {
    try {
      final date = DateTime.parse(orderDate);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return orderDate;
    }
  }
  
  /// Get formatted delivery date
  String? get formattedDeliveryDate {
    if (deliveryDate == null) return null;
    try {
      final date = DateTime.parse(deliveryDate!);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return deliveryDate;
    }
  }
  
  /// Check if order is completed
  bool get isCompleted => status == const OrderStatus.completed();
  
  /// Check if order is pending
  bool get isPending => status == const OrderStatus.pending();
  
  /// Check if order is cancelled
  bool get isCancelled => status == const OrderStatus.cancelled();
  
  /// Get status color based on order status
  String get statusColor {
    return status.when(
      completed: () => 'green',
      pending: () => 'orange',
      cancelled: () => 'red',
      processing: () => 'blue',
      shipped: () => 'purple',
      delivered: () => 'green',
    );
  }
}
