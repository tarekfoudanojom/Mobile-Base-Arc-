import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

List<AutoRoute> authRoutes = [
  AutoRoute(
    page: SplashRoute.page,
    initial: true,
  ),
  AutoRoute(
    page: LoginRoute.page,
  ),
];

