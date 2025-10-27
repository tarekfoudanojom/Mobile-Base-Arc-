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

  /// `Welcome to Nojom`
  String get welcome_message {
    return Intl.message(
      'Welcome to Nojom',
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
