import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'intl_ar.dart';
import 'intl_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/intl.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @access_denied.
  ///
  /// In en, this message translates to:
  /// **'Access Denied'**
  String get access_denied;

  /// No description provided for @add_new_item.
  ///
  /// In en, this message translates to:
  /// **'Add new item'**
  String get add_new_item;

  /// No description provided for @app_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get app_cancel;

  /// No description provided for @app_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get app_confirm;

  /// No description provided for @are_you_sure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get are_you_sure;

  /// No description provided for @by_clicking_continue_you_agree_to.
  ///
  /// In en, this message translates to:
  /// **'By clicking continue, you agree to'**
  String get by_clicking_continue_you_agree_to;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirmValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter the password identical'**
  String get confirmValidation;

  /// No description provided for @confirm_delete.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirm_delete;

  /// No description provided for @confirm_delete_txt.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this item?'**
  String get confirm_delete_txt;

  /// No description provided for @confirm_save_txt.
  ///
  /// In en, this message translates to:
  /// **'Do you want to save your changes?'**
  String get confirm_save_txt;

  /// No description provided for @continue_editing.
  ///
  /// In en, this message translates to:
  /// **'Continue Editing'**
  String get continue_editing;

  /// No description provided for @discard.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// No description provided for @discard_changes.
  ///
  /// In en, this message translates to:
  /// **'Discard Changes'**
  String get discard_changes;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @error_BadRequest_Error.
  ///
  /// In en, this message translates to:
  /// **'BAD REQUEST'**
  String get error_BadRequest_Error;

  /// No description provided for @error_NotFound_Error.
  ///
  /// In en, this message translates to:
  /// **'No result found'**
  String get error_NotFound_Error;

  /// No description provided for @error_Timeout_Error.
  ///
  /// In en, this message translates to:
  /// **'TIME OUT'**
  String get error_Timeout_Error;

  /// No description provided for @error_Unauthorized_Error.
  ///
  /// In en, this message translates to:
  /// **'UNAUTHORIZED'**
  String get error_Unauthorized_Error;

  /// No description provided for @error_cancel_token.
  ///
  /// In en, this message translates to:
  /// **'The connection is interrupted'**
  String get error_cancel_token;

  /// No description provided for @error_conflict.
  ///
  /// In en, this message translates to:
  /// **'Conflict error'**
  String get error_conflict;

  /// No description provided for @error_connection.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the connection'**
  String get error_connection;

  /// No description provided for @error_forbidden_error.
  ///
  /// In en, this message translates to:
  /// **'YOU DO NOT HAVE PRIVILEGE'**
  String get error_forbidden_error;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @file.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get file;

  /// No description provided for @fillField.
  ///
  /// In en, this message translates to:
  /// **'Please enter this field'**
  String get fillField;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @keep_going.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get keep_going;

  /// No description provided for @keep_it.
  ///
  /// In en, this message translates to:
  /// **'Keep It'**
  String get keep_it;

  /// No description provided for @library.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get library;

  /// No description provided for @link_validate.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid link'**
  String get link_validate;

  /// No description provided for @loadingText.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loadingText;

  /// No description provided for @login_or_create_account.
  ///
  /// In en, this message translates to:
  /// **'Login or Create Account'**
  String get login_or_create_account;

  /// No description provided for @mailValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get mailValidation;

  /// No description provided for @nameValidation.
  ///
  /// In en, this message translates to:
  /// **'Should be more than 2 and less than 30'**
  String get nameValidation;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No Results'**
  String get noResults;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @passValidation.
  ///
  /// In en, this message translates to:
  /// **'Should have Upper and Lower case, numbers and special characters'**
  String get passValidation;

  /// No description provided for @phoneValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid mobile phone'**
  String get phoneValidation;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @please_enter_valid_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get please_enter_valid_phone_number;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @removed_from_draft_prefix.
  ///
  /// In en, this message translates to:
  /// **'Removed from'**
  String get removed_from_draft_prefix;

  /// No description provided for @removed_from_draft_suffix.
  ///
  /// In en, this message translates to:
  /// **'draft'**
  String get removed_from_draft_suffix;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get save_changes;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @select_upload_file_option.
  ///
  /// In en, this message translates to:
  /// **'Select upload file option'**
  String get select_upload_file_option;

  /// No description provided for @sign_in_or_create_account_now.
  ///
  /// In en, this message translates to:
  /// **'Sign in or create an account now to get started'**
  String get sign_in_or_create_account_now;

  /// No description provided for @sign_up_with_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Sign Up with Phone Number'**
  String get sign_up_with_phone_number;

  /// Error message when file size exceeds the maximum allowed limit
  ///
  /// In en, this message translates to:
  /// **'File size exceeds {maxSize} MB for: {filesName}'**
  String size_more_than_mg_error(double maxSize, String filesName);

  /// No description provided for @snap_chat_validate.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid Snapchat link'**
  String get snap_chat_validate;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get something_went_wrong;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @terms_and_conditions_and_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions & Privacy Policy'**
  String get terms_and_conditions_and_privacy_policy;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @unsaved_changes_subtitle.
  ///
  /// In en, this message translates to:
  /// **'You have unsaved changes. What would you like to do?'**
  String get unsaved_changes_subtitle;

  /// No description provided for @unsaved_changes_title.
  ///
  /// In en, this message translates to:
  /// **'Unsaved Changes'**
  String get unsaved_changes_title;

  /// No description provided for @upload_file.
  ///
  /// In en, this message translates to:
  /// **'Upload File'**
  String get upload_file;

  /// No description provided for @welcome_message.
  ///
  /// In en, this message translates to:
  /// **'Welcome to MyApp'**
  String get welcome_message;

  /// No description provided for @wrong_url_video.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid video URL'**
  String get wrong_url_video;

  /// No description provided for @send_report.
  ///
  /// In en, this message translates to:
  /// **'Send Report'**
  String get send_report;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @sent_successfully.
  ///
  /// In en, this message translates to:
  /// **'Sent Successfully'**
  String get sent_successfully;

  /// No description provided for @no_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get no_internet_connection;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get dark_mode;

  /// No description provided for @light_mode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get light_mode;

  /// No description provided for @system_mode.
  ///
  /// In en, this message translates to:
  /// **'System Mode'**
  String get system_mode;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @create_order.
  ///
  /// In en, this message translates to:
  /// **'Create Order'**
  String get create_order;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get items;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @view_details.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get view_details;

  /// No description provided for @process.
  ///
  /// In en, this message translates to:
  /// **'Process'**
  String get process;

  /// No description provided for @customer_information.
  ///
  /// In en, this message translates to:
  /// **'Customer Information'**
  String get customer_information;

  /// No description provided for @customer_name.
  ///
  /// In en, this message translates to:
  /// **'Customer Name'**
  String get customer_name;

  /// No description provided for @customer_email.
  ///
  /// In en, this message translates to:
  /// **'Customer Email'**
  String get customer_email;

  /// No description provided for @customer_phone.
  ///
  /// In en, this message translates to:
  /// **'Customer Phone'**
  String get customer_phone;

  /// No description provided for @shipping_address.
  ///
  /// In en, this message translates to:
  /// **'Shipping Address'**
  String get shipping_address;

  /// No description provided for @item_count.
  ///
  /// In en, this message translates to:
  /// **'Item Count'**
  String get item_count;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @delivery_date.
  ///
  /// In en, this message translates to:
  /// **'Delivery Date'**
  String get delivery_date;

  /// No description provided for @credit_card.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get credit_card;

  /// No description provided for @bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get bank_transfer;

  /// No description provided for @paypal.
  ///
  /// In en, this message translates to:
  /// **'PayPal'**
  String get paypal;

  /// No description provided for @cash_on_delivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on Delivery'**
  String get cash_on_delivery;

  /// No description provided for @apple_pay.
  ///
  /// In en, this message translates to:
  /// **'Apple Pay'**
  String get apple_pay;

  /// No description provided for @google_pay.
  ///
  /// In en, this message translates to:
  /// **'Google Pay'**
  String get google_pay;

  /// No description provided for @order_created_successfully.
  ///
  /// In en, this message translates to:
  /// **'Order Created Successfully!'**
  String get order_created_successfully;

  /// No description provided for @order_number.
  ///
  /// In en, this message translates to:
  /// **'Order Number'**
  String get order_number;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get customer;

  /// No description provided for @back_to_home.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get back_to_home;

  /// No description provided for @create_another.
  ///
  /// In en, this message translates to:
  /// **'Create Another'**
  String get create_another;

  /// No description provided for @customer_name_required.
  ///
  /// In en, this message translates to:
  /// **'Customer name is required'**
  String get customer_name_required;

  /// No description provided for @customer_name_min_length.
  ///
  /// In en, this message translates to:
  /// **'Customer name must be at least 2 characters'**
  String get customer_name_min_length;

  /// No description provided for @customer_email_required.
  ///
  /// In en, this message translates to:
  /// **'Customer email is required'**
  String get customer_email_required;

  /// No description provided for @customer_email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get customer_email_invalid;

  /// No description provided for @customer_phone_min_length.
  ///
  /// In en, this message translates to:
  /// **'Phone number must be at least 10 digits'**
  String get customer_phone_min_length;

  /// No description provided for @shipping_address_required.
  ///
  /// In en, this message translates to:
  /// **'Shipping address is required'**
  String get shipping_address_required;

  /// No description provided for @shipping_address_min_length.
  ///
  /// In en, this message translates to:
  /// **'Shipping address must be at least 10 characters'**
  String get shipping_address_min_length;

  /// No description provided for @item_count_required.
  ///
  /// In en, this message translates to:
  /// **'Item count is required'**
  String get item_count_required;

  /// No description provided for @item_count_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get item_count_invalid;

  /// No description provided for @item_count_min.
  ///
  /// In en, this message translates to:
  /// **'Item count must be greater than 0'**
  String get item_count_min;

  /// No description provided for @payment_method_required.
  ///
  /// In en, this message translates to:
  /// **'Payment method is required'**
  String get payment_method_required;

  /// No description provided for @order_created_success.
  ///
  /// In en, this message translates to:
  /// **'Order created successfully'**
  String get order_created_success;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpected_error;

  /// No description provided for @order_not_found.
  ///
  /// In en, this message translates to:
  /// **'Order not found'**
  String get order_not_found;

  /// No description provided for @always_use_light_theme.
  ///
  /// In en, this message translates to:
  /// **'Always use light theme'**
  String get always_use_light_theme;

  /// No description provided for @always_use_dark_theme.
  ///
  /// In en, this message translates to:
  /// **'Always use dark theme'**
  String get always_use_dark_theme;

  /// No description provided for @follow_system_setting.
  ///
  /// In en, this message translates to:
  /// **'Follow system setting'**
  String get follow_system_setting;

  /// No description provided for @search_orders.
  ///
  /// In en, this message translates to:
  /// **'Search orders...'**
  String get search_orders;

  /// No description provided for @all_orders.
  ///
  /// In en, this message translates to:
  /// **'All Orders'**
  String get all_orders;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @shipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get shipped;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @no_orders_found.
  ///
  /// In en, this message translates to:
  /// **'No orders found'**
  String get no_orders_found;

  /// No description provided for @pull_to_refresh_or_filter.
  ///
  /// In en, this message translates to:
  /// **'Pull down to refresh or try a different filter'**
  String get pull_to_refresh_or_filter;

  /// No description provided for @notes_optional.
  ///
  /// In en, this message translates to:
  /// **'Notes (Optional)'**
  String get notes_optional;

  /// No description provided for @order_notes_optional.
  ///
  /// In en, this message translates to:
  /// **'Order Notes (Optional)'**
  String get order_notes_optional;

  /// No description provided for @payment_delivery.
  ///
  /// In en, this message translates to:
  /// **'Payment & Delivery'**
  String get payment_delivery;

  /// No description provided for @select_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Select payment method'**
  String get select_payment_method;

  /// No description provided for @select_payment_method_title.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method'**
  String get select_payment_method_title;

  /// No description provided for @delivery_date_optional.
  ///
  /// In en, this message translates to:
  /// **'Delivery Date (Optional)'**
  String get delivery_date_optional;

  /// No description provided for @select_delivery_date.
  ///
  /// In en, this message translates to:
  /// **'Select delivery date'**
  String get select_delivery_date;

  /// No description provided for @customer_phone_optional.
  ///
  /// In en, this message translates to:
  /// **'Customer Phone (Optional)'**
  String get customer_phone_optional;

  /// No description provided for @order_created_success_message.
  ///
  /// In en, this message translates to:
  /// **'Order created successfully! Order #{orderNumber}'**
  String order_created_success_message(Object orderNumber);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
