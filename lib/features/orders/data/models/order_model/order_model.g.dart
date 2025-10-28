// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: json['order_number'] as String,
      customerName: json['customer_name'] as String,
      customerEmail: json['customer_email'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      status: OrderStatus.fromJson(json['status'] as String),
      orderDate: json['order_date'] as String,
      deliveryDate: json['delivery_date'] as String?,
      shippingAddress: json['shipping_address'] as String,
      paymentMethod: json['payment_method'] as String,
      notes: json['notes'] as String?,
      itemsCount: (json['items_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'total_amount': instance.totalAmount,
      'status': instance.status.toJson(),
      'order_date': instance.orderDate,
      'delivery_date': instance.deliveryDate,
      'shipping_address': instance.shippingAddress,
      'payment_method': instance.paymentMethod,
      'notes': instance.notes,
      'items_count': instance.itemsCount,
    };
