import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

/// Base feature routes configuration
final baseRoutes = [
  AutoRoute(
    page: HomeRoute.page,
    path: '/home',
  ),
  AutoRoute(
    page: OrderDetailsRoute.page,
    path: '/orders/details/:orderId',
  ),
  AutoRoute(
    page: CreateOrderRoute.page,
    path: '/orders/create',
  ),
];

