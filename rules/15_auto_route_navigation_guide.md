# 🛣️ Auto Route Navigation Guide

This guide covers the mandatory use of Auto Route for navigation in Flutter applications.

## 🎯 **Auto Route Rule**

**MANDATORY:** All navigation in the application MUST use Auto Route. No exceptions.

### **Why Auto Route?**

- ✅ **Type Safety**: Compile-time route checking
- ✅ **Code Generation**: Automatic route generation
- ✅ **Deep Linking**: Built-in support for deep links
- ✅ **Route Guards**: Authentication and permission checks
- ✅ **Consistency**: Standardized navigation patterns
- ✅ **Maintainability**: Centralized route management

---

## 📋 **Table of Contents**

1. [Auto Route Setup](#auto-route-setup)
2. [Route Definition](#route-definition)
3. [Navigation Patterns](#navigation-patterns)
4. [Route Parameters](#route-parameters)
5. [Route Guards](#route-guards)
6. [Deep Linking](#deep-linking)
7. [Best Practices](#best-practices)
8. [Common Patterns](#common-patterns)

---

## 🚀 **Auto Route Setup**

### **Step 1: Dependencies**

Ensure these dependencies are in `pubspec.yaml`:

```yaml
dependencies:
  auto_route: ^7.8.4
  
dev_dependencies:
  auto_route_generator: ^7.3.2
  build_runner: ^2.4.7
```

### **Step 2: Route Definition**

Create route definitions in your feature:

```dart
// lib/features/orders/presentation/routes/order_routes.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/order_details/order_details_imports.dart';
import '../pages/home/home_imports.dart';

@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    // Home tab route
    AutoRoute(
      page: HomeTabRoute.page,
      path: '/orders/home',
      initial: true,
    ),
    
    // Order details route
    AutoRoute(
      page: OrderDetailsRoute.page,
      path: '/orders/details/:orderId',
    ),
  ];
}

// Route pages
@RoutePage()
class HomeTabRoute extends StatelessWidget {
  const HomeTabRoute({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const HomeTabPage();
  }
}

@RoutePage()
class OrderDetailsRoute extends StatelessWidget {
  final int orderId;
  
  const OrderDetailsRoute({
    super.key,
    required this.orderId,
  });
  
  @override
  Widget build(BuildContext context) {
    return OrderDetailsPage(orderId: orderId);
  }
}
```

### **Step 3: Code Generation**

Run build runner to generate route files:

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

---

## 🧭 **Navigation Patterns**

### **Basic Navigation**

```dart
// Navigate to order details
context.router.push(OrderDetailsRoute(orderId: order.id));

// Navigate and replace current route
context.router.pushAndClearStack(OrderDetailsRoute(orderId: order.id));

// Navigate back
context.router.pop();

// Navigate to specific route
context.router.navigate(OrderDetailsRoute(orderId: order.id));
```

### **Navigation with Parameters**

```dart
// Pass parameters
context.router.push(OrderDetailsRoute(
  orderId: order.id,
  // Add more parameters as needed
));

// Access parameters in destination page
@RoutePage()
class OrderDetailsRoute extends StatelessWidget {
  final int orderId;
  final String? source; // Optional parameter
  
  const OrderDetailsRoute({
    super.key,
    required this.orderId,
    this.source,
  });
  
  @override
  Widget build(BuildContext context) {
    return OrderDetailsPage(
      orderId: orderId,
      source: source,
    );
  }
}
```

### **Navigation with Result**

```dart
// Navigate and wait for result
final result = await context.router.push<bool>(OrderDetailsRoute(orderId: order.id));

if (result == true) {
  // Handle successful result
  refreshOrders();
}
```

---

## 🔒 **Route Guards**

### **Authentication Guard**

```dart
// lib/core/router/auth_guard.dart
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated()) {
      resolver.next();
    } else {
      router.pushAndClearStack(const LoginRoute());
    }
  }
  
  bool isAuthenticated() {
    // Check authentication status
    return PrefHelper.getUserToken() != null;
  }
}

// Apply guard to routes
@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: OrderDetailsRoute.page,
      path: '/orders/details/:orderId',
      guards: [AuthGuard], // Apply authentication guard
    ),
  ];
}
```

### **Permission Guard**

```dart
// lib/core/router/permission_guard.dart
class PermissionGuard extends AutoRouteGuard {
  final String requiredPermission;
  
  const PermissionGuard(this.requiredPermission);
  
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (hasPermission(requiredPermission)) {
      resolver.next();
    } else {
      router.push(const AccessDeniedRoute());
    }
  }
  
  bool hasPermission(String permission) {
    // Check user permissions
    return UserPermissions.hasPermission(permission);
  }
}
```

---

## 🔗 **Deep Linking**

### **URL Structure**

```dart
// Define deep link patterns
@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: OrderDetailsRoute.page,
      path: '/orders/:orderId', // Deep link: /orders/123
    ),
    AutoRoute(
      page: OrderListRoute.page,
      path: '/orders', // Deep link: /orders
    ),
  ];
}
```

### **Handle Deep Links**

```dart
// In main app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(
        // Handle deep links
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith('/orders/')) {
            return deepLink;
          }
          return null;
        },
      ),
    );
  }
}
```

---

## ✅ **Best Practices**

### **1. Route Naming**

```dart
// ✅ Good: Clear, descriptive names
OrderDetailsRoute
OrderListRoute
OrderCreateRoute

// ❌ Bad: Unclear names
DetailsRoute
ListRoute
CreateRoute
```

### **2. Parameter Handling**

```dart
// ✅ Good: Required parameters
@RoutePage()
class OrderDetailsRoute extends StatelessWidget {
  final int orderId; // Required
  
  const OrderDetailsRoute({
    super.key,
    required this.orderId,
  });
}

// ✅ Good: Optional parameters with defaults
@RoutePage()
class OrderListRoute extends StatelessWidget {
  final String? filter; // Optional
  final int page;
  
  const OrderListRoute({
    super.key,
    this.filter,
    this.page = 1,
  });
}
```

### **3. Route Organization**

```dart
// ✅ Good: Feature-based organization
lib/features/orders/presentation/routes/
├── order_routes.dart
└── order_route_pages.dart

// ✅ Good: Clear route structure
@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    // List routes
    AutoRoute(page: OrderListRoute.page, path: '/orders'),
    
    // Detail routes
    AutoRoute(page: OrderDetailsRoute.page, path: '/orders/:orderId'),
    
    // Action routes
    AutoRoute(page: OrderCreateRoute.page, path: '/orders/create'),
    AutoRoute(page: OrderEditRoute.page, path: '/orders/:orderId/edit'),
  ];
}
```

### **4. Error Handling**

```dart
// ✅ Good: Handle navigation errors
try {
  await context.router.push(OrderDetailsRoute(orderId: orderId));
} catch (e) {
  AppSnackBar.showErrorSnackBar('Failed to open order details');
}
```

---

## 🚫 **What NOT to Do**

### **❌ Don't Use Navigator Directly**

```dart
// ❌ Bad: Direct Navigator usage
Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => OrderDetailsPage(orderId: order.id),
  ),
);

// ✅ Good: Use Auto Route
context.router.push(OrderDetailsRoute(orderId: order.id));
```

### **❌ Don't Hardcode Routes**

```dart
// ❌ Bad: Hardcoded route strings
context.router.pushNamed('/orders/details/123');

// ✅ Good: Type-safe routes
context.router.push(OrderDetailsRoute(orderId: 123));
```

### **❌ Don't Skip Route Guards**

```dart
// ❌ Bad: No authentication check
AutoRoute(
  page: OrderDetailsRoute.page,
  path: '/orders/:orderId',
),

// ✅ Good: Protected route
AutoRoute(
  page: OrderDetailsRoute.page,
  path: '/orders/:orderId',
  guards: [AuthGuard],
),
```

---

## 📱 **Common Patterns**

### **Pattern 1: List to Details**

```dart
// In order list
class OrderCard extends StatelessWidget {
  final OrderModel order;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(order.orderNumber),
      onTap: () {
        // Navigate to details
        context.router.push(OrderDetailsRoute(orderId: order.id));
      },
    );
  }
}
```

### **Pattern 2: Create and Return**

```dart
// Navigate to create page
final result = await context.router.push<bool>(OrderCreateRoute());

if (result == true) {
  // Refresh list after creation
  refreshOrders();
}

// In create page
class OrderCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () async {
              // Save order
              final success = await saveOrder();
              
              if (success) {
                // Return success result
                context.router.pop(true);
              }
            },
          ),
        ],
      ),
    );
  }
}
```

### **Pattern 3: Tab Navigation**

```dart
// Tab-based navigation
@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: OrderTabRoute.page,
      path: '/orders',
      children: [
        AutoRoute(page: OrderListRoute.page, path: '/list'),
        AutoRoute(page: OrderFavoritesRoute.page, path: '/favorites'),
        AutoRoute(page: OrderHistoryRoute.page, path: '/history'),
      ],
    ),
  ];
}
```

---

## 🔧 **Integration with Features**

### **Feature Router Integration**

```dart
// lib/features/orders/presentation/routes/order_routes.dart
@AutoRouterConfig()
class OrderRouter extends _$OrderRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeTabRoute.page,
      path: '/orders/home',
      initial: true,
    ),
    AutoRoute(
      page: OrderDetailsRoute.page,
      path: '/orders/details/:orderId',
    ),
  ];
}

// Export for main app router
export 'order_routes.dart';
```

### **Main App Router**

```dart
// lib/core/router/app_router.dart
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    // Auth routes
    AutoRoute(page: LoginRoute.page, path: '/login'),
    
    // Order routes
    ...OrderRouter().routes,
    
    // Other feature routes
    ...NotificationRouter().routes,
  ];
}
```

---

## 🎯 **Quick Reference**

### **Essential Commands**

```bash
# Generate routes
flutter packages pub run build_runner build --delete-conflicting-outputs

# Watch for changes
flutter packages pub run build_runner watch
```

### **Common Navigation Methods**

```dart
// Basic navigation
context.router.push(RouteName(parameters))
context.router.pop()
context.router.navigate(RouteName(parameters))

// Advanced navigation
context.router.pushAndClearStack(RouteName(parameters))
context.router.replace(RouteName(parameters))
context.router.popUntil((route) => route.isFirst)

// With result
final result = await context.router.push<Type>(RouteName(parameters))
```

### **Route Definition Template**

```dart
@AutoRouterConfig()
class FeatureRouter extends _$FeatureRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: FeatureListRoute.page,
      path: '/feature',
      initial: true,
    ),
    AutoRoute(
      page: FeatureDetailsRoute.page,
      path: '/feature/:id',
    ),
  ];
}

@RoutePage()
class FeatureListRoute extends StatelessWidget {
  const FeatureListRoute({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const FeatureListPage();
  }
}

@RoutePage()
class FeatureDetailsRoute extends StatelessWidget {
  final int id;
  
  const FeatureDetailsRoute({
    super.key,
    required this.id,
  });
  
  @override
  Widget build(BuildContext context) {
    return FeatureDetailsPage(id: id);
  }
}
```

---

## ✅ **Rule Compliance Checklist**

Before submitting code, verify:

- [ ] All navigation uses `context.router.push()` or similar Auto Route methods
- [ ] No direct `Navigator.of(context)` usage
- [ ] Routes are properly defined with `@AutoRouterConfig()`
- [ ] Route pages use `@RoutePage()` annotation
- [ ] Parameters are properly typed and required/optional as needed
- [ ] Route guards are applied where necessary
- [ ] Deep links are properly configured
- [ ] Build runner has been run to generate route files
- [ ] Navigation errors are handled appropriately

---

## 🚀 **Getting Started**

1. **Add Dependencies**: Ensure `auto_route` and `auto_route_generator` are in `pubspec.yaml`
2. **Define Routes**: Create route definitions in your feature
3. **Generate Routes**: Run `flutter packages pub run build_runner build`
4. **Navigate**: Use `context.router.push()` for all navigation
5. **Test**: Verify navigation works in both directions

---

**Remember: Auto Route is MANDATORY for all navigation in Flutter applications. No exceptions.**

---

**Last Updated:** December 2024  
**Version:** 1.0  
**Maintained by:** Flutter Development Team
