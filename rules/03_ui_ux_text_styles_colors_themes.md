# 🎨 UI/UX Implementation Guide - Text Styles, Colors & Themes

This comprehensive guide explains how to implement and use text styles, colors, and themes in the Nojom Flutter application to ensure visual consistency across the entire app.

---

## 📋 **Table of Contents**

1. [Text Styles System](#text-styles-system)
2. [Color System](#color-system)
3. [Theme Management](#theme-management)
4. [Context Extensions](#context-extensions)
5. [Font System](#font-system)
6. [Adding New Styles and Colors](#adding-new-styles-and-colors)
7. [Best Practices](#best-practices)
8. [Common Mistakes](#common-mistakes)
9. [Examples & Use Cases](#examples--use-cases)

---

## 📝 **Text Styles System**

### **Overview**

The Nojom app uses a centralized text style system through the `AppTextStyle` class. This ensures **consistent typography** across the entire application.

### **Naming Convention**

```dart
AppTextStyle.s{fontSize}_w{fontWeight}(color: Color)
```

**Pattern Breakdown:**
- `s` = **Size** (font size in pixels)
- `{fontSize}` = **8, 10, 12, 14, 16, 18, 20, 24, 28, 32, 40, 48** etc.
- `w` = **Weight** (font weight)
- `{fontWeight}` = **300, 400, 500, 600, 700, 800, 900**
- `color` = **Required parameter** (must use `context.colors.{colorName}`)

### **Available Text Styles**

#### **Common Font Sizes**

```dart
// Small Text (8-12px)
AppTextStyle.s8_w400(color: context.colors.textColor)
AppTextStyle.s10_w400(color: context.colors.textColor)
AppTextStyle.s10_w500(color: context.colors.textColor)
AppTextStyle.s10_w600(color: context.colors.textColor)
AppTextStyle.s12_w400(color: context.colors.textColor)
AppTextStyle.s12_w500(color: context.colors.textColor)
AppTextStyle.s12_w600(color: context.colors.textColor)

// Body Text (14-16px) - Most Common
AppTextStyle.s14_w400(color: context.colors.textColor)  // Body regular
AppTextStyle.s14_w500(color: context.colors.textColor)  // Body medium
AppTextStyle.s14_w600(color: context.colors.textColor)  // Body semibold
AppTextStyle.s16_w400(color: context.colors.textColor)  // Body large regular
AppTextStyle.s16_w500(color: context.colors.textColor)  // Body large medium
AppTextStyle.s16_w600(color: context.colors.textColor)  // Body large semibold

// Headings (18-32px)
AppTextStyle.s18_w500(color: context.colors.textColor)
AppTextStyle.s18_w600(color: context.colors.textColor)
AppTextStyle.s20_w500(color: context.colors.textColor)
AppTextStyle.s20_w600(color: context.colors.textColor)
AppTextStyle.s24_w600(color: context.colors.textColor)
AppTextStyle.s28_w600(color: context.colors.textColor)
AppTextStyle.s32_w600(color: context.colors.textColor)

// Display/Hero Text (40-48px)
AppTextStyle.s40_w700(color: context.colors.textColor)
AppTextStyle.s48_w500(color: context.colors.textColor)
AppTextStyle.s48_w700(color: context.colors.textColor)
```

#### **Semantic Heading Styles**

### **How to Use Text Styles**

#### **✅ Correct Usage**

```dart
// Simple Text
Text(
  'Welcome to Nojom',
  style: AppTextStyle.s16_w600(color: context.colors.textColor),
)

// Text with Multiple Properties
Text(
  'Hello World',
  style: AppTextStyle.s14_w400(color: context.colors.grey),
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
  textAlign: TextAlign.center,
)

// Using Semantic Headings
Text(
  'Page Title',
  style: AppTextStyle.h2(color: context.colors.black),
)

// Dynamic Color Based on State
Text(
  item.isActive ? 'Active' : 'Inactive',
  style: AppTextStyle.s14_w500(
    color: item.isActive ? context.colors.green : context.colors.grey,
  ),
)

// Using with TextButton
TextButton(
  onPressed: () {},
  child: Text(
    'Learn More',
    style: AppTextStyle.s14_w600(color: context.colors.primary),
  ),
)
```

#### **❌ Wrong Usage**

```dart
// ❌ DON'T: Using TextStyle directly
Text(
  'Bad Example',
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
)

// ❌ DON'T: Hardcoding colors
Text(
  'Bad Example',
  style: AppTextStyle.s16_w400(color: Colors.red),
)

// ❌ DON'T: Using raw Color values
Text(
  'Bad Example',
  style: AppTextStyle.s16_w400(color: Color(0xFF000000)),
)
```

### **Text Style Features**

#### **Automatic Font Family Selection**

The text style automatically selects the appropriate font based on the current language:

```dart
// Automatically uses:
// - "SFProEn" for English
// - "SFArabic" for Arabic
AppTextStyle.s16_w400(color: context.colors.textColor)
```

#### **Automatic Letter Spacing**

Letter spacing is automatically adjusted based on language:

```dart
// English: -0.2 (tighter)
// Arabic: 0 (normal)
```

#### **Consistent Line Height**

All text styles use a consistent line height of `1.0` for uniform spacing.

---

## 🎨 **Color System**

### **Overview**

The Nojom app uses an abstract color system with **light** and **dark** theme support. All colors are accessed through the `AppColors` class.

### **Color Architecture**

```
AppColors (Abstract Class)
    ├── AppLightColors (Light Theme Implementation)
    └── AppDarkColors (Dark Theme Implementation)
```

### **Accessing Colors**

#### **Using Context Extension**

```dart
// ✅ Recommended: Using context extension
Container(
  color: context.colors.primary,
  child: Text(
    'Hello',
    style: AppTextStyle.s16_w400(color: context.colors.textColor),
  ),
)
```

#### **Without Context (for services/utilities)**

```dart
// When BuildContext is not available
final colors = AppColors.noContextInstance;
final backgroundColor = colors.background;
```

### **Available Colors**

#### **Primary Colors**

```dart
context.colors.primary        // Main brand color
context.colors.secondary      // Secondary accent
context.colors.white          // Pure white (or black in dark mode)
context.colors.black          // Pure black (or white in dark mode)
```

#### **Background Colors**

```dart
context.colors.background     // Main background
context.colors.background1    // Alternative background
context.colors.backGround1    // Slight variation
context.colors.backgroundLight // Light background variant
context.colors.inputFillColor // Input field background
```

#### **Text Colors**

```dart
context.colors.textColor           // Primary text color
context.colors.textGaryColor       // Secondary text (gray)
context.colors.textGrayOpacity     // Faded text
context.colors.textTertiaryGray    // Tertiary gray text
context.colors.textQuaternaryGray  // Quaternary gray text
context.colors.darkText            // Dark text variant
```

#### **Semantic Colors**

```dart
// Success/Positive
context.colors.green           // Success green
context.colors.primaryGreen    // Primary green
context.colors.mediumGreen     // Medium green
context.colors.lightGreen      // Light green
context.colors.paleGreen       // Very light green
context.colors.darkGreen       // Dark green

// Error/Negative
context.colors.red             // Error red
context.colors.alertRed        // Alert/danger red
context.colors.strongRed       // Strong red
context.colors.darkRed         // Dark red
context.colors.softRed         // Soft red
context.colors.paleRed         // Very light red
context.colors.errorRed        // Error state red

// Warning
context.colors.warningYellow      // Warning yellow
context.colors.warningLightYellow // Light warning
context.colors.warningBorderYellow // Warning border
context.colors.warningDarkYellow   // Dark warning

// Info/Link
context.colors.blue            // Information blue
context.colors.primaryBlue     // Primary blue
context.colors.deepBlue        // Deep blue
context.colors.softBlue        // Soft blue
context.colors.pastelBlue      // Pastel blue
context.colors.lightBlue       // Light blue
```

#### **UI Element Colors**

```dart
// Gray Scales
context.colors.grey            // Standard gray
context.colors.slightGray      // Slight gray
context.colors.lightGray       // Light gray
context.colors.lightGray2      // Light gray variant
context.colors.lightGrayBlue   // Light gray-blue
context.colors.darkBlueGray    // Dark blue-gray
context.colors.platinumGray    // Platinum gray
context.colors.disableGray     // Disabled state

// Borders & Dividers
context.colors.borderColor              // Standard border
context.colors.borderSecondaryGray      // Secondary border
context.colors.strokeColor              // Stroke/outline
context.colors.dotColor                 // Dots/indicators

// Overlays & Shadows
context.colors.blackOpacity    // Black overlay
context.colors.greyOpacity     // Gray overlay
context.colors.shadowColor     // Shadow color

// Special UI Elements
context.colors.appBarColor     // App bar background
context.colors.closeIconColor  // Close button color
context.colors.arrowDownColor  // Dropdown arrow
```

#### **Component-Specific Colors**

```dart
// Snackbar Colors (Fixed - don't change with theme)
AppColors.snackBarGreenSuccess  // Success snackbar
AppColors.snackBarRedError      // Error snackbar
AppColors.snackBarYellowAlert   // Warning snackbar

// Status Colors
context.colors.notStartedColor  // Not started status
context.colors.disabledColor    // Disabled state
```

### **Color Definitions**

#### **Light Theme Example**

```dart
// lib/core/theme/colors/app_light_colors.dart
class AppLightColors extends AppColors {
  @override
  Color get primary => const Color(0x993C3C43);
  
  @override
  Color get white => const Color(0xFFFFFFFF);
  
  @override
  Color get black => const Color(0xff000000);
  
  @override
  Color get textColor => const Color(0xFF020814);
  
  @override
  Color get background => Colors.white;
  
  @override
  Color get primaryBlue => const Color(0xFF2970FF);
  
  @override
  Color get alertRed => const Color(0xFFF04438);
  
  @override
  Color get primaryGreen => const Color(0xFF067647);
  
  // ... 100+ more colors
}
```

#### **Dark Theme Example**

```dart
// lib/core/theme/colors/app_dark_colors.dart
class AppDarkColors extends AppColors {
  @override
  Color get primary => const Color(0xFFF9656B);
  
  @override
  Color get white => const Color(0xFF000000);  // Inverted
  
  @override
  Color get black => Colors.white;  // Inverted
  
  @override
  Color get textColor => const Color(0xFF020814);
  
  @override
  Color get background => Colors.black;
  
  // ... matching light theme colors
}
```

### **Gradient Colors**

```dart
// Progress indicator gradient
context.colors.progressGradientColors  // Returns List<Color>

// Usage:
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: context.colors.progressGradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
)
```

---

## 🌗 **Theme Management**

### **Theme Architecture**

The app supports **light** and **dark** themes using the `adaptive_theme` package.

### **Theme Files Structure**

```
lib/core/theme/
├── colors/
│   ├── app_colors.dart          # Abstract color definitions
│   ├── app_light_colors.dart    # Light theme colors
│   ├── app_dark_colors.dart     # Dark theme colors
│   └── colors_extension.dart    # Context extension
├── text/
│   └── app_text_style.dart      # Text style definitions
└── themes/
    ├── app_theme.dart           # Theme configuration
    ├── app_light_theme.dart     # Light theme data
    └── app_dark_theme.dart      # Dark theme data
```

### **How Themes Work**

1. **Theme Selection**: User selects light/dark mode
2. **Theme Detection**: `DeviceCubit` stores current theme mode
3. **Color Resolution**: `AppColors.of(context)` returns appropriate colors
4. **Font Selection**: `AppConfig.fontFamily()` selects appropriate font
5. **Automatic Updates**: UI rebuilds when theme changes

### **Theme Switching**

```dart
// Switch to light theme
AdaptiveTheme.of(context).setLight();

// Switch to dark theme
AdaptiveTheme.of(context).setDark();

// Toggle theme
AdaptiveTheme.of(context).toggleThemeMode();

// Set system theme
AdaptiveTheme.of(context).setSystem();
```

### **Checking Current Theme**

```dart
// Get current theme mode
final themeMode = context.read<DeviceCubit>().state.model.themeMode;

// Check if dark mode
final isDark = themeMode == AdaptiveThemeMode.dark;

// Using theme data
final brightness = Theme.of(context).brightness;
final isDarkMode = brightness == Brightness.dark;
```

---

## 🔧 **Context Extensions**

### **AppThemeExtension**

Located in `lib/core/theme/colors/colors_extension.dart`

```dart
extension AppThemeExtension on BuildContext {
  // Get theme data
  ThemeData get theme => Theme.of(this);

  // Get text theme
  TextTheme get textTheme => theme.textTheme;

  // Get app colors (theme-aware)
  AppColors get colors => AppColors.of(this);

  // Check if Arabic
  bool get isArabic =>
      read<DeviceCubit>().state.model.locale.languageCode == "ar";
}
```

### **Usage Examples**

```dart
// Access theme
final primaryColor = context.theme.primaryColor;

// Access colors
final bgColor = context.colors.background;

// Check language
if (context.isArabic) {
  // RTL layout logic
}

// Combined usage
Container(
  color: context.colors.white,
  padding: EdgeInsets.all(context.isArabic ? 20 : 16),
  child: Text(
    'Hello',
    style: AppTextStyle.s16_w400(color: context.colors.textColor),
  ),
)
```

---

## 🔤 **Font System**

### **Available Fonts**

The app uses three font families:

1. **SFProEn** - SF Pro for English text
2. **SFArabic** - SF Arabic for Arabic text
3. **SaudiRiyalFont** - Special font for currency symbols

### **Font Files Location**

```
assets/fonts/
├── sf_text/           # SF Pro font family
│   ├── SF-Pro-Text-Regular.otf
│   ├── SF-Pro-Text-Medium.otf
│   ├── SF-Pro-Text-Semibold.otf
│   ├── SF-Pro-Text-Bold.otf
│   └── ...
├── SF-Arabic.ttf      # Arabic font
└── SaudiRiyalFont.ttf # Currency font
```

### **Font Selection Logic**

```dart
// Automatic font selection based on language
static String fontFamily(FontWeight fontWeight) {
  var context = getIt.get<AppRouter>().navigatorKey.currentContext;

  if (context?.isArabic ?? false) {
    return ApplicationConstants.fontFamilyArabic;  // "SFArabic"
  }
  return ApplicationConstants.fontFamilySFPro;     // "SFProEn"
}
```

### **Letter Spacing Adjustment**

```dart
double _getLetterSpacing() {
  var context = getIt.get<AppRouter>().navigatorKey.currentContext;
  var lang = context?.read<DeviceCubit>().state.model.locale.languageCode;
  
  if (lang == ApplicationConstants.langEN) {
    return -0.2;  // Tighter spacing for English
  } else {
    return 0;     // Normal spacing for Arabic
  }
}
```

### **Font Weight Mapping**

All standard Flutter font weights are supported:

```dart
FontWeight.w300  // Light
FontWeight.w400  // Regular/Normal
FontWeight.w500  // Medium
FontWeight.w600  // SemiBold
FontWeight.w700  // Bold
FontWeight.w800  // ExtraBold
FontWeight.w900  // Black
```

---

## ➕ **Adding New Styles and Colors**

### **Adding a New Text Style**

#### **Step 1: Add to AppTextStyle**

**File:** `lib/core/theme/text/app_text_style.dart`

```dart
// Add new text style following naming pattern
// Pattern: s{fontSize}_w{fontWeight}
AppTextStyle.s22_w500({required Color color})
    : super(
        color: color,
        letterSpacing: _getLetterSpacing(),
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: AppConfig.fontFamily(FontWeight.w500),
        height: fontHeight,
      );
```

#### **Step 2: Use the New Style**

```dart
Text(
  'Custom Size Text',
  style: AppTextStyle.s22_w500(color: context.colors.textColor),
)
```

### **Adding a New Color**

#### **Step 1: Add to AppColors Abstract Class**

**File:** `lib/core/theme/colors/app_colors.dart`

```dart
abstract class AppColors {
  // ... existing colors ...
  
  // Add new color getter
  Color get customBrandColor;
}
```

#### **Step 2: Implement in Light Theme**

**File:** `lib/core/theme/colors/app_light_colors.dart`

```dart
class AppLightColors extends AppColors {
  // ... existing colors ...
  
  @override
  Color get customBrandColor => const Color(0xFF4A90E2);
}
```

#### **Step 3: Implement in Dark Theme**

**File:** `lib/core/theme/colors/app_dark_colors.dart`

```dart
class AppDarkColors extends AppColors {
  // ... existing colors ...
  
  @override
  Color get customBrandColor => const Color(0xFF5BA3F5);  // Lighter for dark mode
}
```

#### **Step 4: Use the New Color**

```dart
Container(
  color: context.colors.customBrandColor,
  child: Text(
    'Custom Brand Text',
    style: AppTextStyle.s16_w600(color: context.colors.customBrandColor),
  ),
)
```

### **Adding a Gradient**

#### **Step 1: Add to AppColors**

```dart
abstract class AppColors {
  List<Color> get customGradient;
}
```

#### **Step 2: Implement**

```dart
// Light theme
@override
List<Color> get customGradient => [
  const Color(0xFF4A90E2),
  const Color(0xFF357ABD),
];

// Dark theme
@override
List<Color> get customGradient => [
  const Color(0xFF5BA3F5),
  const Color(0xFF4A8FE2),
];
```

#### **Step 3: Use**

```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: context.colors.customGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
)
```

---

## ✅ **Best Practices**

### **Text Styles**

1. ✅ **Always use AppTextStyle**, never `TextStyle` directly
2. ✅ **Always pass color as parameter**, never hardcode
3. ✅ **Use semantic headings** (h1-h6) for better maintainability
4. ✅ **Choose appropriate size** - use 14-16px for body text
5. ✅ **Use consistent weights** - w400 (regular), w500 (medium), w600 (semibold)
6. ✅ **Consider readability** - don't use too small or too large sizes

### **Colors**

1. ✅ **Always use `context.colors.{colorName}`**
2. ✅ **Never hardcode color values** like `Colors.red` or `Color(0xFF...)`
3. ✅ **Use semantic colors** - `primaryGreen` for success, `alertRed` for errors
4. ✅ **Test in both themes** - ensure colors work in light and dark modes
5. ✅ **Use appropriate alpha** - `.withValues(alpha: 0.5)` for transparency
6. ✅ **Consider contrast** - ensure text is readable on backgrounds

### **Themes**

1. ✅ **Design for both themes** - always implement light and dark variants
2. ✅ **Test theme switching** - ensure smooth transitions
3. ✅ **Use theme-aware colors** - access via `context.colors`
4. ✅ **Avoid fixed colors** - don't use fixed colors for UI elements
5. ✅ **Consider accessibility** - ensure sufficient color contrast

### **Fonts**

1. ✅ **Let the system choose** - font family is automatic based on language
2. ✅ **Use standard weights** - avoid custom font weights
3. ✅ **Test in both languages** - verify Arabic and English rendering
4. ✅ **Respect letter spacing** - automatically handled by text styles

---

## ❌ **Common Mistakes**

### **Mistake 1: Hardcoding Text Styles**

```dart
// ❌ WRONG
Text(
  'Hello',
  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
)

// ✅ CORRECT
Text(
  'Hello',
  style: AppTextStyle.s16_w600(color: context.colors.textColor),
)
```

### **Mistake 2: Hardcoding Colors**

```dart
// ❌ WRONG
Container(
  color: Colors.blue,
  // or
  color: Color(0xFF2196F3),
)

// ✅ CORRECT
Container(
  color: context.colors.primaryBlue,
)
```

### **Mistake 3: Not Considering Dark Theme**

```dart
// ❌ WRONG - Will look bad in dark theme
Container(
  color: Colors.white,
  child: Text(
    'Hello',
    style: AppTextStyle.s16_w400(color: Colors.black),
  ),
)

// ✅ CORRECT - Works in both themes
Container(
  color: context.colors.background,
  child: Text(
    'Hello',
    style: AppTextStyle.s16_w400(color: context.colors.textColor),
  ),
)
```

### **Mistake 4: Using Wrong Color for Semantic Meaning**

```dart
// ❌ WRONG
Text(
  'Success!',
  style: AppTextStyle.s14_w500(color: context.colors.blue),
)

// ✅ CORRECT
Text(
  'Success!',
  style: AppTextStyle.s14_w500(color: context.colors.primaryGreen),
)
```

### **Mistake 5: Inconsistent Font Sizes**

```dart
// ❌ WRONG - Using random sizes
AppTextStyle.s15_w400(...)  // Not a standard size
AppTextStyle.s17_w400(...)  // Not a standard size

// ✅ CORRECT - Using standard sizes
AppTextStyle.s14_w400(...)  // Standard body text
AppTextStyle.s16_w400(...)  // Standard larger body text
```

### **Mistake 6: Not Using Alpha for Transparency**

```dart
// ❌ WRONG - Old method (deprecated)
context.colors.black.withOpacity(0.5)

// ✅ CORRECT - New method
context.colors.black.withValues(alpha: 0.5)
```

---

## 💡 **Examples & Use Cases**

### **Example 1: Card with Proper Styling**

```dart
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: context.colors.white,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: context.colors.borderSecondaryGray,
      width: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: context.colors.black.withValues(alpha: 0.05),
        blurRadius: 10,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Title
      Text(
        'Card Title',
        style: AppTextStyle.s18_w600(color: context.colors.textColor),
      ),
      SizedBox(height: 8),
      
      // Description
      Text(
        'This is a description with proper styling',
        style: AppTextStyle.s14_w400(color: context.colors.textGaryColor),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      SizedBox(height: 12),
      
      // Status badge
      Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: context.colors.paleGreen,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'Active',
          style: AppTextStyle.s12_w500(color: context.colors.primaryGreen),
        ),
      ),
    ],
  ),
)
```

### **Example 2: Button with States**

```dart
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;

  const CustomButton({
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final isEnabled = onPressed != null && !isLoading;
    
    return InkWell(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: isEnabled 
              ? context.colors.primaryBlue 
              : context.colors.disableGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation(context.colors.white),
                  ),
                )
              : Text(
                  text,
                  style: AppTextStyle.s16_w600(
                    color: isEnabled 
                        ? context.colors.white 
                        : context.colors.slightGray,
                  ),
                ),
        ),
      ),
    );
  }
}
```

### **Example 3: Status Indicators**

```dart
Widget buildStatusIndicator(String status, BuildContext context) {
  Color backgroundColor;
  Color textColor;
  String displayText;

  switch (status) {
    case 'success':
      backgroundColor = context.colors.paleGreen;
      textColor = context.colors.primaryGreen;
      displayText = 'Success';
      break;
    case 'error':
      backgroundColor = context.colors.paleRed;
      textColor = context.colors.alertRed;
      displayText = 'Error';
      break;
    case 'warning':
      backgroundColor = context.colors.warningLightYellow;
      textColor = context.colors.warningDarkYellow;
      displayText = 'Warning';
      break;
    case 'info':
      backgroundColor = context.colors.softBlue;
      textColor = context.colors.primaryBlue;
      displayText = 'Info';
      break;
    default:
      backgroundColor = context.colors.platinumGray;
      textColor = context.colors.textGaryColor;
      displayText = 'Pending';
  }

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(
      displayText,
      style: AppTextStyle.s12_w500(color: textColor),
    ),
  );
}
```

### **Example 4: Form Field with Proper Styling**

```dart
GenericTextField(
  controller: controller,
  fieldTypes: FieldTypes.normal,
  type: TextInputType.text,
  action: TextInputAction.next,
  fillColor: context.colors.inputFillColor,
  label: 'Enter your name',
  hintText: 'John Doe',
  margin: EdgeInsets.only(bottom: 16),
  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  textStyle: AppTextStyle.s16_w400(color: context.colors.textColor),
  labelStyle: AppTextStyle.s14_w400(color: context.colors.textGaryColor),
  hintStyle: AppTextStyle.s16_w400(color: context.colors.slightGray),
  validate: (value) => value?.isEmpty == true ? 'Required' : null,
)
```

### **Example 5: Gradient Background**

```dart
Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: context.colors.progressGradientColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Welcome',
        style: AppTextStyle.h1(color: context.colors.white),
      ),
      SizedBox(height: 8),
      Text(
        'Get started with Nojom',
        style: AppTextStyle.s16_w400(color: context.colors.white),
      ),
    ],
  ),
)
```

### **Example 6: List Item with Multiple Text Styles**

```dart
ListTile(
  leading: Container(
    width: 48,
    height: 48,
    decoration: BoxDecoration(
      color: context.colors.softBlue,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        'AB',
        style: AppTextStyle.s16_w600(color: context.colors.primaryBlue),
      ),
    ),
  ),
  title: Text(
    'Item Title',
    style: AppTextStyle.s16_w600(color: context.colors.textColor),
  ),
  subtitle: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 4),
      Text(
        'Subtitle text here',
        style: AppTextStyle.s14_w400(color: context.colors.textGaryColor),
      ),
      SizedBox(height: 2),
      Text(
        '2 hours ago',
        style: AppTextStyle.s12_w400(color: context.colors.slightGray),
      ),
    ],
  ),
  trailing: Icon(
    Icons.chevron_right,
    color: context.colors.slightGray,
  ),
)
```

---

## 📐 **Typography Scale Reference**

### **Recommended Usage by Size**

| Size | Weight | Use Case | Example |
|------|--------|----------|---------|
| 48px | w500, w700 | Hero text, splash screens | App name on launch |
| 40px | w700 | Page headers | Main page title |
| 32px | w600 | Section headers | Feature section title |
| 24px | w600 | Card headers | Product card title |
| 20px | w500, w600 | Subheaders | Subsection title |
| 18px | w500, w600 | Important text | Call-to-action text |
| 16px | w400, w500, w600 | Body text (large) | Main content |
| 14px | w400, w500, w600 | Body text | Standard content |
| 12px | w400, w500, w600 | Secondary text | Captions, labels |
| 10px | w400, w500 | Small text | Timestamps, tags |
| 8px | w400 | Tiny text | Footnotes |

### **Font Weight Guidelines**

- **w300 (Light)**: Rarely used, for decorative text
- **w400 (Regular)**: Body text, descriptions
- **w500 (Medium)**: Emphasized text, important labels
- **w600 (SemiBold)**: Headers, titles, buttons
- **w700 (Bold)**: Strong emphasis, hero text
- **w800+ (ExtraBold/Black)**: Special cases only

---

## 🎯 **Quick Reference Checklist**

### **Before Implementing Any UI**

- [ ] Use `AppTextStyle.s{size}_w{weight}` for all text
- [ ] Use `context.colors.{colorName}` for all colors
- [ ] Never hardcode `TextStyle`, `Colors`, or `Color` values
- [ ] Test in both light and dark themes
- [ ] Test in both Arabic and English
- [ ] Use semantic colors (success = green, error = red)
- [ ] Ensure proper contrast for accessibility
- [ ] Use standard font sizes (8, 10, 12, 14, 16, 18, 20, 24, etc.)
- [ ] Use standard font weights (300, 400, 500, 600, 700)
- [ ] Add new colors to both light and dark theme files

### **Code Review Checklist**

- [ ] No hardcoded `TextStyle(...)` usage
- [ ] No `Colors.{color}` or `Color(0xFF...)` usage
- [ ] All colors accessed via `context.colors`
- [ ] All text styles use `AppTextStyle`
- [ ] UI works in both light and dark themes
- [ ] UI works in both Arabic (RTL) and English (LTR)
- [ ] Proper color semantics (green for success, red for errors)
- [ ] Consistent spacing and sizing

---

## 🚀 **Summary**

### **Golden Rules**

1. **Always use `AppTextStyle`** - Never `TextStyle` directly
2. **Always use `context.colors`** - Never hardcode colors
3. **Design for both themes** - Test light and dark modes
4. **Support both languages** - Test Arabic and English
5. **Use semantic colors** - Match color to meaning
6. **Follow the naming pattern** - `s{size}_w{weight}` for text styles
7. **Add to both theme files** - When adding new colors
8. **Test accessibility** - Ensure proper contrast
9. **Stay consistent** - Use standard sizes and weights
10. **Think responsive** - Consider different screen sizes

---

**This guide ensures visual consistency, maintainability, and an excellent user experience across all themes and languages in the Nojom app.**

