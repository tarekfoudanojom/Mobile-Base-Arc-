/// Parameters for creating new orders
class CreateOrderParams {
  final String customerName;
  final String customerEmail;
  final String? customerPhone;
  final String shippingAddress;
  final String paymentMethod;
  final String? notes;
  final int itemCount;
  final String? deliveryDate;

  const CreateOrderParams({
    required this.customerName,
    required this.customerEmail,
    this.customerPhone,
    required this.shippingAddress,
    required this.paymentMethod,
    this.notes,
    required this.itemCount,
    this.deliveryDate,
  });

  /// Convert to JSON for API request
  Map<String, dynamic> toJson() {
    return {
      'customer_name': customerName,
      'customer_email': customerEmail,
      if (customerPhone != null) 'customer_phone': customerPhone,
      'shipping_address': shippingAddress,
      'payment_method': paymentMethod,
      if (notes != null) 'notes': notes,
      'item_count': itemCount,
      if (deliveryDate != null) 'delivery_date': deliveryDate,
    };
  }

  /// Get total items count
  int get totalItemsCount => itemCount;
}

/// Parameters for order items
class CreateOrderItemParams {
  final String name;
  final String? description;
  final double price;
  final int quantity;
  final String? sku;

  const CreateOrderItemParams({
    required this.name,
    this.description,
    required this.price,
    required this.quantity,
    this.sku,
  });

  /// Convert to JSON for API request
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      if (description != null) 'description': description,
      'price': price,
      'quantity': quantity,
      if (sku != null) 'sku': sku,
    };
  }

  /// Calculate item total
  double get itemTotal => price * quantity;

  /// Get formatted item total
  String get formattedItemTotal {
    return '\$${itemTotal.toStringAsFixed(2)}';
  }

  /// Get formatted price
  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }

}
