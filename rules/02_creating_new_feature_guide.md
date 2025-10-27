# 🚀 Creating New Features - Complete Guide

This comprehensive guide walks you through creating a new feature in the Nojom Flutter application, based on actual patterns from the existing codebase.

## 🎯 **Current Architecture (Simplified)**

**Status:** This guide has been updated to reflect the current simplified architecture (October 2025).

**Key Changes:**
- ✅ No `brand/` or `star/` subdirectories - features go directly in `lib/features/`
- ✅ Controllers in separate files inside page folders (using `part of` pattern)
- ✅ Simple widgets as methods in page state (not separate files unless complex)
- ✅ Minimal global state (DeviceCubit only)
- ✅ `ApiNames` instead of `BrandApiNames`

**Live Example:** Check `lib/features/auth/` for a working reference implementation.

---

## 📋 **Table of Contents**

1. [Pre-Development Planning](#pre-development-planning)
2. [Feature Structure Setup](#feature-structure-setup)
3. [Domain Layer Implementation](#domain-layer-implementation)
4. [Data Layer Implementation](#data-layer-implementation)
5. [Presentation Layer Implementation](#presentation-layer-implementation)
6. [Dependency Injection Setup](#dependency-injection-setup)
7. [Routing Configuration](#routing-configuration)
8. [Localization](#localization)
9. [Testing & Validation](#testing--validation)
10. [Complete Feature Example](#complete-feature-example)

---

## 🎯 **Pre-Development Planning**

### **Step 0: Feature Analysis**

Before writing any code, answer these questions:

#### **Feature Definition**
- [ ] What is the feature name? (e.g., `notifications`, `bookings`, `reviews`)
- [ ] Does it require authentication?
- [ ] What are the main user flows?
- [ ] How many pages/screens are needed?

#### **Data Requirements**
- [ ] What API endpoints will be used?
- [ ] What data models are needed?
- [ ] What parameters do API calls require?
- [ ] What error states need handling?

#### **UI/UX Requirements**
- [ ] How many screens/pages are needed?
- [ ] What reusable widgets are required?
- [ ] What state management pattern fits best? (BaseBloc vs ObsValue)
- [ ] Does it need custom navigation flows?

#### **Feature Type Classification**

**Simple Feature** (Use ObsValue):
- Single screen with basic CRUD
- Simple state toggles
- No complex loading states
- Example: Toggle settings, simple forms

**Complex Feature** (Use BaseBloc):
- Multiple data states (loading/success/error)
- Network requests with error handling
- Pagination or infinite scroll
- Example: List pages, data-heavy screens

---

## 📁 **Feature Structure Setup**

### **Step 1: Create Directory Structure**

```bash
# Navigate to features directory
cd lib/features

# Create feature structure
mkdir -p my_feature/{data,domain,presentation}
mkdir -p my_feature/data/{data_source,repositories,models,enums}
mkdir -p my_feature/domain/{entity,repositories,enums}
mkdir -p my_feature/presentation/{pages,widgets,manager}
mkdir -p my_feature/presentation/manager/routes
```

**Note:** Keep structure simple. Don't create `models` or `requesters` in domain unless truly needed.

**Final Structure:**
```
lib/features/my_feature/
├── data/
│   ├── data_source/
│   │   ├── my_feature_data_source.dart          # Abstract data source
│   │   └── impl_my_feature_data_source.dart     # Implementation
│   ├── repositories/
│   │   └── impl_my_feature_repository.dart      # Repository implementation
│   ├── models/                                   # (optional - only if needed)
│   │   └── {model_name}_model/
│   │       ├── {model_name}_model.dart          # Freezed model
│   │       ├── {model_name}_model.freezed.dart  # Generated
│   │       └── {model_name}_model.g.dart        # Generated
│   └── enums/                                    # (optional - only if needed)
│       └── {enum_name}_enum.dart
├── domain/
│   ├── entity/
│   │   └── {entity_name}_params.dart            # Request parameters
│   ├── repositories/
│   │   └── my_feature_repository.dart           # Abstract repository
│   └── enums/                                    # (optional - only if needed)
│       └── {enum_name}_enum.dart
└── presentation/
    ├── pages/
    │   └── {page_name}/
    │       ├── {page_name}_imports.dart         # All imports
    │       ├── {page_name}_page.dart            # Page widget (part of imports)
    │       ├── {page_name}_controller.dart      # Controller (part of imports)
    │       └── widgets/                          # (optional - only for complex pages)
    │           └── {widget_name}_widget.dart
    ├── widgets/                                  # Shared feature widgets (optional)
    │   └── {shared_widget}.dart
    └── manager/
        └── routes/
            └── {feature}_routes.dart
```

**Simplified from Auth Example:**
- `domain/models/` and `domain/requesters/` removed (not needed in simple features)
- Widgets folder optional - use methods in page state for simple UIs
- Focus on essential structure only

---

## 🎯 **Domain Layer Implementation**

The domain layer defines **what** the feature does, not **how** it does it.

### **Step 2: Define Repository Interface**

**File:** `lib/features/my_feature/domain/repositories/my_feature_repository.dart`

```dart
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/my_feature/data/models/item_model/item_model.dart';
import 'package:flutter_tdd/features/my_feature/domain/entity/create_item_params.dart';

/// Repository interface for MyFeature
/// Defines contracts for data operations
abstract class MyFeatureRepository {
  /// Get list of items
  Future<MyResult<List<ItemModel>>> getItems({int page = 1});
  
  /// Get single item by ID
  Future<MyResult<ItemModel>> getItemById(int id);
  
  /// Create new item
  Future<MyResult<bool>> createItem(CreateItemParams params);
  
  /// Update existing item
  Future<MyResult<bool>> updateItem(int id, CreateItemParams params);
  
  /// Delete item
  Future<MyResult<bool>> deleteItem(int id);
}
```

**✅ Best Practices:**
- Use `MyResult<T>` for all async operations
- Add clear documentation for each method
- Define specific return types, not generic `dynamic`
- Use domain models, not data models

### **Step 3: Create Domain Entities/Parameters**

**File:** `lib/features/my_feature/domain/entity/create_item_params.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_item_params.freezed.dart';
part 'create_item_params.g.dart';

/// Parameters for creating/updating items
@freezed
class CreateItemParams with _$CreateItemParams {
  const CreateItemParams._();
  
  @JsonSerializable(explicitToJson: true)
  factory CreateItemParams({
    required String title,
    required String description,
    String? imageUrl,
    @JsonKey(name: 'category_id') int? categoryId,
    @Default(false) bool isActive,
  }) = _CreateItemParams;

  factory CreateItemParams.fromJson(Map<String, dynamic> json) =>
      _$CreateItemParamsFromJson(json);
      
  /// Convert to request body format
  Map<String, dynamic> toRequestBody() {
    return {
      'title': title,
      'description': description,
      if (imageUrl != null) 'image_url': imageUrl,
      if (categoryId != null) 'category_id': categoryId,
      'is_active': isActive ? 1 : 0,
    };
  }
}
```

**✅ Best Practices:**
- Use `@freezed` for immutable data classes
- Use `@JsonKey` for different API field names
- Add `toRequestBody()` for API formatting
- Use meaningful default values

---

## 📊 **Data Layer Implementation**

The data layer implements **how** to fetch and manage data.

### **Step 4: Create Data Source Interface**

**File:** `lib/features/my_feature/data/data_source/my_feature_data_source.dart`

```dart
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/my_feature/data/models/item_model/item_model.dart';
import 'package:flutter_tdd/features/my_feature/domain/entity/create_item_params.dart';

/// Data source interface for MyFeature
abstract class MyFeatureDataSource {
  Future<MyResult<List<ItemModel>>> getItems({int page = 1});
  Future<MyResult<ItemModel>> getItemById(int id);
  Future<MyResult<bool>> createItem(CreateItemParams params);
  Future<MyResult<bool>> updateItem(int id, CreateItemParams params);
  Future<MyResult<bool>> deleteItem(int id);
}
```

### **Step 5: Implement Data Source**

**File:** `lib/features/my_feature/data/data_source/impl_my_feature_data_source.dart`

```dart
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/my_feature/data/data_source/my_feature_data_source.dart';
import 'package:flutter_tdd/features/my_feature/data/models/item_model/item_model.dart';
import 'package:flutter_tdd/features/my_feature/domain/entity/create_item_params.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MyFeatureDataSource)
class ImplMyFeatureDataSource extends MyFeatureDataSource {
  
  @override
  Future<MyResult<List<ItemModel>>> getItems({int page = 1}) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.baseUrl + ApiNames.myFeatureItems, // Add to ApiNames
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: false,
      showErrorMsg: true,
      queryParameters: {'page': page},
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => ItemModel.fromJson(json),
    );
    return await GenericHttpImpl<ItemModel>()(model);
  }

  @override
  Future<MyResult<ItemModel>> getItemById(int id) async {
    HttpRequestModel model = HttpRequestModel(
      url: '${ApiNames.myFeatureItems}/$id',
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: true,
      showErrorMsg: true,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => ItemModel.fromJson(json),
    );
    return await GenericHttpImpl<ItemModel>()(model);
  }

  @override
  Future<MyResult<bool>> createItem(CreateItemParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.myFeatureItems,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showLoader: true,
      showErrorMsg: true,
      requestBody: params.toRequestBody(),
      responseKey: (data) => data['status'] == 'success',
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> updateItem(int id, CreateItemParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: '${ApiNames.myFeatureItems}/$id',
      requestMethod: RequestMethod.put,
      responseType: ResType.type,
      showLoader: true,
      showErrorMsg: true,
      requestBody: params.toRequestBody(),
      responseKey: (data) => data['status'] == 'success',
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> deleteItem(int id) async {
    HttpRequestModel model = HttpRequestModel(
      url: '${ApiNames.myFeatureItems}/$id',
      requestMethod: RequestMethod.delete,
      responseType: ResType.type,
      showLoader: true,
      showErrorMsg: true,
      responseKey: (data) => data['status'] == 'success',
    );
    return await GenericHttpImpl<bool>()(model);
  }
}
```

**✅ Best Practices:**
- Use `@Injectable(as: Interface)` annotation
- Configure appropriate `showLoader` and `showErrorMsg`
- Use `ResType.list` for arrays, `ResType.model` for objects, `ResType.type` for primitives
- Define `responseKey` to extract data from API response
- Use `toJsonFunc` for model deserialization

### **Step 6: Create Data Models**

**File:** `lib/features/my_feature/data/models/item_model/item_model.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_tdd/core/models/localized_name_model/localized_name_model.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const ItemModel._();
  
  @JsonSerializable(explicitToJson: true)
  factory ItemModel({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    
    // Localized field example
    @JsonKey(
      name: 'localized_title',
      fromJson: localizedNameModelFromJson,
      toJson: localizedNameModelToJson,
    ) LocalizedNameModel? localizedTitle,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
      
  /// Get localized title based on current language
  String getLocalizedTitle(String languageCode) {
    return localizedTitle?.getStringByLangCode(languageCode) ?? title;
  }
}
```

**✅ Best Practices:**
- Use `@freezed` for immutable models
- Use `@unfreezed` if you need mutable fields (e.g., for UI state)
- Map API field names with `@JsonKey(name: 'api_field_name')`
- Add helper methods for computed properties
- Use `LocalizedNameModel` for multilingual fields

**After creating model, run code generation:**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### **Step 7: Implement Repository**

**File:** `lib/features/my_feature/data/repositories/impl_my_feature_repository.dart`

```dart
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/brand/my_feature/data/data_source/my_feature_data_source.dart';
import 'package:flutter_tdd/features/brand/my_feature/data/models/item_model/item_model.dart';
import 'package:flutter_tdd/features/brand/my_feature/domain/entity/create_item_params.dart';
import 'package:flutter_tdd/features/brand/my_feature/domain/repositories/my_feature_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MyFeatureRepository)
class ImplMyFeatureRepository extends MyFeatureRepository {
  final dataSource = getIt.get<MyFeatureDataSource>();

  @override
  Future<MyResult<List<ItemModel>>> getItems({int page = 1}) async {
    return await dataSource.getItems(page: page);
  }

  @override
  Future<MyResult<ItemModel>> getItemById(int id) async {
    return await dataSource.getItemById(id);
  }

  @override
  Future<MyResult<bool>> createItem(CreateItemParams params) async {
    return await dataSource.createItem(params);
  }

  @override
  Future<MyResult<bool>> updateItem(int id, CreateItemParams params) async {
    return await dataSource.updateItem(id, params);
  }

  @override
  Future<MyResult<bool>> deleteItem(int id) async {
    return await dataSource.deleteItem(id);
  }
}
```

**✅ Best Practices:**
- Use `@Injectable(as: Interface)` annotation
- Get data source via `getIt.get<DataSource>()`
- Repository is a thin layer - just delegate to data source
- Add business logic transformation if needed

---

## 🎨 **Presentation Layer Implementation**

The presentation layer handles UI and user interactions.

### **Step 8: Create Page with Controller**

#### **8.1: Create Imports File**

**File:** `lib/features/my_feature/presentation/pages/item_list/item_list_imports.dart`

```dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/brand/my_feature/data/models/item_model/item_model.dart';
import 'package:flutter_tdd/features/brand/my_feature/domain/entity/create_item_params.dart';
import 'package:flutter_tdd/features/brand/my_feature/domain/repositories/my_feature_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

// Import widgets
import 'widgets/item_list_widgets_imports.dart';

// Part files
part 'item_list.dart';
part 'item_list_controller.dart';
```

#### **8.2: Create Controller**

**File:** `lib/features/my_feature/presentation/pages/item_list/item_list_controller.dart` (part of imports)

```dart
part of 'item_list_imports.dart';

class ItemListController {
  // Bloc for items list with loading/success/error states
  final BaseBloc<List<ItemModel>> itemsBloc = BaseBloc<List<ItemModel>>();
  
  // ObsValue for simple UI state
  final ObsValue<bool> showScrollUpButtonObs = ObsValue<bool>.withInit(false);
  final ObsValue<String> searchQueryObs = ObsValue<String>.withInit('');
  
  // Controllers
  final RefreshController refreshController = RefreshController(initialRefresh: false);
  final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();
  
  // Pagination
  int currentPage = 1;
  bool hasMoreData = true;

  /// Initialize page
  void initPage(BuildContext context) {
    fetchItems();
    scrollController.addListener(_handleScrollUpButtonVisibility);
  }

  /// Fetch items from repository
  Future<void> fetchItems({bool onRefresh = false}) async {
    if (!onRefresh) {
      itemsBloc.loadingState();
    }

    final result = await getIt<MyFeatureRepository>().getItems(page: currentPage);
    
    result.when(
      isSuccess: (data) {
        if (data == null || data.isEmpty) {
          hasMoreData = false;
          if (currentPage == 1) {
            itemsBloc.successState([]);
          }
          return;
        }

        if (currentPage > 1 && itemsBloc.hasData) {
          // Append to existing data for pagination
          final allData = List<ItemModel>.from(itemsBloc.data ?? []);
          allData.addAll(data);
          itemsBloc.successState(allData);
        } else {
          // First page or refresh
          itemsBloc.successState(data);
        }
        
        hasMoreData = data.length >= 10; // Assuming page size is 10
      },
      isError: (error) {
        if (currentPage == 1) {
          itemsBloc.failedState(error, () => fetchItems());
        }
      },
    );
  }

  /// Handle pull-to-refresh
  Future<void> onRefresh() async {
    currentPage = 1;
    hasMoreData = true;
    await fetchItems(onRefresh: true);
    refreshController.refreshCompleted();
  }

  /// Handle load more (pagination)
  Future<void> onLoadMore() async {
    if (!hasMoreData) {
      refreshController.loadNoData();
      return;
    }
    
    currentPage++;
    await fetchItems(onRefresh: true);
    refreshController.loadComplete();
  }

  /// Search items
  void searchItems(String query) {
    searchQueryObs.setValue(query);
    // Implement search logic
    currentPage = 1;
    fetchItems(onRefresh: true);
  }

  /// Navigate to item details
  void navigateToItemDetails(BuildContext context, int itemId) {
    AutoRouter.of(context).push(
      ItemDetailsPageRoute(itemId: itemId),
    );
  }

  /// Navigate to create item
  void navigateToCreateItem(BuildContext context) async {
    final result = await AutoRouter.of(context).push<bool>(
      CreateItemPageRoute(),
    );
    
    if (result == true) {
      // Refresh list after creating item
      onRefresh();
    }
  }

  /// Delete item
  Future<void> deleteItem(BuildContext context, int itemId) async {
    final result = await getIt<MyFeatureRepository>().deleteItem(itemId);
    
    result.when(
      isSuccess: (_) {
        // Remove from list
        final updatedList = itemsBloc.data?.where((item) => item.id != itemId).toList();
        itemsBloc.successState(updatedList ?? []);
        
        // Show success message
        AppSnackBar.success(context, message: 'Item deleted successfully');
      },
      isError: (error) {
        AppSnackBar.error(context, message: error.message);
      },
    );
  }

  /// Handle scroll up button visibility
  void _handleScrollUpButtonVisibility() {
    final shouldShow = scrollController.offset > 100;
    if (showScrollUpButtonObs.getValue() != shouldShow) {
      showScrollUpButtonObs.setValue(shouldShow);
    }
  }

  /// Scroll to top
  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Dispose resources
  void dispose() {
    refreshController.dispose();
    scrollController.dispose();
    searchController.dispose();
  }
}
```

**✅ Controller Best Practices:**
- Use `BaseBloc<T>` for data with loading/success/error states
- Use `ObsValue<T>` for simple UI state (toggles, flags)
- Implement `initPage()` for initialization
- Implement `dispose()` to clean up resources
- Handle pagination with `currentPage` and `hasMoreData`
- Use repository via `getIt<Repository>()`
- Use `result.when()` for handling MyResult

#### **8.3: Create Page Widget**

**File:** `lib/features/my_feature/presentation/pages/item_list/item_list.dart` (part of imports)

```dart
part of 'item_list_imports.dart';

@RoutePage(name: "ItemListPageRoute")
class ItemListPage extends StatefulWidget {
  const ItemListPage({super.key});

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  late ItemListController controller;

  @override
  void initState() {
    super.initState();
    controller = ItemListController();
    controller.initPage(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      appBar: DefaultAppBar(
        title: Translate.s.my_feature_title,
        bgColor: context.colors.background1,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: context.colors.primary),
            onPressed: () => controller.navigateToCreateItem(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          _buildSearchBar(),
          
          Gaps.vGap16,
          
          // Items list
          Expanded(
            child: BaseBlocBuilder(
              bloc: controller.itemsBloc,
              onLoading: (context) => _buildLoadingView(),
              onFailed: (context, error, callback) => _buildErrorView(error, callback),
              onSuccess: (context, changed, data) => _buildSuccessView(data),
            ),
          ),
        ],
      ),
      floatingActionButton: _buildScrollToTopButton(),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: Dimens.paddingH16PX,
      child: GenericTextField(
        controller: controller.searchController,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.text,
        action: TextInputAction.search,
        fillColor: context.colors.white,
        label: Translate.s.search,
        onChanged: (value) => controller.searchItems(value),
        prefixIcon: Icon(Icons.search, color: context.colors.grey),
      ),
    );
  }

  Widget _buildLoadingView() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorView(BaseError error, VoidCallback retry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error.message,
            style: AppTextStyle.s16_w400(color: context.colors.textColor),
            textAlign: TextAlign.center,
          ),
          Gaps.vGap16,
          ElevatedButton(
            onPressed: retry,
            child: Text(Translate.s.retry),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessView(List<ItemModel>? items) {
    if (items == null || items.isEmpty) {
      return _buildEmptyView();
    }

    return SmartRefresher(
      controller: controller.refreshController,
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: controller.onRefresh,
      onLoading: controller.onLoadMore,
      child: ListView.separated(
        controller: controller.scrollController,
        padding: Dimens.paddingH16V16PX,
        itemCount: items.length,
        separatorBuilder: (context, index) => Gaps.vGap12,
        itemBuilder: (context, index) {
          return ItemCardWidget(
            item: items[index],
            onTap: () => controller.navigateToItemDetails(context, items[index].id),
            onDelete: () => controller.deleteItem(context, items[index].id),
          );
        },
      ),
    );
  }

  Widget _buildEmptyView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.inbox_outlined,
            size: 64,
            color: context.colors.grey,
          ),
          Gaps.vGap16,
          Text(
            Translate.s.no_items_found,
            style: AppTextStyle.s16_w400(color: context.colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildScrollToTopButton() {
    return ObsValueConsumer(
      observable: controller.showScrollUpButtonObs,
      builder: (context, show) {
        if (!show) return const SizedBox.shrink();
        
        return FloatingActionButton(
          onPressed: controller.scrollToTop,
          child: const Icon(Icons.arrow_upward),
        );
      },
    );
  }
}
```

**✅ Page Best Practices:**
- Use `@RoutePage(name: "RouteNameRoute")` annotation
- Extend `StatefulWidget` for pages with controllers
- Initialize controller in `initState()`
- Call `controller.dispose()` in `dispose()`
- Use `BaseBlocBuilder` for BaseBloc states
- Use `ObsValueConsumer` for ObsValue states
- Extract complex widgets to separate files (see next step)
- Always use `Translate.s.{key}` for strings
- Use `context.colors.{color}` for colors
- Use `AppTextStyle.s{size}_w{weight}` for text styles

### **Step 9: Create Page-Specific Widgets**

If any section has more than 15 lines, extract it as a widget.

#### **9.1: Create Widgets Import File**

**File:** `lib/features/my_feature/presentation/pages/item_list/widgets/item_list_widgets_imports.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/my_feature/data/models/item_model/item_model.dart';

part 'item_card_widget.dart';
part 'item_filter_widget.dart';
```

#### **9.2: Create Widget Files**

**File:** `lib/features/my_feature/presentation/pages/item_list/widgets/item_card_widget.dart`

```dart
part of 'item_list_widgets_imports.dart';

class ItemCardWidget extends StatelessWidget {
  final ItemModel item;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const ItemCardWidget({
    super.key,
    required this.item,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: Dimens.paddingAll16PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: context.colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Image
            if (item.imageUrl != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: CachedImage(
                  imageUrl: item.imageUrl!,
                  fit: BoxFit.cover,
                  width: 60.w,
                  height: 60.h,
                ),
              ),
              Gaps.hGap12,
            ],
            
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: AppTextStyle.s16_w600(color: context.colors.textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Gaps.vGap4,
                  Text(
                    item.description,
                    style: AppTextStyle.s14_w400(color: context.colors.grey),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            
            // Actions
            IconButton(
              icon: Icon(Icons.delete_outline, color: context.colors.error),
              onPressed: onDelete,
            ),
          ],
        ),
      ),
    );
  }
}
```

**✅ Widget Best Practices:**
- Make widgets reusable with parameters
- Use `const` constructor when possible
- Required parameters first, optional last
- Use `.r`, `.w`, `.h` from ScreenUtil for responsive sizing
- Always use theme colors and text styles
- Extract complex logic to controller

---

## 🔌 **Dependency Injection Setup**

### **Step 10: Add API Endpoints**

**File:** `lib/core/http/generic_http/api_names.dart`

```dart
class ApiNames {
  // Base URL
  static const String baseUrl = 'https://api.example.com';
  
  // ... existing endpoints ...
  
  // MyFeature endpoints
  static const String myFeatureItems = '/api/v1/my-feature/items';
  static const String myFeatureCategories = '/api/v1/my-feature/categories';
}
```

**Note:** Always use `ApiNames.baseUrl + ApiNames.endpoint` in your data source implementations.

### **Step 11: Register Dependencies**

Dependencies are auto-registered via `@Injectable` annotations. After adding all classes, run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

This generates `lib/core/helpers/di.config.dart` with all registrations.

**Verify registration in:** `lib/core/helpers/di.config.dart`

You should see entries like:
```dart
gh.registerFactory<MyFeatureDataSource>(() => ImplMyFeatureDataSource());
gh.registerFactory<MyFeatureRepository>(() => ImplMyFeatureRepository());
```

---

## 🧭 **Routing Configuration**

### **Step 12: Create Routes File**

**File:** `lib/features/my_feature/presentation/manager/routes/my_feature_routes.dart`

```dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

/// MyFeature routes configuration
final myFeatureRoutes = [
  AutoRoute(
    page: ItemListPageRoute.page,
    path: '/my-feature/items',
  ),
  AutoRoute(
    page: ItemDetailsPageRoute.page,
    path: '/my-feature/items/:id',
  ),
  AutoRoute(
    page: CreateItemPageRoute.page,
    path: '/my-feature/items/create',
  ),
];
```

### **Step 13: Add to Main Router**

**File:** `lib/core/routes/router_imports.dart`

Add import:
```dart
import 'package:flutter_tdd/features/brand/my_feature/presentation/manager/routes/my_feature_routes.dart';
```

**File:** `lib/core/routes/router.dart`

Add to routes list:
```dart
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    // ... existing routes ...
    ...myFeatureRoutes,  // Add this
  ];
}
```

### **Step 14: Generate Routes**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## 🌍 **Localization**

### **Step 15: Add Translation Keys**

**File:** `lib/l10n/intl_en.arb`

```json
{
  "@@locale": "en",
  
  "my_feature_title": "My Feature",
  "@my_feature_title": {
    "description": "Title for my feature page"
  },
  
  "my_feature_items": "Items",
  "my_feature_create_item": "Create Item",
  "my_feature_edit_item": "Edit Item",
  "my_feature_delete_confirm": "Are you sure you want to delete this item?",
  "my_feature_no_items": "No items found",
  "my_feature_item_created": "Item created successfully",
  "my_feature_item_updated": "Item updated successfully",
  "my_feature_item_deleted": "Item deleted successfully"
}
```

**File:** `lib/l10n/intl_ar.arb`

```json
{
  "@@locale": "ar",
  
  "my_feature_title": "ميزتي",
  "my_feature_items": "العناصر",
  "my_feature_create_item": "إنشاء عنصر",
  "my_feature_edit_item": "تعديل العنصر",
  "my_feature_delete_confirm": "هل أنت متأكد من حذف هذا العنصر؟",
  "my_feature_no_items": "لا توجد عناصر",
  "my_feature_item_created": "تم إنشاء العنصر بنجاح",
  "my_feature_item_updated": "تم تحديث العنصر بنجاح",
  "my_feature_item_deleted": "تم حذف العنصر بنجاح"
}
```

### **Generate Localization Files**

```bash
flutter gen-l10n
```

---

## ✅ **Testing & Validation**

### **Step 16: Pre-Launch Checklist**

Before considering the feature complete, verify:

#### **Code Quality**
- [ ] Run `flutter analyze` - no errors
```bash
flutter analyze
```

- [ ] All files properly formatted
```bash
dart format lib/
```

- [ ] No unused imports or variables
- [ ] All TODOs addressed

#### **Architecture**
- [ ] Follows three-layer structure (data/domain/presentation)
- [ ] Repository pattern implemented correctly
- [ ] Dependency injection configured
- [ ] Routes registered

#### **UI/UX**
- [ ] Uses `context.colors` for all colors
- [ ] Uses `AppTextStyle` for all text
- [ ] Uses `Translate.s.{key}` for all strings
- [ ] Uses `Gaps` and `Dimens` for spacing
- [ ] Supports RTL layout (Arabic)
- [ ] Works in light and dark themes
- [ ] No hardcoded strings
- [ ] Proper error handling and loading states

#### **State Management**
- [ ] Appropriate pattern chosen (BaseBloc vs ObsValue)
- [ ] Controllers properly initialized and disposed
- [ ] Error states handled with retry callbacks
- [ ] Loading states shown appropriately

#### **Functionality**
- [ ] All API calls work correctly
- [ ] Pagination works (if applicable)
- [ ] Pull-to-refresh works
- [ ] Navigation flows correctly
- [ ] Error messages displayed properly
- [ ] Success messages shown

#### **Localization**
- [ ] All strings localized (English & Arabic)
- [ ] RTL layout works correctly
- [ ] Both languages tested

---

## 📚 **Complete Feature Example**

### **Feature: Product Reviews**

Let's create a complete feature for managing product reviews.

#### **1. Create Structure**

```bash
cd lib/features

mkdir -p reviews/{data,domain,presentation}
mkdir -p reviews/data/{data_source,repositories,models}
mkdir -p reviews/domain/{entity,repositories}
mkdir -p reviews/presentation/{pages,widgets,manager/routes}
mkdir -p reviews/presentation/pages/review_list
```

#### **2. Domain Layer**

**Repository Interface:**
```dart
// lib/features/reviews/domain/repositories/review_repository.dart
abstract class ReviewRepository {
  Future<MyResult<List<ReviewModel>>> getReviews({int productId, int page = 1});
  Future<MyResult<bool>> submitReview(SubmitReviewParams params);
  Future<MyResult<bool>> deleteReview(int reviewId);
}
```

**Parameters:**
```dart
// lib/features/reviews/domain/entity/submit_review_params.dart
@freezed
class SubmitReviewParams with _$SubmitReviewParams {
  factory SubmitReviewParams({
    required int productId,
    required int rating,
    required String comment,
    List<String>? images,
  }) = _SubmitReviewParams;
  
  factory SubmitReviewParams.fromJson(Map<String, dynamic> json) =>
      _$SubmitReviewParamsFromJson(json);
}
```

#### **3. Data Layer**

**Model:**
```dart
// lib/features/reviews/data/models/review_model/review_model.dart
@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    required int id,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'user_name') required String userName,
    required int rating,
    required String comment,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ReviewModel;
  
  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
```

**Data Source:**
```dart
// lib/features/reviews/data/data_source/impl_review_data_source.dart
@Injectable(as: ReviewDataSource)
class ImplReviewDataSource extends ReviewDataSource {
  @override
  Future<MyResult<List<ReviewModel>>> getReviews({int? productId, int page = 1}) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.reviews,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      queryParameters: {
        if (productId != null) 'product_id': productId,
        'page': page,
      },
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => ReviewModel.fromJson(json),
    );
    return await GenericHttpImpl<ReviewModel>()(model);
  }
}
```

**Repository:**
```dart
// lib/features/reviews/data/repositories/impl_review_repository.dart
@Injectable(as: ReviewRepository)
class ImplReviewRepository extends ReviewRepository {
  final dataSource = getIt.get<ReviewDataSource>();
  
  @override
  Future<MyResult<List<ReviewModel>>> getReviews({int? productId, int page = 1}) async {
    return await dataSource.getReviews(productId: productId, page: page);
  }
}
```

#### **4. Presentation Layer**

**Controller:**
```dart
// lib/features/reviews/presentation/pages/review_list/review_list_controller.dart
class ReviewListController {
  final BaseBloc<List<ReviewModel>> reviewsBloc = BaseBloc<List<ReviewModel>>();
  final RefreshController refreshController = RefreshController();
  int currentPage = 1;
  
  void initPage(int productId) {
    fetchReviews(productId);
  }
  
  Future<void> fetchReviews(int productId, {bool onRefresh = false}) async {
    if (!onRefresh) reviewsBloc.loadingState();
    
    final result = await getIt<ReviewRepository>().getReviews(
      productId: productId,
      page: currentPage,
    );
    
    result.when(
      isSuccess: (data) => reviewsBloc.successState(data ?? []),
      isError: (error) => reviewsBloc.failedState(error, () => fetchReviews(productId)),
    );
  }
  
  void dispose() {
    refreshController.dispose();
  }
}
```

**Page:**
```dart
// lib/features/reviews/presentation/pages/review_list/review_list.dart
@RoutePage(name: "ReviewListPageRoute")
class ReviewListPage extends StatefulWidget {
  final int productId;
  const ReviewListPage({super.key, required this.productId});
  
  @override
  State<ReviewListPage> createState() => _ReviewListPageState();
}

class _ReviewListPageState extends State<ReviewListPage> {
  late ReviewListController controller;
  
  @override
  void initState() {
    super.initState();
    controller = ReviewListController();
    controller.initPage(widget.productId);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: Translate.s.reviews),
      body: BaseBlocBuilder(
        bloc: controller.reviewsBloc,
        onLoading: (_) => Center(child: CircularProgressIndicator()),
        onSuccess: (_, __, reviews) => ListView.builder(
          itemCount: reviews?.length ?? 0,
          itemBuilder: (context, index) {
            return ReviewCardWidget(review: reviews![index]);
          },
        ),
        onFailed: (_, error, retry) => ErrorWidget(error: error, onRetry: retry),
      ),
    );
  }
  
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
```

#### **5. Final Steps**

```bash
# 1. Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# 2. Generate localization
flutter gen-l10n

# 3. Run analyzer
flutter analyze

# 4. Test the feature
flutter run
```

---

## 🎯 **Summary & Quick Reference**

### **Development Workflow**

1. **Plan** → Define feature requirements
2. **Structure** → Create folder structure
3. **Domain** → Define repository interfaces and entities
4. **Data** → Implement models, data sources, repositories
5. **Presentation** → Create pages, controllers, widgets
6. **DI** → Configure dependency injection
7. **Routes** → Add routes configuration
8. **Localization** → Add translations (AR & EN)
9. **Generate** → Run build_runner and gen-l10n
10. **Test** → Run analyzer, test functionality
11. **Review** → Check against checklist

### **Essential Commands**

```bash
# Generate code (DI, Models, Routes)
flutter pub run build_runner build --delete-conflicting-outputs

# Generate localization
flutter gen-l10n

# Run analyzer
flutter analyze

# Format code
dart format lib/

# Run app
flutter run
```

### **File Naming Conventions**

```
Pages:          {page_name}.dart
Controllers:    {page_name}_controller.dart
Widgets:        {widget_name}_widget.dart
Models:         {model_name}_model.dart
Repositories:   impl_{feature}_repository.dart (implementation)
                {feature}_repository.dart (interface)
Data Sources:   impl_{feature}_data_source.dart (implementation)
                {feature}_data_source.dart (interface)
Params:         {action}_{entity}_params.dart
Routes:         {feature}_routes.dart
```

### **Import Order**

```dart
// 1. Flutter SDK
import 'package:flutter/material.dart';

// 2. External packages
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 3. Core modules
import 'package:flutter_tdd/core/...';

// 4. Feature modules
import 'package:flutter_tdd/features/...';

// 5. Part files (must be last)
part 'file.dart';
```

### **Common Mistakes to Avoid**

❌ **DON'T:**
- Hardcode colors (`Colors.red`)
- Hardcode text styles (`TextStyle(...)`)
- Hardcode strings (`"Hello"`)
- Use `TextField` directly (use `GenericTextField`)
- Forget `@Injectable` annotation
- Forget `@RoutePage` annotation
- Skip code generation
- Skip localization

✅ **DO:**
- Use `context.colors.{color}`
- Use `AppTextStyle.s{size}_w{weight}`
- Use `Translate.s.{key}`
- Use `GenericTextField`
- Add `@Injectable` to implementations
- Add `@RoutePage` to pages
- Run build_runner after changes
- Add both Arabic and English translations

---

## 🆘 **Troubleshooting**

### **Problem: Build runner fails**
```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### **Problem: Routes not generated**
- Ensure `@RoutePage(name: "RouteNameRoute")` annotation is present
- Run build_runner
- Check `router_imports.dart` includes your routes file

### **Problem: DI not working**
- Ensure `@Injectable(as: Interface)` annotation is present
- Run build_runner
- Check `di.config.dart` includes your classes

### **Problem: Translations not found**
- Ensure keys exist in both `intl_en.arb` and `intl_ar.arb`
- Run `flutter gen-l10n`
- Restart app

---

**This guide is your complete reference for creating features in the Nojom app. Follow these patterns for consistent, maintainable, and high-quality code.**

