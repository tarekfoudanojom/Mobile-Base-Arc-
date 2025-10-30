# 🔄 Loading & SnackBar Services Guide

Complete guide on using `LoadingHelper` and `AppSnackBar` for loading states and user notifications in Flutter apps.

---

## 📋 **Table of Contents**

1. [LoadingHelper Service](#loadinghelper-service)
2. [AppSnackBar Service](#appsnackbar-service)
3. [Common Patterns](#common-patterns)
4. [Best Practices](#best-practices)
5. [Examples](#examples)

---

## 🔄 **LoadingHelper Service**

### **Overview**

`LoadingHelper` is a singleton service that manages loading dialogs across the app using `flutter_easyloading` with custom branding.

### **Location**
```dart
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
```

### **Access Pattern**

✅ **MUST**: Access via dependency injection (not direct instantiation)

```dart
// ✅ Correct
getIt<LoadingHelper>().showLoadingDialog();
getIt<LoadingHelper>().dismissDialog();

// ❌ Wrong
LoadingHelper.show();  // This doesn't exist
LoadingHelper().showLoadingDialog();  // Don't instantiate directly
```

---

### **Methods**

#### **1. showLoadingDialog()**

Shows a loading dialog with custom branded animation.

**Signature:**
```dart
void showLoadingDialog({
  bool dismissOnTap = false,
  ObsValue<int>? loadingPercent,
})
```

**Parameters:**
- `dismissOnTap` (optional): Allow dismissing on tap (default: `false`)
- `loadingPercent` (optional): Observable progress percentage for upload/download operations

**Features:**
- Automatic timeout after 15 seconds
- Prevents multiple dialogs from showing simultaneously
- Custom branded loading animation
- Blur effect backdrop

**Example:**
```dart
// Simple loading
getIt<LoadingHelper>().showLoadingDialog();

// With dismiss on tap
getIt<LoadingHelper>().showLoadingDialog(dismissOnTap: true);

// With progress percentage
final progress = ObsValue<int>.withInit(0);
getIt<LoadingHelper>().showLoadingDialog(loadingPercent: progress);
// Update progress
progress.setValue(50);
```

---

#### **2. dismissDialog()**

Dismisses the currently shown loading dialog.

**Signature:**
```dart
void dismissDialog()
```

**Example:**
```dart
getIt<LoadingHelper>().dismissDialog();
```

---

### **Observable State**

Track loading state across the app:

```dart
final loadingHelper = getIt<LoadingHelper>();

// Check if loading is currently shown
ObsValueConsumer(
  observable: loadingHelper.isShowObs,
  builder: (context, isShowing) {
    return Text(isShowing ? 'Loading...' : 'Ready');
  },
)
```

---

## 📢 **AppSnackBar Service**

### **Overview**

`AppSnackBar` is a static service providing beautiful, themed snack bars for user notifications.

### **Location**
```dart
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
```

### **Access Pattern**

✅ **MUST**: Use static methods directly (no instantiation needed)

```dart
// ✅ Correct
AppSnackBar.showSuccessSnackBar('Operation successful');
AppSnackBar.showErrorSnackBar(error: someError);

// ❌ Wrong
AppSnackBar().showSuccessSnackBar('text');  // Don't instantiate
```

---

### **Methods**

#### **1. showSuccessSnackBar()**

Shows a green success message.

**Signature:**
```dart
static void showSuccessSnackBar(
  String message,
  {VoidCallback? callback}
)
```

**Parameters:**
- `message` (required): Success message text
- `callback` (optional): Action to perform when tapped

**Features:**
- Green background with success icon
- Centered layout (intrinsic width)
- Auto-dismisses after default duration
- Prevents multiple simultaneous snack bars

**Example:**
```dart
// Simple success message
AppSnackBar.showSuccessSnackBar('Profile updated successfully');

// With callback action
AppSnackBar.showSuccessSnackBar(
  'Campaign created',
  callback: () {
    // Navigate to campaign details
    context.router.push(CampaignDetailsRoute());
  },
);
```

---

#### **2. showErrorSnackBar()**

Shows a red error message from a `BaseError` object.

**Signature:**
```dart
static void showErrorSnackBar({
  required BaseError error,
  VoidCallback? callback,
})
```

**Parameters:**
- `error` (required): `BaseError` object containing error details
- `callback` (optional): Retry or action callback

**Features:**
- Red background with error icon
- Displays error message from `BaseError`
- Optional retry action
- Prevents spam (won't show if another is active)

**Example:**
```dart
// Simple error display
repository.getData().then((result) {
  result.whenOrNull(
    isError: (error) {
      AppSnackBar.showErrorSnackBar(error: error);
    },
  );
});

// With retry callback
AppSnackBar.showErrorSnackBar(
  error: error,
  callback: () => retryOperation(),
);
```

---

#### **3. showUnknownErrorSnackBar()**

Shows a generic unknown error message.

**Signature:**
```dart
static void showUnknownErrorSnackBar({VoidCallback? callback})
```

**Example:**
```dart
try {
  await riskyOperation();
} catch (e) {
  AppSnackBar.showUnknownErrorSnackBar(
    callback: () => retryOperation(),
  );
}
```

---

#### **4. showWarningSnackBar()**

Shows a yellow/orange warning message.

**Signature:**
```dart
static void showWarningSnackBar({
  required String message,
  Color? color,
})
```

**Parameters:**
- `message` (required): Warning message text
- `color` (optional): Custom background color (defaults to yellow)

**Example:**
```dart
AppSnackBar.showWarningSnackBar(
  message: 'Session will expire in 5 minutes',
);

// With custom color
AppSnackBar.showWarningSnackBar(
  message: 'Low balance',
  color: Colors.orange,
);
```

---

#### **5. showSimpleToast()**

Shows a simple toast message (using Fluttertoast).

**Signature:**
```dart
static void showSimpleToast({
  required String msg,
  Color? color,
  Color? textColor,
  ToastGravity? gravity,
  ToastType type = ToastType.error,
})
```

**Parameters:**
- `msg` (required): Toast message
- `color` (optional): Background color
- `textColor` (optional): Text color (defaults to white)
- `gravity` (optional): Toast position (defaults to top)
- `type` (optional): `ToastType.success`, `ToastType.error`, or `ToastType.info`

**Example:**
```dart
AppSnackBar.showSimpleToast(
  msg: 'Copied to clipboard',
  type: ToastType.success,
  gravity: ToastGravity.BOTTOM,
);
```

---

#### **6. showUndoSnackBar()**

Shows a snack bar with undo functionality for reversible actions.

**Signature:**
```dart
static void showUndoSnackBar({
  required Widget message,
  required VoidCallback onUndo,
  required VoidCallback onComplete,
  Duration duration = const Duration(seconds: 5),
})
```

**Parameters:**
- `message` (required): Widget to display as message
- `onUndo` (required): Called when user taps "Undo"
- `onComplete` (required): Called when duration expires without undo
- `duration` (optional): How long to show (defaults to 5 seconds)

**Features:**
- White card with shadow
- Animated entry (slide + scale)
- Executes action after timeout
- Auto-completes previous undo when new one appears

**Example:**
```dart
// Delete item with undo
void deleteItem(Item item) {
  // Temporarily mark as deleted
  tempDeletedItems.add(item);
  
  AppSnackBar.showUndoSnackBar(
    message: Text(
      'Item "${item.name}" deleted',
      style: AppTextStyle.s14_w400(color: context.colors.black),
    ),
    onUndo: () {
      // Restore the item
      tempDeletedItems.remove(item);
    },
    onComplete: () {
      // Permanently delete
      repository.deleteItem(item.id);
      tempDeletedItems.remove(item);
    },
    duration: const Duration(seconds: 5),
  );
}
```

---

#### **7. showCampaignSuccessSnackBar()**

Shows a success snack bar with a custom action button.

**Signature:**
```dart
static void showCampaignSuccessSnackBar({
  required Widget message,
  required String actionText,
  required VoidCallback onAction,
  Duration duration = const Duration(seconds: 5),
})
```

**Parameters:**
- `message` (required): Widget to display
- `actionText` (required): Text for action button
- `onAction` (required): Callback for action
- `duration` (optional): Display duration

**Example:**
```dart
AppSnackBar.showCampaignSuccessSnackBar(
  message: Text(
    'Campaign published successfully!',
    style: AppTextStyle.s14_w400(color: context.colors.black),
  ),
  actionText: 'View',
  onAction: () {
    context.router.push(CampaignDetailsRoute(id: campaignId));
  },
);
```

---

## 🎯 **Common Patterns**

### **Pattern 1: API Request with Loading & Error Handling**

```dart
void fetchData() {
  getIt<LoadingHelper>().showLoadingDialog();

  repository.getData().then((result) {
    getIt<LoadingHelper>().dismissDialog();
    
    result.whenOrNull(
      isSuccess: (data) {
        // Update UI
        dataBloc.successState(data);
        AppSnackBar.showSuccessSnackBar('Data loaded');
      },
      isError: (error) {
        dataBloc.failedState(error, () => fetchData());
        AppSnackBar.showErrorSnackBar(
          error: error,
          callback: () => fetchData(),  // Retry
        );
      },
    );
  });
}
```

---

### **Pattern 2: Form Submission**

```dart
void submitForm() {
  if (formKey.currentState?.validate() ?? false) {
    getIt<LoadingHelper>().showLoadingDialog();
    
    repository.submit(data).then((result) {
      getIt<LoadingHelper>().dismissDialog();
      
      result.whenOrNull(
        isSuccess: (_) {
          AppSnackBar.showSuccessSnackBar('Submitted successfully');
          context.router.pop();
        },
        isError: (error) {
          AppSnackBar.showErrorSnackBar(error: error);
        },
      );
    });
  }
}
```

---

### **Pattern 3: Delete with Undo**

```dart
void deleteItem(Item item) {
  // Optimistic delete
  items.remove(item);
  setState(() {});
  
  AppSnackBar.showUndoSnackBar(
    message: Text(
      'Deleted "${item.name}"',
      style: AppTextStyle.s14_w400(color: context.colors.black),
    ),
    onUndo: () {
      // Restore
      items.add(item);
      setState(() {});
    },
    onComplete: () {
      // Actually delete
      repository.deleteItem(item.id);
    },
  );
}
```

---

### **Pattern 4: File Upload with Progress**

```dart
void uploadFile(File file) {
  final progress = ObsValue<int>.withInit(0);
  getIt<LoadingHelper>().showLoadingDialog(loadingPercent: progress);
  
  repository.uploadFile(
    file,
    onProgress: (percent) {
      progress.setValue(percent);
    },
  ).then((result) {
    getIt<LoadingHelper>().dismissDialog();
    
    result.whenOrNull(
      isSuccess: (_) {
        AppSnackBar.showSuccessSnackBar('Upload complete');
      },
      isError: (error) {
        AppSnackBar.showErrorSnackBar(error: error);
      },
    );
  });
}
```

---

## ✅ **Best Practices**

### **DO's**

✅ **Always dismiss loading dialogs**
```dart
getIt<LoadingHelper>().showLoadingDialog();
try {
  await operation();
} finally {
  getIt<LoadingHelper>().dismissDialog();  // Always dismiss
}
```

✅ **Use AppSnackBar instead of ScaffoldMessenger**
```dart
// ✅ Correct
AppSnackBar.showSuccessSnackBar('Done');

// ❌ Wrong (per architecture rules)
ScaffoldMessenger.of(context).showSnackBar(...);
```

✅ **Provide retry callbacks for errors**
```dart
AppSnackBar.showErrorSnackBar(
  error: error,
  callback: () => retryOperation(),  // Allow retry
);
```

✅ **Use appropriate snack bar types**
```dart
// Success for completed actions
AppSnackBar.showSuccessSnackBar('Profile saved');

// Error for failures
AppSnackBar.showErrorSnackBar(error: error);

// Warning for cautions
AppSnackBar.showWarningSnackBar(message: 'Low storage');
```

---

### **DON'Ts**

❌ **Don't forget to dismiss loading**
```dart
// ❌ Bad - loading never dismissed on error
getIt<LoadingHelper>().showLoadingDialog();
await operation();
getIt<LoadingHelper>().dismissDialog();
```

❌ **Don't show multiple loadings simultaneously**
```dart
// ❌ Bad - creates multiple loading dialogs
getIt<LoadingHelper>().showLoadingDialog();
getIt<LoadingHelper>().showLoadingDialog();  // Second one ignored
```

❌ **Don't use hardcoded error messages**
```dart
// ❌ Bad
AppSnackBar.showErrorSnackBar(
  error: CustomError('Something went wrong'),  // Don't create custom errors
);

// ✅ Good - use error from result
result.whenOrNull(
  isError: (error) => AppSnackBar.showErrorSnackBar(error: error),
);
```

❌ **Don't show snack bars in loops**
```dart
// ❌ Bad
for (var item in items) {
  if (item.isInvalid) {
    AppSnackBar.showErrorSnackBar(error: error);  // Spam!
  }
}

// ✅ Good
final invalidCount = items.where((i) => i.isInvalid).length;
if (invalidCount > 0) {
  AppSnackBar.showWarningSnackBar(
    message: '$invalidCount invalid items found',
  );
}
```

---

## 📝 **Complete Examples**

### **Example 1: Login Flow**

```dart
class LoginController {
  void login(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      // Show loading
      getIt<LoadingHelper>().showLoadingDialog();

      final params = LoginParams(
        phoneNumber: phoneController.text,
        countryCode: countryCode.getValue(),
      );

      repository.loginWithPhone(params).then((result) {
        // Always dismiss loading
        getIt<LoadingHelper>().dismissDialog();
        
        result.whenOrNull(
          isSuccess: (data) {
            AppSnackBar.showSuccessSnackBar('Login successful');
            context.router.replace(const HomeRoute());
          },
          isError: (error) {
            AppSnackBar.showErrorSnackBar(
              error: error,
              callback: () => login(context),  // Retry
            );
          },
        );
      });
    }
  }
}
```

---

### **Example 2: Remove from Favorites with Undo**

```dart
class FavoritesController {
  void removeFromFavorites(Influencer influencer) {
    // Optimistic removal
    favoritesList.remove(influencer);
    favoritesBloc.successState(favoritesList);
    
    AppSnackBar.showUndoSnackBar(
      message: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(influencer.avatar),
            radius: 16,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Removed ${influencer.name} from favorites',
              style: AppTextStyle.s14_w400(
                color: context.colors.black,
              ),
            ),
          ),
        ],
      ),
      onUndo: () {
        // Restore to list
        favoritesList.add(influencer);
        favoritesBloc.successState(favoritesList);
      },
      onComplete: () {
        // Permanently remove from backend
        repository.removeFromFavorites(influencer.id).then((result) {
          result.whenOrNull(
            isError: (error) {
              // Failed to remove - restore
              favoritesList.add(influencer);
              favoritesBloc.successState(favoritesList);
              AppSnackBar.showErrorSnackBar(error: error);
            },
          );
        });
      },
    );
  }
}
```

---

### **Example 3: Campaign Creation with Success Action**

```dart
class CreateCampaignController {
  void createCampaign() {
    getIt<LoadingHelper>().showLoadingDialog();
    
    repository.createCampaign(campaignData).then((result) {
      getIt<LoadingHelper>().dismissDialog();
      
      result.whenOrNull(
        isSuccess: (campaign) {
          AppSnackBar.showCampaignSuccessSnackBar(
            message: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Campaign Created!',
                  style: AppTextStyle.s16_w600(
                    color: context.colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  campaign.name,
                  style: AppTextStyle.s14_w400(
                    color: context.colors.grey,
                  ),
                ),
              ],
            ),
            actionText: 'View',
            onAction: () {
              context.router.push(
                CampaignDetailsRoute(id: campaign.id),
              );
            },
          );
          
          // Go back to campaigns list
          context.router.pop();
        },
        isError: (error) {
          AppSnackBar.showErrorSnackBar(
            error: error,
            callback: () => createCampaign(),
          );
        },
      );
    });
  }
}
```

---

### **Example 4: Batch Operation with Progress**

```dart
class BatchUploadController {
  Future<void> uploadMultipleFiles(List<File> files) async {
    final progress = ObsValue<int>.withInit(0);
    getIt<LoadingHelper>().showLoadingDialog(loadingPercent: progress);
    
    try {
      for (int i = 0; i < files.length; i++) {
        await repository.uploadFile(files[i]);
        progress.setValue(((i + 1) / files.length * 100).toInt());
      }
      
      getIt<LoadingHelper>().dismissDialog();
      AppSnackBar.showSuccessSnackBar(
        '${files.length} files uploaded successfully',
      );
    } catch (e) {
      getIt<LoadingHelper>().dismissDialog();
      AppSnackBar.showUnknownErrorSnackBar();
    }
  }
}
```

---

## 🎨 **Visual Reference**

### **Success SnackBar**
- **Color**: Green (`AppColors.snackBarGreenSuccess`)
- **Icon**: Success checkmark
- **Position**: Top/Center
- **Layout**: Intrinsic width (centered)

### **Error SnackBar**
- **Color**: Red (`AppColors.snackBarRedError`)
- **Icon**: Error icon
- **Position**: Top/Full width
- **Action**: Optional retry button

### **Warning SnackBar**
- **Color**: Yellow (`AppColors.snackBarYellowAlert`)
- **Icon**: Warning icon
- **Position**: Top/Full width

### **Undo SnackBar**
- **Color**: White with shadow
- **Position**: Bottom (50px from bottom)
- **Animation**: Slide up + scale with elastic curve
- **Layout**: Full width with undo button

### **Campaign Success SnackBar**
- **Color**: White with shadow
- **Position**: Bottom (60px from bottom)
- **Animation**: Slide up + scale
- **Layout**: Full width with custom action

---

## 🔍 **Troubleshooting**

### **Issue: Loading doesn't show**

**Cause**: Another loading is already showing
**Solution**: LoadingHelper prevents multiple simultaneous loadings

```dart
// Check if showing
if (getIt<LoadingHelper>().isShowObs.getValue()) {
  // Already showing
}
```

---

### **Issue: SnackBar doesn't appear**

**Cause**: Another snackbar is active
**Solution**: Wait for previous to dismiss, or use `forceShow` parameter (internal)

---

### **Issue: Loading never dismisses**

**Cause**: Forgot to call `dismissDialog()`, or exception before dismiss
**Solution**: Always use try-finally

```dart
getIt<LoadingHelper>().showLoadingDialog();
try {
  await operation();
} finally {
  getIt<LoadingHelper>().dismissDialog();
}
```

---

## 📚 **Quick Reference**

| Use Case | Method | Key Parameters |
|----------|--------|----------------|
| Show loading | `getIt<LoadingHelper>().showLoadingDialog()` | `dismissOnTap`, `loadingPercent` |
| Hide loading | `getIt<LoadingHelper>().dismissDialog()` | - |
| Success message | `AppSnackBar.showSuccessSnackBar(message)` | `message`, `callback` |
| Error message | `AppSnackBar.showErrorSnackBar(error: error)` | `error`, `callback` |
| Warning | `AppSnackBar.showWarningSnackBar(message: msg)` | `message`, `color` |
| Toast | `AppSnackBar.showSimpleToast(msg: msg)` | `msg`, `type`, `gravity` |
| Undo action | `AppSnackBar.showUndoSnackBar(...)` | `message`, `onUndo`, `onComplete` |
| Success with action | `AppSnackBar.showCampaignSuccessSnackBar(...)` | `message`, `actionText`, `onAction` |

---

## 🎯 **Key Takeaways**

1. ✅ **LoadingHelper**: Access via `getIt<LoadingHelper>()`
2. ✅ **Always dismiss loading**: Use try-finally pattern
3. ✅ **AppSnackBar**: Use static methods directly
4. ✅ **showSuccessSnackBar**: Takes `String message` (not named parameter)
5. ✅ **showErrorSnackBar**: Requires `BaseError error` (not String)
6. ✅ **Undo operations**: Use `showUndoSnackBar` for reversible actions
7. ✅ **No ScaffoldMessenger**: Always use `AppSnackBar` functions
8. ✅ **Provide retry callbacks**: Help users recover from errors

---

**Last Updated:** October 2025  
**Version:** 1.0  
**Maintained by:** Flutter Development Team

