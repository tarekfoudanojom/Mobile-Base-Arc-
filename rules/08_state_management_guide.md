# 🔄 State Management Guide - BaseBloc & ObsValue

This comprehensive guide explains the complete state management system in Flutter applications, covering BaseBloc, ObsValue, global Cubits, and when to use each pattern.

---

## 📋 **Table of Contents**

1. [State Management Overview](#state-management-overview)
2. [BaseBloc Pattern](#basebloc-pattern)
3. [ObsValue Pattern](#obsvalue-pattern)
4. [Choosing Between BaseBloc and ObsValue](#choosing-between-basebloc-and-obsvalue)
5. [Global Cubits](#global-cubits)
6. [Complete Implementation Examples](#complete-implementation-examples)
7. [Best Practices](#best-practices)
8. [Common Patterns](#common-patterns)
9. [Troubleshooting](#troubleshooting)

---

## 🎯 **State Management Overview**

### **Two-Tier State Management System**

Flutter apps use a **dual state management approach**:

```
State Management
    ├── BaseBloc          # Complex state (loading/success/failure)
    │   └── Use for: API calls, data fetching, async operations
    │
    └── ObsValue          # Simple reactive state
        └── Use for: UI toggles, flags, simple values
```

### **Additional Global State**

```
Global State
    └── DeviceCubit       # App-wide settings (theme, locale, network)
    
Add more global cubits only when needed app-wide:
    ├── CountriesCubit    # Countries/cities data (optional)
    ├── NotificationsCubit # Notification settings (optional)
    └── SettingsCubit     # App settings (optional)
```

**Note:** Currently only `DeviceCubit` is registered globally. Add more global cubits only when truly needed app-wide. Prefer feature-specific BaseBloc/ObsValue for most state.

---

## 🎨 **BaseBloc Pattern**

### **Overview**

**BaseBloc** is used for **complex state management** with distinct states: init, loading, success, and failure.

**Location:** `lib/core/bloc/base_bloc/base_bloc.dart`

### **BaseState - Four States**

```dart
@freezed
class BaseState<T> {
  const factory BaseState.init() = _Init;              // Initial state
  const factory BaseState.loading() = _Loading;        // Loading state
  const factory BaseState.success(bool changed, T? model) = _Success<T>;  // Success with data
  const factory BaseState.failure(BaseError error, VoidCallback callback) = _Failure;  // Error with retry
}
```

### **BaseBloc Class**

**Location:** `lib/core/bloc/base_bloc/base_bloc.dart`

```dart
class BaseBloc<T> extends Cubit<BaseState<T>> {
  BaseBloc([T? data]) : super(
    data != null ? BaseState.success(true, data) : const BaseState.init()
  );

  T? _data;
  bool _dataChanged = true;

  // Getters
  T? get data => _data;
  BaseError? get error => state.whenOrNull(failure: (error, callback) => error);
  bool get hasData => data != null;
  bool get hasNoData => data == null;
  bool get isSuccess => state.whenOrNull(success: (changed, model) => true) ?? false;
  bool get isFail => state.whenOrNull(failure: (error, callback) => true) ?? false;
  bool get isLoading => state.whenOrNull(loading: () => true) ?? false;
  bool get isNotLoading => !isLoading;

  // Methods
  void loadingState() {
    emit(const BaseState.loading());
  }

  void successState([T? data]) {
    _data = data;
    _dataChanged = !_dataChanged;
    emit(BaseState.success(_dataChanged, _data));
  }

  void failedState(BaseError error, VoidCallback callback) {
    emit(BaseState.failure(error, callback));
  }

  void reset() {
    _data = null;
    emit(const BaseState.init());
  }
}
```

### **Using BaseBloc**

#### **Step 1: Create BaseBloc Instance**

```dart
class MyController {
  // Create bloc with type
  final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();
  
  // Or with initial data
  final BaseBloc<User> userBloc = BaseBloc<User>(initialUser);
}
```

#### **Step 2: Emit States**

```dart
Future<void> fetchItems() async {
  // 1. Emit loading state
  itemsBloc.loadingState();
  
  // 2. Fetch data
  final result = await repository.getItems();
  
  // 3. Emit success or failure
  result.when(
    isSuccess: (data) {
      itemsBloc.successState(data);
    },
    isError: (error) {
      itemsBloc.failedState(error, () => fetchItems());  // Retry callback
    },
  );
}
```

#### **Step 3: Build UI with BaseBlocBuilder**

```dart
BaseBlocBuilder<List<Item>>(
  bloc: controller.itemsBloc,
  
  // Loading state
  onLoading: (context) {
    return Center(child: CircularProgressIndicator());
  },
  
  // Success state
  onSuccess: (context, changed, data) {
    if (data == null || data.isEmpty) {
      return EmptyView();
    }
    
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ItemCard(item: data[index]);
      },
    );
  },
  
  // Failure state
  onFailed: (context, error, retry) {
    return ErrorView(
      message: error.message,
      onRetry: retry,
    );
  },
)
```

### **Alternative: Using BlocBuilder Directly**

```dart
BlocBuilder<BaseBloc<List<Item>>, BaseState<List<Item>>>(
  bloc: controller.itemsBloc,
  builder: (context, state) {
    return state.maybeWhen(
      loading: () => LoadingView(),
      success: (changed, data) => SuccessView(data: data),
      failure: (error, callback) => ErrorView(error: error, retry: callback),
      orElse: () => SizedBox.shrink(),
    );
  },
)
```

### **BaseBloc Methods**

| Method | Purpose | Usage |
|--------|---------|-------|
| `loadingState()` | Set loading state | Before async operation |
| `successState([data])` | Set success with optional data | After successful operation |
| `failedState(error, callback)` | Set error with retry | On error |
| `reset()` | Reset to initial state | Clear all data |

### **BaseBloc Getters**

| Getter | Type | Description |
|--------|------|-------------|
| `data` | `T?` | Current data |
| `error` | `BaseError?` | Current error |
| `hasData` | `bool` | True if data exists |
| `hasNoData` | `bool` | True if no data |
| `isSuccess` | `bool` | True if in success state |
| `isFail` | `bool` | True if in failure state |
| `isLoading` | `bool` | True if loading |
| `isNotLoading` | `bool` | True if not loading |

---

## 🔮 **ObsValue Pattern**

### **Overview**

**ObsValue** is used for **simple reactive state** like toggles, flags, and primitive values.

**Location:** `lib/core/bloc/value_state_manager/observable_value.dart`

### **ObsValue Class**

```dart
abstract class ObsValue<T> {
  factory ObsValue.withInit(T initValue) => ObsValue<T>._getX(initValue);
  
  T getValue();              // Get current value
  void setValue(T val);      // Set new value
  void refresh();            // Force rebuild
  void listen(void Function(T value) onChange);  // Listen to changes
}
```

**Implementation:** Uses GetX's `Rx` under the hood for reactivity.

### **Using ObsValue**

#### **Step 1: Create ObsValue Instance**

```dart
class MyController {
  // Boolean toggle
  final ObsValue<bool> isExpandedObs = ObsValue<bool>.withInit(false);
  
  // String value
  final ObsValue<String> searchQueryObs = ObsValue<String>.withInit('');
  
  // Integer counter
  final ObsValue<int> selectedIndexObs = ObsValue<int>.withInit(0);
  
  // Object
  final ObsValue<User?> selectedUserObs = ObsValue<User?>.withInit(null);
  
  // List
  final ObsValue<List<String>> tagsObs = ObsValue<List<String>>.withInit([]);
}
```

#### **Step 2: Update Values**

```dart
// Set value
isExpandedObs.setValue(true);

// Get value
bool currentValue = isExpandedObs.getValue();

// Toggle boolean
isExpandedObs.setValue(!isExpandedObs.getValue());

// Update complex object
selectedUserObs.setValue(newUser);

// Force rebuild without changing value
isExpandedObs.refresh();
```

#### **Step 3: Build UI with ObsValueConsumer**

```dart
ObsValueConsumer<bool>(
  observable: controller.isExpandedObs,
  builder: (context, isExpanded) {
    return AnimatedContainer(
      height: isExpanded ? 200 : 50,
      child: isExpanded ? ExpandedContent() : CollapsedContent(),
    );
  },
)
```

### **ObsValue Methods**

| Method | Purpose | Usage |
|--------|---------|-------|
| `getValue()` | Get current value | `bool value = obs.getValue()` |
| `setValue(val)` | Set new value | `obs.setValue(true)` |
| `refresh()` | Force UI rebuild | `obs.refresh()` |
| `listen(onChange)` | Listen to changes | `obs.listen((val) => print(val))` |

### **ObsValueConsumer Widget**

```dart
ObsValueConsumer<T>(
  observable: obsValue,
  builder: (context, value) {
    // Build UI based on value
    return YourWidget(value);
  },
  listener: (context, value) {
    // Optional: Side effects
    if (value == true) {
      showDialog();
    }
  },
  buildWhen: (previous, current) {
    // Optional: Control when to rebuild
    return previous != current;
  },
)
```

---

## 🤔 **Choosing Between BaseBloc and ObsValue**

### **Decision Tree**

```
Need State Management?
    │
    ├─ Complex State? (loading/success/error)
    │   └─ Use BaseBloc<T>
    │
    └─ Simple State? (toggle/flag/value)
        └─ Use ObsValue<T>
```

### **Use BaseBloc When:**

✅ Fetching data from API
✅ Need loading indicator
✅ Need error handling with retry
✅ Managing lists of data
✅ Pagination
✅ Complex async operations
✅ Need to track loading/success/failure states

**Examples:**
- Fetching items from server
- User authentication
- Form submission
- File upload
- Data synchronization

### **Use ObsValue When:**

✅ UI toggles (show/hide)
✅ Simple flags (true/false)
✅ Selection state
✅ Counter values
✅ Search queries
✅ Tab indices
✅ Simple value changes

**Examples:**
- Expand/collapse sections
- Show/hide password
- Selected tab index
- Search text
- Checkbox states
- Dropdown selections

### **Comparison Table**

| Feature | BaseBloc | ObsValue |
|---------|----------|----------|
| **States** | 4 (init, loading, success, failure) | 1 (current value) |
| **Complexity** | High | Low |
| **Error Handling** | Built-in | Manual |
| **Loading State** | Built-in | Manual |
| **Retry Logic** | Built-in | Manual |
| **Use Case** | Async operations, API calls | UI state, toggles |
| **Boilerplate** | More | Less |
| **Type Safety** | ✅ | ✅ |
| **Performance** | Good | Excellent |

---

## 🌍 **Global Cubits**

### **1. DeviceCubit - App-Wide Settings**

**Purpose:** Manages device and app-wide settings.

**Location:** `lib/core/bloc/device_cubit/device_cubit.dart`

#### **State Properties:**

```dart
class DeviceModel {
  final bool auth;                           // User authenticated
  final bool isTablet;                       // Device is tablet
  final bool isSmallPhone;                   // Small screen phone
  final bool isBundle;                       // Bundle mode
  final bool isNetworkConnected;             // Internet connection
  final bool showWhatsApp;                   // Show WhatsApp button
  final Locale locale;                       // Current language
  final AdaptiveThemeMode themeMode;         // Theme mode
  final String currency;                     // Selected currency
}
```

#### **Methods:**

```dart
void updateDeviceType(bool isTablet);
void updateUserAuth(bool auth);
void updateIsBundle(bool isBundle);
void updateLanguage(Locale locale);
void updateCurrency(String currency);
void updateSmallPhone(bool isSmallPhone);
void updateThemeMode(AdaptiveThemeMode mode);
void updateWhatsAppMode(bool mode);
void setNetworkStatus(bool isNetworkConnected);
```

#### **Usage:**

```dart
// Read state
final locale = context.read<DeviceCubit>().state.model.locale;
final isAuth = context.read<DeviceCubit>().state.model.auth;
final themeMode = context.read<DeviceCubit>().state.model.themeMode;

// Update state
context.read<DeviceCubit>().updateLanguage(Locale('ar'));
context.read<DeviceCubit>().updateUserAuth(true);
context.read<DeviceCubit>().setNetworkStatus(false);

// Listen to changes
BlocBuilder<DeviceCubit, DeviceState>(
  builder: (context, state) {
    if (!state.model.isNetworkConnected) {
      return OfflineView();
    }
    return OnlineView();
  },
)

// Check language
if (context.isArabic) {
  // Arabic layout
} else {
  // English layout
}
```

---

### **2. CountriesCubit - Countries Data**

**Purpose:** Manages countries and cities data with search.

**Location:** `lib/core/bloc/countries_bloc/countries_cubit.dart`

#### **Methods:**

```dart
void updateCountries(List<Country> countries);
Future<void> getCountries();
void setSearchValueAndRequest(String value);
bool get hasSearchValue;
```

#### **Usage:**

```dart
// Fetch countries
context.read<CountriesCubit>().getCountries();

// Search countries
context.read<CountriesCubit>().setSearchValueAndRequest('Saudi');

// Listen to updates
BlocBuilder<CountriesCubit, CountriesState>(
  builder: (context, state) {
    return ListView.builder(
      itemCount: state.countries.length,
      itemBuilder: (context, index) {
        return CountryTile(country: state.countries[index]);
      },
    );
  },
)
```

---

### **3. ServiceFilterCubit - Filter State**

**Purpose:** Manages service filter selections (categories, tags).

**Location:** `lib/core/bloc/service_filter_cubit/service_filter_cubit.dart`

#### **Methods:**

```dart
void onUpdateFilterCategories(List<SkillModel> skillsList);
void onUpdateFilterTags(List<SkillModel> tagsList);
Future<void> callFilterTags();
Future<void> getFilterCategories();
```

#### **Usage:**

```dart
// Fetch filter data
context.read<ServiceFilterCubit>().getFilterCategories();
context.read<ServiceFilterCubit>().callFilterTags();

// Update filters
context.read<ServiceFilterCubit>().onUpdateFilterCategories(selectedCategories);

// Access filter data
BlocBuilder<ServiceFilterCubit, ServiceFilterState>(
  builder: (context, state) {
    return FilterChips(
      categories: state.skillModelList,
      tags: state.tagsModelList,
    );
  },
)
```

---

## 💡 **Complete Implementation Examples**

### **Example 1: Fetching Data with BaseBloc**

```dart
// Controller
class ProductListController {
  final BaseBloc<List<Product>> productsBloc = BaseBloc<List<Product>>();
  final RefreshController refreshController = RefreshController();
  int currentPage = 1;

  void initPage() {
    fetchProducts();
  }

  Future<void> fetchProducts({bool onRefresh = false}) async {
    // 1. Set loading state (skip if refreshing)
    if (!onRefresh) {
      productsBloc.loadingState();
    }

    // 2. Fetch data from repository
    final result = await getIt<ProductRepository>().getProducts(page: currentPage);

    // 3. Handle result
    result.when(
      isSuccess: (products) {
        if (products == null || products.isEmpty) {
          productsBloc.successState([]);
          return;
        }

        // Handle pagination
        if (currentPage > 1 && productsBloc.hasData) {
          final allProducts = List<Product>.from(productsBloc.data ?? []);
          allProducts.addAll(products);
          productsBloc.successState(allProducts);
        } else {
          productsBloc.successState(products);
        }
      },
      isError: (error) {
        productsBloc.failedState(error, () => fetchProducts());
      },
    );
  }

  Future<void> onRefresh() async {
    currentPage = 1;
    await fetchProducts(onRefresh: true);
    refreshController.refreshCompleted();
  }

  Future<void> onLoadMore() async {
    currentPage++;
    await fetchProducts(onRefresh: true);
    refreshController.loadComplete();
  }

  void dispose() {
    refreshController.dispose();
  }
}

// Page Widget
class ProductListPage extends StatefulWidget {
  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late ProductListController controller;

  @override
  void initState() {
    super.initState();
    controller = ProductListController();
    controller.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Products'),
      body: BaseBlocBuilder<List<Product>>(
        bloc: controller.productsBloc,
        
        onLoading: (context) {
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => ProductShimmer(),
          );
        },
        
        onSuccess: (context, changed, products) {
          if (products == null || products.isEmpty) {
            return EmptyProductsView();
          }
          
          return CustomRefresher(
            controller: controller.refreshController,
            onRefresh: controller.onRefresh,
            onLoading: controller.onLoadMore,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          );
        },
        
        onFailed: (context, error, retry) {
          return ErrorView(
            message: error.message,
            onRetry: retry,
          );
        },
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

---

### **Example 2: UI Toggles with ObsValue**

```dart
// Controller
class SettingsController {
  final ObsValue<bool> notificationsEnabledObs = ObsValue<bool>.withInit(true);
  final ObsValue<bool> darkModeObs = ObsValue<bool>.withInit(false);
  final ObsValue<String> selectedLanguageObs = ObsValue<String>.withInit('en');

  void toggleNotifications() {
    final current = notificationsEnabledObs.getValue();
    notificationsEnabledObs.setValue(!current);
    
    // Save to preferences
    saveNotificationSettings(!current);
  }

  void toggleDarkMode() {
    final current = darkModeObs.getValue();
    darkModeObs.setValue(!current);
    
    // Update theme
    if (!current) {
      AdaptiveTheme.of(context).setDark();
    } else {
      AdaptiveTheme.of(context).setLight();
    }
  }

  void changeLanguage(String lang) {
    selectedLanguageObs.setValue(lang);
    context.read<DeviceCubit>().updateLanguage(Locale(lang));
  }
}

// Widget
class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SettingsController controller;

  @override
  void initState() {
    super.initState();
    controller = SettingsController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Settings'),
      body: ListView(
        children: [
          // Notifications toggle
          ObsValueConsumer<bool>(
            observable: controller.notificationsEnabledObs,
            builder: (context, isEnabled) {
              return SwitchListTile(
                title: Text('Enable Notifications'),
                value: isEnabled,
                onChanged: (_) => controller.toggleNotifications(),
              );
            },
          ),
          
          // Dark mode toggle
          ObsValueConsumer<bool>(
            observable: controller.darkModeObs,
            builder: (context, isDark) {
              return SwitchListTile(
                title: Text('Dark Mode'),
                value: isDark,
                onChanged: (_) => controller.toggleDarkMode(),
              );
            },
          ),
          
          // Language selector
          ObsValueConsumer<String>(
            observable: controller.selectedLanguageObs,
            builder: (context, selectedLang) {
              return ListTile(
                title: Text('Language'),
                subtitle: Text(selectedLang == 'en' ? 'English' : 'العربية'),
                trailing: DropdownButton<String>(
                  value: selectedLang,
                  items: [
                    DropdownMenuItem(value: 'en', child: Text('English')),
                    DropdownMenuItem(value: 'ar', child: Text('العربية')),
                  ],
                  onChanged: (lang) {
                    if (lang != null) controller.changeLanguage(lang);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
```

---

### **Example 3: Combining BaseBloc and ObsValue**

```dart
class SearchController {
  // BaseBloc for data with loading/error states
  final BaseBloc<List<SearchResult>> resultsBloc = BaseBloc<List<SearchResult>>();
  
  // ObsValue for UI state
  final ObsValue<String> searchQueryObs = ObsValue<String>.withInit('');
  final ObsValue<bool> isSearchingObs = ObsValue<bool>.withInit(false);
  final ObsValue<int> filterCountObs = ObsValue<int>.withInit(0);
  
  final Debouncer debouncer = Debouncer(milliseconds: 500);
  final TextEditingController searchController = TextEditingController();

  void onSearchChanged(String query) {
    searchQueryObs.setValue(query);
    
    // Debounce search
    debouncer.run(() {
      if (query.isNotEmpty) {
        performSearch(query);
      } else {
        resultsBloc.reset();
      }
    });
  }

  Future<void> performSearch(String query) async {
    isSearchingObs.setValue(true);
    resultsBloc.loadingState();

    final result = await repository.search(query);

    result.when(
      isSuccess: (results) {
        resultsBloc.successState(results ?? []);
      },
      isError: (error) {
        resultsBloc.failedState(error, () => performSearch(query));
      },
    );

    isSearchingObs.setValue(false);
  }

  void applyFilters(SearchFilters filters) {
    filterCountObs.setValue(filters.count);
    performSearch(searchQueryObs.getValue());
  }
}

// Widget
class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late SearchController controller;

  @override
  void initState() {
    super.initState();
    controller = SearchController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Search',
        actions: [
          // Filter badge
          ObsValueConsumer<int>(
            observable: controller.filterCountObs,
            builder: (context, count) {
              return Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () => showFilters(),
                  ),
                  if (count > 0)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: context.colors.alertRed,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$count',
                          style: AppTextStyle.s10_w600(
                            color: context.colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search field
          Padding(
            padding: EdgeInsets.all(16),
            child: GenericTextField(
              controller: controller.searchController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.search,
              label: 'Search',
              onChanged: controller.onSearchChanged,
              validate: (value) => value?.noValidate(),
              suffixIcon: ObsValueConsumer<bool>(
                observable: controller.isSearchingObs,
                builder: (context, isSearching) {
                  return isSearching
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Icon(Icons.search);
                },
              ),
            ),
          ),
          
          // Results
          Expanded(
            child: BaseBlocBuilder<List<SearchResult>>(
              bloc: controller.resultsBloc,
              
              onLoading: (context) {
                return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => SearchResultShimmer(),
                );
              },
              
              onSuccess: (context, changed, results) {
                if (results == null || results.isEmpty) {
                  return ObsValueConsumer<String>(
                    observable: controller.searchQueryObs,
                    builder: (context, query) {
                      return EmptySearchView(query: query);
                    },
                  );
                }
                
                return ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return SearchResultCard(result: results[index]);
                  },
                );
              },
              
              onFailed: (context, error, retry) {
                return ErrorView(error: error, onRetry: retry);
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

---

### **Example 4: Form with Multiple States**

```dart
class ProfileFormController {
  // BaseBloc for submission state
  final BaseBloc<bool> submitBloc = BaseBloc<bool>();
  
  // ObsValue for UI states
  final ObsValue<bool> isEditingObs = ObsValue<bool>.withInit(false);
  final ObsValue<File?> profileImageObs = ObsValue<File?>.withInit(null);
  final ObsValue<bool> hasChangesObs = ObsValue<bool>.withInit(false);
  
  // Form controllers
  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final emailController = TextEditingController();

  void enableEditing() {
    isEditingObs.setValue(true);
  }

  void cancelEditing() {
    isEditingObs.setValue(false);
    hasChangesObs.setValue(false);
    // Reset form
    loadUserData();
  }

  void onFieldChanged() {
    hasChangesObs.setValue(true);
  }

  Future<void> pickImage() async {
    final image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      profileImageObs.setValue(image);
      hasChangesObs.setValue(true);
    }
  }

  Future<void> submitProfile() async {
    submitBloc.loadingState();

    final params = UpdateProfileParams(
      name: nameController.text,
      bio: bioController.text,
      email: emailController.text,
      profileImage: profileImageObs.getValue(),
    );

    final result = await repository.updateProfile(params);

    result.when(
      isSuccess: (_) {
        submitBloc.successState(true);
        hasChangesObs.setValue(false);
        isEditingObs.setValue(false);
        AppSnackBar.showSuccessSnackBar('Profile updated');
      },
      isError: (error) {
        submitBloc.failedState(error, () => submitProfile());
        AppSnackBar.showErrorSnackBar(error: error);
      },
    );
  }

  void dispose() {
    nameController.dispose();
    bioController.dispose();
    emailController.dispose();
  }
}

// Widget
class ProfileFormPage extends StatefulWidget {
  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  late ProfileFormController controller;

  @override
  void initState() {
    super.initState();
    controller = ProfileFormController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Edit Profile',
        actions: [
          // Edit/Save button
          ObsValueConsumer<bool>(
            observable: controller.isEditingObs,
            builder: (context, isEditing) {
              return IconButton(
                icon: Icon(isEditing ? Icons.check : Icons.edit),
                onPressed: isEditing 
                    ? controller.submitProfile 
                    : controller.enableEditing,
              );
            },
          ),
        ],
      ),
      body: ObsValueConsumer<bool>(
        observable: controller.isEditingObs,
        builder: (context, isEditing) {
          return ListView(
            padding: EdgeInsets.all(16),
            children: [
              // Profile image
              Center(
                child: ObsValueConsumer<File?>(
                  observable: controller.profileImageObs,
                  builder: (context, imageFile) {
                    return Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: imageFile != null
                              ? FileImage(imageFile)
                              : NetworkImage(user.profileImageUrl) as ImageProvider,
                        ),
                        if (isEditing)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.camera_alt),
                              onPressed: controller.pickImage,
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              
              SizedBox(height: 24),
              
              // Name field
              GenericTextField(
                controller: controller.nameController,
                fieldTypes: isEditing ? FieldTypes.normal : FieldTypes.readonly,
                type: TextInputType.name,
                action: TextInputAction.next,
                label: 'Name',
                onChanged: (_) => controller.onFieldChanged(),
                validate: (value) => value?.validateName(),
              ),
              
              // Bio field
              GenericTextField(
                controller: controller.bioController,
                fieldTypes: isEditing ? FieldTypes.normal : FieldTypes.readonly,
                type: TextInputType.multiline,
                action: TextInputAction.newline,
                label: 'Bio',
                maxLines: 3,
                onChanged: (_) => controller.onFieldChanged(),
                validate: (value) => value?.noValidate(),
              ),
              
              // Email field
              GenericTextField(
                controller: controller.emailController,
                fieldTypes: isEditing ? FieldTypes.normal : FieldTypes.readonly,
                type: TextInputType.emailAddress,
                action: TextInputAction.done,
                label: 'Email',
                onChanged: (_) => controller.onFieldChanged(),
                validate: (value) => value?.validateEmail(),
              ),
              
              SizedBox(height: 24),
              
              // Save button (only show if editing and has changes)
              ObsValueConsumer<bool>(
                observable: controller.hasChangesObs,
                builder: (context, hasChanges) {
                  if (!isEditing || !hasChanges) {
                    return SizedBox.shrink();
                  }
                  
                  return BaseBlocBuilder<bool>(
                    bloc: controller.submitBloc,
                    onSuccess: (context, changed, data) {
                      return AppTextButton.maxPrimary(
                        text: 'Save Changes',
                        onPressed: controller.submitProfile,
                      );
                    },
                    onLoading: (context) {
                      return AppTextButton.maxPrimary(
                        text: 'Saving...',
                        enabled: false,
                      );
                    },
                  );
                },
              ),
            ],
          );
        },
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

---

### **Example 5: Expandable Sections**

```dart
class FAQController {
  // BaseBloc for FAQ data
  final BaseBloc<List<FAQ>> faqsBloc = BaseBloc<List<FAQ>>();
  
  // ObsValue for expanded states (one per FAQ)
  final Map<int, ObsValue<bool>> expandedStates = {};

  void initPage() {
    fetchFAQs();
  }

  Future<void> fetchFAQs() async {
    faqsBloc.loadingState();
    
    final result = await repository.getFAQs();
    
    result.when(
      isSuccess: (faqs) {
        // Initialize expanded states
        for (var faq in faqs ?? []) {
          expandedStates[faq.id] = ObsValue<bool>.withInit(false);
        }
        faqsBloc.successState(faqs);
      },
      isError: (error) {
        faqsBloc.failedState(error, () => fetchFAQs());
      },
    );
  }

  void toggleExpanded(int faqId) {
    final obs = expandedStates[faqId];
    if (obs != null) {
      obs.setValue(!obs.getValue());
    }
  }
}

// Widget
class FAQPage extends StatefulWidget {
  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  late FAQController controller;

  @override
  void initState() {
    super.initState();
    controller = FAQController();
    controller.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'FAQs'),
      body: BaseBlocBuilder<List<FAQ>>(
        bloc: controller.faqsBloc,
        
        onLoading: (context) {
          return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => FAQShimmer(),
          );
        },
        
        onSuccess: (context, changed, faqs) {
          if (faqs == null || faqs.isEmpty) {
            return EmptyView();
          }
          
          return ListView.builder(
            itemCount: faqs.length,
            itemBuilder: (context, index) {
              final faq = faqs[index];
              final expandedObs = controller.expandedStates[faq.id]!;
              
              return ObsValueConsumer<bool>(
                observable: expandedObs,
                builder: (context, isExpanded) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            faq.question,
                            style: AppTextStyle.s16_w600(
                              color: context.colors.textColor,
                            ),
                          ),
                          trailing: Icon(
                            isExpanded 
                                ? Icons.expand_less 
                                : Icons.expand_more,
                          ),
                          onTap: () => controller.toggleExpanded(faq.id),
                        ),
                        
                        // Answer (animated)
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: isExpanded ? null : 0,
                          child: isExpanded
                              ? Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    faq.answer,
                                    style: AppTextStyle.s14_w400(
                                      color: context.colors.textGaryColor,
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
        
        onFailed: (context, error, retry) {
          return ErrorView(error: error, onRetry: retry);
        },
      ),
    );
  }
}
```

---

## 📊 **State Management Patterns**

### **Pattern 1: Loading → Success → Failure**

```dart
// Classic async operation pattern
Future<void> fetchData() async {
  // 1. Loading
  dataBloc.loadingState();
  
  // 2. Fetch
  final result = await repository.getData();
  
  // 3. Success or Failure
  result.when(
    isSuccess: (data) => dataBloc.successState(data),
    isError: (error) => dataBloc.failedState(error, () => fetchData()),
  );
}
```

---

### **Pattern 2: Optimistic Updates**

```dart
// Update UI immediately, revert on error
Future<void> toggleFavorite(int itemId) async {
  // 1. Update UI optimistically
  final currentItems = itemsBloc.data ?? [];
  final updatedItems = currentItems.map((item) {
    if (item.id == itemId) {
      return item.copyWith(isFavorite: !item.isFavorite);
    }
    return item;
  }).toList();
  
  itemsBloc.successState(updatedItems);
  
  // 2. Make API call
  final result = await repository.toggleFavorite(itemId);
  
  // 3. Revert if failed
  result.whenOrNull(
    isError: (error) {
      itemsBloc.successState(currentItems); // Revert
      AppSnackBar.showErrorSnackBar(error: error);
    },
  );
}
```

---

### **Pattern 3: Pagination**

```dart
Future<void> loadMore() async {
  currentPage++;
  
  // Don't show loading, append to existing data
  final result = await repository.getItems(page: currentPage);
  
  result.when(
    isSuccess: (newItems) {
      if (itemsBloc.hasData) {
        final allItems = List<Item>.from(itemsBloc.data ?? []);
        allItems.addAll(newItems ?? []);
        itemsBloc.successState(allItems);
      } else {
        itemsBloc.successState(newItems);
      }
    },
    isError: (error) {
      currentPage--; // Revert page number
      AppSnackBar.showErrorSnackBar(error: error);
    },
  );
}
```

---

### **Pattern 4: Multiple ObsValues**

```dart
class FilterController {
  final ObsValue<String?> selectedCategoryObs = ObsValue.withInit(null);
  final ObsValue<PriceRange?> priceRangeObs = ObsValue.withInit(null);
  final ObsValue<bool> mawthooqOnlyObs = ObsValue.withInit(false);
  final ObsValue<int> filterCountObs = ObsValue.withInit(0);

  void updateCategory(String? category) {
    selectedCategoryObs.setValue(category);
    updateFilterCount();
  }

  void updatePriceRange(PriceRange? range) {
    priceRangeObs.setValue(range);
    updateFilterCount();
  }

  void toggleMawthooq() {
    mawthooqOnlyObs.setValue(!mawthooqOnlyObs.getValue());
    updateFilterCount();
  }

  void updateFilterCount() {
    int count = 0;
    if (selectedCategoryObs.getValue() != null) count++;
    if (priceRangeObs.getValue() != null) count++;
    if (mawthooqOnlyObs.getValue()) count++;
    filterCountObs.setValue(count);
  }

  void clearFilters() {
    selectedCategoryObs.setValue(null);
    priceRangeObs.setValue(null);
    mawthooqOnlyObs.setValue(false);
    filterCountObs.setValue(0);
  }
}
```

---

### **Pattern 5: Conditional UI with ObsValue**

```dart
class TabController {
  final ObsValue<int> selectedTabIndexObs = ObsValue<int>.withInit(0);

  void selectTab(int index) {
    selectedTabIndexObs.setValue(index);
  }
}

// Widget
ObsValueConsumer<int>(
  observable: controller.selectedTabIndexObs,
  builder: (context, selectedIndex) {
    return Column(
      children: [
        // Tab bar
        Row(
          children: List.generate(3, (index) {
            return Expanded(
              child: InkWell(
                onTap: () => controller.selectTab(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == index
                            ? context.colors.primary
                            : Colors.transparent,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Text(
                    ['Tab 1', 'Tab 2', 'Tab 3'][index],
                    textAlign: TextAlign.center,
                    style: AppTextStyle.s14_w500(
                      color: selectedIndex == index
                          ? context.colors.primary
                          : context.colors.grey,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        
        // Tab content
        Expanded(
          child: IndexedStack(
            index: selectedIndex,
            children: [
              Tab1Content(),
              Tab2Content(),
              Tab3Content(),
            ],
          ),
        ),
      ],
    );
  },
)
```

---

## ✅ **Best Practices**

### **1. Choose the Right Pattern**

```dart
// ✅ CORRECT: BaseBloc for API calls
final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();

Future<void> fetchItems() async {
  itemsBloc.loadingState();
  final result = await repository.getItems();
  result.when(
    isSuccess: (data) => itemsBloc.successState(data),
    isError: (error) => itemsBloc.failedState(error, retry),
  );
}

// ✅ CORRECT: ObsValue for UI state
final ObsValue<bool> isExpandedObs = ObsValue<bool>.withInit(false);

void toggle() {
  isExpandedObs.setValue(!isExpandedObs.getValue());
}
```

---

### **2. Always Provide Retry Callback**

```dart
// ✅ CORRECT
itemsBloc.failedState(error, () => fetchItems());

// ❌ WRONG: No retry
itemsBloc.failedState(error, () {});
```

---

### **3. Check State Before Operations**

```dart
// ✅ CORRECT
if (itemsBloc.isLoading) return; // Prevent duplicate requests

itemsBloc.loadingState();
await fetchData();

// ✅ CORRECT
if (itemsBloc.hasData) {
  // Use cached data
  return itemsBloc.data;
}
```

---

### **4. Handle Empty States**

```dart
// ✅ CORRECT
onSuccess: (context, changed, data) {
  if (data == null || data.isEmpty) {
    return EmptyView();
  }
  return ListView(children: data);
}
```

---

### **5. Dispose Properly**

```dart
// BaseBloc and ObsValue don't need manual disposal
// But dispose controllers:

void dispose() {
  refreshController.dispose();
  scrollController.dispose();
  textController.dispose();
  // BaseBloc and ObsValue auto-dispose
}
```

---

### **6. Use Meaningful Names**

```dart
// ✅ CORRECT
final BaseBloc<List<Product>> productsBloc = BaseBloc();
final ObsValue<bool> isExpandedObs = ObsValue.withInit(false);

// ❌ WRONG: Unclear names
final BaseBloc<List<Product>> bloc = BaseBloc();
final ObsValue<bool> obs = ObsValue.withInit(false);
```

---

## 🎯 **Quick Decision Guide**

### **Use BaseBloc If:**

- ✅ Fetching data from API
- ✅ Need loading indicator
- ✅ Need error handling
- ✅ Async operations
- ✅ Data can fail to load
- ✅ Need retry functionality
- ✅ Working with repositories

### **Use ObsValue If:**

- ✅ UI toggle (show/hide)
- ✅ Boolean flags
- ✅ Selection state
- ✅ Counter/index
- ✅ Search text
- ✅ Simple value changes
- ✅ No async operations

### **Quick Reference Table**

| Scenario | Use | Example |
|----------|-----|---------|
| Fetch users list | `BaseBloc<List<User>>` | `itemsBloc.loadingState()` |
| Show/hide section | `ObsValue<bool>` | `isExpandedObs.setValue(true)` |
| Login form submit | `BaseBloc<LoginResponse>` | `loginBloc.loadingState()` |
| Selected tab index | `ObsValue<int>` | `tabIndexObs.setValue(2)` |
| Load more items | `BaseBloc<List<Item>>` | Append to `itemsBloc.data` |
| Search query | `ObsValue<String>` | `searchQueryObs.setValue(text)` |
| Upload file | `BaseBloc<bool>` | `uploadBloc.loadingState()` |
| Filter count | `ObsValue<int>` | `filterCountObs.setValue(3)` |

---

## 🔧 **Advanced Techniques**

### **1. Listening to ObsValue Changes**

```dart
@override
void initState() {
  super.initState();
  
  // Listen to search query changes
  controller.searchQueryObs.listen((query) {
    print('Search query changed to: $query');
    // Perform action
  });
}
```

---

### **2. Conditional Rebuilding**

```dart
ObsValueConsumer<int>(
  observable: counterObs,
  buildWhen: (previous, current) {
    // Only rebuild if value is even
    return current % 2 == 0;
  },
  builder: (context, value) {
    return Text('Even value: $value');
  },
)
```

---

### **3. Multiple Bloc Listeners**

```dart
MultiBlocListener(
  listeners: [
    BlocListener<BaseBloc<User>, BaseState<User>>(
      bloc: userBloc,
      listener: (context, state) {
        state.whenOrNull(
          success: (_, user) {
            AppSnackBar.showSuccessSnackBar('User loaded');
          },
        );
      },
    ),
    BlocListener<BaseBloc<Settings>, BaseState<Settings>>(
      bloc: settingsBloc,
      listener: (context, state) {
        state.whenOrNull(
          success: (_, settings) {
            applySettings(settings);
          },
        );
      },
    ),
  ],
  child: YourWidget(),
)
```

---

### **4. State Persistence**

```dart
class PersistentController {
  final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();

  Future<void> fetchItems() async {
    // Check cache first
    final cachedData = await loadFromCache();
    if (cachedData != null) {
      itemsBloc.successState(cachedData);
    }

    // Fetch fresh data
    itemsBloc.loadingState();
    final result = await repository.getItems();
    
    result.when(
      isSuccess: (data) {
        itemsBloc.successState(data);
        saveToCache(data); // Save for next time
      },
      isError: (error) {
        if (cachedData != null) {
          // Keep showing cached data on error
          itemsBloc.successState(cachedData);
          AppSnackBar.showWarningSnackBar(
            message: 'Showing cached data',
          );
        } else {
          itemsBloc.failedState(error, () => fetchItems());
        }
      },
    );
  }
}
```

---

## 📝 **Summary**

### **BaseBloc Features**

✅ **Four States**: init, loading, success, failure
✅ **Type Safe**: Generic `<T>` support
✅ **Error Handling**: Built-in with retry
✅ **Data Caching**: Preserves data between emissions
✅ **State Checks**: `isLoading`, `isSuccess`, `isFail`, `hasData`
✅ **Easy UI**: `BaseBlocBuilder` handles all states

### **ObsValue Features**

✅ **Reactive**: Auto-updates UI
✅ **Simple**: Just get/set values
✅ **Lightweight**: Minimal overhead
✅ **Type Safe**: Generic `<T>` support
✅ **Flexible**: Works with any type
✅ **Easy UI**: `ObsValueConsumer` for listening

### **Global Cubits**

✅ **DeviceCubit**: Theme, locale, network status
✅ **(Add more as your app grows)**: Examples include CountriesCubit, NotificationsCubit, SettingsCubit

**Best Practice:** Keep global state minimal. Prefer feature-specific BaseBloc/ObsValue for most state management.

### **When to Use What**

| Situation | Pattern | Reason |
|-----------|---------|--------|
| API call | `BaseBloc<T>` | Needs loading/error states |
| Toggle | `ObsValue<bool>` | Simple on/off |
| List from API | `BaseBloc<List<T>>` | Async with error handling |
| Selected index | `ObsValue<int>` | Simple value |
| Form submit | `BaseBloc<bool>` | Async with loading |
| Search text | `ObsValue<String>` | Simple text value |
| App theme | `DeviceCubit` | Global setting |
| Filter count | `ObsValue<int>` | Computed value |

---

## 🚀 **Quick Start Templates**

### **Template 1: List Page with BaseBloc**

```dart
class MyListController {
  final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();
  
  void initPage() => fetchItems();
  
  Future<void> fetchItems() async {
    itemsBloc.loadingState();
    final result = await repository.getItems();
    result.when(
      isSuccess: (data) => itemsBloc.successState(data),
      isError: (error) => itemsBloc.failedState(error, fetchItems),
    );
  }
}

// Widget
BaseBlocBuilder<List<Item>>(
  bloc: controller.itemsBloc,
  onLoading: (context) => LoadingView(),
  onSuccess: (context, changed, data) => ListView(children: data),
  onFailed: (context, error, retry) => ErrorView(error, retry),
)
```

---

### **Template 2: Toggle with ObsValue**

```dart
class MyController {
  final ObsValue<bool> isVisibleObs = ObsValue<bool>.withInit(false);
  
  void toggle() {
    isVisibleObs.setValue(!isVisibleObs.getValue());
  }
}

// Widget
ObsValueConsumer<bool>(
  observable: controller.isVisibleObs,
  builder: (context, isVisible) {
    return Visibility(
      visible: isVisible,
      child: YourWidget(),
    );
  },
)
```

---

**This guide provides everything needed to master state management in Flutter apps!** 🔄

