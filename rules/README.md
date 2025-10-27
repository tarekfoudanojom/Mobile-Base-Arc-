# 📚 Nojom App Development Rules & Guidelines

Welcome to the comprehensive documentation for the Nojom Flutter application! This directory contains all the rules, guidelines, and best practices for developing features in the Nojom app.

---

## 🗂️ **Documentation Index**

### **🏗️ Architecture & Structure**

#### **[01. Project Structure Guide](01_project_structure.md)** (~600 lines)
Complete overview of project architecture and folder organization.

**Covers:**
- ✅ Root directory structure
- ✅ lib/ organization
- ✅ Core directory breakdown
- ✅ Features structure (data/domain/presentation)
- ✅ Assets organization
- ✅ Localization structure
- ✅ Test directory
- ✅ Configuration files
- ✅ Naming conventions

**Read this first** to understand the overall project structure.

---

### **🚀 Development Guides**

#### **[02. Creating New Feature Guide](02_creating_new_feature_guide.md)** (~1,800 lines)
Step-by-step guide for creating complete features from scratch.

**Covers:**
- ✅ Pre-development planning
- ✅ Feature structure setup
- ✅ Domain layer implementation (repositories, entities)
- ✅ Data layer implementation (data sources, models)
- ✅ Presentation layer (pages, controllers, widgets)
- ✅ Dependency injection setup
- ✅ Routing configuration
- ✅ Localization (Arabic & English)
- ✅ Testing & validation
- ✅ Complete feature example (Product Reviews)

**Use this** when creating any new feature.

---

### **🎨 UI/UX Standards**

#### **[03. UI/UX - Text Styles, Colors & Themes](03_ui_ux_text_styles_colors_themes.md)** (~1,500 lines)
Complete guide on implementing consistent UI across the app.

**Covers:**
- ✅ Text styles system (100+ styles: s8_w400 to s48_w700)
- ✅ Color system (100+ colors for light & dark themes)
- ✅ Theme management (light/dark switching)
- ✅ Font system (English/Arabic automatic selection)
- ✅ Adding new styles and colors
- ✅ Context extensions (context.colors, context.isArabic)
- ✅ Typography scale reference
- ✅ Common mistakes to avoid

**Reference this** for all UI implementation.

---

### **🌐 API & Networking**

#### **[04. API Requests & Dio Architecture](04_api_requests_dio_architecture.md)** (~2,000 lines)
Complete guide on making API requests and handling responses.

**Covers:**
- ✅ HTTP layer architecture
- ✅ GenericHttpImpl usage
- ✅ Request types (GET, POST, PUT, PATCH, DELETE)
- ✅ Response handling (MyResult pattern)
- ✅ Error handling (status codes)
- ✅ File uploads (single & multiple)
- ✅ Loading states
- ✅ API endpoint management
- ✅ Interceptors (auth, tracking, headers)
- ✅ Advanced patterns (pagination, retry, cancellation)

**Reference this** when integrating with APIs.

---

### **🧩 Component Libraries**

#### **[05. Core Widgets Reference](05_core_widgets_reference_guide.md)** (~1,400 lines)
Documentation of 70+ reusable widgets.

**Covers:**
- ✅ Input widgets (GenericTextField, SearchField, etc.)
- ✅ Buttons (AppTextButton, LoadingButton, etc.)
- ✅ App bars (DefaultAppBar, CupertinoAppBar, etc.)
- ✅ Images (CachedImage with caching)
- ✅ Bottom sheets (AppBottomSheets with variants)
- ✅ Loading effects (Shimmer, indicators)
- ✅ Lists & refresh (CustomRefresher)
- ✅ Date/time pickers
- ✅ Formatters & validators
- ✅ Complete usage examples

**Use this** to find the right widget for your needs.

---

#### **[06. Core Helpers Reference](06_core_helpers_reference_guide.md)** (~1,200 lines)
Documentation of 40+ utility helpers and their functions.

**Covers:**
- ✅ Validation helpers (15+ validators)
- ✅ Utilities (25+ utility functions)
- ✅ State management (GlobalState, GlobalContext)
- ✅ UI & messaging (AppSnackBar, LoadingHelper)
- ✅ File services (pick, upload, validate)
- ✅ Date & time utilities
- ✅ Permissions handling
- ✅ Storage (PrefHelper for persistent data)
- ✅ Network services (share, launch URLs, WhatsApp)
- ✅ Firebase integration

**Reference this** to find the right helper function.

---

### **🏛️ App Architecture**

#### **[07. App Layout & Layers Architecture](07_app_layout_layers_architecture.md)** (~1,300 lines)
Understanding the multi-layer app architecture.

**Covers:**
- ✅ App initialization flow (main.dart)
- ✅ MyApp widget structure (12 layers)
- ✅ Layer-by-layer breakdown
- ✅ Network layer implementation
- ✅ Theme management system
- ✅ Localization setup
- ✅ Global providers (DeviceCubit, etc.)
- ✅ Router configuration
- ✅ Creating custom layers
- ✅ WhatsApp floating button

**Read this** to understand how the app is structured at the highest level.

---

### **🔄 State Management**

#### **[08. State Management Guide](08_state_management_guide.md)** (~1,800 lines)
Complete guide on BaseBloc and ObsValue patterns.

**Covers:**
- ✅ Two-tier state management overview
- ✅ BaseBloc pattern (loading/success/failure states)
- ✅ ObsValue pattern (simple reactive state)
- ✅ When to use each pattern
- ✅ Global Cubits (DeviceCubit, CountriesCubit, etc.)
- ✅ 5 complete implementation examples
- ✅ 5 common patterns
- ✅ Best practices
- ✅ Quick start templates

**Reference this** when managing state in features.

---

### **🔔 Firebase & Integrations**

#### **[09. Firebase Notifications Guide](09_firebase_notifications_guide.md)** (~1,600 lines)
Complete guide on implementing Firebase Cloud Messaging.

**Covers:**
- ✅ Notification system architecture
- ✅ Setup & configuration (Android & iOS)
- ✅ GlobalNotification class
- ✅ Notification states (foreground/background/terminated)
- ✅ Showing local notifications
- ✅ Handling notification taps
- ✅ Background message handler
- ✅ Token management
- ✅ Stream Chat integration
- ✅ Platform-specific setup
- ✅ Testing notifications

**Reference this** when implementing push notifications.

---

#### **[10. Multi-Environment Setup Guide](10_multi_environment_setup_guide.md)** (~1,600 lines)
Complete guide on setting up and managing multiple environments.

**Covers:**
- ✅ Environment system overview (dev/stage/prod)
- ✅ Configuration architecture
- ✅ JSON configuration files
- ✅ Environment reader implementation
- ✅ Running different environments
- ✅ Platform-specific setup (Android flavors, iOS schemes)
- ✅ Build & release commands
- ✅ Environment-specific assets (logos, names)
- ✅ API endpoint management per environment
- ✅ Feature flags & debugging
- ✅ CI/CD integration

**Reference this** when setting up or switching environments.

---

#### **[11. Freezed & JSON Serialization Guide](11_freezed_json_serialization_guide.md)** (~1,800 lines)
Complete guide on creating models using Freezed and JSON serialization.

**Covers:**
- ✅ Freezed overview and benefits
- ✅ Model types (@freezed, @unfreezed, regular classes)
- ✅ Basic and advanced model creation
- ✅ JSON serialization patterns
- ✅ Model hierarchy and organization
- ✅ Code generation with build_runner
- ✅ Best practices and naming conventions
- ✅ Common patterns (localized, status, API response, form, pagination)
- ✅ Custom JSON converters
- ✅ Troubleshooting common issues

**Reference this** when creating new data models.

---

#### **[12. Assets Usage Guide](12_assets_usage_guide.md)** (~1,700 lines)
Complete guide on using and managing assets (images, SVGs, fonts, icons).

**Covers:**
- ✅ Asset structure overview (671+ files)
- ✅ Asset types (SVG, PNG, JPG, fonts)
- ✅ Generated asset references (Res.dart, BrandRes.dart)
- ✅ Using images (Image.asset, ImageWidget)
- ✅ Using SVG assets (SvgPicture.asset, color customization)
- ✅ Using fonts (AppTextStyle integration)
- ✅ Cached network images (CachedImage widget)
- ✅ Adding new assets workflow
- ✅ Asset optimization techniques
- ✅ Best practices and common patterns

**Reference this** when working with images, icons, or fonts.

---

#### **[13. Loading & SnackBar Services Guide](13_loading_and_snackbar_guide.md)** (~1,000 lines)
Complete guide on using LoadingHelper and AppSnackBar for loading states and notifications.

**Covers:**
- ✅ LoadingHelper service (show/dismiss loading dialogs)
- ✅ Loading with progress tracking
- ✅ AppSnackBar types (success, error, warning, toast)
- ✅ Undo snackbars for reversible actions
- ✅ Campaign success snackbars with actions
- ✅ Common patterns (API requests, form submission, delete with undo)
- ✅ Best practices and error handling
- ✅ Complete examples with proper usage

**Reference this** when implementing loading states or user notifications.

---

#### **[14. Current Project Status](14_current_project_status.md)** (~300 lines)
Quick reference for current project state after refactoring.

**Covers:**
- ✅ Active features (auth only)
- ✅ Current page implementations (splash, login)
- ✅ Global configuration (DeviceCubit only)
- ✅ Theme and assets status
- ✅ Routing configuration
- ✅ Dependencies status
- ✅ Known issues and resolutions
- ✅ Architecture patterns in use
- ✅ Next steps for development

**Reference this** to understand current project state and what's implemented.

---

## 🎯 **Quick Start Guide**

### **For New Developers:**

1. **Day 1-2:** Read `01_project_structure.md` - Understand the architecture
2. **Day 3-4:** Read `07_app_layout_layers_architecture.md` - Understand app initialization
3. **Day 5:** Read `08_state_management_guide.md` - Understand state management
4. **Week 2:** Read `03_ui_ux_text_styles_colors_themes.md` - Learn UI standards
5. **Week 2:** Read `05_core_widgets_reference_guide.md` - Explore available widgets
6. **Week 2:** Read `06_core_helpers_reference_guide.md` - Discover helper utilities
7. **Week 3:** Read `04_api_requests_dio_architecture.md` - Learn API integration
8. **Week 3:** Read `09_firebase_notifications_guide.md` - Firebase integration
9. **Week 4:** Read `02_creating_new_feature_guide.md` - Build your first feature!

---

### **For Experienced Developers:**

Use as **quick reference** for:
- Finding the right widget (`05_core_widgets_reference_guide.md`)
- Finding the right helper (`06_core_helpers_reference_guide.md`)
- API patterns (`04_api_requests_dio_architecture.md`)
- State management patterns (`08_state_management_guide.md`)
- Adding new features (`02_creating_new_feature_guide.md`)

---

## 📊 **Documentation Statistics**

```
Total Guides: 14
Total Lines: ~18,600
Total Examples: 290+
Widgets Documented: 70+
Helpers Documented: 42+ (LoadingHelper, AppSnackBar)
Assets Documented: 671+ files (SVG, PNG, JPG)
Text Styles: 100+
Colors: 100+
App Layers: 12
Environments: 3 (dev/stage/prod)
State Patterns: 2 (BaseBloc + ObsValue)
Model Patterns: 3 (@freezed, @unfreezed, regular)
Validators: 15+
API Patterns: 10+
Usage Examples: 85+
Code Templates: 45+
SnackBar Types: 7
Active Features: 1 (auth)
Global Cubits: 1 (DeviceCubit)
```

---

## 🎓 **Learning Paths**

### **Path 1: Frontend Developer**

Focus on UI and user interactions:

1. `01_project_structure.md` - Structure
2. `03_ui_ux_text_styles_colors_themes.md` - UI standards
3. `05_core_widgets_reference_guide.md` - Widgets
4. `08_state_management_guide.md` - State
5. `02_creating_new_feature_guide.md` - Build features

---

### **Path 2: Backend Integration Developer**

Focus on API and data:

1. `01_project_structure.md` - Structure
2. `04_api_requests_dio_architecture.md` - API
3. `08_state_management_guide.md` - State
4. `02_creating_new_feature_guide.md` - Build features
5. `09_firebase_notifications_guide.md` - Push notifications

---

### **Path 3: Full-Stack Mobile Developer**

Complete understanding:

1. `01_project_structure.md` - Architecture
2. `07_app_layout_layers_architecture.md` - App layers
3. `08_state_management_guide.md` - State management
4. `03_ui_ux_text_styles_colors_themes.md` - UI/UX
5. `04_api_requests_dio_architecture.md` - API
6. `05_core_widgets_reference_guide.md` - Widgets
7. `06_core_helpers_reference_guide.md` - Helpers
8. `09_firebase_notifications_guide.md` - Notifications
9. `02_creating_new_feature_guide.md` - Feature development

---

## 🔍 **Quick Lookup**

### **Need to...**

| Task | Guide | Section |
|------|-------|---------|
| Create new feature | 02 | Complete workflow |
| Style text | 03 | Text Styles System |
| Use a color | 03 | Color System |
| Switch theme | 03 | Theme Management |
| Make API call | 04 | Making API Requests |
| Upload file | 04 | File Uploads |
| Find widget | 05 | Widget categories |
| Validate email | 06 | Validator helpers |
| Pick image | 06 | File services |
| Show loading | 13 | LoadingHelper service |
| Show message | 13 | AppSnackBar methods |
| Undo action | 13 | Undo snackbar |
| Check project status | 14 | Current features & config |
| Manage state | 08 | BaseBloc vs ObsValue |
| Handle loading | 08 | BaseBloc pattern |
| Send notification | 09 | Showing notifications |
| Handle push | 09 | Message handlers |

---

## ✅ **Code Review Checklist**

Before submitting code, verify against these guides:

### **Architecture** (`01`, `02`)
- [ ] Follows three-layer structure
- [ ] Repository pattern implemented
- [ ] Dependency injection configured
- [ ] Routes registered

### **UI/UX** (`03`, `05`)
- [ ] Uses `AppTextStyle` (no TextStyle)
- [ ] Uses `context.colors` (no hardcoded colors)
- [ ] Uses core widgets (GenericTextField, etc.)
- [ ] Supports RTL (Arabic)
- [ ] Works in light and dark themes

### **API** (`04`)
- [ ] Uses GenericHttpImpl
- [ ] Returns MyResult<T>
- [ ] Proper error handling
- [ ] Loading states managed

### **State** (`08`)
- [ ] Correct pattern (BaseBloc vs ObsValue)
- [ ] Proper initialization
- [ ] Dispose called
- [ ] Error states handled

### **General**
- [ ] All strings localized (AR & EN)
- [ ] No hardcoded values
- [ ] Follows naming conventions
- [ ] flutter analyze passes
- [ ] Code documented

---

## 🌟 **Key Principles**

### **1. Consistency**
Follow established patterns. If unsure, check existing features.

### **2. Clean Architecture**
Maintain separation: Data → Domain ← Presentation

### **3. Type Safety**
Use MyResult<T>, BaseBloc<T>, ObsValue<T> for type safety.

### **4. Testability**
Use dependency injection, repository pattern.

### **5. Localization**
Support both Arabic (RTL) and English (LTR).

### **6. Theme Support**
Design for both light and dark themes.

### **7. Error Handling**
Always handle success and error cases.

### **8. Performance**
Use const, dispose properly, avoid unnecessary rebuilds.

---

## 📞 **Getting Help**

### **Common Questions**

**Q: How do I create a new feature?**
A: Follow `02_creating_new_feature_guide.md` step-by-step.

**Q: Which widget should I use for input?**
A: Always use `GenericTextField` - see `05_core_widgets_reference_guide.md`.

**Q: How do I make an API call?**
A: See `04_api_requests_dio_architecture.md` for complete examples.

**Q: BaseBloc or ObsValue?**
A: See decision tree in `08_state_management_guide.md`.

**Q: How do I style text?**
A: Use `AppTextStyle.s{size}_w{weight}` - see `03_ui_ux_text_styles_colors_themes.md`.

**Q: How do I validate form input?**
A: Use validation extensions - see `06_core_helpers_reference_guide.md`.

---

## 🚀 **Quick Reference**

### **Common Patterns**

```dart
// Text styling
AppTextStyle.s16_w400(color: context.colors.textColor)

// Colors
context.colors.primary

// API call
GenericHttpImpl<ItemModel>()(model)

// State (complex)
BaseBloc<List<Item>>()

// State (simple)
ObsValue<bool>.withInit(false)

// Validation
value?.validateEmail()

// Storage
PrefHelper.setUserToken(token)

// Messages
AppSnackBar.showSuccessSnackBar(message)
```

---

## 📈 **Documentation Coverage**

| Guide | Lines | Topics | Examples |
|-------|-------|--------|----------|
| 01 - Structure | ~600 | 15 | 10+ |
| 02 - Features | ~1,800 | 10 | 20+ |
| 03 - UI/UX | ~1,500 | 12 | 30+ |
| 04 - API | ~2,000 | 14 | 25+ |
| 05 - Widgets | ~1,400 | 12 | 40+ |
| 06 - Helpers | ~1,200 | 12 | 30+ |
| 07 - Layouts | ~1,300 | 10 | 20+ |
| 08 - State | ~1,800 | 9 | 25+ |
| 09 - Notifications | ~1,600 | 14 | 15+ |
| 10 - Environments | ~1,600 | 10 | 20+ |
| 11 - Models | ~1,800 | 12 | 25+ |
| 12 - Assets | ~1,700 | 10 | 20+ |
| 13 - Loading/SnackBar | ~1,000 | 7 | 10+ |
| 14 - Project Status | ~300 | 10 | 5+ |
| **Total** | **~18,600** | **157** | **295+** |

---

## 🎯 **Development Workflow**

### **Creating a New Feature**

1. ✅ Read `02_creating_new_feature_guide.md`
2. ✅ Create folder structure
3. ✅ Define domain layer (repositories, entities)
4. ✅ Implement data layer (data sources, models)
5. ✅ Build presentation layer (pages, controllers)
6. ✅ Style with `AppTextStyle` and `context.colors` (Guide 03)
7. ✅ Use core widgets (Guide 05)
8. ✅ Use helpers for common tasks (Guide 06)
9. ✅ Implement state with BaseBloc/ObsValue (Guide 08)
10. ✅ Make API calls with GenericHttpImpl (Guide 04)
11. ✅ Add localization (AR & EN)
12. ✅ Run `flutter analyze`
13. ✅ Test in both themes
14. ✅ Test in both languages

---

## 🏆 **Best Practices Summary**

### **Always:**
- ✅ Use `AppTextStyle` for text
- ✅ Use `context.colors` for colors
- ✅ Use `GenericTextField` for inputs
- ✅ Use `MyResult<T>` for API responses
- ✅ Use `BaseBloc` for complex state
- ✅ Use `ObsValue` for simple state
- ✅ Localize all strings
- ✅ Support both themes
- ✅ Dispose controllers
- ✅ Handle errors

### **Never:**
- ❌ Hardcode text styles
- ❌ Hardcode colors
- ❌ Use TextField directly
- ❌ Throw exceptions from repositories
- ❌ Use setState for app-wide state
- ❌ Hardcode strings
- ❌ Skip validation
- ❌ Forget to dispose
- ❌ Ignore errors

---

## 📱 **Platform Support**

- ✅ **Android** - Full support
- ✅ **iOS** - Full support
- ✅ **Web** - Partial support
- ✅ **macOS** - Partial support
- ✅ **Linux** - Partial support
- ✅ **Windows** - Partial support

---

## 🌍 **Language Support**

- ✅ **English** (en) - Full support
- ✅ **Arabic** (ar) - Full support with RTL

---

## 🎨 **Theme Support**

- ✅ **Light Theme** - Default
- ✅ **Dark Theme** - Full support
- ✅ **System Theme** - Follow OS preference

---

## 📚 **Additional Resources**

### **External Documentation**
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Documentation](https://dart.dev/guides)
- [Firebase Documentation](https://firebase.google.com/docs)
- [Auto Route](https://pub.dev/packages/auto_route)
- [Freezed](https://pub.dev/packages/freezed)
- [Injectable](https://pub.dev/packages/injectable)

### **Internal References**
- `.cursorrules` - Original architecture rules
- `pubspec.yaml` - Dependencies
- `analysis_options.yaml` - Linter rules

---

## 🔄 **Keeping Documentation Updated**

When adding new patterns or components:

1. Update the relevant guide
2. Add examples
3. Update this README if needed
4. Ensure consistency across guides

---

## ✨ **Welcome to Nojom Development!**

These guides are designed to make you productive quickly while maintaining code quality and consistency. Don't hesitate to refer back to them frequently.

**Happy coding! 🚀**

---

**Last Updated:** October 2025
**Version:** 2.0
**Maintained by:** Nojom Development Team

