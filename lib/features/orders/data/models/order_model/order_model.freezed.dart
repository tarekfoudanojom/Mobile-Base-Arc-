// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_number")
  String get orderNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_name")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_email")
  String get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  double get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  OrderStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "order_date")
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: "delivery_date")
  String? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_address")
  String get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "notes")
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "items_count")
  int get itemsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "order_number") String orderNumber,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "customer_email") String customerEmail,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "status") OrderStatus status,
      @JsonKey(name: "order_date") String orderDate,
      @JsonKey(name: "delivery_date") String? deliveryDate,
      @JsonKey(name: "shipping_address") String shippingAddress,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "items_count") int itemsCount});

  $OrderStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? orderDate = null,
    Object? deliveryDate = freezed,
    Object? shippingAddress = null,
    Object? paymentMethod = null,
    Object? notes = freezed,
    Object? itemsCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusCopyWith<$Res> get status {
    return $OrderStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "order_number") String orderNumber,
      @JsonKey(name: "customer_name") String customerName,
      @JsonKey(name: "customer_email") String customerEmail,
      @JsonKey(name: "total_amount") double totalAmount,
      @JsonKey(name: "status") OrderStatus status,
      @JsonKey(name: "order_date") String orderDate,
      @JsonKey(name: "delivery_date") String? deliveryDate,
      @JsonKey(name: "shipping_address") String shippingAddress,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "notes") String? notes,
      @JsonKey(name: "items_count") int itemsCount});

  @override
  $OrderStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? orderDate = null,
    Object? deliveryDate = freezed,
    Object? shippingAddress = null,
    Object? paymentMethod = null,
    Object? notes = freezed,
    Object? itemsCount = null,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OrderModelImpl extends _OrderModel {
  _$OrderModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "order_number") required this.orderNumber,
      @JsonKey(name: "customer_name") required this.customerName,
      @JsonKey(name: "customer_email") required this.customerEmail,
      @JsonKey(name: "total_amount") required this.totalAmount,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "order_date") required this.orderDate,
      @JsonKey(name: "delivery_date") this.deliveryDate,
      @JsonKey(name: "shipping_address") required this.shippingAddress,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "notes") this.notes,
      @JsonKey(name: "items_count") this.itemsCount = 0})
      : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "order_number")
  final String orderNumber;
  @override
  @JsonKey(name: "customer_name")
  final String customerName;
  @override
  @JsonKey(name: "customer_email")
  final String customerEmail;
  @override
  @JsonKey(name: "total_amount")
  final double totalAmount;
  @override
  @JsonKey(name: "status")
  final OrderStatus status;
  @override
  @JsonKey(name: "order_date")
  final String orderDate;
  @override
  @JsonKey(name: "delivery_date")
  final String? deliveryDate;
  @override
  @JsonKey(name: "shipping_address")
  final String shippingAddress;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "notes")
  final String? notes;
  @override
  @JsonKey(name: "items_count")
  final int itemsCount;

  @override
  String toString() {
    return 'OrderModel(id: $id, orderNumber: $orderNumber, customerName: $customerName, customerEmail: $customerEmail, totalAmount: $totalAmount, status: $status, orderDate: $orderDate, deliveryDate: $deliveryDate, shippingAddress: $shippingAddress, paymentMethod: $paymentMethod, notes: $notes, itemsCount: $itemsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      customerName,
      customerEmail,
      totalAmount,
      status,
      orderDate,
      deliveryDate,
      shippingAddress,
      paymentMethod,
      notes,
      itemsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "order_number") required final String orderNumber,
      @JsonKey(name: "customer_name") required final String customerName,
      @JsonKey(name: "customer_email") required final String customerEmail,
      @JsonKey(name: "total_amount") required final double totalAmount,
      @JsonKey(name: "status") required final OrderStatus status,
      @JsonKey(name: "order_date") required final String orderDate,
      @JsonKey(name: "delivery_date") final String? deliveryDate,
      @JsonKey(name: "shipping_address") required final String shippingAddress,
      @JsonKey(name: "payment_method") required final String paymentMethod,
      @JsonKey(name: "notes") final String? notes,
      @JsonKey(name: "items_count") final int itemsCount}) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "order_number")
  String get orderNumber;
  @override
  @JsonKey(name: "customer_name")
  String get customerName;
  @override
  @JsonKey(name: "customer_email")
  String get customerEmail;
  @override
  @JsonKey(name: "total_amount")
  double get totalAmount;
  @override
  @JsonKey(name: "status")
  OrderStatus get status;
  @override
  @JsonKey(name: "order_date")
  String get orderDate;
  @override
  @JsonKey(name: "delivery_date")
  String? get deliveryDate;
  @override
  @JsonKey(name: "shipping_address")
  String get shippingAddress;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "notes")
  String? get notes;
  @override
  @JsonKey(name: "items_count")
  int get itemsCount;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
