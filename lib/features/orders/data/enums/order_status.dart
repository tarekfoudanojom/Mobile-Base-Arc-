import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/localization/translate.dart';

part 'order_status.freezed.dart';

@freezed
class OrderStatus with _$OrderStatus {
  const OrderStatus._();

  const factory OrderStatus.pending() = _Pending;
  const factory OrderStatus.processing() = _Processing;
  const factory OrderStatus.completed() = _Completed;
  const factory OrderStatus.cancelled() = _Cancelled;
  const factory OrderStatus.shipped() = _Shipped;
  const factory OrderStatus.delivered() = _Delivered;

  factory OrderStatus.fromJson(String value) {
    switch (value.toLowerCase()) {
      case 'pending':
        return const OrderStatus.pending();
      case 'processing':
        return const OrderStatus.processing();
      case 'completed':
        return const OrderStatus.completed();
      case 'cancelled':
        return const OrderStatus.cancelled();
      case 'shipped':
        return const OrderStatus.shipped();
      case 'delivered':
        return const OrderStatus.delivered();
      default:
        return const OrderStatus.pending();
    }
  }

  String toJson() => when(
        pending: () => 'pending',
        processing: () => 'processing',
        completed: () => 'completed',
        cancelled: () => 'cancelled',
        shipped: () => 'shipped',
        delivered: () => 'delivered',
      );

  String get displayName => when(
        pending: () => Translate.s.pending,
        processing: () => Translate.s.processing,
        completed: () => Translate.s.completed,
        cancelled: () => Translate.s.cancelled,
        shipped: () => Translate.s.shipped,
        delivered: () => Translate.s.delivered,
      );

  String get value => toJson();

  static List<OrderStatus> get all => [
        const OrderStatus.pending(),
        const OrderStatus.processing(),
        const OrderStatus.shipped(),
        const OrderStatus.delivered(),
        const OrderStatus.completed(),
        const OrderStatus.cancelled(),
      ];

  static List<OrderStatus> get activeStatuses => [
        const OrderStatus.pending(),
        const OrderStatus.processing(),
        const OrderStatus.shipped(),
      ];

  static List<OrderStatus> get completedStatuses => [
        const OrderStatus.delivered(),
        const OrderStatus.completed(),
      ];

  static List<OrderStatus> get cancelledStatuses => [
        const OrderStatus.cancelled(),
      ];
}
