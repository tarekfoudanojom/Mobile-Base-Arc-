// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PendingImplCopyWith<$Res> {
  factory _$$PendingImplCopyWith(
          _$PendingImpl value, $Res Function(_$PendingImpl) then) =
      __$$PendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$PendingImpl>
    implements _$$PendingImplCopyWith<$Res> {
  __$$PendingImplCopyWithImpl(
      _$PendingImpl _value, $Res Function(_$PendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PendingImpl extends _Pending {
  const _$PendingImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending extends OrderStatus {
  const factory _Pending() = _$PendingImpl;
  const _Pending._() : super._();
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingImpl extends _Processing {
  const _$ProcessingImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing extends OrderStatus {
  const factory _Processing() = _$ProcessingImpl;
  const _Processing._() : super._();
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompletedImpl extends _Completed {
  const _$CompletedImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed extends OrderStatus {
  const factory _Completed() = _$CompletedImpl;
  const _Completed._() : super._();
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledImpl extends _Cancelled {
  const _$CancelledImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled extends OrderStatus {
  const factory _Cancelled() = _$CancelledImpl;
  const _Cancelled._() : super._();
}

/// @nodoc
abstract class _$$ShippedImplCopyWith<$Res> {
  factory _$$ShippedImplCopyWith(
          _$ShippedImpl value, $Res Function(_$ShippedImpl) then) =
      __$$ShippedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShippedImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$ShippedImpl>
    implements _$$ShippedImplCopyWith<$Res> {
  __$$ShippedImplCopyWithImpl(
      _$ShippedImpl _value, $Res Function(_$ShippedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShippedImpl extends _Shipped {
  const _$ShippedImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.shipped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShippedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return shipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return shipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (shipped != null) {
      return shipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return shipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return shipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (shipped != null) {
      return shipped(this);
    }
    return orElse();
  }
}

abstract class _Shipped extends OrderStatus {
  const factory _Shipped() = _$ShippedImpl;
  const _Shipped._() : super._();
}

/// @nodoc
abstract class _$$DeliveredImplCopyWith<$Res> {
  factory _$$DeliveredImplCopyWith(
          _$DeliveredImpl value, $Res Function(_$DeliveredImpl) then) =
      __$$DeliveredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeliveredImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$DeliveredImpl>
    implements _$$DeliveredImplCopyWith<$Res> {
  __$$DeliveredImplCopyWithImpl(
      _$DeliveredImpl _value, $Res Function(_$DeliveredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeliveredImpl extends _Delivered {
  const _$DeliveredImpl() : super._();

  @override
  String toString() {
    return 'OrderStatus.delivered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeliveredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() processing,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() shipped,
    required TResult Function() delivered,
  }) {
    return delivered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? processing,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? shipped,
    TResult? Function()? delivered,
  }) {
    return delivered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? processing,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? shipped,
    TResult Function()? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_Shipped value) shipped,
    required TResult Function(_Delivered value) delivered,
  }) {
    return delivered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Cancelled value)? cancelled,
    TResult? Function(_Shipped value)? shipped,
    TResult? Function(_Delivered value)? delivered,
  }) {
    return delivered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_Processing value)? processing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_Shipped value)? shipped,
    TResult Function(_Delivered value)? delivered,
    required TResult orElse(),
  }) {
    if (delivered != null) {
      return delivered(this);
    }
    return orElse();
  }
}

abstract class _Delivered extends OrderStatus {
  const factory _Delivered() = _$DeliveredImpl;
  const _Delivered._() : super._();
}
