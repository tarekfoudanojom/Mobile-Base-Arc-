# 🧩 Core Widgets Reference Guide

This comprehensive guide documents all reusable widgets in `/lib/core/widgets/`, explaining their purpose, usage, parameters, and providing practical examples.

---

## 📋 **Table of Contents**

1. [Input & Form Widgets](#input--form-widgets)
2. [Buttons](#buttons)
3. [App Bars & Navigation](#app-bars--navigation)
4. [Images & Media](#images--media)
5. [Bottom Sheets](#bottom-sheets)
6. [Loading & Shimmer Effects](#loading--shimmer-effects)
7. [Lists & Refresh](#lists--refresh)
8. [Date & Time Pickers](#date--time-pickers)
9. [Formatters & Validators](#formatters--validators)
10. [Utility Widgets](#utility-widgets)
11. [Chat Widgets](#chat-widgets)
12. [Animation Widgets](#animation-widgets)

---

## 📝 **Input & Form Widgets**

### **1. GenericTextField**

**Purpose:** The primary input field widget used throughout the app. Replaces standard TextField/TextFormField.

**Location:** `lib/core/widgets/GenericTextField.dart`

**Features:**
- Multiple field types (normal, clickable, readonly, password, rich, disable)
- Built-in validation
- Customizable styling
- Support for prefix/suffix icons and widgets
- Auto-focus capabilities
- Input formatters support

**Usage:**

```dart
GenericTextField(
  controller: emailController,
  fieldTypes: FieldTypes.normal,
  type: TextInputType.emailAddress,
  action: TextInputAction.next,
  fillColor: context.colors.white,
  label: Translate.s.email,
  hint: 'example@email.com',
  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  validate: (value) => value?.isValidEmail() ?? false ? null : 'Invalid email',
  prefixIcon: Icon(Icons.email_outlined, color: context.colors.grey),
)
```

**Field Types:**

```dart
enum FieldTypes {
  normal,      // Standard text input
  clickable,   // Opens action on tap (e.g., date picker)
  readonly,    // Read-only display
  chat,        // Chat message input
  password,    // Password field with toggle visibility
  rich,        // Rich text input
  disable      // Disabled state
}
```

**Common Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `controller` | `TextEditingController?` | Text controller |
| `fieldTypes` | `FieldTypes` | Type of field |
| `type` | `TextInputType` | Keyboard type |
| `action` | `TextInputAction` | Keyboard action button |
| `validate` | `Function(String?)` | Validation function |
| `label` | `String?` | Field label |
| `hint` | `String?` | Placeholder text |
| `fillColor` | `Color?` | Background color |
| `prefixIcon` | `Widget?` | Leading icon |
| `suffixIcon` | `Widget?` | Trailing icon |
| `maxLines` | `int?` | Maximum lines |
| `maxLength` | `int?` | Character limit |
| `readOnly` | `bool?` | Read-only state |
| `autoFocus` | `bool` | Auto-focus on load |

**Examples:**

```dart
// Email field
GenericTextField(
  controller: controller,
  fieldTypes: FieldTypes.normal,
  type: TextInputType.emailAddress,
  action: TextInputAction.next,
  label: 'Email',
  validate: (value) => value?.noValidate(),
)

// Password field
GenericTextField(
  controller: controller,
  fieldTypes: FieldTypes.password,
  type: TextInputType.visiblePassword,
  action: TextInputAction.done,
  label: 'Password',
  validate: (value) => value?.isEmpty == true ? 'Required' : null,
)

// Phone field with formatter
GenericTextField(
  controller: controller,
  fieldTypes: FieldTypes.normal,
  type: TextInputType.phone,
  action: TextInputAction.next,
  label: 'Phone Number',
  inputFormatters: [PhoneNumberInputFormatter()],
  validate: (value) => value?.noValidate(),
)

// Clickable field (e.g., date picker)
GenericTextField(
  controller: dateController,
  fieldTypes: FieldTypes.clickable,
  type: TextInputType.none,
  action: TextInputAction.done,
  label: 'Birth Date',
  readOnly: true,
  onTap: () => _showDatePicker(context),
  suffixIcon: Icon(Icons.calendar_today),
)

// Multi-line text area
GenericTextField(
  controller: controller,
  fieldTypes: FieldTypes.normal,
  type: TextInputType.multiline,
  action: TextInputAction.newline,
  label: 'Description',
  maxLines: 5,
  validate: (value) => value?.noValidate(),
)
```

**⚠️ Important:**
- ✅ **ALWAYS use GenericTextField** instead of TextField or TextFormField
- ✅ Provide proper `validate` function
- ✅ Set appropriate `fieldTypes`
- ✅ Use `context.colors` for colors

---

### **2. PayTextField**

**Purpose:** Specialized text field for payment/monetary input

**Location:** `lib/core/widgets/pay_text_field.dart`

**Usage:**
```dart
PayTextField(
  controller: amountController,
  label: 'Amount',
  currency: 'SAR',
)
```

---

### **3. NumericFieldWithDone**

**Purpose:** Numeric input field with custom "Done" toolbar

**Location:** `lib/core/widgets/numeric_field_with_done.dart`

**Usage:**
```dart
NumericFieldWithDone(
  controller: controller,
  label: 'Enter Amount',
)
```

---

### **4. SearchFormField**

**Purpose:** Search input with debouncing and clear button

**Location:** `lib/core/widgets/search_form_field/search_form_field.dart`

**Usage:**
```dart
SearchFormField(
  onChanged: (value) => searchController.search(value),
  hintText: 'Search...',
)
```

---

## 🔘 **Buttons**

### **1. AppTextButton**

**Purpose:** Primary button widget with multiple variants

**Location:** `lib/core/widgets/app_button.dart`

**Variants:**

```dart
// Minimum size primary button
AppTextButton.minPrimary(
  text: 'Continue',
  onPressed: () {},
  bgColor: context.colors.primary,
)

// Maximum size primary button
AppTextButton.maxPrimary(
  text: 'Submit',
  onPressed: () {},
)

// White button
AppTextButton.maxWhite(
  text: 'Cancel',
  onPressed: () {},
)

// Custom color button
AppTextButton.maxCustom(
  text: 'Custom',
  onPressed: () {},
  bgColor: context.colors.green,
  txtColor: context.colors.white,
)

// With icon
AppTextButton.maxPrimary(
  text: 'Add Item',
  icon: Icon(Icons.add),
  onPressed: () {},
)

// With shadow
AppTextButton.maxPrimary(
  text: 'Elevated',
  showShadow: true,
  onPressed: () {},
)
```

**Features:**
- Multiple size variants (min/max)
- Color variants (primary/white/custom)
- Icon support
- Shadow effect
- Loading state
- Disabled state

---

### **2. LoadingButton**

**Purpose:** Button with built-in loading animation

**Location:** `lib/core/widgets/LoadingButton.dart`

**Usage:**

```dart
final GlobalKey<CustomButtonState> btnKey = GlobalKey();

LoadingButton(
  btnKey: btnKey,
  title: 'Submit',
  onTap: () async {
    btnKey.currentState?.animateForward();
    await performAction();
    btnKey.currentState?.animateReverse();
  },
  color: context.colors.primary,
  textColor: context.colors.white,
)
```

**Features:**
- Automatic loading animation
- Customizable colors
- Height/width control
- Border radius

---

### **3. CustomLoadingButtonWidget**

**Purpose:** Cupertino-style loading button

**Location:** `lib/core/widgets/Cupertino/custom_loading_button_widget.dart`

---

### **4. AskLoginButtonWidget**

**Purpose:** Button that prompts login if user is not authenticated

**Location:** `lib/core/widgets/ask_login_button_widget.dart`

**Usage:**
```dart
AskLoginButtonWidget(
  onPressed: () {
    // Action after login
  },
  child: Text('Favorite'),
)
```

---

## 🎯 **App Bars & Navigation**

### **1. DefaultAppBar**

**Purpose:** Standard app bar used throughout the app

**Location:** `lib/core/widgets/default_app_bar.dart`

**Usage:**

```dart
DefaultAppBar(
  title: 'Page Title',
  showBack: true,
  centerTitle: true,
  bgColor: context.colors.background1,
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
  ],
)

// Custom back button
DefaultAppBar(
  title: 'Custom',
  leading: IconButton(
    icon: Icon(Icons.close),
    onPressed: () => Navigator.pop(context),
  ),
)

// With custom styling
DefaultAppBar(
  title: 'Styled Title',
  txtStyle: AppTextStyle.s20_w600(color: context.colors.primary),
  onBack: () {
    // Custom back action
    Navigator.pop(context);
  },
)
```

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `title` | `String` | App bar title |
| `showBack` | `bool` | Show back button (default: true) |
| `centerTitle` | `bool?` | Center the title |
| `bgColor` | `Color?` | Background color |
| `txtStyle` | `TextStyle?` | Title text style |
| `actions` | `List<Widget>` | Action buttons |
| `leading` | `Widget?` | Custom leading widget |
| `onBack` | `VoidCallback?` | Custom back action |
| `bottom` | `PreferredSizeWidget?` | Bottom widget (e.g., TabBar) |

---

### **2. CupertinoAppBar**

**Purpose:** iOS-style app bar

**Location:** `lib/core/widgets/Cupertino/cupertino_app_bar.dart`

---

### **3. StatusAppBarWidget**

**Purpose:** App bar with status indicator

**Location:** `lib/core/widgets/status_app_bar_widget.dart`

---

## 🖼️ **Images & Media**

### **1. CachedImage**

**Purpose:** Network image with caching, loading, and error states

**Location:** `lib/core/widgets/CachedImage.dart`

**Usage:**

```dart
// Simple usage
CachedImage(
  url: 'https://example.com/image.jpg',
  width: 100,
  height: 100,
)

// With border radius
CachedImage(
  url: imageUrl,
  width: 80,
  height: 80,
  borderRadius: BorderRadius.circular(12),
  fit: BoxFit.cover,
)

// Circle avatar
CachedImage(
  url: profileImageUrl,
  width: 50,
  height: 50,
  boxShape: BoxShape.circle,
  borderColor: context.colors.primary,
  borderWidth: 2,
)

// With custom placeholder
CachedImage(
  url: imageUrl,
  width: 200,
  height: 200,
  placeHolder: Center(
    child: Icon(Icons.image, size: 50),
  ),
)

// With custom loading widget
CachedImage(
  url: imageUrl,
  width: 150,
  height: 150,
  loadingWidget: CircularProgressIndicator(),
)
```

**Features:**
- Automatic image caching
- Loading indicator
- Error placeholder
- Border radius support
- Circle/rectangle shapes
- Custom placeholders
- Color filters

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `url` | `String` | Image URL |
| `width` | `double?` | Image width |
| `height` | `double?` | Image height |
| `fit` | `BoxFit?` | How image fits |
| `borderRadius` | `BorderRadius?` | Corner radius |
| `boxShape` | `BoxShape?` | Circle or rectangle |
| `borderColor` | `Color?` | Border color |
| `borderWidth` | `double?` | Border width |
| `loadingWidget` | `Widget?` | Custom loading |
| `placeHolder` | `Widget?` | Custom placeholder |

---

### **2. ImageWidget**

**Purpose:** General image display widget

**Location:** `lib/core/widgets/image_widget.dart`

---

### **3. SvgIconWrapper**

**Purpose:** SVG icon display

**Location:** `lib/core/widgets/svg_icon_wrapper.dart`

---

### **4. PdfViewWidget**

**Purpose:** PDF document viewer

**Location:** `lib/core/widgets/pdf_view_widget.dart`

---

## 📱 **Bottom Sheets**

### **1. AppBottomSheets**

**Purpose:** Centralized bottom sheet manager with multiple variants

**Location:** `lib/core/widgets/bottom_sheet_views/app_bottom_sheets.dart`

**Usage:**

```dart
// Scrollable bottom sheet
AppBottomSheets.showScrollableBody(
  context: context,
  builder: (context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Sheet Content'),
          // More widgets...
        ],
      ),
    );
  },
);

// Cupertino style sheet
AppBottomSheets.showCupertinoScrollableBody(
  context: context,
  builder: (context) => YourSheetWidget(),
);

// Fixed header with scrollable body
AppBottomSheets.showScrollableBodyFixedHeaderSheet(
  context: context,
  builder: (context) => YourSheetWidget(),
);

// With constraints
AppBottomSheets.showScrollableBody(
  context: context,
  constraints: BoxConstraints(
    maxHeight: MediaQuery.of(context).size.height * 0.8,
  ),
  builder: (context) => YourContent(),
);

// With drag handle
AppBottomSheets.showScrollableBody(
  context: context,
  showDragHandle: true,
  builder: (context) => YourContent(),
);
```

**Methods:**

| Method | Description |
|--------|-------------|
| `showScrollableBody` | Standard scrollable bottom sheet |
| `showScrollableBodyFixedHeaderSheet` | Fixed header, scrollable body |
| `showCupertinoScrollableBody` | iOS-style bottom sheet |
| `showOptionsBottomSheet` | Options selection sheet |
| `showSaveChangesBottomSheet` | Save changes confirmation |
| `showDeleteConfirmationSheet` | Delete confirmation dialog |

---

### **2. BottomSheetContent**

**Purpose:** Pre-built bottom sheet content wrapper

**Location:** `lib/core/widgets/bottom_sheet_content/bottom_sheet_content.dart`

---

### **3. BottomSheetButtonWidget**

**Purpose:** Action button for bottom sheets

**Location:** `lib/core/widgets/bottom_sheet_views/bottom_sheet_button_widget.dart`

---

### **4. BottomSheetHeaderLine**

**Purpose:** Drag handle indicator for bottom sheets

**Location:** `lib/core/widgets/bottom_sheet_views/bottom_sheet_header_line.dart`

---

## ⏳ **Loading & Shimmer Effects**

### **1. BaseShimmerWidget**

**Purpose:** Shimmer loading effect wrapper

**Location:** `lib/core/widgets/shimmers/base_shimmer_widget.dart`

**Usage:**

```dart
BaseShimmerWidget(
  child: Container(
    width: 100,
    height: 20,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
    ),
  ),
)
```

---

### **2. CircleShimmer**

**Purpose:** Circular shimmer placeholder

**Location:** `lib/core/widgets/shimmers/circle_shimmer.dart`

**Usage:**
```dart
CircleShimmer(
  size: 50,
)
```

---

### **3. TextShimmer**

**Purpose:** Text line shimmer placeholder

**Location:** `lib/core/widgets/shimmers/text_shimmer.dart**

**Usage:**
```dart
TextShimmer(
  width: 200,
  height: 16,
)
```

---

### **4. LoadingCoverWidget**

**Purpose:** Loading overlay for widgets

**Location:** `lib/core/widgets/loading_cover_widget.dart`

---

### **5. IosLoadingIndicatorWidget**

**Purpose:** iOS-style loading indicator

**Location:** `lib/core/widgets/ios_loading_indicator_widget.dart`

---

### **6. SliverLoadingIndicatorWidget**

**Purpose:** Loading indicator for slivers

**Location:** `lib/core/widgets/sliver_loading_indicator_widget.dart`

---

## 🔄 **Lists & Refresh**

### **1. CustomRefresher**

**Purpose:** Pull-to-refresh and load-more wrapper

**Location:** `lib/core/widgets/custom_refresher.dart`

**Usage:**

```dart
class MyController {
  final RefreshController refreshController = RefreshController();
  
  Future<void> onRefresh() async {
    // Refresh data
    await fetchData();
    refreshController.refreshCompleted();
  }
  
  Future<void> onLoadMore() async {
    // Load more data
    await fetchMoreData();
    refreshController.loadComplete();
  }
}

// In widget
CustomRefresher(
  controller: controller.refreshController,
  onRefresh: controller.onRefresh,
  onLoading: controller.onLoadMore,
  enablePullDown: true,
  enablePullUp: true,
  child: ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index) {
      return ItemWidget(item: items[index]);
    },
  ),
)
```

**Features:**
- Pull-to-refresh
- Load more (pagination)
- Cupertino-style indicators
- Customizable enable/disable

---

### **2. FadeAnimationListWidget**

**Purpose:** List with fade-in animation

**Location:** `lib/core/widgets/fade_animation_list_widget.dart`

---

### **3. FadeAnimationWidget**

**Purpose:** Single widget fade-in animation

**Location:** `lib/core/widgets/fade_animation_widget.dart`

---

## 📅 **Date & Time Pickers**

### **1. DateTimePickerWidget**

**Purpose:** Combined date and time picker

**Location:** `lib/core/widgets/datetime_widget/date_time_picker_widget.dart`

**Usage:**
```dart
DateTimePickerWidget(
  onDateTimeSelected: (DateTime dateTime) {
    // Handle selected date/time
  },
)
```

---

### **2. DateCalenderView**

**Purpose:** Date-only calendar picker

**Location:** `lib/core/widgets/datetime_widget/date_calender_view.dart`

---

### **3. TimePickerView**

**Purpose:** Time-only picker

**Location:** `lib/core/widgets/datetime_widget/time_picker_view.dart`

---

### **4. SingleTimePicker**

**Purpose:** Single time selection

**Location:** `lib/core/widgets/datetime_widget/single_time_picker.dart`

---

## 🔧 **Formatters & Validators**

### **1. PhoneNumberInputFormatter**

**Purpose:** Formats phone number input

**Location:** `lib/core/widgets/phone_number_input_formater.dart`

**Usage:**
```dart
GenericTextField(
  inputFormatters: [PhoneNumberInputFormatter()],
  type: TextInputType.phone,
)
```

---

### **2. ArabicToEnglishNumberFormatter**

**Purpose:** Converts Arabic numerals to English

**Location:** `lib/core/widgets/arabic_to_english_number_formatter.dart`

---

### **3. MonthInputFormatter**

**Purpose:** Formats month input (MM/YY)

**Location:** `lib/core/widgets/month_input_formatter.dart`

---

### **4. TrimAndSingleSpaceFormatter**

**Purpose:** Removes extra spaces

**Location:** `lib/core/widgets/trim_and_single_space_formatter.dart`

---

### **5. NoLeadingZeroFormatter**

**Purpose:** Prevents leading zeros

**Location:** `lib/core/widgets/no_leading_zero_formatter.dart`

---

## 🛠️ **Utility Widgets**

### **1. Debouncer**

**Purpose:** Debounces function calls (e.g., search)

**Location:** `lib/core/widgets/debouncer.dart`

**Usage:**

```dart
final debouncer = Debouncer(milliseconds: 500);

void onSearchChanged(String query) {
  debouncer.run(() {
    // This runs after 500ms of no input
    performSearch(query);
  });
}
```

---

### **2. LocalizedWidget**

**Purpose:** Displays localized content based on language

**Location:** `lib/core/widgets/localized_widget.dart`

---

### **3. LocalizedTextWidget**

**Purpose:** Displays localized text

**Location:** `lib/core/widgets/localized_text_widget.dart`

---

### **4. NetworkLayerWidget**

**Purpose:** Handles no internet connection state

**Location:** `lib/core/widgets/network_layer/network_layer_widget.dart`

---

### **5. DisableWidget**

**Purpose:** Disables user interaction on widget

**Location:** `lib/core/widgets/disable_widget.dart`

**Usage:**
```dart
DisableWidget(
  isDisabled: isProcessing,
  child: YourContent(),
)
```

---

### **6. CustomScaffoldWithDisableWidget**

**Purpose:** Scaffold with disable overlay capability

**Location:** `lib/core/widgets/custom_scaffold_with_disable_widget.dart`

---

### **7. AnimationContainer**

**Purpose:** Container with animation effects

**Location:** `lib/core/widgets/animation_container.dart`

---

### **8. InsiderFrameWidget**

**Purpose:** Frame widget for insider content

**Location:** `lib/core/widgets/insider_frame_widget.dart`

---

### **9. GridFixedHeightDelegate**

**Purpose:** Grid delegate with fixed item height

**Location:** `lib/core/widgets/GridFixedHeightDelegate.dart`

**Usage:**
```dart
GridView.builder(
  gridDelegate: GridFixedHeightDelegate(
    crossAxisCount: 2,
    height: 200,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemBuilder: (context, index) => ItemWidget(),
)
```

---

### **10. AppTextSpanWithSeparator**

**Purpose:** Text with separator character

**Location:** `lib/core/widgets/app_text_span_with_seperator.dart`

---

### **11. SelectedItemIndicatorWidget**

**Purpose:** Indicator for selected items

**Location:** `lib/core/widgets/selected_item_indicator_widget.dart`

---

### **12. TabBarItemWidget**

**Purpose:** Custom tab bar item

**Location:** `lib/core/widgets/tab_bar_item_widget.dart`

---

### **13. TypeItemWidget**

**Purpose:** Type/category item display

**Location:** `lib/core/widgets/type_item_widget.dart`

---

### **14. ClearTextIconWidget**

**Purpose:** Clear button for text fields

**Location:** `lib/core/widgets/clear_text_icon_widget.dart`

---

### **15. FileTypeIconWithExtension**

**Purpose:** Displays file type icon based on extension

**Location:** `lib/core/widgets/file_type_icon_with_extension.dart`

---

### **16. UserNameLinkWidget**

**Purpose:** Clickable username link

**Location:** `lib/core/widgets/user_name_link_widget.dart`

---

## 💬 **Chat Widgets**

### **1. MessageInput**

**Purpose:** Chat message input

**Location:** `lib/core/widgets/chat/message_input.dart`

---

### **2. CustomAudioRecorderButton**

**Purpose:** Audio recording button for chat

**Location:** `lib/core/widgets/chat/custom_audio_recorder_button.dart`

---

### **3. CustomAudioRecorderController**

**Purpose:** Audio recorder controller

**Location:** `lib/core/widgets/chat/custom_audio_recorder_controller.dart`

---

### **4. WhatsappStyleVoiceRecorder**

**Purpose:** WhatsApp-style voice recording

**Location:** `lib/core/widgets/chat/whatsapp_style_voice_recorder.dart`

---

### **5. WhatsappReactionIcons**

**Purpose:** Reaction icons for messages

**Location:** `lib/core/widgets/chat/whatsapp_reaction_icons.dart`

---

### **6. WhatsappLayout**

**Purpose:** WhatsApp-style layout

**Location:** `lib/core/widgets/Whatsapp_layout.dart`

---

## 📋 **Form Option Widgets**

### **1. BaseFormOption**

**Purpose:** Base widget for form option selection

**Location:** `lib/core/widgets/base_form_option/base_form_option.dart`

**Features:**
- Single/multiple selection
- Search functionality
- Custom option rendering
- Bottom sheet integration

---

## 🎨 **Specialized Widgets**

### **1. ChooseImageType**

**Purpose:** Dialog to choose image source (camera/gallery)

**Location:** `lib/core/widgets/choose_image_type.dart`

---

### **2. ContactPickerDialog**

**Purpose:** Pick contact from phone

**Location:** `lib/core/widgets/contact_picker_dialog.dart`

---

### **3. CallingCodesBottomSheetWidget**

**Purpose:** Country calling code selector

**Location:** `lib/core/widgets/calling_codes_bottom_sheet_widget.dart`

---

### **4. FileMessageSheetWidget**

**Purpose:** File attachment options

**Location:** `lib/core/widgets/file_message_sheet_widget.dart`

---

### **5. StatusBottomSheet**

**Purpose:** Status selection bottom sheet

**Location:** `lib/core/widgets/status_bottom_sheet.dart`

---

### **6. StatusBottomSheetItem**

**Purpose:** Item in status bottom sheet

**Location:** `lib/core/widgets/status_bottom_sheet_item.dart`

---

### **7. SurveyQuestionItemWidget**

**Purpose:** Survey question display

**Location:** `lib/core/widgets/survey_question_item_widget.dart`

---

### **8. NotVerificationView**

**Purpose:** Not verified account view

**Location:** `lib/core/widgets/not_verification_view.dart`

---

### **9. VerificationAccountStatusView**

**Purpose:** Account verification status display

**Location:** `lib/core/widgets/verification_account_status_view.dart`

---

### **10. MoneyHashHelper**

**Purpose:** Payment integration helper

**Location:** `lib/core/widgets/money_hash_helper.dart`

---

### **11. StarItemLoadingCoverWidget**

**Purpose:** Loading overlay for star items

**Location:** `lib/core/widgets/star_item_loading_cover_widget.dart`

---

## 📖 **Usage Examples**

### **Example 1: Complete Form**

```dart
class UserForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Name field
          GenericTextField(
            controller: nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.name,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            label: Translate.s.full_name,
            validate: (value) => value?.isEmpty == true ? 'Required' : null,
          ),
          
          // Email field
          GenericTextField(
            controller: emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            label: Translate.s.email,
            validate: (value) => value?.isValidEmail() ?? false ? null : 'Invalid email',
            prefixIcon: Icon(Icons.email_outlined),
          ),
          
          // Phone field
          GenericTextField(
            controller: phoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.phone,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            label: Translate.s.phone,
            inputFormatters: [PhoneNumberInputFormatter()],
            validate: (value) => value?.noValidate(),
          ),
          
          // Date picker field
          GenericTextField(
            controller: dateController,
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.none,
            action: TextInputAction.done,
            fillColor: context.colors.white,
            label: Translate.s.birth_date,
            readOnly: true,
            onTap: () => _showDatePicker(context),
            suffixIcon: Icon(Icons.calendar_today),
          ),
          
          SizedBox(height: 24),
          
          // Submit button
          AppTextButton.maxPrimary(
            text: Translate.s.submit,
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                // Submit form
              }
            },
          ),
        ],
      ),
    );
  }
}
```

---

### **Example 2: List with Refresh**

```dart
class ItemListPage extends StatefulWidget {
  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage> {
  late ItemListController controller;

  @override
  void initState() {
    super.initState();
    controller = ItemListController();
    controller.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Items',
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => controller.navigateToAddItem(context),
          ),
        ],
      ),
      body: BaseBlocBuilder(
        bloc: controller.itemsBloc,
        onLoading: (context) => _buildLoadingView(),
        onSuccess: (context, changed, items) => CustomRefresher(
          controller: controller.refreshController,
          onRefresh: controller.onRefresh,
          onLoading: controller.onLoadMore,
          child: ListView.builder(
            itemCount: items?.length ?? 0,
            itemBuilder: (context, index) {
              return ItemCard(item: items![index]);
            },
          ),
        ),
        onFailed: (context, error, retry) => ErrorView(
          error: error,
          onRetry: retry,
        ),
      ),
    );
  }

  Widget _buildLoadingView() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => BaseShimmerWidget(
        child: Container(
          margin: EdgeInsets.all(16),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
```

---

### **Example 3: Bottom Sheet Selection**

```dart
void showStatusSelection(BuildContext context) {
  AppBottomSheets.showScrollableBody(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select Status',
              style: AppTextStyle.s18_w600(color: context.colors.textColor),
            ),
            SizedBox(height: 16),
            
            _statusOption(
              context,
              title: 'Active',
              icon: Icons.check_circle,
              color: context.colors.primaryGreen,
              onTap: () {
                Navigator.pop(context, 'active');
              },
            ),
            
            _statusOption(
              context,
              title: 'Pending',
              icon: Icons.pending,
              color: context.colors.warningYellow,
              onTap: () {
                Navigator.pop(context, 'pending');
              },
            ),
            
            _statusOption(
              context,
              title: 'Inactive',
              icon: Icons.cancel,
              color: context.colors.alertRed,
              onTap: () {
                Navigator.pop(context, 'inactive');
              },
            ),
          ],
        ),
      );
    },
  );
}

Widget _statusOption(
  BuildContext context, {
  required String title,
  required IconData icon,
  required Color color,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: color),
          SizedBox(width: 12),
          Text(
            title,
            style: AppTextStyle.s16_w400(color: context.colors.textColor),
          ),
        ],
      ),
    ),
  );
}
```

---

### **Example 4: Image Gallery**

```dart
class ImageGallery extends StatelessWidget {
  final List<String> imageUrls;

  const ImageGallery({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: GridFixedHeightDelegate(
        crossAxisCount: 3,
        height: 100,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return CachedImage(
          url: imageUrls[index],
          borderRadius: BorderRadius.circular(8),
          fit: BoxFit.cover,
        );
      },
    );
  }
}
```

---

## ✅ **Best Practices**

### **1. Always Use Core Widgets**

```dart
// ✅ CORRECT
GenericTextField(...)
AppTextButton.maxPrimary(...)
DefaultAppBar(...)
CachedImage(...)

// ❌ WRONG
TextField(...)
ElevatedButton(...)
AppBar(...)
Image.network(...)
```

---

### **2. Proper State Management**

```dart
// ✅ CORRECT: Dispose controllers
@override
void dispose() {
  refreshController.dispose();
  scrollController.dispose();
  super.dispose();
}

// ✅ CORRECT: Initialize in initState
@override
void initState() {
  super.initState();
  controller = MyController();
  controller.initPage();
}
```

---

### **3. Use Appropriate Widgets**

```dart
// ✅ For loading states
BaseShimmerWidget(child: placeholder)

// ✅ For pull-to-refresh
CustomRefresher(controller: controller, ...)

// ✅ For network images
CachedImage(url: imageUrl)

// ✅ For bottom sheets
AppBottomSheets.showScrollableBody(...)

// ✅ For forms
GenericTextField(fieldTypes: FieldTypes.normal, ...)
```

---

### **4. Theme-Aware Styling**

```dart
// ✅ CORRECT
GenericTextField(
  fillColor: context.colors.white,
  textColor: context.colors.textColor,
)

AppTextButton.maxPrimary(
  text: 'Submit',
  bgColor: context.colors.primary,
)

// ❌ WRONG
GenericTextField(
  fillColor: Colors.white,
  textColor: Colors.black,
)
```

---

## 🎯 **Quick Reference**

| Need | Widget | Location |
|------|--------|----------|
| Text input | `GenericTextField` | `GenericTextField.dart` |
| Button | `AppTextButton` | `app_button.dart` |
| Loading button | `LoadingButton` | `LoadingButton.dart` |
| App bar | `DefaultAppBar` | `default_app_bar.dart` |
| Network image | `CachedImage` | `CachedImage.dart` |
| Bottom sheet | `AppBottomSheets` | `bottom_sheet_views/app_bottom_sheets.dart` |
| Pull-to-refresh | `CustomRefresher` | `custom_refresher.dart` |
| Loading effect | `BaseShimmerWidget` | `shimmers/base_shimmer_widget.dart` |
| Date picker | `DateTimePickerWidget` | `datetime_widget/date_time_picker_widget.dart` |
| Debounce | `Debouncer` | `debouncer.dart` |

---

## 📝 **Summary**

### **Widget Categories**

✅ **Input (10+)**: Text fields, search, numeric input
✅ **Buttons (5+)**: Primary, loading, custom variants
✅ **Navigation (3+)**: App bars, status bars
✅ **Media (5+)**: Images, videos, PDFs, SVG
✅ **Bottom Sheets (5+)**: Standard, cupertino, options
✅ **Loading (6+)**: Shimmer, indicators, overlays
✅ **Lists (3+)**: Refresh, animation, pagination
✅ **Pickers (4+)**: Date, time, combined
✅ **Formatters (5+)**: Phone, numbers, text
✅ **Utilities (20+)**: Debouncer, disable, network, etc.

### **Usage Rules**

1. ✅ **Always use core widgets** instead of Flutter defaults
2. ✅ **Use theme-aware colors** (context.colors)
3. ✅ **Dispose controllers** properly
4. ✅ **Validate inputs** with GenericTextField
5. ✅ **Cache images** with CachedImage
6. ✅ **Use AppBottomSheets** for bottom sheets
7. ✅ **Add loading states** with shimmer/indicators
8. ✅ **Implement refresh** with CustomRefresher
9. ✅ **Debounce search** with Debouncer
10. ✅ **Follow naming conventions**

---

**This reference guide ensures consistent widget usage across the entire Nojom application!** 🚀

