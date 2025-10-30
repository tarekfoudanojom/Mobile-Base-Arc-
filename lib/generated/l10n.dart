// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Access Denied`
  String get access_denied {
    return Intl.message(
      'Access Denied',
      name: 'access_denied',
      desc: '',
      args: [],
    );
  }

  /// `Add new item`
  String get add_new_item {
    return Intl.message(
      'Add new item',
      name: 'add_new_item',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get app_cancel {
    return Intl.message(
      'Cancel',
      name: 'app_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get app_confirm {
    return Intl.message(
      'Confirm',
      name: 'app_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get are_you_sure {
    return Intl.message(
      'Are you sure?',
      name: 'are_you_sure',
      desc: '',
      args: [],
    );
  }

  /// `By clicking continue, you agree to`
  String get by_clicking_continue_you_agree_to {
    return Intl.message(
      'By clicking continue, you agree to',
      name: 'by_clicking_continue_you_agree_to',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password identical`
  String get confirmValidation {
    return Intl.message(
      'Please enter the password identical',
      name: 'confirmValidation',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Delete`
  String get confirm_delete {
    return Intl.message(
      'Confirm Delete',
      name: 'confirm_delete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this item?`
  String get confirm_delete_txt {
    return Intl.message(
      'Are you sure you want to delete this item?',
      name: 'confirm_delete_txt',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to save your changes?`
  String get confirm_save_txt {
    return Intl.message(
      'Do you want to save your changes?',
      name: 'confirm_save_txt',
      desc: '',
      args: [],
    );
  }

  /// `Continue Editing`
  String get continue_editing {
    return Intl.message(
      'Continue Editing',
      name: 'continue_editing',
      desc: '',
      args: [],
    );
  }

  /// `Discard`
  String get discard {
    return Intl.message(
      'Discard',
      name: 'discard',
      desc: '',
      args: [],
    );
  }

  /// `Discard Changes`
  String get discard_changes {
    return Intl.message(
      'Discard Changes',
      name: 'discard_changes',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `BAD REQUEST`
  String get error_BadRequest_Error {
    return Intl.message(
      'BAD REQUEST',
      name: 'error_BadRequest_Error',
      desc: '',
      args: [],
    );
  }

  /// `No result found`
  String get error_NotFound_Error {
    return Intl.message(
      'No result found',
      name: 'error_NotFound_Error',
      desc: '',
      args: [],
    );
  }

  /// `TIME OUT`
  String get error_Timeout_Error {
    return Intl.message(
      'TIME OUT',
      name: 'error_Timeout_Error',
      desc: '',
      args: [],
    );
  }

  /// `UNAUTHORIZED`
  String get error_Unauthorized_Error {
    return Intl.message(
      'UNAUTHORIZED',
      name: 'error_Unauthorized_Error',
      desc: '',
      args: [],
    );
  }

  /// `The connection is interrupted`
  String get error_cancel_token {
    return Intl.message(
      'The connection is interrupted',
      name: 'error_cancel_token',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error`
  String get error_conflict {
    return Intl.message(
      'Conflict error',
      name: 'error_conflict',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during the connection`
  String get error_connection {
    return Intl.message(
      'An error occurred during the connection',
      name: 'error_connection',
      desc: '',
      args: [],
    );
  }

  /// `YOU DO NOT HAVE PRIVILEGE`
  String get error_forbidden_error {
    return Intl.message(
      'YOU DO NOT HAVE PRIVILEGE',
      name: 'error_forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get explore {
    return Intl.message(
      'Explore',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `File`
  String get file {
    return Intl.message(
      'File',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `Please enter this field`
  String get fillField {
    return Intl.message(
      'Please enter this field',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get keep_going {
    return Intl.message(
      'Continue',
      name: 'keep_going',
      desc: '',
      args: [],
    );
  }

  /// `Keep It`
  String get keep_it {
    return Intl.message(
      'Keep It',
      name: 'keep_it',
      desc: '',
      args: [],
    );
  }

  /// `Library`
  String get library {
    return Intl.message(
      'Library',
      name: 'library',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid link`
  String get link_validate {
    return Intl.message(
      'Please enter a valid link',
      name: 'link_validate',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loadingText {
    return Intl.message(
      'Loading…',
      name: 'loadingText',
      desc: '',
      args: [],
    );
  }

  /// `Login or Create Account`
  String get login_or_create_account {
    return Intl.message(
      'Login or Create Account',
      name: 'login_or_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get mailValidation {
    return Intl.message(
      'Please enter a valid email',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Should be more than 2 and less than 30`
  String get nameValidation {
    return Intl.message(
      'Should be more than 2 and less than 30',
      name: 'nameValidation',
      desc: '',
      args: [],
    );
  }

  /// `No Results`
  String get noResults {
    return Intl.message(
      'No Results',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Should have Upper and Lower case, numbers and special characters`
  String get passValidation {
    return Intl.message(
      'Should have Upper and Lower case, numbers and special characters',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile phone`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile phone',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get please_enter_valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'please_enter_valid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Removed from`
  String get removed_from_draft_prefix {
    return Intl.message(
      'Removed from',
      name: 'removed_from_draft_prefix',
      desc: '',
      args: [],
    );
  }

  /// `draft`
  String get removed_from_draft_suffix {
    return Intl.message(
      'draft',
      name: 'removed_from_draft_suffix',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Select upload file option`
  String get select_upload_file_option {
    return Intl.message(
      'Select upload file option',
      name: 'select_upload_file_option',
      desc: '',
      args: [],
    );
  }

  /// `Sign in or create an account now to get started`
  String get sign_in_or_create_account_now {
    return Intl.message(
      'Sign in or create an account now to get started',
      name: 'sign_in_or_create_account_now',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up with Phone Number`
  String get sign_up_with_phone_number {
    return Intl.message(
      'Sign Up with Phone Number',
      name: 'sign_up_with_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `File size exceeds {maxSize} MB for: {filesName}`
  String size_more_than_mg_error(double maxSize, String filesName) {
    final NumberFormat maxSizeNumberFormat =
        NumberFormat.decimalPattern(Intl.getCurrentLocale());
    final String maxSizeString = maxSizeNumberFormat.format(maxSize);

    return Intl.message(
      'File size exceeds $maxSizeString MB for: $filesName',
      name: 'size_more_than_mg_error',
      desc: 'Error message when file size exceeds the maximum allowed limit',
      args: [maxSizeString, filesName],
    );
  }

  /// `Please enter a valid Snapchat link`
  String get snap_chat_validate {
    return Intl.message(
      'Please enter a valid Snapchat link',
      name: 'snap_chat_validate',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong.',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions & Privacy Policy`
  String get terms_and_conditions_and_privacy_policy {
    return Intl.message(
      'Terms and Conditions & Privacy Policy',
      name: 'terms_and_conditions_and_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Undo`
  String get undo {
    return Intl.message(
      'Undo',
      name: 'undo',
      desc: '',
      args: [],
    );
  }

  /// `You have unsaved changes. What would you like to do?`
  String get unsaved_changes_subtitle {
    return Intl.message(
      'You have unsaved changes. What would you like to do?',
      name: 'unsaved_changes_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Unsaved Changes`
  String get unsaved_changes_title {
    return Intl.message(
      'Unsaved Changes',
      name: 'unsaved_changes_title',
      desc: '',
      args: [],
    );
  }

  /// `Upload File`
  String get upload_file {
    return Intl.message(
      'Upload File',
      name: 'upload_file',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to MyApp`
  String get welcome_message {
    return Intl.message(
      'Welcome to MyApp',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid video URL`
  String get wrong_url_video {
    return Intl.message(
      'Please enter a valid video URL',
      name: 'wrong_url_video',
      desc: '',
      args: [],
    );
  }

  /// `Send Report`
  String get send_report {
    return Intl.message(
      'Send Report',
      name: 'send_report',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Sent Successfully`
  String get sent_successfully {
    return Intl.message(
      'Sent Successfully',
      name: 'sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get no_internet_connection {
    return Intl.message(
      'No Internet Connection',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get light_mode {
    return Intl.message(
      'Light Mode',
      name: 'light_mode',
      desc: '',
      args: [],
    );
  }

  /// `System Mode`
  String get system_mode {
    return Intl.message(
      'System Mode',
      name: 'system_mode',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Create Order`
  String get create_order {
    return Intl.message(
      'Create Order',
      name: 'create_order',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get view_details {
    return Intl.message(
      'View Details',
      name: 'view_details',
      desc: '',
      args: [],
    );
  }

  /// `Process`
  String get process {
    return Intl.message(
      'Process',
      name: 'process',
      desc: '',
      args: [],
    );
  }

  /// `Customer Information`
  String get customer_information {
    return Intl.message(
      'Customer Information',
      name: 'customer_information',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customer_name {
    return Intl.message(
      'Customer Name',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Customer Email`
  String get customer_email {
    return Intl.message(
      'Customer Email',
      name: 'customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Customer Phone`
  String get customer_phone {
    return Intl.message(
      'Customer Phone',
      name: 'customer_phone',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get shipping_address {
    return Intl.message(
      'Shipping Address',
      name: 'shipping_address',
      desc: '',
      args: [],
    );
  }

  /// `Item Count`
  String get item_count {
    return Intl.message(
      'Item Count',
      name: 'item_count',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Date`
  String get delivery_date {
    return Intl.message(
      'Delivery Date',
      name: 'delivery_date',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message(
      'Credit Card',
      name: 'credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get bank_transfer {
    return Intl.message(
      'Bank Transfer',
      name: 'bank_transfer',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get paypal {
    return Intl.message(
      'PayPal',
      name: 'paypal',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cash_on_delivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cash_on_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Apple Pay`
  String get apple_pay {
    return Intl.message(
      'Apple Pay',
      name: 'apple_pay',
      desc: '',
      args: [],
    );
  }

  /// `Google Pay`
  String get google_pay {
    return Intl.message(
      'Google Pay',
      name: 'google_pay',
      desc: '',
      args: [],
    );
  }

  /// `Order Created Successfully!`
  String get order_created_successfully {
    return Intl.message(
      'Order Created Successfully!',
      name: 'order_created_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get order_number {
    return Intl.message(
      'Order Number',
      name: 'order_number',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get total_amount {
    return Intl.message(
      'Total Amount',
      name: 'total_amount',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get back_to_home {
    return Intl.message(
      'Back to Home',
      name: 'back_to_home',
      desc: '',
      args: [],
    );
  }

  /// `Create Another`
  String get create_another {
    return Intl.message(
      'Create Another',
      name: 'create_another',
      desc: '',
      args: [],
    );
  }

  /// `Customer name is required`
  String get customer_name_required {
    return Intl.message(
      'Customer name is required',
      name: 'customer_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Customer name must be at least 2 characters`
  String get customer_name_min_length {
    return Intl.message(
      'Customer name must be at least 2 characters',
      name: 'customer_name_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Customer email is required`
  String get customer_email_required {
    return Intl.message(
      'Customer email is required',
      name: 'customer_email_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get customer_email_invalid {
    return Intl.message(
      'Please enter a valid email address',
      name: 'customer_email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be at least 10 digits`
  String get customer_phone_min_length {
    return Intl.message(
      'Phone number must be at least 10 digits',
      name: 'customer_phone_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Shipping address is required`
  String get shipping_address_required {
    return Intl.message(
      'Shipping address is required',
      name: 'shipping_address_required',
      desc: '',
      args: [],
    );
  }

  /// `Shipping address must be at least 10 characters`
  String get shipping_address_min_length {
    return Intl.message(
      'Shipping address must be at least 10 characters',
      name: 'shipping_address_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Item count is required`
  String get item_count_required {
    return Intl.message(
      'Item count is required',
      name: 'item_count_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid number`
  String get item_count_invalid {
    return Intl.message(
      'Please enter a valid number',
      name: 'item_count_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Item count must be greater than 0`
  String get item_count_min {
    return Intl.message(
      'Item count must be greater than 0',
      name: 'item_count_min',
      desc: '',
      args: [],
    );
  }

  /// `Payment method is required`
  String get payment_method_required {
    return Intl.message(
      'Payment method is required',
      name: 'payment_method_required',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully`
  String get order_created_success {
    return Intl.message(
      'Order created successfully',
      name: 'order_created_success',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred`
  String get unexpected_error {
    return Intl.message(
      'An unexpected error occurred',
      name: 'unexpected_error',
      desc: '',
      args: [],
    );
  }

  /// `Order not found`
  String get order_not_found {
    return Intl.message(
      'Order not found',
      name: 'order_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Always use light theme`
  String get always_use_light_theme {
    return Intl.message(
      'Always use light theme',
      name: 'always_use_light_theme',
      desc: '',
      args: [],
    );
  }

  /// `Always use dark theme`
  String get always_use_dark_theme {
    return Intl.message(
      'Always use dark theme',
      name: 'always_use_dark_theme',
      desc: '',
      args: [],
    );
  }

  /// `Follow system setting`
  String get follow_system_setting {
    return Intl.message(
      'Follow system setting',
      name: 'follow_system_setting',
      desc: '',
      args: [],
    );
  }

  /// `Search orders...`
  String get search_orders {
    return Intl.message(
      'Search orders...',
      name: 'search_orders',
      desc: '',
      args: [],
    );
  }

  /// `All Orders`
  String get all_orders {
    return Intl.message(
      'All Orders',
      name: 'all_orders',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get processing {
    return Intl.message(
      'Processing',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `No orders found`
  String get no_orders_found {
    return Intl.message(
      'No orders found',
      name: 'no_orders_found',
      desc: '',
      args: [],
    );
  }

  /// `Pull down to refresh or try a different filter`
  String get pull_to_refresh_or_filter {
    return Intl.message(
      'Pull down to refresh or try a different filter',
      name: 'pull_to_refresh_or_filter',
      desc: '',
      args: [],
    );
  }

  /// `Notes (Optional)`
  String get notes_optional {
    return Intl.message(
      'Notes (Optional)',
      name: 'notes_optional',
      desc: '',
      args: [],
    );
  }

  /// `Order Notes (Optional)`
  String get order_notes_optional {
    return Intl.message(
      'Order Notes (Optional)',
      name: 'order_notes_optional',
      desc: '',
      args: [],
    );
  }

  /// `Payment & Delivery`
  String get payment_delivery {
    return Intl.message(
      'Payment & Delivery',
      name: 'payment_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Select payment method`
  String get select_payment_method {
    return Intl.message(
      'Select payment method',
      name: 'select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method`
  String get select_payment_method_title {
    return Intl.message(
      'Select Payment Method',
      name: 'select_payment_method_title',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Date (Optional)`
  String get delivery_date_optional {
    return Intl.message(
      'Delivery Date (Optional)',
      name: 'delivery_date_optional',
      desc: '',
      args: [],
    );
  }

  /// `Select delivery date`
  String get select_delivery_date {
    return Intl.message(
      'Select delivery date',
      name: 'select_delivery_date',
      desc: '',
      args: [],
    );
  }

  /// `Customer Phone (Optional)`
  String get customer_phone_optional {
    return Intl.message(
      'Customer Phone (Optional)',
      name: 'customer_phone_optional',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully! Order #{orderNumber}`
  String order_created_success_message(Object orderNumber) {
    return Intl.message(
      'Order created successfully! Order #$orderNumber',
      name: 'order_created_success_message',
      desc: '',
      args: [orderNumber],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
