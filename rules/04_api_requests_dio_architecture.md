# 🌐 API Requests & Dio Architecture Guide

This comprehensive guide explains the complete HTTP/API architecture in the Nojom Flutter application, including how to make API requests, handle responses, manage errors, and work with the Dio HTTP client.

---

## 📋 **Table of Contents**

1. [Architecture Overview](#architecture-overview)
2. [Core Components](#core-components)
3. [Making API Requests](#making-api-requests)
4. [Request Types](#request-types)
5. [Response Handling](#response-handling)
6. [Error Handling](#error-handling)
7. [API Endpoint Management](#api-endpoint-management)
8. [Interceptors](#interceptors)
9. [File Uploads](#file-uploads)
10. [Loading States](#loading-states)
11. [Advanced Patterns](#advanced-patterns)
12. [Complete Examples](#complete-examples)
13. [Best Practices](#best-practices)
14. [Troubleshooting](#troubleshooting)

---

## 🏗️ **Architecture Overview**

### **HTTP Layer Structure**

```
lib/core/http/
├── generic_http/
│   ├── generic_http.dart           # Main HTTP handler
│   ├── api_names.dart              # Star API endpoints
│   └── brand_api_names.dart        # Brand API endpoints
├── dio_helper/
│   ├── source/
│   │   └── dio_helper.dart         # Dio configuration
│   ├── actions/
│   │   ├── get.dart                # GET requests
│   │   ├── post.dart               # POST requests
│   │   ├── put.dart                # PUT requests
│   │   ├── patch.dart              # PATCH requests
│   │   └── delete.dart             # DELETE requests
│   └── utils/
│       ├── dio_header.dart         # Headers configuration
│       ├── auth_interceptor.dart   # Authentication interceptor
│       ├── handle_errors.dart      # Error handling
│       ├── handle_json_response.dart  # Response parsing
│       ├── handle_request_body.dart   # Request body formatting
│       └── http_tracking_interceptor.dart  # HTTP debugging
└── models/
    ├── http_request_model.dart     # Request configuration model
    ├── request_body_model.dart     # Request body model
    └── result.dart                 # Response wrapper
```

### **Request Flow**

```
Data Source
    ↓
Creates HttpRequestModel
    ↓
Calls GenericHttpImpl<T>()
    ↓
Checks Internet Connection
    ↓
Routes to Action (GET/POST/PUT/PATCH/DELETE)
    ↓
Dio Makes HTTP Request
    ↓
Interceptors Process Request/Response
    ↓
HandleJsonResponse Parses Response
    ↓
Returns MyResult<T>
    ↓
Repository Returns to Presentation Layer
```

---

## 🧩 **Core Components**

### **1. GenericHttpImpl - The Main HTTP Handler**

**Location:** `lib/core/http/generic_http/generic_http.dart`

```dart
@lazySingleton
class GenericHttpImpl<T> extends GenericHttp<T> {
  @override
  Future<MyResult<T>> call(HttpRequestModel model) async {
    // 1. Check internet connection
    await _checkInternetConnection();
    
    // 2. Route to appropriate HTTP method
    MyResult<Response> response;
    switch (model.requestMethod) {
      case RequestMethod.get:
        response = await getIt<Get>()(params);
        break;
      case RequestMethod.post:
        response = await getIt<Post>()(params);
        break;
      case RequestMethod.delete:
        response = await getIt<Delete>()(params);
        break;
      case RequestMethod.put:
        response = await getIt<Put>()(params);
        break;
      case RequestMethod.patch:
        response = await getIt<Patch>()(params);
        break;
    }
    
    // 3. Parse response to desired type
    return HandleJsonResponse<T>()(
      response,
      model.responseType,
      model.toJsonFunc ?? (val) {},
      model.responseKey,
    );
  }
}
```

**Key Features:**
- ✅ Generic type support (`<T>`)
- ✅ Automatic internet connection checking
- ✅ Centralized error handling
- ✅ Response type conversion
- ✅ Loading state management

### **2. HttpRequestModel - Request Configuration**

**Location:** `lib/core/http/models/http_request_model.dart`

```dart
class HttpRequestModel {
  final String url;                          // API endpoint URL
  final RequestMethod requestMethod;         // GET, POST, PUT, PATCH, DELETE
  final ResType responseType;                // model, list, or type
  final Map<String, dynamic>? requestBody;   // Request body/parameters
  final Function(dynamic data)? responseKey; // Extract data from response
  final Function(dynamic data)? toJsonFunc;  // Convert JSON to model
  final bool showLoader;                     // Show loading indicator
  final bool showErrorMsg;                   // Show error messages
  final bool refresh;                        // Force refresh (bypass cache)
  final bool isFormData;                     // Use FormData for files
  final CancelToken? cancelToken;            // Cancel request
}
```

### **3. MyResult - Response Wrapper**

**Location:** `lib/core/http/models/result.dart`

```dart
@freezed
class MyResult<T> with _$MyResult<T> {
  const MyResult._();
  
  const factory MyResult.isSuccess([T? data]) = IsSuccess<T>;
  const factory MyResult.isError(BaseError error) = IsError;
  
  // Convenience getters
  T? get data => whenOrNull(isSuccess: (data) => data);
  BaseError? get error => whenOrNull(isError: (err) => err);
  bool get isSuccess => when(isSuccess: (_) => true, isError: (_) => false);
  bool get isError => when(isSuccess: (_) => false, isError: (_) => true);
}
```

**Why MyResult?**
- ✅ Type-safe error handling
- ✅ No exceptions thrown
- ✅ Forces explicit error handling
- ✅ Works with freezed for immutability

---

## 📡 **Making API Requests**

### **Step-by-Step Guide**

#### **Step 1: Define API Endpoint**

**File:** `lib/core/http/generic_http/brand_api_names.dart` or `api_names.dart`

```dart
class BrandApiNames {
  static String baseUrl = AppConfig.instance.brandBaseUrl;
  
  // Simple endpoint
  static String users = "${baseUrl}users";
  
  // Endpoint with parameter
  static String userById(int id) => "${baseUrl}users/$id";
  
  // Endpoint with query
  static String searchUsers = "${baseUrl}users/search";
}
```

#### **Step 2: Create Data Source Method**

**File:** `lib/features/my_feature/data/data_source/impl_my_feature_data_source.dart`

```dart
@Injectable(as: MyFeatureDataSource)
class ImplMyFeatureDataSource extends MyFeatureDataSource {
  
  @override
  Future<MyResult<List<UserModel>>> getUsers({int page = 1}) async {
    HttpRequestModel model = HttpRequestModel(
      // Required parameters
      url: BrandApiNames.users,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      
      // Optional parameters
      showLoader: false,
      showErrorMsg: true,
      queryParameters: {'page': page},
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    
    return await GenericHttpImpl<UserModel>()(model);
  }
}
```

#### **Step 3: Use in Repository**

```dart
@Injectable(as: MyFeatureRepository)
class ImplMyFeatureRepository extends MyFeatureRepository {
  final dataSource = getIt.get<MyFeatureDataSource>();
  
  @override
  Future<MyResult<List<UserModel>>> getUsers({int page = 1}) async {
    return await dataSource.getUsers(page: page);
  }
}
```

#### **Step 4: Use in Presentation Layer**

```dart
class MyController {
  Future<void> fetchUsers() async {
    final result = await getIt<MyFeatureRepository>().getUsers(page: 1);
    
    result.when(
      isSuccess: (users) {
        // Handle success
        print('Fetched ${users?.length} users');
      },
      isError: (error) {
        // Handle error
        print('Error: ${error.message}');
      },
    );
  }
}
```

---

## 🔄 **Request Types**

### **1. GET Request**

**Use Case:** Fetch data from server

```dart
@override
Future<MyResult<List<ItemModel>>> getItems({int page = 1}) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.items,
    requestMethod: RequestMethod.get,
    responseType: ResType.list,
    showLoader: false,
    showErrorMsg: true,
    queryParameters: {'page': page, 'limit': 10},
    responseKey: (data) => data['data'],
    toJsonFunc: (json) => ItemModel.fromJson(json),
  );
  
  return await GenericHttpImpl<ItemModel>()(model);
}
```

**Query Parameters:**
```dart
// Automatically appends to URL: /items?page=1&limit=10
queryParameters: {
  'page': 1,
  'limit': 10,
  'sort': 'desc',
}
```

### **2. POST Request**

**Use Case:** Create new resource, submit data

```dart
@override
Future<MyResult<bool>> createItem(CreateItemParams params) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.items,
    requestMethod: RequestMethod.post,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    requestBody: params.toJson(),
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

**Request Body:**
```dart
requestBody: {
  'name': 'Item Name',
  'description': 'Item Description',
  'price': 99.99,
  'category_id': 5,
}
```

### **3. PUT Request**

**Use Case:** Update entire resource

```dart
@override
Future<MyResult<bool>> updateItem(int id, UpdateItemParams params) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.itemById(id),  // /items/123
    requestMethod: RequestMethod.put,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    requestBody: params.toJson(),
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

### **4. PATCH Request**

**Use Case:** Partial update of resource

```dart
@override
Future<MyResult<bool>> updateItemStatus(int id, bool isActive) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.itemById(id),
    requestMethod: RequestMethod.patch,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    requestBody: {'is_active': isActive},
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

### **5. DELETE Request**

**Use Case:** Delete resource

```dart
@override
Future<MyResult<bool>> deleteItem(int id) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.itemById(id),
    requestMethod: RequestMethod.delete,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

---

## 📦 **Response Handling**

### **Response Types**

```dart
enum ResType { 
  model,  // Single object
  list,   // Array of objects
  type    // Primitive type (bool, int, String)
}
```

### **1. Model Response (Single Object)**

```dart
HttpRequestModel model = HttpRequestModel(
  url: BrandApiNames.userById(123),
  requestMethod: RequestMethod.get,
  responseType: ResType.model,
  responseKey: (data) => data['data'],
  toJsonFunc: (json) => UserModel.fromJson(json),
);

// Returns: MyResult<UserModel>
```

**API Response:**
```json
{
  "status": true,
  "data": {
    "id": 123,
    "name": "John Doe",
    "email": "john@example.com"
  }
}
```

### **2. List Response (Array of Objects)**

```dart
HttpRequestModel model = HttpRequestModel(
  url: BrandApiNames.users,
  requestMethod: RequestMethod.get,
  responseType: ResType.list,
  responseKey: (data) => data['data'],
  toJsonFunc: (json) => UserModel.fromJson(json),
);

// Returns: MyResult<List<UserModel>>
```

**API Response:**
```json
{
  "status": true,
  "data": [
    {"id": 1, "name": "User 1"},
    {"id": 2, "name": "User 2"}
  ]
}
```

### **3. Type Response (Primitive)**

```dart
HttpRequestModel model = HttpRequestModel(
  url: BrandApiNames.deleteItem,
  requestMethod: RequestMethod.delete,
  responseType: ResType.type,
  responseKey: (data) => data['status'] == 'success',
);

// Returns: MyResult<bool>
```

**API Response:**
```json
{
  "status": "success",
  "message": "Item deleted successfully"
}
```

### **Response Key Function**

The `responseKey` function extracts the actual data from the API response:

```dart
// Example 1: Data in 'data' key
responseKey: (data) => data['data']

// Example 2: Data in nested key
responseKey: (data) => data['response']['items']

// Example 3: Boolean from status
responseKey: (data) => data['status'] == 'success'

// Example 4: Entire response
responseKey: (data) => data

// Example 5: Custom extraction
responseKey: (data) {
  if (data['success']) {
    return data['result']['users'];
  }
  return [];
}
```

### **To JSON Function**

Converts JSON to your model:

```dart
// For single model
toJsonFunc: (json) => UserModel.fromJson(json)

// For custom parsing
toJsonFunc: (json) {
  return UserModel(
    id: json['user_id'],
    name: json['full_name'],
  );
}
```

---

## ⚠️ **Error Handling**

### **Error Architecture**

```
API Error
    ↓
Caught by DioException
    ↓
HandleErrors.catchError()
    ↓
Checks Status Code
    ↓
Shows Error Message (if enabled)
    ↓
Returns MyResult.isError()
```

### **HTTP Status Code Handling**

**File:** `lib/core/http/dio_helper/utils/handle_errors.dart`

```dart
switch (response.statusCode) {
  case 400:  // Bad Request
  case 422:  // Unprocessable Entity
    // Show validation errors
    if (data["errors"] != null) {
      List<String> errors = List<String>.from(
        data["errors"].map((e) => e["msg"] ?? e["message"])
      );
      for (var e in errors) {
        AppSnackBar.showSimpleToast(msg: e);
      }
    }
    break;
    
  case 401:  // Unauthorized
  case 301:  // Moved Permanently (token expired)
  case 302:  // Found (token expired)
    _tokenExpired();  // Logout user
    break;
    
  case 404:  // Not Found
    AppSnackBar.showSimpleToast(msg: "Resource not found");
    break;
    
  case 500:  // Internal Server Error
    AppSnackBar.showSimpleToast(msg: "Server error");
    break;
    
  case 502:  // Bad Gateway
    AppSnackBar.showSimpleToast(msg: "Check your request");
    break;
    
  case 503:  // Service Unavailable
    AppSnackBar.showSimpleToast(msg: "Service unavailable");
    break;
}
```

### **Using MyResult in Presentation**

#### **Pattern 1: Using `when`**

```dart
final result = await repository.getItems();

result.when(
  isSuccess: (data) {
    // Handle success
    itemsBloc.successState(data ?? []);
  },
  isError: (error) {
    // Handle error
    itemsBloc.failedState(error, () => fetchItems());
  },
);
```

#### **Pattern 2: Using `whenOrNull`**

```dart
final result = await repository.getItem(123);

final item = result.whenOrNull(
  isSuccess: (data) => data,
);

if (item != null) {
  // Use item
} else {
  // Handle error
}
```

#### **Pattern 3: Checking Success**

```dart
final result = await repository.deleteItem(123);

if (result.isSuccess) {
  AppSnackBar.success(context, message: 'Item deleted');
} else {
  AppSnackBar.error(context, message: result.error?.message ?? 'Error');
}
```

### **Error Control Flags**

```dart
HttpRequestModel(
  url: url,
  requestMethod: RequestMethod.get,
  responseType: ResType.model,
  
  // Show error toast automatically
  showErrorMsg: true,   // Default: true
  
  // Show loading dialog
  showLoader: true,     // Default: false
);
```

---

## 🔗 **API Endpoint Management**

### **Star API Endpoints**

**File:** `lib/core/http/generic_http/api_names.dart`

```dart
class StarApiNames {
  static String baseUrl = AppConfig.instance.starBaseUrl;
  
  // Auth
  static String login = "${baseUrl}login";
  static String signup = "${baseUrl}signup";
  static String logout = "${baseUrl}logout";
  
  // Profile
  static String getProfileInfo = "${baseUrl}get_profile_info";
  static String updateProfile = "${baseUrl}update_profile";
  
  // Dynamic endpoints
  static String getCampaignById(int id) => "${baseUrl}campaign/$id";
  static String addNote(int campaignId) => "${baseUrl}campaign/$campaignId/note";
}
```

### **Brand API Endpoints**

**File:** `lib/core/http/generic_http/brand_api_names.dart`

```dart
class BrandApiNames {
  static String baseUrl = AppConfig.instance.brandBaseUrl;
  
  // Auth
  static String login = "${baseUrl}login";
  static String loginOrSignupByPhone = "${baseUrl}loginOrSignupByPhone";
  
  // Favorites
  static String favoriteLists = "${baseUrl}favorite/lists";
  static String favoriteListById(int listId) => "${baseUrl}favorite/lists/$listId";
  
  // External URLs
  static const String youtubeDetails = "https://www.youtube.com/oembed";
}
```

### **Best Practices for API Names**

```dart
// ✅ GOOD: Clear, descriptive names
static String getUserProfile = "${baseUrl}users/profile";
static String updateUserSettings = "${baseUrl}users/settings";

// ✅ GOOD: Dynamic parameters
static String orderById(int id) => "${baseUrl}orders/$id";
static String orderItems(int orderId) => "${baseUrl}orders/$orderId/items";

// ❌ BAD: Unclear names
static String getData = "${baseUrl}data";
static String api1 = "${baseUrl}api1";

// ❌ BAD: Hardcoded IDs
static String order123 = "${baseUrl}orders/123";
```

---

## 🔌 **Interceptors**

### **1. Authentication Interceptor**

**File:** `lib/core/http/dio_helper/utils/auth_interceptor.dart`

```dart
class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // Add auth token to headers
    // Already handled in DioHeader
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Show debugging tools
    HttpTrackingInterceptor.instance.showAlice();
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Show debugging tools on error
    HttpTrackingInterceptor.instance.showAlice();
    handler.next(err);
  }
}
```

### **2. HTTP Tracking Interceptor**

For debugging HTTP requests (shows Alice inspector in debug mode)

### **3. Amplitude Action Interceptor**

Tracks API calls for analytics

### **Headers Configuration**

**File:** `lib/core/http/dio_helper/utils/dio_header.dart`

```dart
@lazySingleton
class DioHeader {
  Map<String, String> call() {
    String? token = GlobalState.instance.get(AppStorageKeys.token);
    
    return {
      "Content-Type": "application/json",
      'Accept': '*/*',
      'sys_id': '6',
      if (token != null) 'Authorization': token,
    };
  }
}
```

**Headers in Request:**
- `Content-Type: application/json` - Default content type
- `Accept: */*` - Accept all response types
- `sys_id: 6` - System identifier
- `Authorization: {token}` - Auth token (if logged in)

---

## 📤 **File Uploads**

### **Uploading Single File**

```dart
@override
Future<MyResult<bool>> uploadProfilePicture(File image) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.updateProfilePicture,
    requestMethod: RequestMethod.post,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    isFormData: true,  // Important for file uploads
    requestBody: {
      'profile_picture': image,  // File object
      'user_id': 123,
    },
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

### **Uploading Multiple Files**

```dart
@override
Future<MyResult<bool>> uploadGallery(List<File> images) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.uploadGallery,
    requestMethod: RequestMethod.post,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    isFormData: true,
    requestBody: {
      'images': images,  // List<File>
      'category': 'portfolio',
    },
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

### **File Upload with Progress**

The POST action automatically handles upload progress:

```dart
// In Post action (lib/core/http/dio_helper/actions/post.dart)
var response = await dio.post(
  params.url,
  data: formData,
  onSendProgress: (int sent, int total) {
    final progress = sent / total * 100;
    loadingPercent?.setValue(progress.toInt());  // Updates loading indicator
  },
);
```

### **How File Handling Works**

**File:** `lib/core/http/dio_helper/utils/handle_request_body.dart`

```dart
FormData? call(Map<String, dynamic> body) {
  FormData formData = FormData.fromMap(body);
  bool haveFile = false;
  
  body.forEach((key, value) {
    if (value is File) {
      haveFile = true;
      final mimeType = lookupMimeType(value.path);
      formData.files.add(MapEntry(
        key,
        MultipartFile.fromFileSync(
          value.path,
          filename: value.path.split("/").last,
          contentType: DioMediaType.parse(mimeType ?? 'application/octet-stream'),
        ),
      ));
    } else if (value is List<File>) {
      haveFile = true;
      for (var file in value) {
        // Add each file to formData
      }
    }
  });
  
  return haveFile ? formData : null;
}
```

**Supported File Types:**
- Images: `.jpg`, `.jpeg`, `.png`, `.gif`, `.webp`
- Documents: `.pdf`, `.doc`, `.docx`
- Videos: `.mp4`, `.mov`, `.avi`
- Any file with proper MIME type

---

## ⏳ **Loading States**

### **Automatic Loading Dialog**

```dart
HttpRequestModel model = HttpRequestModel(
  url: url,
  requestMethod: RequestMethod.post,
  responseType: ResType.model,
  showLoader: true,  // Shows loading dialog automatically
  // ...
);
```

**What Happens:**
1. Loading dialog shows before request
2. Progress indicator (for file uploads)
3. Dialog dismisses on success/error

### **Custom Loading State**

Use BaseBloc for manual control:

```dart
class MyController {
  final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();
  
  Future<void> fetchItems() async {
    itemsBloc.loadingState();  // Show loading manually
    
    final result = await repository.getItems();
    
    result.when(
      isSuccess: (data) => itemsBloc.successState(data),
      isError: (error) => itemsBloc.failedState(error, () => fetchItems()),
    );
  }
}
```

### **Loading with ObsValue**

```dart
class MyController {
  final ObsValue<bool> isLoadingObs = ObsValue.withInit(false);
  
  Future<void> fetchData() async {
    isLoadingObs.setValue(true);
    
    final result = await repository.getData();
    
    isLoadingObs.setValue(false);
    
    // Handle result...
  }
}
```

---

## 🚀 **Advanced Patterns**

### **1. Request Cancellation**

```dart
class MyController {
  CancelToken? cancelToken;
  
  Future<void> searchItems(String query) async {
    // Cancel previous request
    cancelToken?.cancel();
    cancelToken = CancelToken();
    
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.search,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      queryParameters: {'q': query},
      cancelToken: cancelToken,
      toJsonFunc: (json) => ItemModel.fromJson(json),
    );
    
    final result = await GenericHttpImpl<ItemModel>()(model);
    // Handle result...
  }
  
  void dispose() {
    cancelToken?.cancel();
  }
}
```

### **2. Pagination**

```dart
class PaginatedController {
  final BaseBloc<List<Item>> itemsBloc = BaseBloc<List<Item>>();
  int currentPage = 1;
  bool hasMoreData = true;
  
  Future<void> fetchItems({bool loadMore = false}) async {
    if (!loadMore) {
      itemsBloc.loadingState();
      currentPage = 1;
    }
    
    final result = await repository.getItems(page: currentPage);
    
    result.when(
      isSuccess: (newItems) {
        if (newItems == null || newItems.isEmpty) {
          hasMoreData = false;
          return;
        }
        
        if (loadMore && itemsBloc.hasData) {
          // Append to existing data
          final allItems = List<Item>.from(itemsBloc.data ?? []);
          allItems.addAll(newItems);
          itemsBloc.successState(allItems);
        } else {
          itemsBloc.successState(newItems);
        }
        
        currentPage++;
      },
      isError: (error) {
        itemsBloc.failedState(error, () => fetchItems());
      },
    );
  }
}
```

### **3. Retry Logic**

```dart
Future<MyResult<T>> retryRequest<T>({
  required Future<MyResult<T>> Function() request,
  int maxRetries = 3,
  Duration delay = const Duration(seconds: 2),
}) async {
  int attempts = 0;
  
  while (attempts < maxRetries) {
    final result = await request();
    
    if (result.isSuccess) {
      return result;
    }
    
    attempts++;
    if (attempts < maxRetries) {
      await Future.delayed(delay);
    }
  }
  
  return await request(); // Final attempt
}

// Usage
final result = await retryRequest(
  request: () => repository.getItems(),
  maxRetries: 3,
);
```

### **4. Parallel Requests**

```dart
Future<void> fetchAllData() async {
  final results = await Future.wait([
    repository.getUsers(),
    repository.getCategories(),
    repository.getSettings(),
  ]);
  
  final users = results[0].data;
  final categories = results[1].data;
  final settings = results[2].data;
  
  // Use data...
}
```

### **5. Conditional Requests**

```dart
Future<void> fetchData() async {
  // Only fetch if not already loading
  if (itemsBloc.isLoading) return;
  
  // Only fetch if cache is stale
  final lastFetch = DateTime.now().difference(lastFetchTime);
  if (lastFetch.inMinutes < 5 && itemsBloc.hasData) {
    return; // Use cached data
  }
  
  itemsBloc.loadingState();
  final result = await repository.getItems();
  // Handle result...
  
  lastFetchTime = DateTime.now();
}
```

---

## 💡 **Complete Examples**

### **Example 1: User Authentication**

```dart
// 1. Define endpoint
class BrandApiNames {
  static String login = "${baseUrl}login";
}

// 2. Create data source
@Injectable(as: AuthDataSource)
class ImplAuthDataSource extends AuthDataSource {
  @override
  Future<MyResult<LoginResponse>> login(LoginParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: BrandApiNames.login,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      showLoader: true,
      showErrorMsg: true,
      requestBody: {
        'email': params.email,
        'password': params.password,
      },
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => LoginResponse.fromJson(json),
    );
    
    return await GenericHttpImpl<LoginResponse>()(model);
  }
}

// 3. Create repository
@Injectable(as: AuthRepository)
class ImplAuthRepository extends AuthRepository {
  final dataSource = getIt.get<AuthDataSource>();
  
  @override
  Future<MyResult<LoginResponse>> login(LoginParams params) async {
    return await dataSource.login(params);
  }
}

// 4. Use in controller
class LoginController {
  final BaseBloc<LoginResponse> loginBloc = BaseBloc<LoginResponse>();
  
  Future<void> login(String email, String password) async {
    loginBloc.loadingState();
    
    final params = LoginParams(email: email, password: password);
    final result = await getIt<AuthRepository>().login(params);
    
    result.when(
      isSuccess: (response) {
        // Save token
        GlobalState.instance.set('token', response?.token);
        
        // Navigate to home
        AutoRouter.of(context).push(HomeRoute());
        
        loginBloc.successState(response);
      },
      isError: (error) {
        loginBloc.failedState(error, () => login(email, password));
      },
    );
  }
}
```

### **Example 2: CRUD Operations**

```dart
// Create
Future<MyResult<bool>> createProduct(CreateProductParams params) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.products,
    requestMethod: RequestMethod.post,
    responseType: ResType.type,
    showLoader: true,
    requestBody: params.toJson(),
    responseKey: (data) => data['status'] == 'success',
  );
  return await GenericHttpImpl<bool>()(model);
}

// Read (List)
Future<MyResult<List<ProductModel>>> getProducts({int page = 1}) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.products,
    requestMethod: RequestMethod.get,
    responseType: ResType.list,
    queryParameters: {'page': page},
    responseKey: (data) => data['data'],
    toJsonFunc: (json) => ProductModel.fromJson(json),
  );
  return await GenericHttpImpl<ProductModel>()(model);
}

// Read (Single)
Future<MyResult<ProductModel>> getProduct(int id) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.productById(id),
    requestMethod: RequestMethod.get,
    responseType: ResType.model,
    showLoader: true,
    responseKey: (data) => data['data'],
    toJsonFunc: (json) => ProductModel.fromJson(json),
  );
  return await GenericHttpImpl<ProductModel>()(model);
}

// Update
Future<MyResult<bool>> updateProduct(int id, UpdateProductParams params) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.productById(id),
    requestMethod: RequestMethod.put,
    responseType: ResType.type,
    showLoader: true,
    requestBody: params.toJson(),
    responseKey: (data) => data['status'] == 'success',
  );
  return await GenericHttpImpl<bool>()(model);
}

// Delete
Future<MyResult<bool>> deleteProduct(int id) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.productById(id),
    requestMethod: RequestMethod.delete,
    responseType: ResType.type,
    showLoader: true,
    responseKey: (data) => data['status'] == 'success',
  );
  return await GenericHttpImpl<bool>()(model);
}
```

### **Example 3: File Upload with Data**

```dart
Future<MyResult<bool>> updateProfileWithImage({
  required File profileImage,
  required String name,
  required String bio,
}) async {
  HttpRequestModel model = HttpRequestModel(
    url: BrandApiNames.updateProfile,
    requestMethod: RequestMethod.post,
    responseType: ResType.type,
    showLoader: true,
    showErrorMsg: true,
    isFormData: true,
    requestBody: {
      'profile_image': profileImage,  // File
      'name': name,                   // String
      'bio': bio,                     // String
    },
    responseKey: (data) => data['status'] == 'success',
  );
  
  return await GenericHttpImpl<bool>()(model);
}
```

---

## ✅ **Best Practices**

### **1. API Endpoint Organization**

```dart
// ✅ GOOD: Organized by feature
class BrandApiNames {
  // Auth
  static String login = "${baseUrl}login";
  static String signup = "${baseUrl}signup";
  
  // Products
  static String products = "${baseUrl}products";
  static String productById(int id) => "${baseUrl}products/$id";
  
  // Orders
  static String orders = "${baseUrl}orders";
  static String orderById(int id) => "${baseUrl}orders/$id";
}

// ❌ BAD: Unorganized, unclear names
class ApiNames {
  static String api1 = "${baseUrl}api1";
  static String getData = "${baseUrl}data";
  static String update = "${baseUrl}update";
}
```

### **2. Error Handling**

```dart
// ✅ GOOD: Always handle both cases
result.when(
  isSuccess: (data) {
    // Handle success
  },
  isError: (error) {
    // Handle error
  },
);

// ❌ BAD: Only checking success
if (result.isSuccess) {
  // Handle success
}
// Error case not handled!
```

### **3. Loading States**

```dart
// ✅ GOOD: Control loading explicitly
HttpRequestModel(
  showLoader: true,   // For user-initiated actions
  showErrorMsg: true, // Show errors to user
)

// ✅ GOOD: Silent background sync
HttpRequestModel(
  showLoader: false,  // No loading dialog
  showErrorMsg: false, // Don't show errors
)
```

### **4. Response Type Selection**

```dart
// ✅ GOOD: Correct type for response
responseType: ResType.list    // For arrays
responseType: ResType.model   // For objects
responseType: ResType.type    // For primitives

// ❌ BAD: Wrong type
responseType: ResType.model   // But API returns array
```

### **5. Request Body Formatting**

```dart
// ✅ GOOD: Use params class
class CreateItemParams {
  final String name;
  final double price;
  
  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
  };
}

requestBody: params.toJson()

// ❌ BAD: Inline request body
requestBody: {
  'name': 'Item',
  'price': 99.99,
}
```

### **6. Generic Type Safety**

```dart
// ✅ GOOD: Specify generic type
return await GenericHttpImpl<UserModel>()(model);
return await GenericHttpImpl<List<ItemModel>>()(model);
return await GenericHttpImpl<bool>()(model);

// ❌ BAD: No type specified
return await GenericHttpImpl()(model);  // Type is dynamic
```

---

## 🐛 **Troubleshooting**

### **Problem: Request Returns Null**

**Cause:** Response key function not extracting data correctly

```dart
// ❌ WRONG
responseKey: (data) => data['items']  // But API has data.response.items

// ✅ CORRECT
responseKey: (data) => data['response']['items']
```

### **Problem: Model Parsing Error**

**Cause:** Wrong toJsonFunc or missing fromJson

```dart
// ✅ CORRECT
toJsonFunc: (json) => UserModel.fromJson(json)

// Ensure model has fromJson
@freezed
class UserModel with _$UserModel {
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
```

### **Problem: 401 Unauthorized**

**Cause:** Missing or invalid token

```dart
// Check token in headers
String? token = GlobalState.instance.get(AppStorageKeys.token);
print('Token: $token');

// Verify Authorization header
Map<String, String> headers = {
  if (token != null) 'Authorization': token,
};
```

### **Problem: Files Not Uploading**

**Cause:** Missing isFormData flag

```dart
// ✅ CORRECT
HttpRequestModel(
  isFormData: true,  // Important!
  requestBody: {
    'image': fileObject,
  },
)
```

### **Problem: Loading Dialog Not Showing**

**Cause:** showLoader is false

```dart
// ✅ CORRECT
HttpRequestModel(
  showLoader: true,  // Enable loading dialog
)
```

### **Problem: Error Messages Not Showing**

**Cause:** showErrorMsg is false

```dart
// ✅ CORRECT
HttpRequestModel(
  showErrorMsg: true,  // Enable error toasts
)
```

---

## 📊 **Architecture Decision Record**

### **Why GenericHttpImpl?**

**Benefits:**
- ✅ Single point of control for all HTTP requests
- ✅ Automatic internet connection checking
- ✅ Centralized error handling
- ✅ Consistent response parsing
- ✅ Easy to add global interceptors
- ✅ Type-safe responses with generics

### **Why MyResult instead of Exceptions?**

**Benefits:**
- ✅ Explicit error handling (can't forget to catch)
- ✅ Type-safe error information
- ✅ No try-catch blocks needed
- ✅ Immutable with freezed
- ✅ Works well with when/whenOrNull

### **Why Separate Data Source and Repository?**

**Benefits:**
- ✅ Clear separation of concerns
- ✅ Easy to mock for testing
- ✅ Repository can combine multiple data sources
- ✅ Repository adds business logic layer

---

## 🎯 **Quick Reference**

### **Making a GET Request**

```dart
HttpRequestModel model = HttpRequestModel(
  url: ApiNames.items,
  requestMethod: RequestMethod.get,
  responseType: ResType.list,
  responseKey: (data) => data['data'],
  toJsonFunc: (json) => ItemModel.fromJson(json),
);
return await GenericHttpImpl<ItemModel>()(model);
```

### **Making a POST Request**

```dart
HttpRequestModel model = HttpRequestModel(
  url: ApiNames.items,
  requestMethod: RequestMethod.post,
  responseType: ResType.type,
  showLoader: true,
  requestBody: params.toJson(),
  responseKey: (data) => data['status'] == 'success',
);
return await GenericHttpImpl<bool>()(model);
```

### **Uploading a File**

```dart
HttpRequestModel model = HttpRequestModel(
  url: ApiNames.upload,
  requestMethod: RequestMethod.post,
  responseType: ResType.type,
  showLoader: true,
  isFormData: true,
  requestBody: {'file': fileObject},
  responseKey: (data) => data['status'] == 'success',
);
return await GenericHttpImpl<bool>()(model);
```

### **Handling Response**

```dart
result.when(
  isSuccess: (data) {
    // Use data
  },
  isError: (error) {
    // Handle error
  },
);
```

---

## 📝 **Summary**

### **Key Takeaways**

1. **Use GenericHttpImpl** for all API requests
2. **Configure HttpRequestModel** with proper parameters
3. **Return MyResult<T>** for type-safe responses
4. **Handle both success and error cases** explicitly
5. **Use appropriate ResponseType** (model/list/type)
6. **Add endpoints to ApiNames** classes
7. **Set showLoader and showErrorMsg** appropriately
8. **Use isFormData: true** for file uploads
9. **Extract data with responseKey** function
10. **Convert JSON with toJsonFunc**

### **Common Patterns**

- **GET** → Fetch data (list or single)
- **POST** → Create new resource
- **PUT** → Update entire resource
- **PATCH** → Partial update
- **DELETE** → Remove resource
- **Files** → Use isFormData: true

---

**This architecture provides a robust, type-safe, and maintainable way to handle all HTTP communication in the Nojom app!** 🚀

