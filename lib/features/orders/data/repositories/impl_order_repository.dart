import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/orders/data/data_source/order_data_source.dart';
import 'package:flutter_tdd/features/orders/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/orders/domain/entity/create_order_params.dart';
import 'package:flutter_tdd/features/orders/data/enums/order_status.dart';
import 'package:flutter_tdd/features/orders/domain/repositories/order_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrderRepository)
class ImplOrderRepository extends OrderRepository {
  final dataSource = getIt.get<OrderDataSource>();

  @override
  Future<MyResult<List<OrderModel>>> getOrders({int page = 1, int limit = 10}) async {
    return await dataSource.getOrders(page: page, limit: limit);
  }

  @override
  Future<MyResult<OrderModel>> getOrderById(int id) async {
    return await dataSource.getOrderById(id);
  }

  @override
  Future<MyResult<List<OrderModel>>> getOrdersByStatus(OrderStatus status, {int page = 1}) async {
    return await dataSource.getOrdersByStatus(status, page: page);
  }

  @override
  Future<MyResult<List<OrderModel>>> searchOrders(String query, {int page = 1}) async {
    return await dataSource.searchOrders(query, page: page);
  }

  @override
  Future<MyResult<bool>> updateOrderStatus(int orderId, OrderStatus status) async {
    return await dataSource.updateOrderStatus(orderId, status);
  }

  @override
  Future<MyResult<Map<String, int>>> getOrderStatistics() async {
    return await dataSource.getOrderStatistics();
  }

  @override
  Future<MyResult<OrderModel>> createOrder(CreateOrderParams params) async {
    return await dataSource.createOrder(params);
  }
}
