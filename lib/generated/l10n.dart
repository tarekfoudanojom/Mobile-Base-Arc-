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

  /// `TRY AGAIN`
  String get tryAgain {
    return Intl.message(
      'TRY AGAIN',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `INTERNAL SERVER ERROR`
  String get error_internal_server {
    return Intl.message(
      'INTERNAL SERVER ERROR',
      name: 'error_internal_server',
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

  /// `AN UNEXPECTED ERROR OCCURRED`
  String get error_general {
    return Intl.message(
      'AN UNEXPECTED ERROR OCCURRED',
      name: 'error_general',
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

  /// `YOU DO NOT HAVE PRIVILEGE`
  String get error_forbidden_error {
    return Intl.message(
      'YOU DO NOT HAVE PRIVILEGE',
      name: 'error_forbidden_error',
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

  /// `Connection error`
  String get error_connection_lost {
    return Intl.message(
      'Connection error',
      name: 'error_connection_lost',
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

  /// `Passwords do not match`
  String get error_confirm_password {
    return Intl.message(
      'Passwords do not match',
      name: 'error_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Bank name`
  String get bankName {
    return Intl.message(
      'Bank name',
      name: 'bankName',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
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

  /// `Should have Upper and Lower case, numbers and special characters`
  String get passValidation {
    return Intl.message(
      'Should have Upper and Lower case, numbers and special characters',
      name: 'passValidation',
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

  /// `Please enter a valid mobile phone`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile phone',
      name: 'phoneValidation',
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

  /// `Please enter the address`
  String get AddressValidation {
    return Intl.message(
      'Please enter the address',
      name: 'AddressValidation',
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

  /// `No internet connection`
  String get error_socket {
    return Intl.message(
      'No internet connection',
      name: 'error_socket',
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

  /// `Logout`
  String get label_logout {
    return Intl.message(
      'Logout',
      name: 'label_logout',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get label_change_language {
    return Intl.message(
      'Change language',
      name: 'label_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get label_choose_language {
    return Intl.message(
      'Choose language',
      name: 'label_choose_language',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get label_app_language {
    return Intl.message(
      'Language',
      name: 'label_app_language',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get label_Login {
    return Intl.message(
      'Login',
      name: 'label_Login',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number to continue`
  String get login_subtitle {
    return Intl.message(
      'Enter your phone number to continue',
      name: 'login_subtitle',
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

  /// `Enter with your phone number`
  String get sign_up_with_phone_number {
    return Intl.message(
      'Enter with your phone number',
      name: 'sign_up_with_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Sign in or create your account automatically now to create and manage campaigns, request services, communicate with influencers, and more...`
  String get sign_in_or_create_account_now {
    return Intl.message(
      'Sign in or create your account automatically now to create and manage campaigns, request services, communicate with influencers, and more...',
      name: 'sign_in_or_create_account_now',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number.`
  String get please_enter_valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number.',
      name: 'please_enter_valid_phone_number',
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

  /// `Terms and Conditions and Privacy Policy`
  String get terms_and_conditions_and_privacy_policy {
    return Intl.message(
      'Terms and Conditions and Privacy Policy',
      name: 'terms_and_conditions_and_privacy_policy',
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

  /// `Register`
  String get label_register {
    return Intl.message(
      'Register',
      name: 'label_register',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get label_forget_pass {
    return Intl.message(
      'Forget password?',
      name: 'label_forget_pass',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get label_phone {
    return Intl.message(
      'Phone number',
      name: 'label_phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get label_email {
    return Intl.message(
      'Email',
      name: 'label_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get label_password {
    return Intl.message(
      'Password',
      name: 'label_password',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get label_full_name {
    return Intl.message(
      'Full name',
      name: 'label_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get label_confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'label_confirm_password',
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

  /// `Loading…`
  String get loadingText {
    return Intl.message(
      'Loading…',
      name: 'loadingText',
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
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
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

  /// `Failure Actions`
  String get failureActions {
    return Intl.message(
      'Failure Actions',
      name: 'failureActions',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Add to a favorite`
  String get favorites_add_to_favorites_title {
    return Intl.message(
      'Add to a favorite',
      name: 'favorites_add_to_favorites_title',
      desc: '',
      args: [],
    );
  }

  /// `Manage Favorites`
  String get favorites_manage_favorites_title {
    return Intl.message(
      'Manage Favorites',
      name: 'favorites_manage_favorites_title',
      desc: '',
      args: [],
    );
  }

  /// `Create new list`
  String get favorites_create_list {
    return Intl.message(
      'Create new list',
      name: 'favorites_create_list',
      desc: '',
      args: [],
    );
  }

  /// `Create New List`
  String get favorites_create_new_list {
    return Intl.message(
      'Create New List',
      name: 'favorites_create_new_list',
      desc: '',
      args: [],
    );
  }

  /// `Create a personalized list to organize your favorite influencers`
  String get favorites_create_list_description {
    return Intl.message(
      'Create a personalized list to organize your favorite influencers',
      name: 'favorites_create_list_description',
      desc: '',
      args: [],
    );
  }

  /// `Create your first list`
  String get favorites_create_first_list {
    return Intl.message(
      'Create your first list',
      name: 'favorites_create_first_list',
      desc: '',
      args: [],
    );
  }

  /// `List name`
  String get favorites_list_name {
    return Intl.message(
      'List name',
      name: 'favorites_list_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter list name`
  String get favorites_list_name_hint {
    return Intl.message(
      'Enter list name',
      name: 'favorites_list_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `List names are limited to 30 characters to ensure proper display`
  String get favorites_character_limit_note {
    return Intl.message(
      'List names are limited to 30 characters to ensure proper display',
      name: 'favorites_character_limit_note',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get favorites_edit_lists_title {
    return Intl.message(
      'Edit',
      name: 'favorites_edit_lists_title',
      desc: '',
      args: [],
    );
  }

  /// `Delete List`
  String get favorites_delete_list_title {
    return Intl.message(
      'Delete List',
      name: 'favorites_delete_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete list`
  String get favorites_delete_list_message {
    return Intl.message(
      'Are you sure you want to delete list',
      name: 'favorites_delete_list_message',
      desc: '',
      args: [],
    );
  }

  /// `List deleted successfully`
  String get favorites_list_deleted_successfully {
    return Intl.message(
      'List deleted successfully',
      name: 'favorites_list_deleted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while deleting list`
  String get favorites_delete_list_error {
    return Intl.message(
      'Error occurred while deleting list',
      name: 'favorites_delete_list_error',
      desc: '',
      args: [],
    );
  }

  /// `Lists reordered successfully`
  String get favorites_lists_reordered_successfully {
    return Intl.message(
      'Lists reordered successfully',
      name: 'favorites_lists_reordered_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while reordering lists`
  String get favorites_reorder_error {
    return Intl.message(
      'Error occurred while reordering lists',
      name: 'favorites_reorder_error',
      desc: '',
      args: [],
    );
  }

  /// `List restored successfully`
  String get favorites_list_restored_successfully {
    return Intl.message(
      'List restored successfully',
      name: 'favorites_list_restored_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while undoing deletion`
  String get favorites_undo_error {
    return Intl.message(
      'Error occurred while undoing deletion',
      name: 'favorites_undo_error',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while renaming list`
  String get favorites_rename_error {
    return Intl.message(
      'Error occurred while renaming list',
      name: 'favorites_rename_error',
      desc: '',
      args: [],
    );
  }

  /// `Lists updated successfully`
  String get favorites_lists_updated_successfully {
    return Intl.message(
      'Lists updated successfully',
      name: 'favorites_lists_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Some list updates failed`
  String get favorites_some_updates_failed {
    return Intl.message(
      'Some list updates failed',
      name: 'favorites_some_updates_failed',
      desc: '',
      args: [],
    );
  }

  /// `Character limit exceeded`
  String get favorites_character_limit_exceeded {
    return Intl.message(
      'Character limit exceeded',
      name: 'favorites_character_limit_exceeded',
      desc: '',
      args: [],
    );
  }

  /// `You didn't create any lists yet`
  String get favorites_no_lists_title {
    return Intl.message(
      'You didn\'t create any lists yet',
      name: 'favorites_no_lists_title',
      desc: '',
      args: [],
    );
  }

  /// `Create your first list to start organizing your favorite influencers`
  String get favorites_no_lists_description {
    return Intl.message(
      'Create your first list to start organizing your favorite influencers',
      name: 'favorites_no_lists_description',
      desc: '',
      args: [],
    );
  }

  /// `Create a list to add this influencer to your favorites`
  String get favorites_no_lists_description_add {
    return Intl.message(
      'Create a list to add this influencer to your favorites',
      name: 'favorites_no_lists_description_add',
      desc: '',
      args: [],
    );
  }

  /// `Select or deselect lists to manage where this influencer appears`
  String get favorites_manage_description {
    return Intl.message(
      'Select or deselect lists to manage where this influencer appears',
      name: 'favorites_manage_description',
      desc: '',
      args: [],
    );
  }

  /// `Empty list`
  String get favorites_empty_list {
    return Intl.message(
      'Empty list',
      name: 'favorites_empty_list',
      desc: '',
      args: [],
    );
  }

  /// `Create & Add`
  String get create_and_add {
    return Intl.message(
      'Create & Add',
      name: 'create_and_add',
      desc: '',
      args: [],
    );
  }

  /// `Add List`
  String get add_list {
    return Intl.message(
      'Add List',
      name: 'add_list',
      desc: '',
      args: [],
    );
  }

  /// `lists`
  String get lists {
    return Intl.message(
      'lists',
      name: 'lists',
      desc: '',
      args: [],
    );
  }

  /// `Influencer added to`
  String get influencer_added_to {
    return Intl.message(
      'Influencer added to',
      name: 'influencer_added_to',
      desc: '',
      args: [],
    );
  }

  /// `Influencer removed from favorites`
  String get influencer_removed_from_favorites {
    return Intl.message(
      'Influencer removed from favorites',
      name: 'influencer_removed_from_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Influencer added to favorites`
  String get toast_influencer_added_to_favorites {
    return Intl.message(
      'Influencer added to favorites',
      name: 'toast_influencer_added_to_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Influencer removed from all lists`
  String get toast_influencer_removed_all {
    return Intl.message(
      'Influencer removed from all lists',
      name: 'toast_influencer_removed_all',
      desc: '',
      args: [],
    );
  }

  /// `Favorites updated successfully`
  String get toast_favorites_updated {
    return Intl.message(
      'Favorites updated successfully',
      name: 'toast_favorites_updated',
      desc: '',
      args: [],
    );
  }

  /// `Favorites updated`
  String get toast_influencer_removed_from_favorites {
    return Intl.message(
      'Favorites updated',
      name: 'toast_influencer_removed_from_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Rename`
  String get rename {
    return Intl.message(
      'Rename',
      name: 'rename',
      desc: '',
      args: [],
    );
  }

  /// `Rename List`
  String get rename_list {
    return Intl.message(
      'Rename List',
      name: 'rename_list',
      desc: '',
      args: [],
    );
  }

  /// `Delete List`
  String get delete_list {
    return Intl.message(
      'Delete List',
      name: 'delete_list',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this list? This action cannot be undone.`
  String get delete_list_confirmation {
    return Intl.message(
      'Are you sure you want to delete this list? This action cannot be undone.',
      name: 'delete_list_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Access denied`
  String get access_denied {
    return Intl.message(
      'Access denied',
      name: 'access_denied',
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

  /// `Pick`
  String get pick {
    return Intl.message(
      'Pick',
      name: 'pick',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Files size must be less than {MB} MB, {files}`
  String size_more_than_mg_error(Object MB, Object files) {
    return Intl.message(
      'Files size must be less than $MB MB, $files',
      name: 'size_more_than_mg_error',
      desc: '',
      args: [MB, files],
    );
  }

  /// `No internet connection`
  String get no_internet_connection {
    return Intl.message(
      'No internet connection',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Internet connected`
  String get internet_connected {
    return Intl.message(
      'Internet connected',
      name: 'internet_connected',
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

  /// `Enter valid username link`
  String get snap_chat_validate {
    return Intl.message(
      'Enter valid username link',
      name: 'snap_chat_validate',
      desc: '',
      args: [],
    );
  }

  /// `Oops! The link you entered seems to be incorrect. Please check the URL and try again. If you need assistance, feel free to contact our support team`
  String get link_validate {
    return Intl.message(
      'Oops! The link you entered seems to be incorrect. Please check the URL and try again. If you need assistance, feel free to contact our support team',
      name: 'link_validate',
      desc: '',
      args: [],
    );
  }

  /// `Should be english letters`
  String get english_name_validation {
    return Intl.message(
      'Should be english letters',
      name: 'english_name_validation',
      desc: '',
      args: [],
    );
  }

  /// `Should be arabic letters`
  String get arabic_name_validation {
    return Intl.message(
      'Should be arabic letters',
      name: 'arabic_name_validation',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `عربي`
  String get lang {
    return Intl.message(
      'عربي',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Shine with the Stars`
  String get shine_with_stars {
    return Intl.message(
      'Shine with the Stars',
      name: 'shine_with_stars',
      desc: '',
      args: [],
    );
  }

  /// `Join our platform to be part of an exclusive community of celebrities and influencers.`
  String get join_platform {
    return Intl.message(
      'Join our platform to be part of an exclusive community of celebrities and influencers.',
      name: 'join_platform',
      desc: '',
      args: [],
    );
  }

  /// `Exceptional Experience`
  String get exceptional_exp {
    return Intl.message(
      'Exceptional Experience',
      name: 'exceptional_exp',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy an outstanding user experience and exclusive features just for celebrities.`
  String get enjoy_outstanding {
    return Intl.message(
      'Enjoy an outstanding user experience and exclusive features just for celebrities.',
      name: 'enjoy_outstanding',
      desc: '',
      args: [],
    );
  }

  /// `New Opportunities`
  String get new_opportunities {
    return Intl.message(
      'New Opportunities',
      name: 'new_opportunities',
      desc: '',
      args: [],
    );
  }

  /// `Join us and discover collaboration\n opportunities with prestigious brands and\n global companies.`
  String get join_us {
    return Intl.message(
      'Join us and discover collaboration\n opportunities with prestigious brands and\n global companies.',
      name: 'join_us',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcome_back {
    return Intl.message(
      'Welcome Back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `We'll send a verification code to your number so you can login`
  String get login_verify {
    return Intl.message(
      'We\'ll send a verification code to your number so you can login',
      name: 'login_verify',
      desc: '',
      args: [],
    );
  }

  /// `Download Company App`
  String get download_company_app {
    return Intl.message(
      'Download Company App',
      name: 'download_company_app',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Create new account?`
  String get new_account {
    return Intl.message(
      'Create new account?',
      name: 'new_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get user_name {
    return Intl.message(
      'Username',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_pass {
    return Intl.message(
      'Forgot password',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `We'll send a verification code to your number so you can change your password`
  String get forgot_pass_verify {
    return Intl.message(
      'We\'ll send a verification code to your number so you can change your password',
      name: 'forgot_pass_verify',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_code {
    return Intl.message(
      'Send Code',
      name: 'send_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter 6-digit code`
  String get enter_code {
    return Intl.message(
      'Enter 6-digit code',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Your code was sent to`
  String get send_to {
    return Intl.message(
      'Your code was sent to',
      name: 'send_to',
      desc: '',
      args: [],
    );
  }

  /// `Oops! The code you entered is incorrect. Please check the code and try again. `
  String get wrong_code {
    return Intl.message(
      'Oops! The code you entered is incorrect. Please check the code and try again. ',
      name: 'wrong_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get re_send_code {
    return Intl.message(
      'Resend code',
      name: 're_send_code',
      desc: '',
      args: [],
    );
  }

  /// `Re-send again in`
  String get send_again {
    return Intl.message(
      'Re-send again in',
      name: 'send_again',
      desc: '',
      args: [],
    );
  }

  /// `s`
  String get seconds {
    return Intl.message(
      's',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `OTP Send Successful`
  String get otp_send {
    return Intl.message(
      'OTP Send Successful',
      name: 'otp_send',
      desc: '',
      args: [],
    );
  }

  /// `Add your socials`
  String get add_socials {
    return Intl.message(
      'Add your socials',
      name: 'add_socials',
      desc: '',
      args: [],
    );
  }

  /// `The more information brands get about your account, the more tasks they will be able to offer you.`
  String get more_brand_info {
    return Intl.message(
      'The more information brands get about your account, the more tasks they will be able to offer you.',
      name: 'more_brand_info',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get upload_image {
    return Intl.message(
      'Upload Image',
      name: 'upload_image',
      desc: '',
      args: [],
    );
  }

  /// `optional`
  String get option {
    return Intl.message(
      'optional',
      name: 'option',
      desc: '',
      args: [],
    );
  }

  /// `Use a size that's at least `
  String get minimum_size {
    return Intl.message(
      'Use a size that\'s at least ',
      name: 'minimum_size',
      desc: '',
      args: [],
    );
  }

  /// `pixels `
  String get pixels {
    return Intl.message(
      'pixels ',
      name: 'pixels',
      desc: '',
      args: [],
    );
  }

  /// `Custom Link`
  String get custom_link {
    return Intl.message(
      'Custom Link',
      name: 'custom_link',
      desc: '',
      args: [],
    );
  }

  /// `We will respond within`
  String get respond_within {
    return Intl.message(
      'We will respond within',
      name: 'respond_within',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `The deposit process takes from 5 minutes to 2 business days`
  String get deposit_process {
    return Intl.message(
      'The deposit process takes from 5 minutes to 2 business days',
      name: 'deposit_process',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get ok {
    return Intl.message(
      'Okay',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok_txt {
    return Intl.message(
      'Ok',
      name: 'ok_txt',
      desc: '',
      args: [],
    );
  }

  /// `Name of Platform`
  String get platform_name {
    return Intl.message(
      'Name of Platform',
      name: 'platform_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter link`
  String get enter_link {
    return Intl.message(
      'Enter link',
      name: 'enter_link',
      desc: '',
      args: [],
    );
  }

  /// `save`
  String get Save {
    return Intl.message(
      'save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Add a profile picture`
  String get add_profile_pic {
    return Intl.message(
      'Add a profile picture',
      name: 'add_profile_pic',
      desc: '',
      args: [],
    );
  }

  /// `Add your public profile picture.`
  String get public_profile_pic {
    return Intl.message(
      'Add your public profile picture.',
      name: 'public_profile_pic',
      desc: '',
      args: [],
    );
  }

  /// `Visible to everyone`
  String get visible {
    return Intl.message(
      'Visible to everyone',
      name: 'visible',
      desc: '',
      args: [],
    );
  }

  /// `Show all your socials media links.`
  String get show_socials_links {
    return Intl.message(
      'Show all your socials media links.',
      name: 'show_socials_links',
      desc: '',
      args: [],
    );
  }

  /// `Add more socials media`
  String get add_more_socials {
    return Intl.message(
      'Add more socials media',
      name: 'add_more_socials',
      desc: '',
      args: [],
    );
  }

  /// `Claim your nojom link`
  String get claim_link {
    return Intl.message(
      'Claim your nojom link',
      name: 'claim_link',
      desc: '',
      args: [],
    );
  }

  /// `This will be your Nojom link to showcase everything. Please choose a good username.`
  String get represent_user_name {
    return Intl.message(
      'This will be your Nojom link to showcase everything. Please choose a good username.',
      name: 'represent_user_name',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully reset your\n password. Please use your new\n password when logging in.`
  String get confirm_message {
    return Intl.message(
      'You have successfully reset your\n password. Please use your new\n password when logging in.',
      name: 'confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Password reset successful`
  String get pass_reset_success {
    return Intl.message(
      'Password reset successful',
      name: 'pass_reset_success',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your public name in English and Arabic.`
  String get enter_public_name {
    return Intl.message(
      'Enter your public name in English and Arabic.',
      name: 'enter_public_name',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get reset_pass {
    return Intl.message(
      'Reset password',
      name: 'reset_pass',
      desc: '',
      args: [],
    );
  }

  /// `Your new password must be different from previously used passwords.`
  String get new_pass_message {
    return Intl.message(
      'Your new password must be different from previously used passwords.',
      name: 'new_pass_message',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `What's your gender?`
  String get gender {
    return Intl.message(
      'What\'s your gender?',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `This helps brands filter and find you.`
  String get help_brands_in_filter {
    return Intl.message(
      'This helps brands filter and find you.',
      name: 'help_brands_in_filter',
      desc: '',
      args: [],
    );
  }

  /// `Visible to `
  String get visible_to {
    return Intl.message(
      'Visible to ',
      name: 'visible_to',
      desc: '',
      args: [],
    );
  }

  /// `Everyone`
  String get everyone {
    return Intl.message(
      'Everyone',
      name: 'everyone',
      desc: '',
      args: [],
    );
  }

  /// `Brand Only`
  String get brand_only {
    return Intl.message(
      'Brand Only',
      name: 'brand_only',
      desc: '',
      args: [],
    );
  }

  /// `Only me`
  String get only_me {
    return Intl.message(
      'Only me',
      name: 'only_me',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `brands only`
  String get brands_only {
    return Intl.message(
      'brands only',
      name: 'brands_only',
      desc: '',
      args: [],
    );
  }

  /// `only me`
  String get just_me {
    return Intl.message(
      'only me',
      name: 'just_me',
      desc: '',
      args: [],
    );
  }

  /// `Where are you located`
  String get mark_location {
    return Intl.message(
      'Where are you located',
      name: 'mark_location',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Create your star account`
  String get create_star_account {
    return Intl.message(
      'Create your star account',
      name: 'create_star_account',
      desc: '',
      args: [],
    );
  }

  /// `Private, visible only to me`
  String get private_to_me {
    return Intl.message(
      'Private, visible only to me',
      name: 'private_to_me',
      desc: '',
      args: [],
    );
  }

  /// `Enter a real email and phone number.`
  String get enter_number_or_phone {
    return Intl.message(
      'Enter a real email and phone number.',
      name: 'enter_number_or_phone',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email_address {
    return Intl.message(
      'Email address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get have_account {
    return Intl.message(
      'Already have an account?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get select_country {
    return Intl.message(
      'Select Country',
      name: 'select_country',
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

  /// `Popular Locations`
  String get popular_location {
    return Intl.message(
      'Popular Locations',
      name: 'popular_location',
      desc: '',
      args: [],
    );
  }

  /// `Who Can See This Item`
  String get who_can_see {
    return Intl.message(
      'Who Can See This Item',
      name: 'who_can_see',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get public {
    return Intl.message(
      'Public',
      name: 'public',
      desc: '',
      args: [],
    );
  }

  /// `Visible to everyone`
  String get for_every_one {
    return Intl.message(
      'Visible to everyone',
      name: 'for_every_one',
      desc: '',
      args: [],
    );
  }

  /// `Restricted to brand members`
  String get restricted_members {
    return Intl.message(
      'Restricted to brand members',
      name: 'restricted_members',
      desc: '',
      args: [],
    );
  }

  /// `members`
  String get members {
    return Intl.message(
      'members',
      name: 'members',
      desc: '',
      args: [],
    );
  }

  /// `Private, visible only to owner`
  String get visible_to_owner {
    return Intl.message(
      'Private, visible only to owner',
      name: 'visible_to_owner',
      desc: '',
      args: [],
    );
  }

  /// `Popular Countries`
  String get popular_countries {
    return Intl.message(
      'Popular Countries',
      name: 'popular_countries',
      desc: '',
      args: [],
    );
  }

  /// `🚫 It looks like the link you entered is not correct. Please enter a valid YouTube link. If you need assistance, feel free to contact our support team.`
  String get wrong_url_video {
    return Intl.message(
      '🚫 It looks like the link you entered is not correct. Please enter a valid YouTube link. If you need assistance, feel free to contact our support team.',
      name: 'wrong_url_video',
      desc: '',
      args: [],
    );
  }

  /// `Select City`
  String get select_city {
    return Intl.message(
      'Select City',
      name: 'select_city',
      desc: '',
      args: [],
    );
  }

  /// `Agency Info`
  String get agency_info {
    return Intl.message(
      'Agency Info',
      name: 'agency_info',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get about_me {
    return Intl.message(
      'About Me',
      name: 'about_me',
      desc: '',
      args: [],
    );
  }

  /// `Agency Email`
  String get agency_email {
    return Intl.message(
      'Agency Email',
      name: 'agency_email',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get website {
    return Intl.message(
      'Website',
      name: 'website',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get whats_app {
    return Intl.message(
      'WhatsApp',
      name: 'whats_app',
      desc: '',
      args: [],
    );
  }

  /// `Show All Section`
  String get show_all_section {
    return Intl.message(
      'Show All Section',
      name: 'show_all_section',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get overview {
    return Intl.message(
      'Overview',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `My Accounts`
  String get social_media {
    return Intl.message(
      'My Accounts',
      name: 'social_media',
      desc: '',
      args: [],
    );
  }

  /// `Portfolio`
  String get portfolio {
    return Intl.message(
      'Portfolio',
      name: 'portfolio',
      desc: '',
      args: [],
    );
  }

  /// `Work with `
  String get work_with {
    return Intl.message(
      'Work with ',
      name: 'work_with',
      desc: '',
      args: [],
    );
  }

  /// `My Stores`
  String get stores_and_products {
    return Intl.message(
      'My Stores',
      name: 'stores_and_products',
      desc: '',
      args: [],
    );
  }

  /// `YouTube`
  String get you_tube {
    return Intl.message(
      'YouTube',
      name: 'you_tube',
      desc: '',
      args: [],
    );
  }

  /// `Partners`
  String get partners {
    return Intl.message(
      'Partners',
      name: 'partners',
      desc: '',
      args: [],
    );
  }

  /// `Agency`
  String get agency {
    return Intl.message(
      'Agency',
      name: 'agency',
      desc: '',
      args: [],
    );
  }

  /// `My Stories`
  String get stories {
    return Intl.message(
      'My Stories',
      name: 'stories',
      desc: '',
      args: [],
    );
  }

  /// ` Read more`
  String get read_more {
    return Intl.message(
      ' Read more',
      name: 'read_more',
      desc: '',
      args: [],
    );
  }

  /// ` Read less`
  String get read_less {
    return Intl.message(
      ' Read less',
      name: 'read_less',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get preview {
    return Intl.message(
      'Preview',
      name: 'preview',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get type {
    return Intl.message(
      'Gender',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Download App`
  String get download_app {
    return Intl.message(
      'Download App',
      name: 'download_app',
      desc: '',
      args: [],
    );
  }

  /// `My Product`
  String get my_product {
    return Intl.message(
      'My Product',
      name: 'my_product',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message(
      'Hide',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `My Store`
  String get my_store {
    return Intl.message(
      'My Store',
      name: 'my_store',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `cooperations`
  String get cooperations {
    return Intl.message(
      'cooperations',
      name: 'cooperations',
      desc: '',
      args: [],
    );
  }

  /// `Mawthouq`
  String get verified_account {
    return Intl.message(
      'Mawthouq',
      name: 'verified_account',
      desc: '',
      args: [],
    );
  }

  /// `Modify the order of sections`
  String get modify_sections_order {
    return Intl.message(
      'Modify the order of sections',
      name: 'modify_sections_order',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Name`
  String get ar_name {
    return Intl.message(
      'Arabic Name',
      name: 'ar_name',
      desc: '',
      args: [],
    );
  }

  /// `Business Email`
  String get business_email {
    return Intl.message(
      'Business Email',
      name: 'business_email',
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

  /// `Accept Offer`
  String get accept_offer {
    return Intl.message(
      'Accept Offer',
      name: 'accept_offer',
      desc: '',
      args: [],
    );
  }

  /// `How can see this item`
  String get how_can_see_this_item {
    return Intl.message(
      'How can see this item',
      name: 'how_can_see_this_item',
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

  /// `Would you like to save before exiting?`
  String get confirm_save_txt {
    return Intl.message(
      'Would you like to save before exiting?',
      name: 'confirm_save_txt',
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

  /// `You can add up to 20 videos`
  String get max_videos_number {
    return Intl.message(
      'You can add up to 20 videos',
      name: 'max_videos_number',
      desc: '',
      args: [],
    );
  }

  /// `Share the link to your newest video to expand your audience and boost your viewership`
  String get share_video_link {
    return Intl.message(
      'Share the link to your newest video to expand your audience and boost your viewership',
      name: 'share_video_link',
      desc: '',
      args: [],
    );
  }

  /// `Add YouTube Video`
  String get add_you_tube_video {
    return Intl.message(
      'Add YouTube Video',
      name: 'add_you_tube_video',
      desc: '',
      args: [],
    );
  }

  /// `Delete YouTube Video`
  String get delete_you_tube_video {
    return Intl.message(
      'Delete YouTube Video',
      name: 'delete_you_tube_video',
      desc: '',
      args: [],
    );
  }

  /// `You're going to delete the `
  String get confirm_delete_txt {
    return Intl.message(
      'You\'re going to delete the ',
      name: 'confirm_delete_txt',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Delete!`
  String get confirm_delete {
    return Intl.message(
      'Yes, Delete!',
      name: 'confirm_delete',
      desc: '',
      args: [],
    );
  }

  /// `No, Keep It.`
  String get keep_it {
    return Intl.message(
      'No, Keep It.',
      name: 'keep_it',
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

  /// `Public profile is visible to anyone, even outside Nojom. Use this link as your bio link on all platforms`
  String get public_profile_desc {
    return Intl.message(
      'Public profile is visible to anyone, even outside Nojom. Use this link as your bio link on all platforms',
      name: 'public_profile_desc',
      desc: '',
      args: [],
    );
  }

  /// `Brand profile is visible to brands only,Use this link as your brands link on all platforms`
  String get brand_profile_desc {
    return Intl.message(
      'Brand profile is visible to brands only,Use this link as your brands link on all platforms',
      name: 'brand_profile_desc',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Partners`
  String get add_partner {
    return Intl.message(
      'Add the first Partners',
      name: 'add_partner',
      desc: '',
      args: [],
    );
  }

  /// `Increase your credibility by listing your clients of brands`
  String get increase_credibility {
    return Intl.message(
      'Increase your credibility by listing your clients of brands',
      name: 'increase_credibility',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 20 item`
  String get max_partners_number {
    return Intl.message(
      'You can add up to 20 item',
      name: 'max_partners_number',
      desc: '',
      args: [],
    );
  }

  /// `Add New partner`
  String get add_new_partner {
    return Intl.message(
      'Add New partner',
      name: 'add_new_partner',
      desc: '',
      args: [],
    );
  }

  /// `Add New Company`
  String get add_new_company {
    return Intl.message(
      'Add New Company',
      name: 'add_new_company',
      desc: '',
      args: [],
    );
  }

  /// `Upload Logo (Optional)`
  String get upload_logo {
    return Intl.message(
      'Upload Logo (Optional)',
      name: 'upload_logo',
      desc: '',
      args: [],
    );
  }

  /// `Use a size that's at least 440 x 440 pixels`
  String get logo_image_size {
    return Intl.message(
      'Use a size that\'s at least 440 x 440 pixels',
      name: 'logo_image_size',
      desc: '',
      args: [],
    );
  }

  /// `Company Name`
  String get company_name {
    return Intl.message(
      'Company Name',
      name: 'company_name',
      desc: '',
      args: [],
    );
  }

  /// `Coupon(option)`
  String get coupon {
    return Intl.message(
      'Coupon(option)',
      name: 'coupon',
      desc: '',
      args: [],
    );
  }

  /// `Link`
  String get link {
    return Intl.message(
      'Link',
      name: 'link',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Press back again to exit`
  String get press_again_to_exit {
    return Intl.message(
      'Press back again to exit',
      name: 'press_again_to_exit',
      desc: '',
      args: [],
    );
  }

  /// `Campaign`
  String get my_campaign {
    return Intl.message(
      'Campaign',
      name: 'my_campaign',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Mawthooq`
  String get mawthooq {
    return Intl.message(
      'Mawthooq',
      name: 'mawthooq',
      desc: '',
      args: [],
    );
  }

  /// `BirthDate`
  String get birthDate {
    return Intl.message(
      'BirthDate',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Min`
  String get min {
    return Intl.message(
      'Min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `Max`
  String get max {
    return Intl.message(
      'Max',
      name: 'max',
      desc: '',
      args: [],
    );
  }

  /// `Add Video Or Image`
  String get add_video_image {
    return Intl.message(
      'Add Video Or Image',
      name: 'add_video_image',
      desc: '',
      args: [],
    );
  }

  /// `Add the first video or image`
  String get add_first_video_image {
    return Intl.message(
      'Add the first video or image',
      name: 'add_first_video_image',
      desc: '',
      args: [],
    );
  }

  /// `Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio`
  String get portfolio_empty {
    return Intl.message(
      'Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio',
      name: 'portfolio_empty',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 50 videos & Image`
  String get portfolio_limit {
    return Intl.message(
      'You can add up to 50 videos & Image',
      name: 'portfolio_limit',
      desc: '',
      args: [],
    );
  }

  /// `Add New Video Or Image`
  String get add_new_video_image {
    return Intl.message(
      'Add New Video Or Image',
      name: 'add_new_video_image',
      desc: '',
      args: [],
    );
  }

  /// `Upload Video Or Image`
  String get upload_video_image {
    return Intl.message(
      'Upload Video Or Image',
      name: 'upload_video_image',
      desc: '',
      args: [],
    );
  }

  /// `24 hours`
  String get twenty_four_hours {
    return Intl.message(
      '24 hours',
      name: 'twenty_four_hours',
      desc: '',
      args: [],
    );
  }

  /// `Send Offer`
  String get send_offer {
    return Intl.message(
      'Send Offer',
      name: 'send_offer',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Social Media`
  String get add_first_social_media {
    return Intl.message(
      'Add the first Social Media',
      name: 'add_first_social_media',
      desc: '',
      args: [],
    );
  }

  /// `But all social media in one link with 2 steps add link only`
  String get unit_social_media {
    return Intl.message(
      'But all social media in one link with 2 steps add link only',
      name: 'unit_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Add Social Media`
  String get add_social_media {
    return Intl.message(
      'Add Social Media',
      name: 'add_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Add New Product`
  String get add_new_product {
    return Intl.message(
      'Add New Product',
      name: 'add_new_product',
      desc: '',
      args: [],
    );
  }

  /// `Add New Store`
  String get add_new_store {
    return Intl.message(
      'Add New Store',
      name: 'add_new_store',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Stores`
  String get stores {
    return Intl.message(
      'Stores',
      name: 'stores',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Product URL`
  String get product_url {
    return Intl.message(
      'Product URL',
      name: 'product_url',
      desc: '',
      args: [],
    );
  }

  /// `Select Currency`
  String get select_currency {
    return Intl.message(
      'Select Currency',
      name: 'select_currency',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message(
      'Currency',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Dollar ($)`
  String get dollar {
    return Intl.message(
      'Dollar (\$)',
      name: 'dollar',
      desc: '',
      args: [],
    );
  }

  /// `Saudi Riyal (SAR)`
  String get saudi_riyal {
    return Intl.message(
      'Saudi Riyal (SAR)',
      name: 'saudi_riyal',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Item`
  String get add_first_store {
    return Intl.message(
      'Add the first Item',
      name: 'add_first_store',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 20 item`
  String get up_to_twenty_store {
    return Intl.message(
      'You can add up to 20 item',
      name: 'up_to_twenty_store',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 20 videos & Image`
  String get max_videos_and_images_number {
    return Intl.message(
      'You can add up to 20 videos & Image',
      name: 'max_videos_and_images_number',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Collaboration`
  String get add_first_collaboration {
    return Intl.message(
      'Add the first Collaboration',
      name: 'add_first_collaboration',
      desc: '',
      args: [],
    );
  }

  /// `Cooperating with companies enhances opportunities and profile attractiveness.`
  String get cooperating_with_companies {
    return Intl.message(
      'Cooperating with companies enhances opportunities and profile attractiveness.',
      name: 'cooperating_with_companies',
      desc: '',
      args: [],
    );
  }

  /// `Increase sales by expanding product visibility to a wider audience`
  String get increase_sales {
    return Intl.message(
      'Increase sales by expanding product visibility to a wider audience',
      name: 'increase_sales',
      desc: '',
      args: [],
    );
  }

  /// `controller how can send you collaboration offers. Choose 'public' to accept offers from everyone. Choose 'Brands' to limit offers to businesses, or 'Only me' to restrict any party from sending you offers`
  String get tool_tip_message {
    return Intl.message(
      'controller how can send you collaboration offers. Choose \'public\' to accept offers from everyone. Choose \'Brands\' to limit offers to businesses, or \'Only me\' to restrict any party from sending you offers',
      name: 'tool_tip_message',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Date(optional)`
  String get campaign_date {
    return Intl.message(
      'Campaign Date(optional)',
      name: 'campaign_date',
      desc: '',
      args: [],
    );
  }

  /// `Contract Date`
  String get contract_date {
    return Intl.message(
      'Contract Date',
      name: 'contract_date',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Have Contract`
  String get have_contract {
    return Intl.message(
      'Have Contract',
      name: 'have_contract',
      desc: '',
      args: [],
    );
  }

  /// `Number of Times (optional)`
  String get number_of_times {
    return Intl.message(
      'Number of Times (optional)',
      name: 'number_of_times',
      desc: '',
      args: [],
    );
  }

  /// `Add Company`
  String get add_company {
    return Intl.message(
      'Add Company',
      name: 'add_company',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
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

  /// `Entertainment`
  String get entertainment {
    return Intl.message(
      'Entertainment',
      name: 'entertainment',
      desc: '',
      args: [],
    );
  }

  /// `Lifestyle`
  String get lifestyle {
    return Intl.message(
      'Lifestyle',
      name: 'lifestyle',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get select_category {
    return Intl.message(
      'Select Category',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Select Tags`
  String get select_tags {
    return Intl.message(
      'Select Tags',
      name: 'select_tags',
      desc: '',
      args: [],
    );
  }

  /// `Num of Followers (optional)`
  String get num_of_followers {
    return Intl.message(
      'Num of Followers (optional)',
      name: 'num_of_followers',
      desc: '',
      args: [],
    );
  }

  /// `Show Followers for all users`
  String get show_followers {
    return Intl.message(
      'Show Followers for all users',
      name: 'show_followers',
      desc: '',
      args: [],
    );
  }

  /// `Add Video Or Image`
  String get add_video_or_image {
    return Intl.message(
      'Add Video Or Image',
      name: 'add_video_or_image',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Video Or Image`
  String get add_first_video_or_image {
    return Intl.message(
      'Add the first Video Or Image',
      name: 'add_first_video_or_image',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 50 videos & Image`
  String get add_up_to_fifty_videos_and_images {
    return Intl.message(
      'You can add up to 50 videos & Image',
      name: 'add_up_to_fifty_videos_and_images',
      desc: '',
      args: [],
    );
  }

  /// `Add Portfolio`
  String get add_portfolio {
    return Intl.message(
      'Add Portfolio',
      name: 'add_portfolio',
      desc: '',
      args: [],
    );
  }

  /// `Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio`
  String get boost_your_collaboration {
    return Intl.message(
      'Boost your collaboration opportunities by adding one of your successful campaign video to your portfolio',
      name: 'boost_your_collaboration',
      desc: '',
      args: [],
    );
  }

  /// `The more information brands get about your account, the more tasks they will be able to offer you.`
  String get social_more_information {
    return Intl.message(
      'The more information brands get about your account, the more tasks they will be able to offer you.',
      name: 'social_more_information',
      desc: '',
      args: [],
    );
  }

  /// `Add the first Item`
  String get add_first_product {
    return Intl.message(
      'Add the first Item',
      name: 'add_first_product',
      desc: '',
      args: [],
    );
  }

  /// `You can add up to 20 item`
  String get products_max_number {
    return Intl.message(
      'You can add up to 20 item',
      name: 'products_max_number',
      desc: '',
      args: [],
    );
  }

  /// `Use a size that's at least 720 x 480 pixels`
  String get store_image_size {
    return Intl.message(
      'Use a size that\'s at least 720 x 480 pixels',
      name: 'store_image_size',
      desc: '',
      args: [],
    );
  }

  /// `Delete Product`
  String get delete_product {
    return Intl.message(
      'Delete Product',
      name: 'delete_product',
      desc: '',
      args: [],
    );
  }

  /// `Delete Store`
  String get delete_store {
    return Intl.message(
      'Delete Store',
      name: 'delete_store',
      desc: '',
      args: [],
    );
  }

  /// `Go to Portfolio`
  String get go_to_profile {
    return Intl.message(
      'Go to Portfolio',
      name: 'go_to_profile',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Category & Tags `
  String get category_and_tags {
    return Intl.message(
      'Category & Tags ',
      name: 'category_and_tags',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags {
    return Intl.message(
      'Tags',
      name: 'tags',
      desc: '',
      args: [],
    );
  }

  /// `Mawthooq New Number`
  String get mawthooq_new_number {
    return Intl.message(
      'Mawthooq New Number',
      name: 'mawthooq_new_number',
      desc: '',
      args: [],
    );
  }

  /// `Verification provides access to exclusive opportunities, premium ads, and profitable partnerships, which enhances the user experience`
  String get trusted_advantage {
    return Intl.message(
      'Verification provides access to exclusive opportunities, premium ads, and profitable partnerships, which enhances the user experience',
      name: 'trusted_advantage',
      desc: '',
      args: [],
    );
  }

  /// `Mawthooq Number`
  String get mawthooq_number {
    return Intl.message(
      'Mawthooq Number',
      name: 'mawthooq_number',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar_currency {
    return Intl.message(
      'SAR',
      name: 'sar_currency',
      desc: '',
      args: [],
    );
  }

  /// `Delete Partner`
  String get delete_partner {
    return Intl.message(
      'Delete Partner',
      name: 'delete_partner',
      desc: '',
      args: [],
    );
  }

  /// `Delete Portfolio`
  String get delete_portfolio {
    return Intl.message(
      'Delete Portfolio',
      name: 'delete_portfolio',
      desc: '',
      args: [],
    );
  }

  /// `Price Range`
  String get price_range {
    return Intl.message(
      'Price Range',
      name: 'price_range',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Edit Agency`
  String get edit_agency {
    return Intl.message(
      'Edit Agency',
      name: 'edit_agency',
      desc: '',
      args: [],
    );
  }

  /// `Delete Company`
  String get delete_company {
    return Intl.message(
      'Delete Company',
      name: 'delete_company',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `Visit Website`
  String get visit_web {
    return Intl.message(
      'Visit Website',
      name: 'visit_web',
      desc: '',
      args: [],
    );
  }

  /// `Company type`
  String get company_type {
    return Intl.message(
      'Company type',
      name: 'company_type',
      desc: '',
      args: [],
    );
  }

  /// `Company Size`
  String get company_size {
    return Intl.message(
      'Company Size',
      name: 'company_size',
      desc: '',
      args: [],
    );
  }

  /// `Founded`
  String get founded {
    return Intl.message(
      'Founded',
      name: 'founded',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `Search for a star`
  String get search_for_a_star {
    return Intl.message(
      'Search for a star',
      name: 'search_for_a_star',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `How can we help you`
  String get how_can_we_help_you {
    return Intl.message(
      'How can we help you',
      name: 'how_can_we_help_you',
      desc: '',
      args: [],
    );
  }

  /// `Send an Email`
  String get send_an_email {
    return Intl.message(
      'Send an Email',
      name: 'send_an_email',
      desc: '',
      args: [],
    );
  }

  /// `Unread`
  String get unread {
    return Intl.message(
      'Unread',
      name: 'unread',
      desc: '',
      args: [],
    );
  }

  /// `Pin`
  String get pin {
    return Intl.message(
      'Pin',
      name: 'pin',
      desc: '',
      args: [],
    );
  }

  /// `Mute`
  String get mute {
    return Intl.message(
      'Mute',
      name: 'mute',
      desc: '',
      args: [],
    );
  }

  /// `Profile Info`
  String get profile_info {
    return Intl.message(
      'Profile Info',
      name: 'profile_info',
      desc: '',
      args: [],
    );
  }

  /// `Clear Chat`
  String get clear_chat {
    return Intl.message(
      'Clear Chat',
      name: 'clear_chat',
      desc: '',
      args: [],
    );
  }

  /// `Report & Block`
  String get report_block {
    return Intl.message(
      'Report & Block',
      name: 'report_block',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove_1 {
    return Intl.message(
      'Remove',
      name: 'remove_1',
      desc: '',
      args: [],
    );
  }

  /// `from the chat and delete all chat and data between us`
  String get remove_2 {
    return Intl.message(
      'from the chat and delete all chat and data between us',
      name: 'remove_2',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get options_cancel {
    return Intl.message(
      'Cancel',
      name: 'options_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Report Profile`
  String get report_profile {
    return Intl.message(
      'Report Profile',
      name: 'report_profile',
      desc: '',
      args: [],
    );
  }

  /// `Need to report access to this profile? Visit our`
  String get report_access {
    return Intl.message(
      'Need to report access to this profile? Visit our',
      name: 'report_access',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `before reporting this profile.!`
  String get before_reporting {
    return Intl.message(
      'before reporting this profile.!',
      name: 'before_reporting',
      desc: '',
      args: [],
    );
  }

  /// `Please review our`
  String get review_our {
    return Intl.message(
      'Please review our',
      name: 'review_our',
      desc: '',
      args: [],
    );
  }

  /// `Community Guidelines`
  String get community_guidelines {
    return Intl.message(
      'Community Guidelines',
      name: 'community_guidelines',
      desc: '',
      args: [],
    );
  }

  /// `for additional information about what is and isn't permitted on nojom.`
  String get additional_information {
    return Intl.message(
      'for additional information about what is and isn\'t permitted on nojom.',
      name: 'additional_information',
      desc: '',
      args: [],
    );
  }

  /// `Write your Report`
  String get write_your_report {
    return Intl.message(
      'Write your Report',
      name: 'write_your_report',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Input Text`
  String get input_text {
    return Intl.message(
      'Input Text',
      name: 'input_text',
      desc: '',
      args: [],
    );
  }

  /// `Photo & Video Library`
  String get photo_and_video_library {
    return Intl.message(
      'Photo & Video Library',
      name: 'photo_and_video_library',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `View Profile`
  String get view_profile {
    return Intl.message(
      'View Profile',
      name: 'view_profile',
      desc: '',
      args: [],
    );
  }

  /// `View Campaign`
  String get view_campaign {
    return Intl.message(
      'View Campaign',
      name: 'view_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Delete message`
  String get delete_message {
    return Intl.message(
      'Delete message',
      name: 'delete_message',
      desc: '',
      args: [],
    );
  }

  /// `Forward message`
  String get forward_message {
    return Intl.message(
      'Forward message',
      name: 'forward_message',
      desc: '',
      args: [],
    );
  }

  /// `Forward`
  String get forward {
    return Intl.message(
      'Forward',
      name: 'forward',
      desc: '',
      args: [],
    );
  }

  /// `Forwarding...`
  String get forwarding {
    return Intl.message(
      'Forwarding...',
      name: 'forwarding',
      desc: '',
      args: [],
    );
  }

  /// `Forwarded`
  String get forwarded {
    return Intl.message(
      'Forwarded',
      name: 'forwarded',
      desc: '',
      args: [],
    );
  }

  /// `Slide to cancel`
  String get slide_to_cancel {
    return Intl.message(
      'Slide to cancel',
      name: 'slide_to_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Lift to record`
  String get lift_to_record {
    return Intl.message(
      'Lift to record',
      name: 'lift_to_record',
      desc: '',
      args: [],
    );
  }

  /// `Hold to record`
  String get hold_to_record {
    return Intl.message(
      'Hold to record',
      name: 'hold_to_record',
      desc: '',
      args: [],
    );
  }

  /// `Locked`
  String get locked {
    return Intl.message(
      'Locked',
      name: 'locked',
      desc: '',
      args: [],
    );
  }

  /// `Lock`
  String get lock {
    return Intl.message(
      'Lock',
      name: 'lock',
      desc: '',
      args: [],
    );
  }

  /// `Please select at least one channel`
  String get select_at_least_one_channel {
    return Intl.message(
      'Please select at least one channel',
      name: 'select_at_least_one_channel',
      desc: '',
      args: [],
    );
  }

  /// `Message forwarded successfully`
  String get message_forwarded_successfully {
    return Intl.message(
      'Message forwarded successfully',
      name: 'message_forwarded_successfully',
      desc: '',
      args: [],
    );
  }

  /// `selected`
  String get selected {
    return Intl.message(
      'selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Delete for Everyone`
  String get delete_for_everyone {
    return Intl.message(
      'Delete for Everyone',
      name: 'delete_for_everyone',
      desc: '',
      args: [],
    );
  }

  /// `Delete {count} messages`
  String delete_messages(int count) {
    return Intl.message(
      'Delete $count messages',
      name: 'delete_messages',
      desc: '',
      args: [count],
    );
  }

  /// `Delete for everyone`
  String get delete_messages_for_everyone {
    return Intl.message(
      'Delete for everyone',
      name: 'delete_messages_for_everyone',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone`
  String get this_action_cannot_be_undone {
    return Intl.message(
      'This action cannot be undone',
      name: 'this_action_cannot_be_undone',
      desc: '',
      args: [],
    );
  }

  /// `Message deleted successfully`
  String get message_deleted_successfully {
    return Intl.message(
      'Message deleted successfully',
      name: 'message_deleted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `{count} messages deleted successfully`
  String messages_deleted_successfully(int count) {
    return Intl.message(
      '$count messages deleted successfully',
      name: 'messages_deleted_successfully',
      desc: '',
      args: [count],
    );
  }

  /// `Failed to delete message`
  String get failed_to_delete_message {
    return Intl.message(
      'Failed to delete message',
      name: 'failed_to_delete_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete messages`
  String get failed_to_delete_messages {
    return Intl.message(
      'Failed to delete messages',
      name: 'failed_to_delete_messages',
      desc: '',
      args: [],
    );
  }

  /// `No attachments to share`
  String get no_attachments_to_share {
    return Intl.message(
      'No attachments to share',
      name: 'no_attachments_to_share',
      desc: '',
      args: [],
    );
  }

  /// `Attachments shared successfully`
  String get attachments_shared_successfully {
    return Intl.message(
      'Attachments shared successfully',
      name: 'attachments_shared_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to share attachments`
  String get failed_to_share_attachments {
    return Intl.message(
      'Failed to share attachments',
      name: 'failed_to_share_attachments',
      desc: '',
      args: [],
    );
  }

  /// `Failed to forward message`
  String get failed_to_forward_message {
    return Intl.message(
      'Failed to forward message',
      name: 'failed_to_forward_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to forward messages`
  String get failed_to_forward_messages {
    return Intl.message(
      'Failed to forward messages',
      name: 'failed_to_forward_messages',
      desc: '',
      args: [],
    );
  }

  /// `No messages yet`
  String get no_messages_yet {
    return Intl.message(
      'No messages yet',
      name: 'no_messages_yet',
      desc: '',
      args: [],
    );
  }

  /// `Copied successfully`
  String get copied {
    return Intl.message(
      'Copied successfully',
      name: 'copied',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Temporarily Deactivate your account\ninstead of Deleting?`
  String get delete_account_message {
    return Intl.message(
      'Temporarily Deactivate your account\ninstead of Deleting?',
      name: 'delete_account_message',
      desc: '',
      args: [],
    );
  }

  /// `Your profile will be temporarily\nhidden until you activate it again by\nlogging back in`
  String get deactivate_message {
    return Intl.message(
      'Your profile will be temporarily\nhidden until you activate it again by\nlogging back in',
      name: 'deactivate_message',
      desc: '',
      args: [],
    );
  }

  /// `Deactivate Account`
  String get deactivate_account {
    return Intl.message(
      'Deactivate Account',
      name: 'deactivate_account',
      desc: '',
      args: [],
    );
  }

  /// `Delete my Account`
  String get delete_my_account {
    return Intl.message(
      'Delete my Account',
      name: 'delete_my_account',
      desc: '',
      args: [],
    );
  }

  /// `Delete your account?`
  String get delete_your_account {
    return Intl.message(
      'Delete your account?',
      name: 'delete_your_account',
      desc: '',
      args: [],
    );
  }

  /// `You will lose all your data by\ndeleting your account. This action\ncannot be undone.`
  String get delete_account_notice {
    return Intl.message(
      'You will lose all your data by\ndeleting your account. This action\ncannot be undone.',
      name: 'delete_account_notice',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends`
  String get invite_friends {
    return Intl.message(
      'Invite friends',
      name: 'invite_friends',
      desc: '',
      args: [],
    );
  }

  /// `Invite your friends and you'll both get 50 SAR`
  String get invite_reward {
    return Intl.message(
      'Invite your friends and you\'ll both get 50 SAR',
      name: 'invite_reward',
      desc: '',
      args: [],
    );
  }

  /// `Make finance more accessible and share Minimize with stars / influencers and you'll receive 50 SAR to say thanks.`
  String get make_finance {
    return Intl.message(
      'Make finance more accessible and share Minimize with stars / influencers and you\'ll receive 50 SAR to say thanks.',
      name: 'make_finance',
      desc: '',
      args: [],
    );
  }

  /// `Each time a friend joins, you earn`
  String get friend_joins {
    return Intl.message(
      'Each time a friend joins, you earn',
      name: 'friend_joins',
      desc: '',
      args: [],
    );
  }

  /// `﷼`
  String get sar {
    return Intl.message(
      '﷼',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `You've earned this much so far`
  String get you_have_earned {
    return Intl.message(
      'You\'ve earned this much so far',
      name: 'you_have_earned',
      desc: '',
      args: [],
    );
  }

  /// `Your custom invitation link`
  String get custom_invitation_link {
    return Intl.message(
      'Your custom invitation link',
      name: 'custom_invitation_link',
      desc: '',
      args: [],
    );
  }

  /// `Link Copied`
  String get copy_link {
    return Intl.message(
      'Link Copied',
      name: 'copy_link',
      desc: '',
      args: [],
    );
  }

  /// `Share link`
  String get share_link {
    return Intl.message(
      'Share link',
      name: 'share_link',
      desc: '',
      args: [],
    );
  }

  /// `Help & Privacy`
  String get help_and_privacy {
    return Intl.message(
      'Help & Privacy',
      name: 'help_and_privacy',
      desc: '',
      args: [],
    );
  }

  /// `Policy Pages`
  String get policy_pages {
    return Intl.message(
      'Policy Pages',
      name: 'policy_pages',
      desc: '',
      args: [],
    );
  }

  /// `Chat with us`
  String get chat_with_us {
    return Intl.message(
      'Chat with us',
      name: 'chat_with_us',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get faqs {
    return Intl.message(
      'FAQs',
      name: 'faqs',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Bid accepted`
  String get bid_accepted {
    return Intl.message(
      'Bid accepted',
      name: 'bid_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Contract canceled`
  String get contract_canceled {
    return Intl.message(
      'Contract canceled',
      name: 'contract_canceled',
      desc: '',
      args: [],
    );
  }

  /// `Client pay`
  String get client_pay {
    return Intl.message(
      'Client pay',
      name: 'client_pay',
      desc: '',
      args: [],
    );
  }

  /// `Project closed`
  String get project_closed {
    return Intl.message(
      'Project closed',
      name: 'project_closed',
      desc: '',
      args: [],
    );
  }

  /// `Message received`
  String get message_received {
    return Intl.message(
      'Message received',
      name: 'message_received',
      desc: '',
      args: [],
    );
  }

  /// `Client release`
  String get client_release {
    return Intl.message(
      'Client release',
      name: 'client_release',
      desc: '',
      args: [],
    );
  }

  /// `New job post - Customer Service`
  String get new_job_post {
    return Intl.message(
      'New job post - Customer Service',
      name: 'new_job_post',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Add account`
  String get add_account {
    return Intl.message(
      'Add account',
      name: 'add_account',
      desc: '',
      args: [],
    );
  }

  /// `Close Campaign`
  String get close_campaign {
    return Intl.message(
      'Close Campaign',
      name: 'close_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Work In Progress`
  String get work_in_progress_campaign {
    return Intl.message(
      'Work In Progress',
      name: 'work_in_progress_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Total income`
  String get total_income {
    return Intl.message(
      'Total income',
      name: 'total_income',
      desc: '',
      args: [],
    );
  }

  /// `Join as Brand`
  String get join_as_brand {
    return Intl.message(
      'Join as Brand',
      name: 'join_as_brand',
      desc: '',
      args: [],
    );
  }

  /// `Join now`
  String get join_now {
    return Intl.message(
      'Join now',
      name: 'join_now',
      desc: '',
      args: [],
    );
  }

  /// `All Campaign`
  String get all_campaigns {
    return Intl.message(
      'All Campaign',
      name: 'all_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Write your feedback`
  String get write_your_feedback {
    return Intl.message(
      'Write your feedback',
      name: 'write_your_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Log Out?`
  String get log_out {
    return Intl.message(
      'Log Out?',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out_label {
    return Intl.message(
      'Log Out',
      name: 'log_out_label',
      desc: '',
      args: [],
    );
  }

  /// `Oh no! You're leaving...`
  String get leave_message_warning {
    return Intl.message(
      'Oh no! You\'re leaving...',
      name: 'leave_message_warning',
      desc: '',
      args: [],
    );
  }

  /// `My wallet & Account`
  String get my_wallet_and_account {
    return Intl.message(
      'My wallet & Account',
      name: 'my_wallet_and_account',
      desc: '',
      args: [],
    );
  }

  /// `Trust & Verification`
  String get trust_and_verification {
    return Intl.message(
      'Trust & Verification',
      name: 'trust_and_verification',
      desc: '',
      args: [],
    );
  }

  /// `Invite Brand`
  String get invite_brand {
    return Intl.message(
      'Invite Brand',
      name: 'invite_brand',
      desc: '',
      args: [],
    );
  }

  /// `Enabled`
  String get enabled {
    return Intl.message(
      'Enabled',
      name: 'enabled',
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

  /// `Go to Portfolio`
  String get go_to_portfolio {
    return Intl.message(
      'Go to Portfolio',
      name: 'go_to_portfolio',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `on updating your phone!`
  String get on_update_phone {
    return Intl.message(
      'on updating your phone!',
      name: 'on_update_phone',
      desc: '',
      args: [],
    );
  }

  /// ` on \nupdating your Email!`
  String get on_update_email {
    return Intl.message(
      ' on \nupdating your Email!',
      name: 'on_update_email',
      desc: '',
      args: [],
    );
  }

  /// `The phone number is updated to\n`
  String get update_phone_to {
    return Intl.message(
      'The phone number is updated to\n',
      name: 'update_phone_to',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Email`
  String get check_your_email {
    return Intl.message(
      'Check Your Email',
      name: 'check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully update. To complete the process please check your email\n`
  String get update_account {
    return Intl.message(
      'Your account has been successfully update. To complete the process please check your email\n',
      name: 'update_account',
      desc: '',
      args: [],
    );
  }

  /// `for a validation request.`
  String get validate_request {
    return Intl.message(
      'for a validation request.',
      name: 'validate_request',
      desc: '',
      args: [],
    );
  }

  /// `Resend email`
  String get resend_email {
    return Intl.message(
      'Resend email',
      name: 'resend_email',
      desc: '',
      args: [],
    );
  }

  /// `You need `
  String get you_need {
    return Intl.message(
      'You need ',
      name: 'you_need',
      desc: '',
      args: [],
    );
  }

  /// `POINTS `
  String get points {
    return Intl.message(
      'POINTS ',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `to be a trusted by  `
  String get to_be_a_trusted {
    return Intl.message(
      'to be a trusted by  ',
      name: 'to_be_a_trusted',
      desc: '',
      args: [],
    );
  }

  /// `What is trust score?`
  String get trust_score {
    return Intl.message(
      'What is trust score?',
      name: 'trust_score',
      desc: '',
      args: [],
    );
  }

  /// `New email`
  String get new_email {
    return Intl.message(
      'New email',
      name: 'new_email',
      desc: '',
      args: [],
    );
  }

  /// `New Phone Number`
  String get new_phone_number {
    return Intl.message(
      'New Phone Number',
      name: 'new_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `dark mode`
  String get dark_mode {
    return Intl.message(
      'dark mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Beneficiary name`
  String get beneficiary_name {
    return Intl.message(
      'Beneficiary name',
      name: 'beneficiary_name',
      desc: '',
      args: [],
    );
  }

  /// `IBAN`
  String get iban {
    return Intl.message(
      'IBAN',
      name: 'iban',
      desc: '',
      args: [],
    );
  }

  /// `Bank`
  String get bank {
    return Intl.message(
      'Bank',
      name: 'bank',
      desc: '',
      args: [],
    );
  }

  /// `Select bank`
  String get select_bank {
    return Intl.message(
      'Select bank',
      name: 'select_bank',
      desc: '',
      args: [],
    );
  }

  /// `Set as a primary account`
  String get set_as_primary {
    return Intl.message(
      'Set as a primary account',
      name: 'set_as_primary',
      desc: '',
      args: [],
    );
  }

  /// `Attach proof`
  String get attach_proof {
    return Intl.message(
      'Attach proof',
      name: 'attach_proof',
      desc: '',
      args: [],
    );
  }

  /// `Supported formats: image or pdf file`
  String get supported_proofs {
    return Intl.message(
      'Supported formats: image or pdf file',
      name: 'supported_proofs',
      desc: '',
      args: [],
    );
  }

  /// `File type not supported`
  String get file_type_not_supported {
    return Intl.message(
      'File type not supported',
      name: 'file_type_not_supported',
      desc: '',
      args: [],
    );
  }

  /// `Add New Account`
  String get add_new_account {
    return Intl.message(
      'Add New Account',
      name: 'add_new_account',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get add_new_card {
    return Intl.message(
      'Add New Card',
      name: 'add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get card_number {
    return Intl.message(
      'Card number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date`
  String get expiry_date {
    return Intl.message(
      'Expiry date',
      name: 'expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Zip code`
  String get zip_code {
    return Intl.message(
      'Zip code',
      name: 'zip_code',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw {
    return Intl.message(
      'Withdraw',
      name: 'withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw_label {
    return Intl.message(
      'Withdraw',
      name: 'withdraw_label',
      desc: '',
      args: [],
    );
  }

  /// `Billing Address`
  String get billing_address {
    return Intl.message(
      'Billing Address',
      name: 'billing_address',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw now`
  String get withdraw_now {
    return Intl.message(
      'Withdraw now',
      name: 'withdraw_now',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get recent_transactions {
    return Intl.message(
      'Transactions',
      name: 'recent_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Pending Balance`
  String get pending_balance {
    return Intl.message(
      'Pending Balance',
      name: 'pending_balance',
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

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `Reject`
  String get reject {
    return Intl.message(
      'Reject',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Primary`
  String get primary {
    return Intl.message(
      'Primary',
      name: 'primary',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get my_account {
    return Intl.message(
      'My Account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account`
  String get bank_account {
    return Intl.message(
      'Bank Account',
      name: 'bank_account',
      desc: '',
      args: [],
    );
  }

  /// `Total Balance`
  String get total_balance {
    return Intl.message(
      'Total Balance',
      name: 'total_balance',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw Money`
  String get withdraw_money {
    return Intl.message(
      'Withdraw Money',
      name: 'withdraw_money',
      desc: '',
      args: [],
    );
  }

  /// `Account Details`
  String get account_details {
    return Intl.message(
      'Account Details',
      name: 'account_details',
      desc: '',
      args: [],
    );
  }

  /// `Set amount`
  String get set_amount {
    return Intl.message(
      'Set amount',
      name: 'set_amount',
      desc: '',
      args: [],
    );
  }

  /// `How much would you like to top up`
  String get how_much_top_up {
    return Intl.message(
      'How much would you like to top up',
      name: 'how_much_top_up',
      desc: '',
      args: [],
    );
  }

  /// `Delete Bank Account`
  String get delete_bank_account {
    return Intl.message(
      'Delete Bank Account',
      name: 'delete_bank_account',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Balance`
  String get wallet_balance {
    return Intl.message(
      'Wallet Balance',
      name: 'wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw to`
  String get withdraw_to {
    return Intl.message(
      'Withdraw to',
      name: 'withdraw_to',
      desc: '',
      args: [],
    );
  }

  /// `Add Beneficiary`
  String get add_beneficiary {
    return Intl.message(
      'Add Beneficiary',
      name: 'add_beneficiary',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw Summary`
  String get withdraw_summary {
    return Intl.message(
      'Withdraw Summary',
      name: 'withdraw_summary',
      desc: '',
      args: [],
    );
  }

  /// `Amount to Withdraw`
  String get amount_to_withdraw {
    return Intl.message(
      'Amount to Withdraw',
      name: 'amount_to_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Primary Bank Account`
  String get primary_bank_account {
    return Intl.message(
      'Primary Bank Account',
      name: 'primary_bank_account',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw only from available balance`
  String get withdraw_from_available_balance {
    return Intl.message(
      'Withdraw only from available balance',
      name: 'withdraw_from_available_balance',
      desc: '',
      args: [],
    );
  }

  /// `Keep this card saved for faster checkout in the future`
  String get keep_card_for_checkout {
    return Intl.message(
      'Keep this card saved for faster checkout in the future',
      name: 'keep_card_for_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your decision before proceeding.`
  String get confirm_deleting {
    return Intl.message(
      'Please confirm your decision before proceeding.',
      name: 'confirm_deleting',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this bank account? All associated data will be removed and cannot be accessed again. Please confirm your decision before proceeding.`
  String get delete_bank_account_confirmation {
    return Intl.message(
      'Are you sure you want to delete this bank account? All associated data will be removed and cannot be accessed again. Please confirm your decision before proceeding.',
      name: 'delete_bank_account_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Verification opens doors to exclusive\n opportunities, premium ads, and lucrative\n partnerships, elevating the user experience with `
  String get trusted_benefit {
    return Intl.message(
      'Verification opens doors to exclusive\n opportunities, premium ads, and lucrative\n partnerships, elevating the user experience with ',
      name: 'trusted_benefit',
      desc: '',
      args: [],
    );
  }

  /// `Having a high trust score is important to clients as stars may decide not to bid on your campaign if you are not a trusted user. This is especially true for our most experienced stars, who are keen to ensure that any payments they receive are protected.`
  String get trust_score_description {
    return Intl.message(
      'Having a high trust score is important to clients as stars may decide not to bid on your campaign if you are not a trusted user. This is especially true for our most experienced stars, who are keen to ensure that any payments they receive are protected.',
      name: 'trust_score_description',
      desc: '',
      args: [],
    );
  }

  /// `My Campaigns`
  String get myCampaigns {
    return Intl.message(
      'My Campaigns',
      name: 'myCampaigns',
      desc: '',
      args: [],
    );
  }

  /// `Explore your campaigns here`
  String get exploreCampaigns {
    return Intl.message(
      'Explore your campaigns here',
      name: 'exploreCampaigns',
      desc: '',
      args: [],
    );
  }

  /// `Past Campaigns`
  String get pastCampaigns {
    return Intl.message(
      'Past Campaigns',
      name: 'pastCampaigns',
      desc: '',
      args: [],
    );
  }

  /// `Closed Campaigns`
  String get closedCampaigns {
    return Intl.message(
      'Closed Campaigns',
      name: 'closedCampaigns',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get client {
    return Intl.message(
      'Client',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Hired`
  String get hired {
    return Intl.message(
      'Hired',
      name: 'hired',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get deposit {
    return Intl.message(
      'Deposit',
      name: 'deposit',
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

  /// `Stars `
  String get stars {
    return Intl.message(
      'Stars ',
      name: 'stars',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get paid {
    return Intl.message(
      'Paid',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Status`
  String get campaignStatus {
    return Intl.message(
      'Campaign Status',
      name: 'campaignStatus',
      desc: '',
      args: [],
    );
  }

  /// `My Client`
  String get myClient {
    return Intl.message(
      'My Client',
      name: 'myClient',
      desc: '',
      args: [],
    );
  }

  /// `No Files`
  String get noFiles {
    return Intl.message(
      'No Files',
      name: 'noFiles',
      desc: '',
      args: [],
    );
  }

  /// `All attachments files with this campaign will be displayed here`
  String get noFilesDescription {
    return Intl.message(
      'All attachments files with this campaign will be displayed here',
      name: 'noFilesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Title`
  String get campaignTitle {
    return Intl.message(
      'Campaign Title',
      name: 'campaignTitle',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Deadline`
  String get deadline {
    return Intl.message(
      'Deadline',
      name: 'deadline',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Details`
  String get campaignDetails {
    return Intl.message(
      'Campaign Details',
      name: 'campaignDetails',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Files`
  String get campaignFiles {
    return Intl.message(
      'Campaign Files',
      name: 'campaignFiles',
      desc: '',
      args: [],
    );
  }

  /// `Deposit is securely held by nojom`
  String get depositIsSecure {
    return Intl.message(
      'Deposit is securely held by nojom',
      name: 'depositIsSecure',
      desc: '',
      args: [],
    );
  }

  /// `Once you submit your campaign, Client will be releasing the deposit`
  String get onceYuoSubmitCampaign {
    return Intl.message(
      'Once you submit your campaign, Client will be releasing the deposit',
      name: 'onceYuoSubmitCampaign',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
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

  /// `Service Free`
  String get serviceFree {
    return Intl.message(
      'Service Free',
      name: 'serviceFree',
      desc: '',
      args: [],
    );
  }

  /// `You'll Receive`
  String get youReceive {
    return Intl.message(
      'You\'ll Receive',
      name: 'youReceive',
      desc: '',
      args: [],
    );
  }

  /// `No deposit have made yet.`
  String get noDepositYet {
    return Intl.message(
      'No deposit have made yet.',
      name: 'noDepositYet',
      desc: '',
      args: [],
    );
  }

  /// `Please remind your client to deposit payment so you can start working`
  String get paymentRemindText {
    return Intl.message(
      'Please remind your client to deposit payment so you can start working',
      name: 'paymentRemindText',
      desc: '',
      args: [],
    );
  }

  /// `All deposits and fees are refundable subject to our `
  String get paymentTermsText {
    return Intl.message(
      'All deposits and fees are refundable subject to our ',
      name: 'paymentTermsText',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Payment Details`
  String get paymentDetails {
    return Intl.message(
      'Payment Details',
      name: 'paymentDetails',
      desc: '',
      args: [],
    );
  }

  /// `Type here...`
  String get typeHere {
    return Intl.message(
      'Type here...',
      name: 'typeHere',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Describe your offer here...`
  String get describeOfferHere {
    return Intl.message(
      'Describe your offer here...',
      name: 'describeOfferHere',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Send Offer`
  String get sendOffer {
    return Intl.message(
      'Send Offer',
      name: 'sendOffer',
      desc: '',
      args: [],
    );
  }

  /// `You will get total amount`
  String get youWillGetTotal {
    return Intl.message(
      'You will get total amount',
      name: 'youWillGetTotal',
      desc: '',
      args: [],
    );
  }

  /// `Send Offers`
  String get send_offers {
    return Intl.message(
      'Send Offers',
      name: 'send_offers',
      desc: '',
      args: [],
    );
  }

  /// `My Stores`
  String get my_stores {
    return Intl.message(
      'My Stores',
      name: 'my_stores',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Public Profile`
  String get public_profile {
    return Intl.message(
      'Public Profile',
      name: 'public_profile',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `To verify your account, you need to have a trust score of at least 50% on your profile`
  String get verify_account {
    return Intl.message(
      'To verify your account, you need to have a trust score of at least 50% on your profile',
      name: 'verify_account',
      desc: '',
      args: [],
    );
  }

  /// `Your Profile is`
  String get your_profile {
    return Intl.message(
      'Your Profile is',
      name: 'your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get income {
    return Intl.message(
      'Income',
      name: 'income',
      desc: '',
      args: [],
    );
  }

  /// `Available Balance`
  String get available_balance {
    return Intl.message(
      'Available Balance',
      name: 'available_balance',
      desc: '',
      args: [],
    );
  }

  /// `Paid for campaign ID`
  String get paid_for_campaign {
    return Intl.message(
      'Paid for campaign ID',
      name: 'paid_for_campaign',
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

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get view_all {
    return Intl.message(
      'View All',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `View Less`
  String get view_less {
    return Intl.message(
      'View Less',
      name: 'view_less',
      desc: '',
      args: [],
    );
  }

  /// `Agency Name`
  String get agency_name {
    return Intl.message(
      'Agency Name',
      name: 'agency_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Current Trust Score`
  String get current_score {
    return Intl.message(
      'Current Trust Score',
      name: 'current_score',
      desc: '',
      args: [],
    );
  }

  /// `You need more than`
  String get need_more_than {
    return Intl.message(
      'You need more than',
      name: 'need_more_than',
      desc: '',
      args: [],
    );
  }

  /// `to be accepted for`
  String get to_be_accepted {
    return Intl.message(
      'to be accepted for',
      name: 'to_be_accepted',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Email`
  String get send_verify_email {
    return Intl.message(
      'Send Verification Email',
      name: 'send_verify_email',
      desc: '',
      args: [],
    );
  }

  /// `To continue using nojom, please click on the link in the verification email send to your email. This will confirm your email as your contact address.`
  String get verify_email_text {
    return Intl.message(
      'To continue using nojom, please click on the link in the verification email send to your email. This will confirm your email as your contact address.',
      name: 'verify_email_text',
      desc: '',
      args: [],
    );
  }

  /// `A verification is sent to your email.`
  String get verify_email_send {
    return Intl.message(
      'A verification is sent to your email.',
      name: 'verify_email_send',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Code`
  String get send_verify_code {
    return Intl.message(
      'Send Verification Code',
      name: 'send_verify_code',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your phone number so that we can verify your account. This number will be kept private and will be used for verification purpose.`
  String get verify_phone_text {
    return Intl.message(
      'Please provide your phone number so that we can verify your account. This number will be kept private and will be used for verification purpose.',
      name: 'verify_phone_text',
      desc: '',
      args: [],
    );
  }

  /// `User updated successfully.`
  String get updated_success {
    return Intl.message(
      'User updated successfully.',
      name: 'updated_success',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get verified {
    return Intl.message(
      'Verified',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `Not Verified`
  String get not_verified {
    return Intl.message(
      'Not Verified',
      name: 'not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Cancel this withdraw`
  String get cancel_withdraw {
    return Intl.message(
      'Cancel this withdraw',
      name: 'cancel_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Your transfer will be completed within 3-7 business days after you've placed the withdraw. Once you've made a withdraw, you can cancel it up to few hours.`
  String get withdraw_text {
    return Intl.message(
      'Your transfer will be completed within 3-7 business days after you\'ve placed the withdraw. Once you\'ve made a withdraw, you can cancel it up to few hours.',
      name: 'withdraw_text',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `Name can't be empty`
  String get name_cant_be_empty {
    return Intl.message(
      'Name can\'t be empty',
      name: 'name_cant_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid website link`
  String get invalid_website_link {
    return Intl.message(
      'Invalid website link',
      name: 'invalid_website_link',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalid_phone_number {
    return Intl.message(
      'Invalid phone number',
      name: 'invalid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `No data has been changed`
  String get no_data_has_been_changed {
    return Intl.message(
      'No data has been changed',
      name: 'no_data_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Rate the Client`
  String get rateTheClient {
    return Intl.message(
      'Rate the Client',
      name: 'rateTheClient',
      desc: '',
      args: [],
    );
  }

  /// `My Rates`
  String get myRates {
    return Intl.message(
      'My Rates',
      name: 'myRates',
      desc: '',
      args: [],
    );
  }

  /// `Completed Campaigns`
  String get completedCampaigns {
    return Intl.message(
      'Completed Campaigns',
      name: 'completedCampaigns',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Id`
  String get campaignId {
    return Intl.message(
      'Campaign Id',
      name: 'campaignId',
      desc: '',
      args: [],
    );
  }

  /// `No Accounts`
  String get no_accounts {
    return Intl.message(
      'No Accounts',
      name: 'no_accounts',
      desc: '',
      args: [],
    );
  }

  /// `All accounts will displayed here`
  String get no_account_text {
    return Intl.message(
      'All accounts will displayed here',
      name: 'no_account_text',
      desc: '',
      args: [],
    );
  }

  /// `No Income Balance`
  String get no_income {
    return Intl.message(
      'No Income Balance',
      name: 'no_income',
      desc: '',
      args: [],
    );
  }

  /// `All incoming balance will displayed here`
  String get no_income_text {
    return Intl.message(
      'All incoming balance will displayed here',
      name: 'no_income_text',
      desc: '',
      args: [],
    );
  }

  /// `No Withdraw Balance`
  String get no_withdraw {
    return Intl.message(
      'No Withdraw Balance',
      name: 'no_withdraw',
      desc: '',
      args: [],
    );
  }

  /// `All withdraw balance will displayed here`
  String get no_withdraw_text {
    return Intl.message(
      'All withdraw balance will displayed here',
      name: 'no_withdraw_text',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get show_details {
    return Intl.message(
      'View Details',
      name: 'show_details',
      desc: '',
      args: [],
    );
  }

  /// `Please select one account for get paid`
  String get select_paid_account {
    return Intl.message(
      'Please select one account for get paid',
      name: 'select_paid_account',
      desc: '',
      args: [],
    );
  }

  /// `Choose account`
  String get choose_account {
    return Intl.message(
      'Choose account',
      name: 'choose_account',
      desc: '',
      args: [],
    );
  }

  /// `Minimum amount is 100 `
  String get min_amount {
    return Intl.message(
      'Minimum amount is 100 ',
      name: 'min_amount',
      desc: '',
      args: [],
    );
  }

  /// `My Available Balance`
  String get my_available_balance {
    return Intl.message(
      'My Available Balance',
      name: 'my_available_balance',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Balance`
  String get remain_balance {
    return Intl.message(
      'Remaining Balance',
      name: 'remain_balance',
      desc: '',
      args: [],
    );
  }

  /// `Thank You`
  String get thank_you {
    return Intl.message(
      'Thank You',
      name: 'thank_you',
      desc: '',
      args: [],
    );
  }

  /// `Your transfer will complete in 3-7 business days.`
  String get transfer_days {
    return Intl.message(
      'Your transfer will complete in 3-7 business days.',
      name: 'transfer_days',
      desc: '',
      args: [],
    );
  }

  /// `Once you've made a withdraw, you can cancel it for up a few hours. To cancel a pending withdraw, click on the pending withdraw and click on cancel.`
  String get transfer_text {
    return Intl.message(
      'Once you\'ve made a withdraw, you can cancel it for up a few hours. To cancel a pending withdraw, click on the pending withdraw and click on cancel.',
      name: 'transfer_text',
      desc: '',
      args: [],
    );
  }

  /// `Please select account first`
  String get account_first {
    return Intl.message(
      'Please select account first',
      name: 'account_first',
      desc: '',
      args: [],
    );
  }

  /// `Accounts`
  String get accounts {
    return Intl.message(
      'Accounts',
      name: 'accounts',
      desc: '',
      args: [],
    );
  }

  /// `Your transfer will complete in 10 business days.`
  String get transfer_business_days {
    return Intl.message(
      'Your transfer will complete in 10 business days.',
      name: 'transfer_business_days',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get attachments {
    return Intl.message(
      'Attachments',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `project`
  String get project {
    return Intl.message(
      'project',
      name: 'project',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get ryal {
    return Intl.message(
      'SAR',
      name: 'ryal',
      desc: '',
      args: [],
    );
  }

  /// `Client's Files`
  String get clients_files {
    return Intl.message(
      'Client\'s Files',
      name: 'clients_files',
      desc: '',
      args: [],
    );
  }

  /// `No payments have been made yet.`
  String get no_payment_have_made {
    return Intl.message(
      'No payments have been made yet.',
      name: 'no_payment_have_made',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Once the client accept you, he will deposit money and release payment when you complete his campaign.`
  String get client_accept_deposit {
    return Intl.message(
      'Once the client accept you, he will deposit money and release payment when you complete his campaign.',
      name: 'client_accept_deposit',
      desc: '',
      args: [],
    );
  }

  /// `Biddings`
  String get biddings {
    return Intl.message(
      'Biddings',
      name: 'biddings',
      desc: '',
      args: [],
    );
  }

  /// `files`
  String get files {
    return Intl.message(
      'files',
      name: 'files',
      desc: '',
      args: [],
    );
  }

  /// `Place a Bild`
  String get placeBid {
    return Intl.message(
      'Place a Bild',
      name: 'placeBid',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to block this User?`
  String get confirmationReportsText {
    return Intl.message(
      'Are you sure you want to block this User?',
      name: 'confirmationReportsText',
      desc: '',
      args: [],
    );
  }

  /// `Cancel this bid?`
  String get cancel_this_bid {
    return Intl.message(
      'Cancel this bid?',
      name: 'cancel_this_bid',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Bid`
  String get cancel_bid {
    return Intl.message(
      'Cancel Bid',
      name: 'cancel_bid',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Cancel this bidding`
  String get confirm_cancel_bid {
    return Intl.message(
      'Yes, Cancel this bidding',
      name: 'confirm_cancel_bid',
      desc: '',
      args: [],
    );
  }

  /// `Attach File`
  String get attach_file {
    return Intl.message(
      'Attach File',
      name: 'attach_file',
      desc: '',
      args: [],
    );
  }

  /// `Max size is`
  String get max_size {
    return Intl.message(
      'Max size is',
      name: 'max_size',
      desc: '',
      args: [],
    );
  }

  /// `Primary account`
  String get primary_account {
    return Intl.message(
      'Primary account',
      name: 'primary_account',
      desc: '',
      args: [],
    );
  }

  /// `Select option to select your ID picture`
  String get select_option {
    return Intl.message(
      'Select option to select your ID picture',
      name: 'select_option',
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

  /// `File`
  String get file {
    return Intl.message(
      'File',
      name: 'file',
      desc: '',
      args: [],
    );
  }

  /// `Bank deleted successfully`
  String get bank_deleted_success {
    return Intl.message(
      'Bank deleted successfully',
      name: 'bank_deleted_success',
      desc: '',
      args: [],
    );
  }

  /// `Bank updated successfully`
  String get bank_updated_success {
    return Intl.message(
      'Bank updated successfully',
      name: 'bank_updated_success',
      desc: '',
      args: [],
    );
  }

  /// `bid`
  String get bid {
    return Intl.message(
      'bid',
      name: 'bid',
      desc: '',
      args: [],
    );
  }

  /// `Edit bid`
  String get edit_bid {
    return Intl.message(
      'Edit bid',
      name: 'edit_bid',
      desc: '',
      args: [],
    );
  }

  /// `Place a bid on`
  String get placeBidOn {
    return Intl.message(
      'Place a bid on',
      name: 'placeBidOn',
      desc: '',
      args: [],
    );
  }

  /// `Paid to you`
  String get paid_to_you {
    return Intl.message(
      'Paid to you',
      name: 'paid_to_you',
      desc: '',
      args: [],
    );
  }

  /// `You will receive`
  String get you_receive {
    return Intl.message(
      'You will receive',
      name: 'you_receive',
      desc: '',
      args: [],
    );
  }

  /// `Delivery in`
  String get delivery_in {
    return Intl.message(
      'Delivery in',
      name: 'delivery_in',
      desc: '',
      args: [],
    );
  }

  /// `Describe your bid`
  String get describe_bid {
    return Intl.message(
      'Describe your bid',
      name: 'describe_bid',
      desc: '',
      args: [],
    );
  }

  /// `You can not place bid for this campaign`
  String get can_not_pace_bid {
    return Intl.message(
      'You can not place bid for this campaign',
      name: 'can_not_pace_bid',
      desc: '',
      args: [],
    );
  }

  /// `Payments`
  String get payments {
    return Intl.message(
      'Payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Set`
  String get set {
    return Intl.message(
      'Set',
      name: 'set',
      desc: '',
      args: [],
    );
  }

  /// `nojom will get`
  String get nojom_get {
    return Intl.message(
      'nojom will get',
      name: 'nojom_get',
      desc: '',
      args: [],
    );
  }

  /// `Service Fee`
  String get service_fee {
    return Intl.message(
      'Service Fee',
      name: 'service_fee',
      desc: '',
      args: [],
    );
  }

  /// `Verified with`
  String get verify_with {
    return Intl.message(
      'Verified with',
      name: 'verify_with',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Leave a Review`
  String get leave_review {
    return Intl.message(
      'Leave a Review',
      name: 'leave_review',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `The Feedback is sent`
  String get feedback_sent {
    return Intl.message(
      'The Feedback is sent',
      name: 'feedback_sent',
      desc: '',
      args: [],
    );
  }

  /// `Low`
  String get low {
    return Intl.message(
      'Low',
      name: 'low',
      desc: '',
      args: [],
    );
  }

  /// `Very Low`
  String get very_low {
    return Intl.message(
      'Very Low',
      name: 'very_low',
      desc: '',
      args: [],
    );
  }

  /// `High`
  String get high {
    return Intl.message(
      'High',
      name: 'high',
      desc: '',
      args: [],
    );
  }

  /// `Very High`
  String get very_high {
    return Intl.message(
      'Very High',
      name: 'very_high',
      desc: '',
      args: [],
    );
  }

  /// `Proof successfully Updated`
  String get proof_updated {
    return Intl.message(
      'Proof successfully Updated',
      name: 'proof_updated',
      desc: '',
      args: [],
    );
  }

  /// `Type Your comment`
  String get type_your_comment {
    return Intl.message(
      'Type Your comment',
      name: 'type_your_comment',
      desc: '',
      args: [],
    );
  }

  /// `The Bid detail updated Successfully.`
  String get update_bid {
    return Intl.message(
      'The Bid detail updated Successfully.',
      name: 'update_bid',
      desc: '',
      args: [],
    );
  }

  /// `UnBlock`
  String get unBlock {
    return Intl.message(
      'UnBlock',
      name: 'unBlock',
      desc: '',
      args: [],
    );
  }

  /// `Time Left`
  String get timeLeft {
    return Intl.message(
      'Time Left',
      name: 'timeLeft',
      desc: '',
      args: [],
    );
  }

  /// `Influencer services`
  String get influencerServices {
    return Intl.message(
      'Influencer services',
      name: 'influencerServices',
      desc: '',
      args: [],
    );
  }

  /// `Completed Campaign`
  String get completed_campaign {
    return Intl.message(
      'Completed Campaign',
      name: 'completed_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Max size is 20mb`
  String get maxSize {
    return Intl.message(
      'Max size is 20mb',
      name: 'maxSize',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to unBlock this user`
  String get confirmUnBlock {
    return Intl.message(
      'Are you sure want to unBlock this user',
      name: 'confirmUnBlock',
      desc: '',
      args: [],
    );
  }

  /// `Submit Campaign`
  String get submit_campaign {
    return Intl.message(
      'Submit Campaign',
      name: 'submit_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Email files to client`
  String get email_files_to_client {
    return Intl.message(
      'Email files to client',
      name: 'email_files_to_client',
      desc: '',
      args: [],
    );
  }

  /// `block&Report`
  String get blockAndReport {
    return Intl.message(
      'block&Report',
      name: 'blockAndReport',
      desc: '',
      args: [],
    );
  }

  /// `Scammer`
  String get scammer {
    return Intl.message(
      'Scammer',
      name: 'scammer',
      desc: '',
      args: [],
    );
  }

  /// `Shares personal contact and payment details`
  String get share_personal_files {
    return Intl.message(
      'Shares personal contact and payment details',
      name: 'share_personal_files',
      desc: '',
      args: [],
    );
  }

  /// `Blackmailing and harassment`
  String get blackmail {
    return Intl.message(
      'Blackmailing and harassment',
      name: 'blackmail',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter valid bid Amount`
  String get enter_valid_bid {
    return Intl.message(
      'Please Enter valid bid Amount',
      name: 'enter_valid_bid',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter bid Delivery time`
  String get enter_valid_delivery_value {
    return Intl.message(
      'Please Enter bid Delivery time',
      name: 'enter_valid_delivery_value',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter bid Description`
  String get bid_description {
    return Intl.message(
      'Please Enter bid Description',
      name: 'bid_description',
      desc: '',
      args: [],
    );
  }

  /// `Chat with your client`
  String get chatWithClient {
    return Intl.message(
      'Chat with your client',
      name: 'chatWithClient',
      desc: '',
      args: [],
    );
  }

  /// `You can start working on the campaign, after the deposit is made by the client and get awarded`
  String get start_work_on_campaign {
    return Intl.message(
      'You can start working on the campaign, after the deposit is made by the client and get awarded',
      name: 'start_work_on_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Get paid when you complete the campaign`
  String get get_paid {
    return Intl.message(
      'Get paid when you complete the campaign',
      name: 'get_paid',
      desc: '',
      args: [],
    );
  }

  /// `View bidding`
  String get view_bidding {
    return Intl.message(
      'View bidding',
      name: 'view_bidding',
      desc: '',
      args: [],
    );
  }

  /// `No Bids`
  String get no_bids {
    return Intl.message(
      'No Bids',
      name: 'no_bids',
      desc: '',
      args: [],
    );
  }

  /// `All bidding Campaigns will displayed\n here`
  String get no_bidding_campaign {
    return Intl.message(
      'All bidding Campaigns will displayed\n here',
      name: 'no_bidding_campaign',
      desc: '',
      args: [],
    );
  }

  /// `No Offers`
  String get no_offer {
    return Intl.message(
      'No Offers',
      name: 'no_offer',
      desc: '',
      args: [],
    );
  }

  /// `All Offers will be displayed here.`
  String get no_offer_campaign {
    return Intl.message(
      'All Offers will be displayed here.',
      name: 'no_offer_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Are You sure you want to unblock this user`
  String get unblockConfirm {
    return Intl.message(
      'Are You sure you want to unblock this user',
      name: 'unblockConfirm',
      desc: '',
      args: [],
    );
  }

  /// `The client is yet to make a deposit.\nPlease remind your client to deposit payment so you can start with the campaign.`
  String get the_client_is_yet_to_make_a_deposit {
    return Intl.message(
      'The client is yet to make a deposit.\nPlease remind your client to deposit payment so you can start with the campaign.',
      name: 'the_client_is_yet_to_make_a_deposit',
      desc: '',
      args: [],
    );
  }

  /// `already released the payment.`
  String get already_released_payment {
    return Intl.message(
      'already released the payment.',
      name: 'already_released_payment',
      desc: '',
      args: [],
    );
  }

  /// `How was `
  String get how_was {
    return Intl.message(
      'How was ',
      name: 'how_was',
      desc: '',
      args: [],
    );
  }

  /// `Client has already released deposit.\n`
  String get client_release_deposit {
    return Intl.message(
      'Client has already released deposit.\n',
      name: 'client_release_deposit',
      desc: '',
      args: [],
    );
  }

  /// `Campaign is closed now `
  String get campaign_closed {
    return Intl.message(
      'Campaign is closed now ',
      name: 'campaign_closed',
      desc: '',
      args: [],
    );
  }

  /// `and you can withdraw money form `
  String get with_draw_now {
    return Intl.message(
      'and you can withdraw money form ',
      name: 'with_draw_now',
      desc: '',
      args: [],
    );
  }

  /// ` balance`
  String get balance {
    return Intl.message(
      ' balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// ` page.`
  String get page {
    return Intl.message(
      ' page.',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// ` Mins`
  String get mints {
    return Intl.message(
      ' Mins',
      name: 'mints',
      desc: '',
      args: [],
    );
  }

  /// ` Sec`
  String get second {
    return Intl.message(
      ' Sec',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// ` Hours`
  String get Hour {
    return Intl.message(
      ' Hours',
      name: 'Hour',
      desc: '',
      args: [],
    );
  }

  /// `All platform`
  String get allPlatForm {
    return Intl.message(
      'All platform',
      name: 'allPlatForm',
      desc: '',
      args: [],
    );
  }

  /// `No Campaigns in Progress`
  String get no_campaign_in_progress {
    return Intl.message(
      'No Campaigns in Progress',
      name: 'no_campaign_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `No Past Campaigns`
  String get no_closed_campaign {
    return Intl.message(
      'No Past Campaigns',
      name: 'no_closed_campaign',
      desc: '',
      args: [],
    );
  }

  /// `All  Past Campaign will be dispalyed\n here.`
  String get no_closed_campaign_message {
    return Intl.message(
      'All  Past Campaign will be dispalyed\n here.',
      name: 'no_closed_campaign_message',
      desc: '',
      args: [],
    );
  }

  /// `Available Campaigns`
  String get available_campaign {
    return Intl.message(
      'Available Campaigns',
      name: 'available_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Explore new Campaigns here`
  String get explore_campaigns {
    return Intl.message(
      'Explore new Campaigns here',
      name: 'explore_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Create Offer`
  String get create_offer {
    return Intl.message(
      'Create Offer',
      name: 'create_offer',
      desc: '',
      args: [],
    );
  }

  /// `Released`
  String get released {
    return Intl.message(
      'Released',
      name: 'released',
      desc: '',
      args: [],
    );
  }

  /// `Add new bank`
  String get add_new_bank {
    return Intl.message(
      'Add new bank',
      name: 'add_new_bank',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bank_name {
    return Intl.message(
      'Bank Name',
      name: 'bank_name',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birth_day {
    return Intl.message(
      'Birthday',
      name: 'birth_day',
      desc: '',
      args: [],
    );
  }

  /// `Maximum of 3 categories to select`
  String get max_categories {
    return Intl.message(
      'Maximum of 3 categories to select',
      name: 'max_categories',
      desc: '',
      args: [],
    );
  }

  /// `Unmute`
  String get unmute {
    return Intl.message(
      'Unmute',
      name: 'unmute',
      desc: '',
      args: [],
    );
  }

  /// `Email or Phone Number`
  String get email_phone {
    return Intl.message(
      'Email or Phone Number',
      name: 'email_phone',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Apple`
  String get login_with_apple {
    return Intl.message(
      'Log in with Apple',
      name: 'login_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Apple`
  String get sign_up_with_apple {
    return Intl.message(
      'Sign up with Apple',
      name: 'sign_up_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google`
  String get login_with_google {
    return Intl.message(
      'Log in with Google',
      name: 'login_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get sign_up_with_google {
    return Intl.message(
      'Sign up with Google',
      name: 'sign_up_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Type your email to reset your password`
  String get type_email {
    return Intl.message(
      'Type your email to reset your password',
      name: 'type_email',
      desc: '',
      args: [],
    );
  }

  /// `Security Code`
  String get security_code {
    return Intl.message(
      'Security Code',
      name: 'security_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter Security Code`
  String get enter_security_code {
    return Intl.message(
      'Enter Security Code',
      name: 'enter_security_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6 digit code we sent via email and your new password`
  String get security_code_verify {
    return Intl.message(
      'Enter the 6 digit code we sent via email and your new password',
      name: 'security_code_verify',
      desc: '',
      args: [],
    );
  }

  /// `Haven't received a code ?`
  String get code_not_received {
    return Intl.message(
      'Haven\'t received a code ?',
      name: 'code_not_received',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message(
      'Resend Code',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Proposals`
  String get Proposals {
    return Intl.message(
      'Proposals',
      name: 'Proposals',
      desc: '',
      args: [],
    );
  }

  /// `Connect with Star`
  String get contact_with_star {
    return Intl.message(
      'Connect with Star',
      name: 'contact_with_star',
      desc: '',
      args: [],
    );
  }

  /// `Budget`
  String get budget {
    return Intl.message(
      'Budget',
      name: 'budget',
      desc: '',
      args: [],
    );
  }

  /// `Upload files`
  String get upload_files {
    return Intl.message(
      'Upload files',
      name: 'upload_files',
      desc: '',
      args: [],
    );
  }

  /// `Upload file`
  String get upload_file {
    return Intl.message(
      'Upload file',
      name: 'upload_file',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Status`
  String get campaign_status {
    return Intl.message(
      'Campaign Status',
      name: 'campaign_status',
      desc: '',
      args: [],
    );
  }

  /// `Campaign cost`
  String get campaign_cost {
    return Intl.message(
      'Campaign cost',
      name: 'campaign_cost',
      desc: '',
      args: [],
    );
  }

  /// `For Refund`
  String get for_refund {
    return Intl.message(
      'For Refund',
      name: 'for_refund',
      desc: '',
      args: [],
    );
  }

  /// `campaign`
  String get for_campaign {
    return Intl.message(
      'campaign',
      name: 'for_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Submitted File`
  String get submitted_file {
    return Intl.message(
      'Submitted File',
      name: 'submitted_file',
      desc: '',
      args: [],
    );
  }

  /// `See All Files`
  String get see_all_files {
    return Intl.message(
      'See All Files',
      name: 'see_all_files',
      desc: '',
      args: [],
    );
  }

  /// `Please select single reason`
  String get select_refund_reason {
    return Intl.message(
      'Please select single reason',
      name: 'select_refund_reason',
      desc: '',
      args: [],
    );
  }

  /// `Select your option!`
  String get select_upload_file_option {
    return Intl.message(
      'Select your option!',
      name: 'select_upload_file_option',
      desc: '',
      args: [],
    );
  }

  /// `Close this Campaign?`
  String get close_campaign_confirm_message {
    return Intl.message(
      'Close this Campaign?',
      name: 'close_campaign_confirm_message',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Close this campaign`
  String get close_campaign_button_cont {
    return Intl.message(
      'Yes, Close this campaign',
      name: 'close_campaign_button_cont',
      desc: '',
      args: [],
    );
  }

  /// `You have already deposited payment, once the star has completed and submitted the campaign, you can check it and release the payment.`
  String get in_progress_campaign_status_desc {
    return Intl.message(
      'You have already deposited payment, once the star has completed and submitted the campaign, you can check it and release the payment.',
      name: 'in_progress_campaign_status_desc',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Submit for verification`
  String get submit_verification {
    return Intl.message(
      'Submit for verification',
      name: 'submit_verification',
      desc: '',
      args: [],
    );
  }

  /// `Your ideas, issue, feedback or compliments`
  String get idea_issue_feedback {
    return Intl.message(
      'Your ideas, issue, feedback or compliments',
      name: 'idea_issue_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Find and Collaborate `
  String get find_and_collaborate {
    return Intl.message(
      'Find and Collaborate ',
      name: 'find_and_collaborate',
      desc: '',
      args: [],
    );
  }

  /// `in mins`
  String get in_mints {
    return Intl.message(
      'in mins',
      name: 'in_mints',
      desc: '',
      args: [],
    );
  }

  /// `View All Services`
  String get view_all_services {
    return Intl.message(
      'View All Services',
      name: 'view_all_services',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `Collaborations`
  String get collaborations {
    return Intl.message(
      'Collaborations',
      name: 'collaborations',
      desc: '',
      args: [],
    );
  }

  /// `Add note`
  String get add_note {
    return Intl.message(
      'Add note',
      name: 'add_note',
      desc: '',
      args: [],
    );
  }

  /// `Agency Tax`
  String get agency_tax {
    return Intl.message(
      'Agency Tax',
      name: 'agency_tax',
      desc: '',
      args: [],
    );
  }

  /// `Add More Stars`
  String get add_more_stars {
    return Intl.message(
      'Add More Stars',
      name: 'add_more_stars',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Data`
  String get campaign_data {
    return Intl.message(
      'Campaign Data',
      name: 'campaign_data',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Description`
  String get campaign_describe {
    return Intl.message(
      'Campaign Description',
      name: 'campaign_describe',
      desc: '',
      args: [],
    );
  }

  /// `Campaign title *`
  String get campaign_title {
    return Intl.message(
      'Campaign title *',
      name: 'campaign_title',
      desc: '',
      args: [],
    );
  }

  /// `Launch date`
  String get launch_date {
    return Intl.message(
      'Launch date',
      name: 'launch_date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Supported Files: Images, Videos, PDF Files`
  String get supported_formats {
    return Intl.message(
      'Supported Files: Images, Videos, PDF Files',
      name: 'supported_formats',
      desc: '',
      args: [],
    );
  }

  /// `Please select attachment`
  String get please_select_attachment {
    return Intl.message(
      'Please select attachment',
      name: 'please_select_attachment',
      desc: '',
      args: [],
    );
  }

  /// `Attachment uploaded successfully`
  String get attachment_uploaded {
    return Intl.message(
      'Attachment uploaded successfully',
      name: 'attachment_uploaded',
      desc: '',
      args: [],
    );
  }

  /// `Campaign created successfully`
  String get campaign_created {
    return Intl.message(
      'Campaign created successfully',
      name: 'campaign_created',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get select_date {
    return Intl.message(
      'Select Date',
      name: 'select_date',
      desc: '',
      args: [],
    );
  }

  /// `Select Time`
  String get select_time {
    return Intl.message(
      'Select Time',
      name: 'select_time',
      desc: '',
      args: [],
    );
  }

  /// `How Would you like to pay to top up`
  String get how_would_you_like_to_pay {
    return Intl.message(
      'How Would you like to pay to top up',
      name: 'how_would_you_like_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `Pay via`
  String get pay_with {
    return Intl.message(
      'Pay via',
      name: 'pay_with',
      desc: '',
      args: [],
    );
  }

  /// `Pay With Card`
  String get pay_with_card {
    return Intl.message(
      'Pay With Card',
      name: 'pay_with_card',
      desc: '',
      args: [],
    );
  }

  /// `No stars found`
  String get no_stars_found {
    return Intl.message(
      'No stars found',
      name: 'no_stars_found',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get total_price {
    return Intl.message(
      'Total Amount',
      name: 'total_price',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `View Our Stars`
  String get view_our_stars {
    return Intl.message(
      'View Our Stars',
      name: 'view_our_stars',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Hired`
  String get my_hired {
    return Intl.message(
      'Hired',
      name: 'my_hired',
      desc: '',
      args: [],
    );
  }

  /// `Yes, have`
  String get yes_have {
    return Intl.message(
      'Yes, have',
      name: 'yes_have',
      desc: '',
      args: [],
    );
  }

  /// `Newest`
  String get newest {
    return Intl.message(
      'Newest',
      name: 'newest',
      desc: '',
      args: [],
    );
  }

  /// `high to low`
  String get high_to_low {
    return Intl.message(
      'high to low',
      name: 'high_to_low',
      desc: '',
      args: [],
    );
  }

  /// `low to high`
  String get low_to_high {
    return Intl.message(
      'low to high',
      name: 'low_to_high',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get custom {
    return Intl.message(
      'Custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `K`
  String get thousand_symbol {
    return Intl.message(
      'K',
      name: 'thousand_symbol',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get million_symbol {
    return Intl.message(
      'M',
      name: 'million_symbol',
      desc: '',
      args: [],
    );
  }

  /// `5M+`
  String get plus_five_million {
    return Intl.message(
      '5M+',
      name: 'plus_five_million',
      desc: '',
      args: [],
    );
  }

  /// `Sort By`
  String get sort_by {
    return Intl.message(
      'Sort By',
      name: 'sort_by',
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

  /// `no conversations found yet`
  String get no_conversations {
    return Intl.message(
      'no conversations found yet',
      name: 'no_conversations',
      desc: '',
      args: [],
    );
  }

  /// `offer`
  String get offer {
    return Intl.message(
      'offer',
      name: 'offer',
      desc: '',
      args: [],
    );
  }

  /// `Typing...`
  String get typing {
    return Intl.message(
      'Typing...',
      name: 'typing',
      desc: '',
      args: [],
    );
  }

  /// `Harmful or illegal`
  String get harmful_illegal {
    return Intl.message(
      'Harmful or illegal',
      name: 'harmful_illegal',
      desc: '',
      args: [],
    );
  }

  /// `Active Now`
  String get active_now {
    return Intl.message(
      'Active Now',
      name: 'active_now',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Messages and calls are end-to-end encrypted. No one outside of this chat, not even nojom, can read or listen to them. Tap to learn more.`
  String get end_to_end_encrypted {
    return Intl.message(
      'Messages and calls are end-to-end encrypted. No one outside of this chat, not even nojom, can read or listen to them. Tap to learn more.',
      name: 'end_to_end_encrypted',
      desc: '',
      args: [],
    );
  }

  /// `Campaign`
  String get campaign {
    return Intl.message(
      'Campaign',
      name: 'campaign',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message(
      'In Progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get campaign_history {
    return Intl.message(
      'History',
      name: 'campaign_history',
      desc: '',
      args: [],
    );
  }

  /// `There is no campaigns here`
  String get no_campaigns {
    return Intl.message(
      'There is no campaigns here',
      name: 'no_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Report Campaign`
  String get report_campaign {
    return Intl.message(
      'Report Campaign',
      name: 'report_campaign',
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

  /// `MB`
  String get mega_byte {
    return Intl.message(
      'MB',
      name: 'mega_byte',
      desc: '',
      args: [],
    );
  }

  /// `Platforms`
  String get platforms {
    return Intl.message(
      'Platforms',
      name: 'platforms',
      desc: '',
      args: [],
    );
  }

  /// `Your request is approved`
  String get request_approved {
    return Intl.message(
      'Your request is approved',
      name: 'request_approved',
      desc: '',
      args: [],
    );
  }

  /// `Your request is Pending`
  String get request_pending {
    return Intl.message(
      'Your request is Pending',
      name: 'request_pending',
      desc: '',
      args: [],
    );
  }

  /// `Your request is Rejected`
  String get request_rejected {
    return Intl.message(
      'Your request is Rejected',
      name: 'request_rejected',
      desc: '',
      args: [],
    );
  }

  /// `Get Discount`
  String get get_discount {
    return Intl.message(
      'Get Discount',
      name: 'get_discount',
      desc: '',
      args: [],
    );
  }

  /// `How it works`
  String get how_it_work {
    return Intl.message(
      'How it works',
      name: 'how_it_work',
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

  /// `Edit Profile Picture`
  String get edit_profile_picture {
    return Intl.message(
      'Edit Profile Picture',
      name: 'edit_profile_picture',
      desc: '',
      args: [],
    );
  }

  /// `Private info`
  String get private_info {
    return Intl.message(
      'Private info',
      name: 'private_info',
      desc: '',
      args: [],
    );
  }

  /// `Verifications`
  String get verifications {
    return Intl.message(
      'Verifications',
      name: 'verifications',
      desc: '',
      args: [],
    );
  }

  /// `View My Public Profile`
  String get view_public_profile {
    return Intl.message(
      'View My Public Profile',
      name: 'view_public_profile',
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

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_use {
    return Intl.message(
      'Contact Us',
      name: 'contact_use',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_use {
    return Intl.message(
      'About Us',
      name: 'about_use',
      desc: '',
      args: [],
    );
  }

  /// `Career`
  String get career {
    return Intl.message(
      'Career',
      name: 'career',
      desc: '',
      args: [],
    );
  }

  /// `Share App`
  String get share_app {
    return Intl.message(
      'Share App',
      name: 'share_app',
      desc: '',
      args: [],
    );
  }

  /// `Data Privacy`
  String get data_privacy {
    return Intl.message(
      'Data Privacy',
      name: 'data_privacy',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get my_wallet {
    return Intl.message(
      'My Wallet',
      name: 'my_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Partner with us`
  String get partner_with_us {
    return Intl.message(
      'Partner with us',
      name: 'partner_with_us',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get modern {
    return Intl.message(
      'New',
      name: 'modern',
      desc: '',
      args: [],
    );
  }

  /// `Private Information`
  String get private_information {
    return Intl.message(
      'Private Information',
      name: 'private_information',
      desc: '',
      args: [],
    );
  }

  /// `Brand Name`
  String get brand_name {
    return Intl.message(
      'Brand Name',
      name: 'brand_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact Name`
  String get contact_name {
    return Intl.message(
      'Contact Name',
      name: 'contact_name',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobil {
    return Intl.message(
      'Mobile',
      name: 'mobil',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Registration Number`
  String get cr_number {
    return Intl.message(
      'Commercial Registration Number',
      name: 'cr_number',
      desc: '',
      args: [],
    );
  }

  /// `Vat`
  String get vat_number {
    return Intl.message(
      'Vat',
      name: 'vat_number',
      desc: '',
      args: [],
    );
  }

  /// `VAT Number`
  String get vatNumber {
    return Intl.message(
      'VAT Number',
      name: 'vatNumber',
      desc: '',
      args: [],
    );
  }

  /// `Write here`
  String get write_here {
    return Intl.message(
      'Write here',
      name: 'write_here',
      desc: '',
      args: [],
    );
  }

  /// `Commercial\n Registration Number`
  String get cRN {
    return Intl.message(
      'Commercial\n Registration Number',
      name: 'cRN',
      desc: '',
      args: [],
    );
  }

  /// `Upload your Commercial Registration`
  String get upload_cr {
    return Intl.message(
      'Upload your Commercial Registration',
      name: 'upload_cr',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your CR number so that we can verify your account. This number will be kept private and will be used for verification purposes`
  String get provide_your_crNumber {
    return Intl.message(
      'Please provide your CR number so that we can verify your account. This number will be kept private and will be used for verification purposes',
      name: 'provide_your_crNumber',
      desc: '',
      args: [],
    );
  }

  /// `Add Attachment`
  String get add_attachment {
    return Intl.message(
      'Add Attachment',
      name: 'add_attachment',
      desc: '',
      args: [],
    );
  }

  /// `You already verified email`
  String get email_already_verified {
    return Intl.message(
      'You already verified email',
      name: 'email_already_verified',
      desc: '',
      args: [],
    );
  }

  /// `You already verified phone number`
  String get phone_already_verified {
    return Intl.message(
      'You already verified phone number',
      name: 'phone_already_verified',
      desc: '',
      args: [],
    );
  }

  /// `You already verified cr number`
  String get crn_already_verified {
    return Intl.message(
      'You already verified cr number',
      name: 'crn_already_verified',
      desc: '',
      args: [],
    );
  }

  /// `Added successfully`
  String get added_successfully {
    return Intl.message(
      'Added successfully',
      name: 'added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please provide your VAT number so that we can verify your account. This number will be kept private and will be used for verification purposes`
  String get provide_your_vat_number {
    return Intl.message(
      'Please provide your VAT number so that we can verify your account. This number will be kept private and will be used for verification purposes',
      name: 'provide_your_vat_number',
      desc: '',
      args: [],
    );
  }

  /// `Hi,`
  String get hi {
    return Intl.message(
      'Hi,',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get update_password {
    return Intl.message(
      'Update Password',
      name: 'update_password',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter Current Password`
  String get enter_current_password {
    return Intl.message(
      'Enter Current Password',
      name: 'enter_current_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password`
  String get enter_new_password {
    return Intl.message(
      'Enter New Password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Password strength:`
  String get password_strength {
    return Intl.message(
      'Password strength:',
      name: 'password_strength',
      desc: '',
      args: [],
    );
  }

  /// `Use at least 8 characters. Don't use a password from another site, or something too obvious like your pet's name.`
  String get password_strength_description {
    return Intl.message(
      'Use at least 8 characters. Don\'t use a password from another site, or something too obvious like your pet\'s name.',
      name: 'password_strength_description',
      desc: '',
      args: [],
    );
  }

  /// `Need help? Contact with  our support team`
  String get need_help_contact_support {
    return Intl.message(
      'Need help? Contact with  our support team',
      name: 'need_help_contact_support',
      desc: '',
      args: [],
    );
  }

  /// `My Public Profile`
  String get my_public_profile {
    return Intl.message(
      'My Public Profile',
      name: 'my_public_profile',
      desc: '',
      args: [],
    );
  }

  /// `Verified with`
  String get verifyWith {
    return Intl.message(
      'Verified with',
      name: 'verifyWith',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Register`
  String get commercial_registration {
    return Intl.message(
      'Commercial Register',
      name: 'commercial_registration',
      desc: '',
      args: [],
    );
  }

  /// `No verified method found`
  String get no_verified_method {
    return Intl.message(
      'No verified method found',
      name: 'no_verified_method',
      desc: '',
      args: [],
    );
  }

  /// `No reviews`
  String get no_reviews {
    return Intl.message(
      'No reviews',
      name: 'no_reviews',
      desc: '',
      args: [],
    );
  }

  /// `All Reviews will disabled here`
  String get no_reviews_message {
    return Intl.message(
      'All Reviews will disabled here',
      name: 'no_reviews_message',
      desc: '',
      args: [],
    );
  }

  /// `Get 200 SAR`
  String get get_200_sar {
    return Intl.message(
      'Get 200 SAR',
      name: 'get_200_sar',
      desc: '',
      args: [],
    );
  }

  /// `Easy 10 SAR`
  String get get_10_sar {
    return Intl.message(
      'Easy 10 SAR',
      name: 'get_10_sar',
      desc: '',
      args: [],
    );
  }

  /// `Win 100 SAR`
  String get get_100_sar {
    return Intl.message(
      'Win 100 SAR',
      name: 'get_100_sar',
      desc: '',
      args: [],
    );
  }

  /// `Rewards`
  String get rewards {
    return Intl.message(
      'Rewards',
      name: 'rewards',
      desc: '',
      args: [],
    );
  }

  /// `Get up to 200 SAR`
  String get get_up_to_200_sar {
    return Intl.message(
      'Get up to 200 SAR',
      name: 'get_up_to_200_sar',
      desc: '',
      args: [],
    );
  }

  /// `Give your friends 10% off their first\ncampaign and get 20% off their first\ncampaign up to 200 SAR for each\nperson who uses your link or promo\ncode to place their first campaign.\n`
  String get get_up_to_200_sar_describe {
    return Intl.message(
      'Give your friends 10% off their first\ncampaign and get 20% off their first\ncampaign up to 200 SAR for each\nperson who uses your link or promo\ncode to place their first campaign.\n',
      name: 'get_up_to_200_sar_describe',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get txt {
    return Intl.message(
      'Text',
      name: 'txt',
      desc: '',
      args: [],
    );
  }

  /// `See how it it works`
  String get see_how_it_work {
    return Intl.message(
      'See how it it works',
      name: 'see_how_it_work',
      desc: '',
      args: [],
    );
  }

  /// `Tell Your Friends about us`
  String get tell_your_friends {
    return Intl.message(
      'Tell Your Friends about us',
      name: 'tell_your_friends',
      desc: '',
      args: [],
    );
  }

  /// `Anyone who uses your coupon or QR follows your referral link will get 10 SAR off on their first campaign.`
  String get referral_reward {
    return Intl.message(
      'Anyone who uses your coupon or QR follows your referral link will get 10 SAR off on their first campaign.',
      name: 'referral_reward',
      desc: '',
      args: [],
    );
  }

  /// `Your friends list a campaign`
  String get friends_campaign {
    return Intl.message(
      'Your friends list a campaign',
      name: 'friends_campaign',
      desc: '',
      args: [],
    );
  }

  /// `You will receive 10 SAR , once your friend complete the campaign.`
  String get friend_completion_reward {
    return Intl.message(
      'You will receive 10 SAR , once your friend complete the campaign.',
      name: 'friend_completion_reward',
      desc: '',
      args: [],
    );
  }

  /// `Get 10 SAR for every friend`
  String get per_friend_reward {
    return Intl.message(
      'Get 10 SAR for every friend',
      name: 'per_friend_reward',
      desc: '',
      args: [],
    );
  }

  /// `For example: if you invited 100 friends then you will get 1,000 SAR`
  String get example_reward {
    return Intl.message(
      'For example: if you invited 100 friends then you will get 1,000 SAR',
      name: 'example_reward',
      desc: '',
      args: [],
    );
  }

  /// `Send your special promo code , or your referral link to your friends, Once they use this code or follow the link to place their first order at nojom they will receive 10 SAR off the price and you will get 10 SAR to your balance. Read`
  String get referral_benefits {
    return Intl.message(
      'Send your special promo code , or your referral link to your friends, Once they use this code or follow the link to place their first order at nojom they will receive 10 SAR off the price and you will get 10 SAR to your balance. Read',
      name: 'referral_benefits',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use.`
  String get more_terms_of_use {
    return Intl.message(
      'Terms of Use.',
      name: 'more_terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `I'm here`
  String get im_here {
    return Intl.message(
      'I\'m here',
      name: 'im_here',
      desc: '',
      args: [],
    );
  }

  /// `You're`
  String get you_are {
    return Intl.message(
      'You\'re',
      name: 'you_are',
      desc: '',
      args: [],
    );
  }

  /// `away from`
  String get away_from {
    return Intl.message(
      'away from',
      name: 'away_from',
      desc: '',
      args: [],
    );
  }

  /// `level`
  String get level {
    return Intl.message(
      'level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get blue {
    return Intl.message(
      'Blue',
      name: 'blue',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get gold {
    return Intl.message(
      'Gold',
      name: 'gold',
      desc: '',
      args: [],
    );
  }

  /// `Silver`
  String get silver {
    return Intl.message(
      'Silver',
      name: 'silver',
      desc: '',
      args: [],
    );
  }

  /// `VIP`
  String get vip {
    return Intl.message(
      'VIP',
      name: 'vip',
      desc: '',
      args: [],
    );
  }

  /// `4 points with every sar you spend`
  String get points_per_sar {
    return Intl.message(
      '4 points with every sar you spend',
      name: 'points_per_sar',
      desc: '',
      args: [],
    );
  }

  /// `1200 points for reaching Blue level`
  String get blue_level_reward {
    return Intl.message(
      '1200 points for reaching Blue level',
      name: 'blue_level_reward',
      desc: '',
      args: [],
    );
  }

  /// `Spend 1000 SAR and get:`
  String get spend_1000_sar {
    return Intl.message(
      'Spend 1000 SAR and get:',
      name: 'spend_1000_sar',
      desc: '',
      args: [],
    );
  }

  /// `4000 points for reaching Silver level`
  String get silver_level_reward {
    return Intl.message(
      '4000 points for reaching Silver level',
      name: 'silver_level_reward',
      desc: '',
      args: [],
    );
  }

  /// `12000 points for reaching Gold level`
  String get gold_level_reward {
    return Intl.message(
      '12000 points for reaching Gold level',
      name: 'gold_level_reward',
      desc: '',
      args: [],
    );
  }

  /// `24000 points for reaching VIP level`
  String get vip_level_reward {
    return Intl.message(
      '24000 points for reaching VIP level',
      name: 'vip_level_reward',
      desc: '',
      args: [],
    );
  }

  /// `Spend 300 SAR and get:`
  String get spend_300_sar {
    return Intl.message(
      'Spend 300 SAR and get:',
      name: 'spend_300_sar',
      desc: '',
      args: [],
    );
  }

  /// `Spend 300 SAR and get:`
  String get spend_3000_sar {
    return Intl.message(
      'Spend 300 SAR and get:',
      name: 'spend_3000_sar',
      desc: '',
      args: [],
    );
  }

  /// `Vip Customer Support`
  String get vip_support {
    return Intl.message(
      'Vip Customer Support',
      name: 'vip_support',
      desc: '',
      args: [],
    );
  }

  /// `Spend 6000 SAR and get:`
  String get spend_6000_sar {
    return Intl.message(
      'Spend 6000 SAR and get:',
      name: 'spend_6000_sar',
      desc: '',
      args: [],
    );
  }

  /// `Higher Trust Score`
  String get higher_trust_score {
    return Intl.message(
      'Higher Trust Score',
      name: 'higher_trust_score',
      desc: '',
      args: [],
    );
  }

  /// `Get 10 SAR Today`
  String get get_10_sar_today {
    return Intl.message(
      'Get 10 SAR Today',
      name: 'get_10_sar_today',
      desc: '',
      args: [],
    );
  }

  /// `Write a review and submit in a screenshot\nof review for all or any listed sites and get credit for each review.`
  String get write_review {
    return Intl.message(
      'Write a review and submit in a screenshot\\nof review for all or any listed sites and get credit for each review.',
      name: 'write_review',
      desc: '',
      args: [],
    );
  }

  /// `App Store`
  String get app_store {
    return Intl.message(
      'App Store',
      name: 'app_store',
      desc: '',
      args: [],
    );
  }

  /// `Google Play`
  String get google_play {
    return Intl.message(
      'Google Play',
      name: 'google_play',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Trustpilot `
  String get trustpilot {
    return Intl.message(
      'Trustpilot ',
      name: 'trustpilot',
      desc: '',
      args: [],
    );
  }

  /// `Sitejabber `
  String get sitejabber {
    return Intl.message(
      'Sitejabber ',
      name: 'sitejabber',
      desc: '',
      args: [],
    );
  }

  /// `Not Started `
  String get not_started {
    return Intl.message(
      'Not Started ',
      name: 'not_started',
      desc: '',
      args: [],
    );
  }

  /// `Click on the link`
  String get click_link_title {
    return Intl.message(
      'Click on the link',
      name: 'click_link_title',
      desc: '',
      args: [],
    );
  }

  /// `Find the links above, click a site to write a review`
  String get click_link_desc {
    return Intl.message(
      'Find the links above, click a site to write a review',
      name: 'click_link_desc',
      desc: '',
      args: [],
    );
  }

  /// `Write a review`
  String get write_review_title {
    return Intl.message(
      'Write a review',
      name: 'write_review_title',
      desc: '',
      args: [],
    );
  }

  /// `Share a screen shot when the review is complete`
  String get write_review_desc {
    return Intl.message(
      'Share a screen shot when the review is complete',
      name: 'write_review_desc',
      desc: '',
      args: [],
    );
  }

  /// `Get 2 SAR for every review`
  String get review_reward_title {
    return Intl.message(
      'Get 2 SAR for every review',
      name: 'review_reward_title',
      desc: '',
      args: [],
    );
  }

  /// `Get 10 SAR after completing all of the reviews on all of the review sites`
  String get review_reward_desc {
    return Intl.message(
      'Get 10 SAR after completing all of the reviews on all of the review sites',
      name: 'review_reward_desc',
      desc: '',
      args: [],
    );
  }

  /// `survey`
  String get survey {
    return Intl.message(
      'survey',
      name: 'survey',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Answer 5 questions and get 2 SAR today plus a chance to win 100 SAR gist card`
  String get answer_5_questions {
    return Intl.message(
      'Answer 5 questions and get 2 SAR today plus a chance to win 100 SAR gist card',
      name: 'answer_5_questions',
      desc: '',
      args: [],
    );
  }

  /// `Application`
  String get application {
    return Intl.message(
      'Application',
      name: 'application',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutMe {
    return Intl.message(
      'About me',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get myProfile {
    return Intl.message(
      'My profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `During the next 5 - 15 days our analysts will be reverting the information you provided if we are able to partner with you will contact you for additional information`
  String get analyst_review {
    return Intl.message(
      'During the next 5 - 15 days our analysts will be reverting the information you provided if we are able to partner with you will contact you for additional information',
      name: 'analyst_review',
      desc: '',
      args: [],
    );
  }

  /// `If you haven't heard from us within 5-15 business day , please assume that we are not satisfied with the information you provided to us or deem your profile scores low , especially with verifications.`
  String get no_response_meaning {
    return Intl.message(
      'If you haven\'t heard from us within 5-15 business day , please assume that we are not satisfied with the information you provided to us or deem your profile scores low , especially with verifications.',
      name: 'no_response_meaning',
      desc: '',
      args: [],
    );
  }

  /// `Nojom CEO`
  String get nojom_ceo {
    return Intl.message(
      'Nojom CEO',
      name: 'nojom_ceo',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Alsenan`
  String get ceo_name {
    return Intl.message(
      'Ahmed Alsenan',
      name: 'ceo_name',
      desc: '',
      args: [],
    );
  }

  /// `Submit screenshot`
  String get submit_screenshot {
    return Intl.message(
      'Submit screenshot',
      name: 'submit_screenshot',
      desc: '',
      args: [],
    );
  }

  /// `Include a screen shot with your review.`
  String get include_screenshot {
    return Intl.message(
      'Include a screen shot with your review.',
      name: 'include_screenshot',
      desc: '',
      args: [],
    );
  }

  /// `Click on link `
  String get click_link {
    return Intl.message(
      'Click on link ',
      name: 'click_link',
      desc: '',
      args: [],
    );
  }

  /// `and write a review `
  String get and_write_review {
    return Intl.message(
      'and write a review ',
      name: 'and_write_review',
      desc: '',
      args: [],
    );
  }

  /// `click here to open link `
  String get click_link_to_open {
    return Intl.message(
      'click here to open link ',
      name: 'click_link_to_open',
      desc: '',
      args: [],
    );
  }

  /// `Submit screenshot`
  String get attach_screenshot {
    return Intl.message(
      'Submit screenshot',
      name: 'attach_screenshot',
      desc: '',
      args: [],
    );
  }

  /// `of your review`
  String get your_review {
    return Intl.message(
      'of your review',
      name: 'your_review',
      desc: '',
      args: [],
    );
  }

  /// `Update Location`
  String get update_location {
    return Intl.message(
      'Update Location',
      name: 'update_location',
      desc: '',
      args: [],
    );
  }

  /// `Allow to access my location`
  String get allow_my_location_access {
    return Intl.message(
      'Allow to access my location',
      name: 'allow_my_location_access',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get sign_out {
    return Intl.message(
      'Sign Out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `submit`
  String get submit_files {
    return Intl.message(
      'submit',
      name: 'submit_files',
      desc: '',
      args: [],
    );
  }

  /// `We are looking for partners , investors and C-Level executives to grow nojom.`
  String get looking_for_partners {
    return Intl.message(
      'We are looking for partners , investors and C-Level executives to grow nojom.',
      name: 'looking_for_partners',
      desc: '',
      args: [],
    );
  }

  /// `Start by filling out this form. All your information and answers are 100% confidential. and is never disclosed to third parties.`
  String get start_by_filling_out {
    return Intl.message(
      'Start by filling out this form. All your information and answers are 100% confidential. and is never disclosed to third parties.',
      name: 'start_by_filling_out',
      desc: '',
      args: [],
    );
  }

  /// `Speed up your application`
  String get speed_up_your_application {
    return Intl.message(
      'Speed up your application',
      name: 'speed_up_your_application',
      desc: '',
      args: [],
    );
  }

  /// `Finally completing your profile until it becomes 100% will make it faster and easier for us to start on your application.`
  String get complete_profile {
    return Intl.message(
      'Finally completing your profile until it becomes 100% will make it faster and easier for us to start on your application.',
      name: 'complete_profile',
      desc: '',
      args: [],
    );
  }

  /// `In addition , application , applications with more details show how serious you are`
  String get detailed_applications {
    return Intl.message(
      'In addition , application , applications with more details show how serious you are',
      name: 'detailed_applications',
      desc: '',
      args: [],
    );
  }

  /// `Your Profile is `
  String get your_profile_is {
    return Intl.message(
      'Your Profile is ',
      name: 'your_profile_is',
      desc: '',
      args: [],
    );
  }

  /// `Don't receive otp?`
  String get Dont_receive_code {
    return Intl.message(
      'Don\'t receive otp?',
      name: 'Dont_receive_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the code we just sent to phone`
  String get please_enter_code {
    return Intl.message(
      'Please enter the code we just sent to phone',
      name: 'please_enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email and phone`
  String get enter_email_phone {
    return Intl.message(
      'Please enter email and phone',
      name: 'enter_email_phone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get enter_email {
    return Intl.message(
      'Please enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get enter_pass {
    return Intl.message(
      'Please enter password',
      name: 'enter_pass',
      desc: '',
      args: [],
    );
  }

  /// `Please`
  String get please {
    return Intl.message(
      'Please',
      name: 'please',
      desc: '',
      args: [],
    );
  }

  /// `to see your account`
  String get see_account {
    return Intl.message(
      'to see your account',
      name: 'see_account',
      desc: '',
      args: [],
    );
  }

  /// `No account`
  String get no_account {
    return Intl.message(
      'No account',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `POST YOUR CAMPAIGN (free)`
  String get post_camp_free {
    return Intl.message(
      'POST YOUR CAMPAIGN (free)',
      name: 'post_camp_free',
      desc: '',
      args: [],
    );
  }

  /// `Describe the campaign you've got in mind. Provide as much details as you can to attract relevant stars.`
  String get describe_camp_details {
    return Intl.message(
      'Describe the campaign you\'ve got in mind. Provide as much details as you can to attract relevant stars.',
      name: 'describe_camp_details',
      desc: '',
      args: [],
    );
  }

  /// `HIRE`
  String get hire {
    return Intl.message(
      'HIRE',
      name: 'hire',
      desc: '',
      args: [],
    );
  }

  /// `You'll receive free bids from our talented stars within hours. Live chat with them, Compare bids and collaborate the best fit.`
  String get hire_details {
    return Intl.message(
      'You\'ll receive free bids from our talented stars within hours. Live chat with them, Compare bids and collaborate the best fit.',
      name: 'hire_details',
      desc: '',
      args: [],
    );
  }

  /// `You can live chat with your stars to get constant updates on the progress of your campaign.`
  String get how_camp_work {
    return Intl.message(
      'You can live chat with your stars to get constant updates on the progress of your campaign.',
      name: 'how_camp_work',
      desc: '',
      args: [],
    );
  }

  /// `You only have to pay for the campaign when it has been completed and you are 100% satisfied.`
  String get pay_description {
    return Intl.message(
      'You only have to pay for the campaign when it has been completed and you are 100% satisfied.',
      name: 'pay_description',
      desc: '',
      args: [],
    );
  }

  /// `Post a Campaign`
  String get post_camp {
    return Intl.message(
      'Post a Campaign',
      name: 'post_camp',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `How It Works`
  String get how_it_works {
    return Intl.message(
      'How It Works',
      name: 'how_it_works',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to`
  String get confirm_sign_out {
    return Intl.message(
      'Are you sure you want to',
      name: 'confirm_sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Please login or register to collaborate, view profiles, chat and more...`
  String get please_login {
    return Intl.message(
      'Please login or register to collaborate, view profiles, chat and more...',
      name: 'please_login',
      desc: '',
      args: [],
    );
  }

  /// `Join as Star`
  String get join_star {
    return Intl.message(
      'Join as Star',
      name: 'join_star',
      desc: '',
      args: [],
    );
  }

  /// `Change Logo`
  String get change_logo {
    return Intl.message(
      'Change Logo',
      name: 'change_logo',
      desc: '',
      args: [],
    );
  }

  /// `add your username`
  String get add_username {
    return Intl.message(
      'add your username',
      name: 'add_username',
      desc: '',
      args: [],
    );
  }

  /// `Commercial Register Number`
  String get commercial_register_number {
    return Intl.message(
      'Commercial Register Number',
      name: 'commercial_register_number',
      desc: '',
      args: [],
    );
  }

  /// `Are you registered on VAT ?`
  String get vat_registered {
    return Intl.message(
      'Are you registered on VAT ?',
      name: 'vat_registered',
      desc: '',
      args: [],
    );
  }

  /// `Please add profile photo`
  String get please_add_profile_photo {
    return Intl.message(
      'Please add profile photo',
      name: 'please_add_profile_photo',
      desc: '',
      args: [],
    );
  }

  /// `Please fill your name`
  String get fill_names {
    return Intl.message(
      'Please fill your name',
      name: 'fill_names',
      desc: '',
      args: [],
    );
  }

  /// `Please complete  information`
  String get please_complete_info {
    return Intl.message(
      'Please complete  information',
      name: 'please_complete_info',
      desc: '',
      args: [],
    );
  }

  /// `Please select about us`
  String get select_about_us {
    return Intl.message(
      'Please select about us',
      name: 'select_about_us',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to permanently delete your account ?`
  String get confirm_del_account {
    return Intl.message(
      'Are you sure to permanently delete your account ?',
      name: 'confirm_del_account',
      desc: '',
      args: [],
    );
  }

  /// `Let us know why you are deleting this account ?`
  String get let_us_know_reason {
    return Intl.message(
      'Let us know why you are deleting this account ?',
      name: 'let_us_know_reason',
      desc: '',
      args: [],
    );
  }

  /// `I have bad experience using the App`
  String get bad_experience {
    return Intl.message(
      'I have bad experience using the App',
      name: 'bad_experience',
      desc: '',
      args: [],
    );
  }

  /// `I found a better alternative`
  String get better_alt {
    return Intl.message(
      'I found a better alternative',
      name: 'better_alt',
      desc: '',
      args: [],
    );
  }

  /// `I just want to delete my account for no reason at all`
  String get no_reason_at_all {
    return Intl.message(
      'I just want to delete my account for no reason at all',
      name: 'no_reason_at_all',
      desc: '',
      args: [],
    );
  }

  /// `Please select reason`
  String get select_reason {
    return Intl.message(
      'Please select reason',
      name: 'select_reason',
      desc: '',
      args: [],
    );
  }

  /// `Please enter reason`
  String get enter_reason {
    return Intl.message(
      'Please enter reason',
      name: 'enter_reason',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email or phone`
  String get enter_email_or_phone {
    return Intl.message(
      'Please enter email or phone',
      name: 'enter_email_or_phone',
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

  /// `Total Paid`
  String get total_paid {
    return Intl.message(
      'Total Paid',
      name: 'total_paid',
      desc: '',
      args: [],
    );
  }

  /// `My Bills`
  String get my_invoices {
    return Intl.message(
      'My Bills',
      name: 'my_invoices',
      desc: '',
      args: [],
    );
  }

  /// `No Bills`
  String get no_invoices {
    return Intl.message(
      'No Bills',
      name: 'no_invoices',
      desc: '',
      args: [],
    );
  }

  /// `How old are you?`
  String get age_prompt {
    return Intl.message(
      'How old are you?',
      name: 'age_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Select Age`
  String get age_selection {
    return Intl.message(
      'Select Age',
      name: 'age_selection',
      desc: '',
      args: [],
    );
  }

  /// `Where do you live?`
  String get location_prompt {
    return Intl.message(
      'Where do you live?',
      name: 'location_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Are you male or female?`
  String get gender_prompt {
    return Intl.message(
      'Are you male or female?',
      name: 'gender_prompt',
      desc: '',
      args: [],
    );
  }

  /// `How did you hear about us?`
  String get referral_prompt {
    return Intl.message(
      'How did you hear about us?',
      name: 'referral_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Friend`
  String get friend {
    return Intl.message(
      'Friend',
      name: 'friend',
      desc: '',
      args: [],
    );
  }

  /// `Google Search`
  String get google_search {
    return Intl.message(
      'Google Search',
      name: 'google_search',
      desc: '',
      args: [],
    );
  }

  /// `TikTok`
  String get tiktok {
    return Intl.message(
      'TikTok',
      name: 'tiktok',
      desc: '',
      args: [],
    );
  }

  /// `Instagram`
  String get instagram {
    return Intl.message(
      'Instagram',
      name: 'instagram',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message(
      'Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Google Play`
  String get google_play_store {
    return Intl.message(
      'Google Play',
      name: 'google_play_store',
      desc: '',
      args: [],
    );
  }

  /// `App Store`
  String get apple_store {
    return Intl.message(
      'App Store',
      name: 'apple_store',
      desc: '',
      args: [],
    );
  }

  /// `We will review your survey within few hours and\ndeposit 5 SAR to your balance today.\nWe will also pick a winner for 100 SAR`
  String get survey_review_message {
    return Intl.message(
      'We will review your survey within few hours and\ndeposit 5 SAR to your balance today.\nWe will also pick a winner for 100 SAR',
      name: 'survey_review_message',
      desc: '',
      args: [],
    );
  }

  /// `Submit Survey`
  String get submit_survey {
    return Intl.message(
      'Submit Survey',
      name: 'submit_survey',
      desc: '',
      args: [],
    );
  }

  /// `Please select How did you hear about us`
  String get please_select_referral {
    return Intl.message(
      'Please select How did you hear about us',
      name: 'please_select_referral',
      desc: '',
      args: [],
    );
  }

  /// `Please select What's your most important service`
  String get please_select_service {
    return Intl.message(
      'Please select What\'s your most important service',
      name: 'please_select_service',
      desc: '',
      args: [],
    );
  }

  /// `Client Survey Inserted successfully`
  String get survey_inserted {
    return Intl.message(
      'Client Survey Inserted successfully',
      name: 'survey_inserted',
      desc: '',
      args: [],
    );
  }

  /// `Under review`
  String get under_review {
    return Intl.message(
      'Under review',
      name: 'under_review',
      desc: '',
      args: [],
    );
  }

  /// `You are VIP level`
  String get you_are_vip {
    return Intl.message(
      'You are VIP level',
      name: 'you_are_vip',
      desc: '',
      args: [],
    );
  }

  /// `How could we improve our services?`
  String get improvement_prompt {
    return Intl.message(
      'How could we improve our services?',
      name: 'improvement_prompt',
      desc: '',
      args: [],
    );
  }

  /// `I've completed the work you required and attached the necessary documents...`
  String get completion_message {
    return Intl.message(
      'I\'ve completed the work you required and attached the necessary documents...',
      name: 'completion_message',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. please try again.`
  String get fail_message {
    return Intl.message(
      'Something went wrong. please try again.',
      name: 'fail_message',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to`
  String get confirmation_prompt {
    return Intl.message(
      'Are you sure you want to',
      name: 'confirmation_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Please login or register to collaborate, view profiles, chat and more...`
  String get authenticate_message {
    return Intl.message(
      'Please login or register to collaborate, view profiles, chat and more...',
      name: 'authenticate_message',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get new_sign_up {
    return Intl.message(
      'Sign up',
      name: 'new_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login_message {
    return Intl.message(
      'Log In',
      name: 'login_message',
      desc: '',
      args: [],
    );
  }

  /// `Join as Star`
  String get join_as_star {
    return Intl.message(
      'Join as Star',
      name: 'join_as_star',
      desc: '',
      args: [],
    );
  }

  /// `Star's Location`
  String get star_location {
    return Intl.message(
      'Star\'s Location',
      name: 'star_location',
      desc: '',
      args: [],
    );
  }

  /// `Ads`
  String get ads {
    return Intl.message(
      'Ads',
      name: 'ads',
      desc: '',
      args: [],
    );
  }

  /// `Campaigns`
  String get home_campaigns {
    return Intl.message(
      'Campaigns',
      name: 'home_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get home_acc {
    return Intl.message(
      'Profile',
      name: 'home_acc',
      desc: '',
      args: [],
    );
  }

  /// `Allow Notifications`
  String get allow_notifications {
    return Intl.message(
      'Allow Notifications',
      name: 'allow_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Rate App`
  String get rate_app {
    return Intl.message(
      'Rate App',
      name: 'rate_app',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `No Services`
  String get no_services {
    return Intl.message(
      'No Services',
      name: 'no_services',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Register Now or Log In`
  String get register_now {
    return Intl.message(
      'Register Now or Log In',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `To Access All Features`
  String get access_all_features {
    return Intl.message(
      'To Access All Features',
      name: 'access_all_features',
      desc: '',
      args: [],
    );
  }

  /// `How did you know about us ?`
  String get how_know_about_us {
    return Intl.message(
      'How did you know about us ?',
      name: 'how_know_about_us',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Delivered (Waiting your approval)`
  String get order_delivered {
    return Intl.message(
      'Delivered (Waiting your approval)',
      name: 'order_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Request sent (Awaiting approval)`
  String get order_requested {
    return Intl.message(
      'Request sent (Awaiting approval)',
      name: 'order_requested',
      desc: '',
      args: [],
    );
  }

  /// `Add influencers to your campaign`
  String get order_created {
    return Intl.message(
      'Add influencers to your campaign',
      name: 'order_created',
      desc: '',
      args: [],
    );
  }

  /// `Influencer approved (In progress)`
  String get order_in_progress {
    return Intl.message(
      'Influencer approved (In progress)',
      name: 'order_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `You approved (Completed)`
  String get order_completed {
    return Intl.message(
      'You approved (Completed)',
      name: 'order_completed',
      desc: '',
      args: [],
    );
  }

  /// `Influencer declined (Canceled)`
  String get order_canceled {
    return Intl.message(
      'Influencer declined (Canceled)',
      name: 'order_canceled',
      desc: '',
      args: [],
    );
  }

  /// `Current campaigns`
  String get current_campaigns {
    return Intl.message(
      'Current campaigns',
      name: 'current_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Past Campaigns`
  String get past_campaigns {
    return Intl.message(
      'Past Campaigns',
      name: 'past_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orders_details {
    return Intl.message(
      'Order Details',
      name: 'orders_details',
      desc: '',
      args: [],
    );
  }

  /// `Star`
  String get star {
    return Intl.message(
      'Star',
      name: 'star',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get connect {
    return Intl.message(
      'Chat',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed_request {
    return Intl.message(
      'Completed',
      name: 'completed_request',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered_request {
    return Intl.message(
      'Delivered',
      name: 'delivered_request',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved_request {
    return Intl.message(
      'Approved',
      name: 'approved_request',
      desc: '',
      args: [],
    );
  }

  /// `Requested`
  String get requested_request {
    return Intl.message(
      'Requested',
      name: 'requested_request',
      desc: '',
      args: [],
    );
  }

  /// `See step by step details`
  String get see_details {
    return Intl.message(
      'See step by step details',
      name: 'see_details',
      desc: '',
      args: [],
    );
  }

  /// `Order Title`
  String get order_title {
    return Intl.message(
      'Order Title',
      name: 'order_title',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get describe {
    return Intl.message(
      'Details',
      name: 'describe',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get order_id {
    return Intl.message(
      'Order ID',
      name: 'order_id',
      desc: '',
      args: [],
    );
  }

  /// `Order Total`
  String get order_total {
    return Intl.message(
      'Order Total',
      name: 'order_total',
      desc: '',
      args: [],
    );
  }

  /// `The amount has been successfully deposited into the Nojom platform, but will not be transferred directly to the star. After the star submits the requested campaign, you can review the work and approve the transfer of the amount. If no action is taken within 5 days from the date of the submission, the campaign will be approved and the amount will be transferred to the influencer automatically to ensure smooth operations.`
  String get campaign_info {
    return Intl.message(
      'The amount has been successfully deposited into the Nojom platform, but will not be transferred directly to the star. After the star submits the requested campaign, you can review the work and approve the transfer of the amount. If no action is taken within 5 days from the date of the submission, the campaign will be approved and the amount will be transferred to the influencer automatically to ensure smooth operations.',
      name: 'campaign_info',
      desc: '',
      args: [],
    );
  }

  /// `After final approval, the amount is released to the star, and the order is considered complete.`
  String get final_approval {
    return Intl.message(
      'After final approval, the amount is released to the star, and the order is considered complete.',
      name: 'final_approval',
      desc: '',
      args: [],
    );
  }

  /// `Once the implementation is complete, you can review the submitted context and make sure it matches the requirements.`
  String get implementation_review {
    return Intl.message(
      'Once the implementation is complete, you can review the submitted context and make sure it matches the requirements.',
      name: 'implementation_review',
      desc: '',
      args: [],
    );
  }

  /// `The Star is working on creating and delivering the content according to the agreed order details.`
  String get star_working {
    return Intl.message(
      'The Star is working on creating and delivering the content according to the agreed order details.',
      name: 'star_working',
      desc: '',
      args: [],
    );
  }

  /// `Your request has been successfully submitted. We are waiting for the star to approve the order.`
  String get request_submitted {
    return Intl.message(
      'Your request has been successfully submitted. We are waiting for the star to approve the order.',
      name: 'request_submitted',
      desc: '',
      args: [],
    );
  }

  /// `Your Approval (Completed)`
  String get status_completed {
    return Intl.message(
      'Your Approval (Completed)',
      name: 'status_completed',
      desc: '',
      args: [],
    );
  }

  /// `Delivered (Waiting your approval)`
  String get status_delivered {
    return Intl.message(
      'Delivered (Waiting your approval)',
      name: 'status_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Star Approved (in Progress)`
  String get status_in_progress {
    return Intl.message(
      'Star Approved (in Progress)',
      name: 'status_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Requested (Waiting Star Approval)`
  String get status_requested {
    return Intl.message(
      'Requested (Waiting Star Approval)',
      name: 'status_requested',
      desc: '',
      args: [],
    );
  }

  /// `Steps details`
  String get steps_details {
    return Intl.message(
      'Steps details',
      name: 'steps_details',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get order_total_price {
    return Intl.message(
      'Total',
      name: 'order_total_price',
      desc: '',
      args: [],
    );
  }

  /// `Stars`
  String get influencer_stars {
    return Intl.message(
      'Stars',
      name: 'influencer_stars',
      desc: '',
      args: [],
    );
  }

  /// `Links`
  String get links {
    return Intl.message(
      'Links',
      name: 'links',
      desc: '',
      args: [],
    );
  }

  /// `There are no links.`
  String get no_links {
    return Intl.message(
      'There are no links.',
      name: 'no_links',
      desc: '',
      args: [],
    );
  }

  /// `Once your campaign is completed and approved, the influencer will be able to withdraw the amount`
  String get campaign_completion {
    return Intl.message(
      'Once your campaign is completed and approved, the influencer will be able to withdraw the amount',
      name: 'campaign_completion',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get deposit_done {
    return Intl.message(
      'Deposit',
      name: 'deposit_done',
      desc: '',
      args: [],
    );
  }

  /// `Released`
  String get released_done {
    return Intl.message(
      'Released',
      name: 'released_done',
      desc: '',
      args: [],
    );
  }

  /// `Release your money`
  String get released_money {
    return Intl.message(
      'Release your money',
      name: 'released_money',
      desc: '',
      args: [],
    );
  }

  /// `Customer Support`
  String get customer_support {
    return Intl.message(
      'Customer Support',
      name: 'customer_support',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order Approval`
  String get confirm_order_approval {
    return Intl.message(
      'Confirm Order Approval',
      name: 'confirm_order_approval',
      desc: '',
      args: [],
    );
  }

  /// `By approving this campaign, you confirm that you have received the order, and the payment will be released to the influencer. If no action is taken within 5 days from the delivery date, the order will be automatically approved, and the payment will be transferred to the influencer to ensure smooth operations.`
  String get approval_confirmation {
    return Intl.message(
      'By approving this campaign, you confirm that you have received the order, and the payment will be released to the influencer. If no action is taken within 5 days from the delivery date, the order will be automatically approved, and the payment will be transferred to the influencer to ensure smooth operations.',
      name: 'approval_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Write your feedback about the star here...`
  String get feedback_prompt {
    return Intl.message(
      'Write your feedback about the star here...',
      name: 'feedback_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `What is your rating for this star?`
  String get rating_prompt {
    return Intl.message(
      'What is your rating for this star?',
      name: 'rating_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Star Review`
  String get star_review {
    return Intl.message(
      'Star Review',
      name: 'star_review',
      desc: '',
      args: [],
    );
  }

  /// `Star Evaluation`
  String get Star_evaluation {
    return Intl.message(
      'Star Evaluation',
      name: 'Star_evaluation',
      desc: '',
      args: [],
    );
  }

  /// `Star Rated`
  String get star_rated {
    return Intl.message(
      'Star Rated',
      name: 'star_rated',
      desc: '',
      args: [],
    );
  }

  /// `Rate Order`
  String get rate_order {
    return Intl.message(
      'Rate Order',
      name: 'rate_order',
      desc: '',
      args: [],
    );
  }

  /// `The request has been approved, and the amount has been released to the star for withdrawal. Thank you for using the Nojom platform! For any inquiries, contact customer service.`
  String get request_approved_message {
    return Intl.message(
      'The request has been approved, and the amount has been released to the star for withdrawal. Thank you for using the Nojom platform! For any inquiries, contact customer service.',
      name: 'request_approved_message',
      desc: '',
      args: [],
    );
  }

  /// `Order Now`
  String get order_now {
    return Intl.message(
      'Order Now',
      name: 'order_now',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get apple {
    return Intl.message(
      'Apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get card {
    return Intl.message(
      'Credit Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Saudi VAT`
  String get saudi_vat {
    return Intl.message(
      'Saudi VAT',
      name: 'saudi_vat',
      desc: '',
      args: [],
    );
  }

  /// `How would you like to pay`
  String get how_to_pay {
    return Intl.message(
      'How would you like to pay',
      name: 'how_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `MM`
  String get month {
    return Intl.message(
      'MM',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `YY`
  String get year {
    return Intl.message(
      'YY',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `All countries`
  String get all_countries {
    return Intl.message(
      'All countries',
      name: 'all_countries',
      desc: '',
      args: [],
    );
  }

  /// `All cities`
  String get all_cities {
    return Intl.message(
      'All cities',
      name: 'all_cities',
      desc: '',
      args: [],
    );
  }

  /// `Logo`
  String get logo {
    return Intl.message(
      'Logo',
      name: 'logo',
      desc: '',
      args: [],
    );
  }

  /// `Choose Profile Image`
  String get choose_profile_image {
    return Intl.message(
      'Choose Profile Image',
      name: 'choose_profile_image',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Please enter`
  String get please_enter {
    return Intl.message(
      'Please enter',
      name: 'please_enter',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed_title {
    return Intl.message(
      'Completed',
      name: 'completed_title',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Requested`
  String get requested {
    return Intl.message(
      'Requested',
      name: 'requested',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved_title {
    return Intl.message(
      'Approved',
      name: 'approved_title',
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

  /// `Discount all platforms`
  String get discount_all_platforms {
    return Intl.message(
      'Discount all platforms',
      name: 'discount_all_platforms',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Use at least 8 characters. Don't use a password from another site, or something too obvious.`
  String get password_validation_message {
    return Intl.message(
      'Use at least 8 characters. Don\'t use a password from another site, or something too obvious.',
      name: 'password_validation_message',
      desc: '',
      args: [],
    );
  }

  /// `Industry`
  String get industry {
    return Intl.message(
      'Industry',
      name: 'industry',
      desc: '',
      args: [],
    );
  }

  /// `kb`
  String get kilo_byte {
    return Intl.message(
      'kb',
      name: 'kilo_byte',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `No transactions`
  String get no_transactions {
    return Intl.message(
      'No transactions',
      name: 'no_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Search for Influencer`
  String get find_a_star {
    return Intl.message(
      'Search for Influencer',
      name: 'find_a_star',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get my_profile {
    return Intl.message(
      'Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get my_settings {
    return Intl.message(
      'Settings',
      name: 'my_settings',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sr {
    return Intl.message(
      'SAR',
      name: 'sr',
      desc: '',
      args: [],
    );
  }

  /// `Card Details`
  String get payment_card_details {
    return Intl.message(
      'Card Details',
      name: 'payment_card_details',
      desc: '',
      args: [],
    );
  }

  /// `This is the username that will appear on your profile`
  String get profile_username {
    return Intl.message(
      'This is the username that will appear on your profile',
      name: 'profile_username',
      desc: '',
      args: [],
    );
  }

  /// `Starting From`
  String get start_from {
    return Intl.message(
      'Starting From',
      name: 'start_from',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Star Notes`
  String get star_notes {
    return Intl.message(
      'Star Notes',
      name: 'star_notes',
      desc: '',
      args: [],
    );
  }

  /// `Star Details`
  String get star_details {
    return Intl.message(
      'Star Details',
      name: 'star_details',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optional {
    return Intl.message(
      'Optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `Campaign publish date`
  String get star_release_date {
    return Intl.message(
      'Campaign publish date',
      name: 'star_release_date',
      desc: '',
      args: [],
    );
  }

  /// `Short Description`
  String get star_brief {
    return Intl.message(
      'Short Description',
      name: 'star_brief',
      desc: '',
      args: [],
    );
  }

  /// `Write influencer-specific campaign details here (e.g., custom code or link)`
  String get write_star_description {
    return Intl.message(
      'Write influencer-specific campaign details here (e.g., custom code or link)',
      name: 'write_star_description',
      desc: '',
      args: [],
    );
  }

  /// `This description will only be visible to this influencer.`
  String get star_description_hint {
    return Intl.message(
      'This description will only be visible to this influencer.',
      name: 'star_description_hint',
      desc: '',
      args: [],
    );
  }

  /// `Attachments of the Star`
  String get star_attachments {
    return Intl.message(
      'Attachments of the Star',
      name: 'star_attachments',
      desc: '',
      args: [],
    );
  }

  /// `Add attachments`
  String get add_attachments {
    return Intl.message(
      'Add attachments',
      name: 'add_attachments',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to Payment`
  String get go_to_payment {
    return Intl.message(
      'Proceed to Payment',
      name: 'go_to_payment',
      desc: '',
      args: [],
    );
  }

  /// `Please enter amount`
  String get enter_amount {
    return Intl.message(
      'Please enter amount',
      name: 'enter_amount',
      desc: '',
      args: [],
    );
  }

  /// `Campaigns`
  String get campaigns {
    return Intl.message(
      'Campaigns',
      name: 'campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Create Campaign`
  String get create_campaign {
    return Intl.message(
      'Create Campaign',
      name: 'create_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create_campaign_in_small {
    return Intl.message(
      'Create',
      name: 'create_campaign_in_small',
      desc: '',
      args: [],
    );
  }

  /// `Create your first campaign with ease!`
  String get first_campaign_message {
    return Intl.message(
      'Create your first campaign with ease!',
      name: 'first_campaign_message',
      desc: '',
      args: [],
    );
  }

  /// `Here, you will find all your campaigns as soon as they are created. You can submit a new campaign and view the details of current and past campaigns.`
  String get campaigns_overview_message {
    return Intl.message(
      'Here, you will find all your campaigns as soon as they are created. You can submit a new campaign and view the details of current and past campaigns.',
      name: 'campaigns_overview_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter your website link or social media account, and Nojom's AI will automatically fill in the data for you. You can view and edit it as you wish before creating the campaign.`
  String get ai_assistance_message {
    return Intl.message(
      'Enter your website link or social media account, and Nojom\'s AI will automatically fill in the data for you. You can view and edit it as you wish before creating the campaign.',
      name: 'ai_assistance_message',
      desc: '',
      args: [],
    );
  }

  /// `Create your campaign with AI`
  String get create_campaign_with_ai {
    return Intl.message(
      'Create your campaign with AI',
      name: 'create_campaign_with_ai',
      desc: '',
      args: [],
    );
  }

  /// `Website link or social media account`
  String get website_or_social_media_link {
    return Intl.message(
      'Website link or social media account',
      name: 'website_or_social_media_link',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Objective`
  String get campaign_objectives {
    return Intl.message(
      'Campaign Objective',
      name: 'campaign_objectives',
      desc: '',
      args: [],
    );
  }

  /// `Enter the Campaign Objective...`
  String get enter_campaign_objective_placeholder {
    return Intl.message(
      'Enter the Campaign Objective...',
      name: 'enter_campaign_objective_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Target Audience`
  String get target_audience {
    return Intl.message(
      'Target Audience',
      name: 'target_audience',
      desc: '',
      args: [],
    );
  }

  /// `Target Audience Age Group`
  String get age_group_of_target_audience {
    return Intl.message(
      'Target Audience Age Group',
      name: 'age_group_of_target_audience',
      desc: '',
      args: [],
    );
  }

  /// `Appropriate Platforms for the Campaign`
  String get appropriate_platforms_for_campaign {
    return Intl.message(
      'Appropriate Platforms for the Campaign',
      name: 'appropriate_platforms_for_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Target Influencer Category`
  String get target_influencer_category {
    return Intl.message(
      'Target Influencer Category',
      name: 'target_influencer_category',
      desc: '',
      args: [],
    );
  }

  /// `Influencer Domain Classification`
  String get influencer_domain_classification {
    return Intl.message(
      'Influencer Domain Classification',
      name: 'influencer_domain_classification',
      desc: '',
      args: [],
    );
  }

  /// `Proposed Budget`
  String get proposed_campaign_budget {
    return Intl.message(
      'Proposed Budget',
      name: 'proposed_campaign_budget',
      desc: '',
      args: [],
    );
  }

  /// `Minimum`
  String get minimum {
    return Intl.message(
      'Minimum',
      name: 'minimum',
      desc: '',
      args: [],
    );
  }

  /// `Maximum`
  String get maximum {
    return Intl.message(
      'Maximum',
      name: 'maximum',
      desc: '',
      args: [],
    );
  }

  /// `This budget has been automatically suggested, and you can adjust it according to your plan and goals.`
  String get budget_suggestion_note {
    return Intl.message(
      'This budget has been automatically suggested, and you can adjust it according to your plan and goals.',
      name: 'budget_suggestion_note',
      desc: '',
      args: [],
    );
  }

  /// `Previous`
  String get previous {
    return Intl.message(
      'Previous',
      name: 'previous',
      desc: '',
      args: [],
    );
  }

  /// `Reword`
  String get reword {
    return Intl.message(
      'Reword',
      name: 'reword',
      desc: '',
      args: [],
    );
  }

  /// `This description was automatically generated by artificial intelligence based on the information you entered. You can edit it manually or click 'Reword' to create a new description with different wording.`
  String get auto_generated_description_note {
    return Intl.message(
      'This description was automatically generated by artificial intelligence based on the information you entered. You can edit it manually or click \'Reword\' to create a new description with different wording.',
      name: 'auto_generated_description_note',
      desc: '',
      args: [],
    );
  }

  /// `This information has been automatically filled by Nojoom AI based on the available data from the link you provided. You can edit any option or modify any detail to better suit your needs.`
  String get auto_filled_information_note {
    return Intl.message(
      'This information has been automatically filled by Nojoom AI based on the available data from the link you provided. You can edit any option or modify any detail to better suit your needs.',
      name: 'auto_filled_information_note',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Details`
  String get campaign_details {
    return Intl.message(
      'Campaign Details',
      name: 'campaign_details',
      desc: '',
      args: [],
    );
  }

  /// `Influencer Category`
  String get influencer_classification {
    return Intl.message(
      'Influencer Category',
      name: 'influencer_classification',
      desc: '',
      args: [],
    );
  }

  /// `Search for a Category`
  String get search_influencer_classification {
    return Intl.message(
      'Search for a Category',
      name: 'search_influencer_classification',
      desc: '',
      args: [],
    );
  }

  /// `These details are available only to this Star.`
  String get details_privacy_hint {
    return Intl.message(
      'These details are available only to this Star.',
      name: 'details_privacy_hint',
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

  /// `Important Notes`
  String get important_notes {
    return Intl.message(
      'Important Notes',
      name: 'important_notes',
      desc: '',
      args: [],
    );
  }

  /// `Add Influencers`
  String get add_stars {
    return Intl.message(
      'Add Influencers',
      name: 'add_stars',
      desc: '',
      args: [],
    );
  }

  /// `These influencers are suggested by AI based on your campaign data to achieve the best match.`
  String get ai_star_suggestion_desc {
    return Intl.message(
      'These influencers are suggested by AI based on your campaign data to achieve the best match.',
      name: 'ai_star_suggestion_desc',
      desc: '',
      args: [],
    );
  }

  /// `The Ai in Nojom will recommend the most suitable influencers for your campaign based on its details. add them and start now!`
  String get ai_add_stars_hint {
    return Intl.message(
      'The Ai in Nojom will recommend the most suitable influencers for your campaign based on its details. add them and start now!',
      name: 'ai_add_stars_hint',
      desc: '',
      args: [],
    );
  }

  /// `Add influencers to start your campaign`
  String get add_stars_to_start {
    return Intl.message(
      'Add influencers to start your campaign',
      name: 'add_stars_to_start',
      desc: '',
      args: [],
    );
  }

  /// `Select more recommended influencers`
  String get add_more_camp_stars {
    return Intl.message(
      'Select more recommended influencers',
      name: 'add_more_camp_stars',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get brief_description_of_influencer {
    return Intl.message(
      'Details',
      name: 'brief_description_of_influencer',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get campaign_publish_date {
    return Intl.message(
      'Date',
      name: 'campaign_publish_date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get campaign_publish_time {
    return Intl.message(
      'Time',
      name: 'campaign_publish_time',
      desc: '',
      args: [],
    );
  }

  /// `Details Provided to the Influencer`
  String get details_provided_to_influencer {
    return Intl.message(
      'Details Provided to the Influencer',
      name: 'details_provided_to_influencer',
      desc: '',
      args: [],
    );
  }

  /// `Add File`
  String get add_file {
    return Intl.message(
      'Add File',
      name: 'add_file',
      desc: '',
      args: [],
    );
  }

  /// `Creation Date`
  String get creation_date {
    return Intl.message(
      'Creation Date',
      name: 'creation_date',
      desc: '',
      args: [],
    );
  }

  /// `Not Available`
  String get not_found {
    return Intl.message(
      'Not Available',
      name: 'not_found',
      desc: '',
      args: [],
    );
  }

  /// `Visible to you only`
  String get visible_to_you {
    return Intl.message(
      'Visible to you only',
      name: 'visible_to_you',
      desc: '',
      args: [],
    );
  }

  /// `Attachments will appear here once the influencer uploads them.`
  String get attachments_will_appear_here {
    return Intl.message(
      'Attachments will appear here once the influencer uploads them.',
      name: 'attachments_will_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get attached_notes {
    return Intl.message(
      'Notes',
      name: 'attached_notes',
      desc: '',
      args: [],
    );
  }

  /// `Attachments for the Star`
  String get attachment_for_star {
    return Intl.message(
      'Attachments for the Star',
      name: 'attachment_for_star',
      desc: '',
      args: [],
    );
  }

  /// `delete file`
  String get delete_file {
    return Intl.message(
      'delete file',
      name: 'delete_file',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this file?`
  String get delete_fil_message {
    return Intl.message(
      'Are you sure you want to delete this file?',
      name: 'delete_fil_message',
      desc: '',
      args: [],
    );
  }

  /// `Your website or social media account link. After changing the link, you can update all campaign details based on the new link with the help of AI.`
  String get website_or_social_media_link_with_ai {
    return Intl.message(
      'Your website or social media account link. After changing the link, you can update all campaign details based on the new link with the help of AI.',
      name: 'website_or_social_media_link_with_ai',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to discard changes?`
  String get discard_changes_prompt {
    return Intl.message(
      'Do you want to discard changes?',
      name: 'discard_changes_prompt',
      desc: '',
      args: [],
    );
  }

  /// `If you go back now, you will lose your edits.`
  String get discard_changes_warning {
    return Intl.message(
      'If you go back now, you will lose your edits.',
      name: 'discard_changes_warning',
      desc: '',
      args: [],
    );
  }

  /// `Discard changes`
  String get discard_changes {
    return Intl.message(
      'Discard changes',
      name: 'discard_changes',
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

  /// `Campaign Attachments`
  String get campaign_attachments {
    return Intl.message(
      'Campaign Attachments',
      name: 'campaign_attachments',
      desc: '',
      args: [],
    );
  }

  /// `Supported Files: images Videos, PDF, Files`
  String get campaign_attachments_supported_formats {
    return Intl.message(
      'Supported Files: images Videos, PDF, Files',
      name: 'campaign_attachments_supported_formats',
      desc: '',
      args: [],
    );
  }

  /// `Attachment`
  String get attachment {
    return Intl.message(
      'Attachment',
      name: 'attachment',
      desc: '',
      args: [],
    );
  }

  /// `Not Available`
  String get not_Available {
    return Intl.message(
      'Not Available',
      name: 'not_Available',
      desc: '',
      args: [],
    );
  }

  /// `There are no Campaigns Here`
  String get no_campaigns_message {
    return Intl.message(
      'There are no Campaigns Here',
      name: 'no_campaigns_message',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to view your orders`
  String get sign_in_to_view_orders {
    return Intl.message(
      'Please sign in to view your orders',
      name: 'sign_in_to_view_orders',
      desc: '',
      args: [],
    );
  }

  /// `All influencers added to this campaign will be able to view all these details, including attachments. However, they will not be able to see the proposed campaign budget, the target influencer category, or the suitable platforms for the campaign.`
  String get star_camp_details_hint {
    return Intl.message(
      'All influencers added to this campaign will be able to view all these details, including attachments. However, they will not be able to see the proposed campaign budget, the target influencer category, or the suitable platforms for the campaign.',
      name: 'star_camp_details_hint',
      desc: '',
      args: [],
    );
  }

  /// `Suitable Platforms`
  String get suitable_platforms {
    return Intl.message(
      'Suitable Platforms',
      name: 'suitable_platforms',
      desc: '',
      args: [],
    );
  }

  /// `There are no services Here`
  String get no_services_here {
    return Intl.message(
      'There are no services Here',
      name: 'no_services_here',
      desc: '',
      args: [],
    );
  }

  /// `There are no messages Here`
  String get no_chats_here {
    return Intl.message(
      'There are no messages Here',
      name: 'no_chats_here',
      desc: '',
      args: [],
    );
  }

  /// `All influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target influencer category, or suitable platforms for the campaign..`
  String get influencers_access_notice {
    return Intl.message(
      'All influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target influencer category, or suitable platforms for the campaign..',
      name: 'influencers_access_notice',
      desc: '',
      args: [],
    );
  }

  /// `Website Link`
  String get website_link {
    return Intl.message(
      'Website Link',
      name: 'website_link',
      desc: '',
      args: [],
    );
  }

  /// `All Influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target Influencer category, or suitable platforms for the campaign..`
  String get influencer_access_notice {
    return Intl.message(
      'All Influencers added to this campaign will be able to access these details, including attachments. However, they will not be able to see the proposed budget, target Influencer category, or suitable platforms for the campaign..',
      name: 'influencer_access_notice',
      desc: '',
      args: [],
    );
  }

  /// `Influencer Services`
  String get influencer_services {
    return Intl.message(
      'Influencer Services',
      name: 'influencer_services',
      desc: '',
      args: [],
    );
  }

  /// `No Services Available`
  String get no_services_available {
    return Intl.message(
      'No Services Available',
      name: 'no_services_available',
      desc: '',
      args: [],
    );
  }

  /// `Are you a Star?`
  String get are_you_influencer {
    return Intl.message(
      'Are you a Star?',
      name: 'are_you_influencer',
      desc: '',
      args: [],
    );
  }

  /// `Download the Stars app now!`
  String get download_influencer_app_now {
    return Intl.message(
      'Download the Stars app now!',
      name: 'download_influencer_app_now',
      desc: '',
      args: [],
    );
  }

  /// `Download the Stars app`
  String get download_influencer_app {
    return Intl.message(
      'Download the Stars app',
      name: 'download_influencer_app',
      desc: '',
      args: [],
    );
  }

  /// `Login for Brands`
  String get brands_login {
    return Intl.message(
      'Login for Brands',
      name: 'brands_login',
      desc: '',
      args: [],
    );
  }

  /// `Log in or create an account now to create and manage campaigns, request services, connect with influencers, and more...`
  String get login_or_register {
    return Intl.message(
      'Log in or create an account now to create and manage campaigns, request services, connect with influencers, and more...',
      name: 'login_or_register',
      desc: '',
      args: [],
    );
  }

  /// `Log in to Access Your Campaigns`
  String get login_to_access_campaigns {
    return Intl.message(
      'Log in to Access Your Campaigns',
      name: 'login_to_access_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `To access your current campaigns or create new ones, please log in to your account.`
  String get login_for_current_or_new_campaigns {
    return Intl.message(
      'To access your current campaigns or create new ones, please log in to your account.',
      name: 'login_for_current_or_new_campaigns',
      desc: '',
      args: [],
    );
  }

  /// `Log in to Access Your Conversations`
  String get login_to_access_chats {
    return Intl.message(
      'Log in to Access Your Conversations',
      name: 'login_to_access_chats',
      desc: '',
      args: [],
    );
  }

  /// `View your current conversations or start new ones with Stars by logging into your account.`
  String get login_for_current_or_new_chats {
    return Intl.message(
      'View your current conversations or start new ones with Stars by logging into your account.',
      name: 'login_for_current_or_new_chats',
      desc: '',
      args: [],
    );
  }

  /// `Log in to Access Star services`
  String get login_to_access_influencer_services {
    return Intl.message(
      'Log in to Access Star services',
      name: 'login_to_access_influencer_services',
      desc: '',
      args: [],
    );
  }

  /// `To browse all available Star services and choose the best fit for your ad campaigns, log into your account.`
  String get login_for_viewing_services {
    return Intl.message(
      'To browse all available Star services and choose the best fit for your ad campaigns, log into your account.',
      name: 'login_for_viewing_services',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_new_account {
    return Intl.message(
      'Create New Account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `We're preparing your campaign data`
  String get prepareCampaignTitle {
    return Intl.message(
      'We\'re preparing your campaign data',
      name: 'prepareCampaignTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create your campaign through`
  String get createYourCampaignThrough {
    return Intl.message(
      'Create your campaign through',
      name: 'createYourCampaignThrough',
      desc: '',
      args: [],
    );
  }

  /// `Artificial Intelligence`
  String get artificialIntelligence {
    return Intl.message(
      'Artificial Intelligence',
      name: 'artificialIntelligence',
      desc: '',
      args: [],
    );
  }

  /// `Suggested stars by`
  String get suggestedStarsBy {
    return Intl.message(
      'Suggested stars by',
      name: 'suggestedStarsBy',
      desc: '',
      args: [],
    );
  }

  /// `Order and Pay`
  String get orderAndPay {
    return Intl.message(
      'Order and Pay',
      name: 'orderAndPay',
      desc: '',
      args: [],
    );
  }

  /// `Track the campaign`
  String get trackTheCampaign {
    return Intl.message(
      'Track the campaign',
      name: 'trackTheCampaign',
      desc: '',
      args: [],
    );
  }

  /// `Receive the campaign`
  String get receiveTheCampaign {
    return Intl.message(
      'Receive the campaign',
      name: 'receiveTheCampaign',
      desc: '',
      args: [],
    );
  }

  /// `We're preparing your campaign data`
  String get preparingYourCampaignData {
    return Intl.message(
      'We\'re preparing your campaign data',
      name: 'preparingYourCampaignData',
      desc: '',
      args: [],
    );
  }

  /// `AI is analyzing the link and extracting the necessary information to create your campaign data.`
  String get aiAnalyzingLink {
    return Intl.message(
      'AI is analyzing the link and extracting the necessary information to create your campaign data.',
      name: 'aiAnalyzingLink',
      desc: '',
      args: [],
    );
  }

  /// `Your campaign data is ready ✨`
  String get campaignDataReady {
    return Intl.message(
      'Your campaign data is ready ✨',
      name: 'campaignDataReady',
      desc: '',
      args: [],
    );
  }

  /// `Campaign Data`
  String get campaignData {
    return Intl.message(
      'Campaign Data',
      name: 'campaignData',
      desc: '',
      args: [],
    );
  }

  /// `Add Stars To Start Your Campaign`
  String get add_stars_to_start_camp {
    return Intl.message(
      'Add Stars To Start Your Campaign',
      name: 'add_stars_to_start_camp',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get your_name {
    return Intl.message(
      'Your Name',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `General Notes for My Ads`
  String get influencer_notes {
    return Intl.message(
      'General Notes for My Ads',
      name: 'influencer_notes',
      desc: '',
      args: [],
    );
  }

  /// `User login successfully`
  String get user_login_success {
    return Intl.message(
      'User login successfully',
      name: 'user_login_success',
      desc: '',
      args: [],
    );
  }

  /// `Complete Your data`
  String get complete_your_data {
    return Intl.message(
      'Complete Your data',
      name: 'complete_your_data',
      desc: '',
      args: [],
    );
  }

  /// `Please complete your data and submit for verification.`
  String get complete_data_submit_verification {
    return Intl.message(
      'Please complete your data and submit for verification.',
      name: 'complete_data_submit_verification',
      desc: '',
      args: [],
    );
  }

  /// `No Messages`
  String get no_messages {
    return Intl.message(
      'No Messages',
      name: 'no_messages',
      desc: '',
      args: [],
    );
  }

  /// `After chatting with the star, all of their messages will be displayed here.`
  String get chatting_star_messages_displayed_here {
    return Intl.message(
      'After chatting with the star, all of their messages will be displayed here.',
      name: 'chatting_star_messages_displayed_here',
      desc: '',
      args: [],
    );
  }

  /// `No results match your search.`
  String get no_results_match_search {
    return Intl.message(
      'No results match your search.',
      name: 'no_results_match_search',
      desc: '',
      args: [],
    );
  }

  /// `Your information is under review`
  String get your_information_in_review {
    return Intl.message(
      'Your information is under review',
      name: 'your_information_in_review',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for completing your account information! Our team is currently reviewing it, and you can modify any details during the review period. You will be notified once verification is complete.`
  String get your_information_in_review_desc {
    return Intl.message(
      'Thank you for completing your account information! Our team is currently reviewing it, and you can modify any details during the review period. You will be notified once verification is complete.',
      name: 'your_information_in_review_desc',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for completing your account information! Our team is reviewing it and will notify you once verification is complete.`
  String get thank_for_completing_account_information {
    return Intl.message(
      'Thank you for completing your account information! Our team is reviewing it and will notify you once verification is complete.',
      name: 'thank_for_completing_account_information',
      desc: '',
      args: [],
    );
  }

  /// `No Title`
  String get no_title {
    return Intl.message(
      'No Title',
      name: 'no_title',
      desc: '',
      args: [],
    );
  }

  /// `Payment Successful & Star Added!`
  String get payment_success_title {
    return Intl.message(
      'Payment Successful & Star Added!',
      name: 'payment_success_title',
      desc: '',
      args: [],
    );
  }

  /// `The payment has been confirmed, and the Star has been successfully added to your campaign. Waiting for the Star's response to the campaign-- you can now proceed with managing and executing the campaign.`
  String get payment_success_desc {
    return Intl.message(
      'The payment has been confirmed, and the Star has been successfully added to your campaign. Waiting for the Star\'s response to the campaign-- you can now proceed with managing and executing the campaign.',
      name: 'payment_success_desc',
      desc: '',
      args: [],
    );
  }

  /// `No title`
  String get not_title {
    return Intl.message(
      'No title',
      name: 'not_title',
      desc: '',
      args: [],
    );
  }

  /// `Write your message...`
  String get write_your_message {
    return Intl.message(
      'Write your message...',
      name: 'write_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Brief`
  String get brief {
    return Intl.message(
      'Brief',
      name: 'brief',
      desc: '',
      args: [],
    );
  }

  /// `Sign in or create your account automatically now to create and manage campaigns, request services, communicate with stars, and more...`
  String
      get sign_in_or_create_account_now_to_create_and_manage_campaigns_request_services_communicate_with_stars_and_more {
    return Intl.message(
      'Sign in or create your account automatically now to create and manage campaigns, request services, communicate with stars, and more...',
      name:
          'sign_in_or_create_account_now_to_create_and_manage_campaigns_request_services_communicate_with_stars_and_more',
      desc: '',
      args: [],
    );
  }

  /// `Verify your account now`
  String get verify_your_account_now {
    return Intl.message(
      'Verify your account now',
      name: 'verify_your_account_now',
      desc: '',
      args: [],
    );
  }

  /// `Verify your account by completing your profile information to access all the features on the Nojoom platform.`
  String
      get verify_your_account_by_completing_your_profile_information_to_access_all_the_features_on_the_nojoom_platform {
    return Intl.message(
      'Verify your account by completing your profile information to access all the features on the Nojoom platform.',
      name:
          'verify_your_account_by_completing_your_profile_information_to_access_all_the_features_on_the_nojoom_platform',
      desc: '',
      args: [],
    );
  }

  /// `AI that simplifies every step`
  String get ai_that_simplifies_every_step {
    return Intl.message(
      'AI that simplifies every step',
      name: 'ai_that_simplifies_every_step',
      desc: '',
      args: [],
    );
  }

  /// `AI makes it easy to create your marketing campaign and suggests the most suitable stars for your business field.`
  String
      get ai_makes_it_easy_to_create_your_marketing_campaign_and_suggests_the_most_suitable_stars_for_your_business_field {
    return Intl.message(
      'AI makes it easy to create your marketing campaign and suggests the most suitable stars for your business field.',
      name:
          'ai_makes_it_easy_to_create_your_marketing_campaign_and_suggests_the_most_suitable_stars_for_your_business_field',
      desc: '',
      args: [],
    );
  }

  /// `Request an ad in minutes`
  String get request_an_ad_in_minutes {
    return Intl.message(
      'Request an ad in minutes',
      name: 'request_an_ad_in_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a smooth experience when requesting influencer services, ensuring a safe and professional process for successful collaboration.`
  String
      get enjoy_a_smooth_experience_when_requesting_influencer_services_ensuring_a_safe_and_professional_process_for_successful_collaboration {
    return Intl.message(
      'Enjoy a smooth experience when requesting influencer services, ensuring a safe and professional process for successful collaboration.',
      name:
          'enjoy_a_smooth_experience_when_requesting_influencer_services_ensuring_a_safe_and_professional_process_for_successful_collaboration',
      desc: '',
      args: [],
    );
  }

  /// `Connect with influencers`
  String get connect_with_influencers {
    return Intl.message(
      'Connect with influencers',
      name: 'connect_with_influencers',
      desc: '',
      args: [],
    );
  }

  /// `After verification, you can start direct conversations with influencers and discuss your marketing campaign details.`
  String
      get after_verification_you_can_start_direct_conversations_with_influencers_and_discuss_your_marketing_campaign_details {
    return Intl.message(
      'After verification, you can start direct conversations with influencers and discuss your marketing campaign details.',
      name:
          'after_verification_you_can_start_direct_conversations_with_influencers_and_discuss_your_marketing_campaign_details',
      desc: '',
      args: [],
    );
  }

  /// `Start verification`
  String get start_verification {
    return Intl.message(
      'Start verification',
      name: 'start_verification',
      desc: '',
      args: [],
    );
  }

  /// `Artificial intelligence makes it easier to create your marketing campaign and suggests the most suitable influencers for your business field.`
  String get ai_description {
    return Intl.message(
      'Artificial intelligence makes it easier to create your marketing campaign and suggests the most suitable influencers for your business field.',
      name: 'ai_description',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a smooth experience in requesting influencer services, ensuring a secure and professional collaboration.`
  String get request_ad_description {
    return Intl.message(
      'Enjoy a smooth experience in requesting influencer services, ensuring a secure and professional collaboration.',
      name: 'request_ad_description',
      desc: '',
      args: [],
    );
  }

  /// `After verification, you can start direct chats with influencers and discuss your campaign details.`
  String get connect_description {
    return Intl.message(
      'After verification, you can start direct chats with influencers and discuss your campaign details.',
      name: 'connect_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter the official trade name of the company as registered in the commercial records.`
  String get enter_official_trade_name {
    return Intl.message(
      'Enter the official trade name of the company as registered in the commercial records.',
      name: 'enter_official_trade_name',
      desc: '',
      args: [],
    );
  }

  /// `Company name as in the commercial record`
  String get company_name_as_in_record {
    return Intl.message(
      'Company name as in the commercial record',
      name: 'company_name_as_in_record',
      desc: '',
      args: [],
    );
  }

  /// `Enter the brand name that will appear to influencers.`
  String get enter_brand_name {
    return Intl.message(
      'Enter the brand name that will appear to influencers.',
      name: 'enter_brand_name',
      desc: '',
      args: [],
    );
  }

  /// `Your project or store name`
  String get project_or_store_name {
    return Intl.message(
      'Your project or store name',
      name: 'project_or_store_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the person responsible for managing the account on the platform.`
  String get enter_contact_name {
    return Intl.message(
      'Enter the name of the person responsible for managing the account on the platform.',
      name: 'enter_contact_name',
      desc: '',
      args: [],
    );
  }

  /// `A confirmation email will be sent to your email address. Please open the email and click the link to verify your address.`
  String get email_verification_notice {
    return Intl.message(
      'A confirmation email will be sent to your email address. Please open the email and click the link to verify your address.',
      name: 'email_verification_notice',
      desc: '',
      args: [],
    );
  }

  /// `Verify email`
  String get verify_email {
    return Intl.message(
      'Verify email',
      name: 'verify_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code sent to`
  String get enter_verification_code_sent_to {
    return Intl.message(
      'Enter the verification code sent to',
      name: 'enter_verification_code_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Resend in`
  String get resend_in {
    return Intl.message(
      'Resend in',
      name: 'resend_in',
      desc: '',
      args: [],
    );
  }

  /// `Send verification email`
  String get send_verification_email {
    return Intl.message(
      'Send verification email',
      name: 'send_verification_email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm verification code`
  String get confirm_verification_code {
    return Intl.message(
      'Confirm verification code',
      name: 'confirm_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number so we can verify your account. A verification code will be sent to this number.`
  String get enter_phone_number {
    return Intl.message(
      'Enter your phone number so we can verify your account. A verification code will be sent to this number.',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Phone number verification`
  String get phone_verification {
    return Intl.message(
      'Phone number verification',
      name: 'phone_verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code sent to`
  String get enter_phone_verification_code {
    return Intl.message(
      'Enter the verification code sent to',
      name: 'enter_phone_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Commercial registration or freelance document`
  String get commercial_registration_or_freelance_document {
    return Intl.message(
      'Commercial registration or freelance document',
      name: 'commercial_registration_or_freelance_document',
      desc: '',
      args: [],
    );
  }

  /// `Enter your company's commercial registration number or your freelance document number. This information will be used to verify your account and will be kept completely confidential for verification purposes only.`
  String get enter_commercial_registration_number {
    return Intl.message(
      'Enter your company\'s commercial registration number or your freelance document number. This information will be used to verify your account and will be kept completely confidential for verification purposes only.',
      name: 'enter_commercial_registration_number',
      desc: '',
      args: [],
    );
  }

  /// `Commercial registration or freelance document number`
  String get commercial_or_freelance_number {
    return Intl.message(
      'Commercial registration or freelance document number',
      name: 'commercial_or_freelance_number',
      desc: '',
      args: [],
    );
  }

  /// `The commercial registration or establishment number consists of 10 digits, often starting with 1 or 7, and is issued by the Ministry of Commerce.`
  String get cr_number_hint {
    return Intl.message(
      'The commercial registration or establishment number consists of 10 digits, often starting with 1 or 7, and is issued by the Ministry of Commerce.',
      name: 'cr_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `The freelance document number usually consists of numbers and letters and is issued by the official freelance platform accredited by the Ministry of Human Resources.`
  String get freelance_number_hint {
    return Intl.message(
      'The freelance document number usually consists of numbers and letters and is issued by the official freelance platform accredited by the Ministry of Human Resources.',
      name: 'freelance_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Value Added Tax`
  String get vat {
    return Intl.message(
      'Value Added Tax',
      name: 'vat',
      desc: '',
      args: [],
    );
  }

  /// `Enter your company's VAT number. This information will be used to verify your account and will be kept completely confidential for verification purposes only.`
  String get enter_vat_number {
    return Intl.message(
      'Enter your company\'s VAT number. This information will be used to verify your account and will be kept completely confidential for verification purposes only.',
      name: 'enter_vat_number',
      desc: '',
      args: [],
    );
  }

  /// `The VAT number consists of 15 digits, always starting with 3, and is issued by the Zakat, Tax, and Customs Authority.`
  String get vat_number_hint {
    return Intl.message(
      'The VAT number consists of 15 digits, always starting with 3, and is issued by the Zakat, Tax, and Customs Authority.',
      name: 'vat_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Link that represents your company`
  String get company_link {
    return Intl.message(
      'Link that represents your company',
      name: 'company_link',
      desc: '',
      args: [],
    );
  }

  /// `Enter the website URL of your company or your social media account. It will be shown in your profile to help others learn more about your business and services.`
  String get enter_company_link {
    return Intl.message(
      'Enter the website URL of your company or your social media account. It will be shown in your profile to help others learn more about your business and services.',
      name: 'enter_company_link',
      desc: '',
      args: [],
    );
  }

  /// `Enter your link here`
  String get enter_your_link_here {
    return Intl.message(
      'Enter your link here',
      name: 'enter_your_link_here',
      desc: '',
      args: [],
    );
  }

  /// `This email or phone number used by another user`
  String get signUpErrorMessage {
    return Intl.message(
      'This email or phone number used by another user',
      name: 'signUpErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Resend code via WhatsApp`
  String get resend_code_via_whatsapp {
    return Intl.message(
      'Resend code via WhatsApp',
      name: 'resend_code_via_whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Select Image`
  String get select_image {
    return Intl.message(
      'Select Image',
      name: 'select_image',
      desc: '',
      args: [],
    );
  }

  /// `No Industry Found`
  String get no_industry {
    return Intl.message(
      'No Industry Found',
      name: 'no_industry',
      desc: '',
      args: [],
    );
  }

  /// `No Tags Found`
  String get no_tags_found {
    return Intl.message(
      'No Tags Found',
      name: 'no_tags_found',
      desc: '',
      args: [],
    );
  }

  /// `No Countries Found`
  String get no_countries_found {
    return Intl.message(
      'No Countries Found',
      name: 'no_countries_found',
      desc: '',
      args: [],
    );
  }

  /// `No Cities Found`
  String get no_cities_found {
    return Intl.message(
      'No Cities Found',
      name: 'no_cities_found',
      desc: '',
      args: [],
    );
  }

  /// `cities selected`
  String get cities_selected {
    return Intl.message(
      'cities selected',
      name: 'cities_selected',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get transaction_inProgress {
    return Intl.message(
      'In Progress',
      name: 'transaction_inProgress',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get transaction_pending {
    return Intl.message(
      'Pending',
      name: 'transaction_pending',
      desc: '',
      args: [],
    );
  }

  /// `Add Money`
  String get transaction_addMoney {
    return Intl.message(
      'Add Money',
      name: 'transaction_addMoney',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get transaction_completed {
    return Intl.message(
      'Completed',
      name: 'transaction_completed',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get transaction_canceled {
    return Intl.message(
      'Canceled',
      name: 'transaction_canceled',
      desc: '',
      args: [],
    );
  }

  /// `No cities  for this selected country`
  String get no_filter_cities_found {
    return Intl.message(
      'No cities  for this selected country',
      name: 'no_filter_cities_found',
      desc: '',
      args: [],
    );
  }

  /// `Resend Submit for verification`
  String get resend_submit_verification {
    return Intl.message(
      'Resend Submit for verification',
      name: 'resend_submit_verification',
      desc: '',
      args: [],
    );
  }

  /// `Please check your domain`
  String get check_your_domain {
    return Intl.message(
      'Please check your domain',
      name: 'check_your_domain',
      desc: '',
      args: [],
    );
  }

  /// `Total amount for influencers draft`
  String get total_amount_for_influencers_draft {
    return Intl.message(
      'Total amount for influencers draft',
      name: 'total_amount_for_influencers_draft',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Price`
  String get purchase_price {
    return Intl.message(
      'Purchase Price',
      name: 'purchase_price',
      desc: '',
      args: [],
    );
  }

  /// `Selling Price`
  String get selling_price {
    return Intl.message(
      'Selling Price',
      name: 'selling_price',
      desc: '',
      args: [],
    );
  }

  /// `Profit`
  String get profit_100_percent {
    return Intl.message(
      'Profit',
      name: 'profit_100_percent',
      desc: '',
      args: [],
    );
  }

  /// `Service fee on client`
  String get service_fee_on_client {
    return Intl.message(
      'Service fee on client',
      name: 'service_fee_on_client',
      desc: '',
      args: [],
    );
  }

  /// `Enable unified price (package)`
  String get enable_unified_price {
    return Intl.message(
      'Enable unified price (package)',
      name: 'enable_unified_price',
      desc: '',
      args: [],
    );
  }

  /// `The price is shown to the client as a single price for all platforms.`
  String get unified_price_description {
    return Intl.message(
      'The price is shown to the client as a single price for all platforms.',
      name: 'unified_price_description',
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

  /// `(Optional)`
  String get notes_optional {
    return Intl.message(
      '(Optional)',
      name: 'notes_optional',
      desc: '',
      args: [],
    );
  }

  /// `Add your notes here...`
  String get add_your_notes_here {
    return Intl.message(
      'Add your notes here...',
      name: 'add_your_notes_here',
      desc: '',
      args: [],
    );
  }

  /// `Total amount for platforms`
  String get total_amount_for_platforms {
    return Intl.message(
      'Total amount for platforms',
      name: 'total_amount_for_platforms',
      desc: '',
      args: [],
    );
  }

  /// `Add more platforms`
  String get add_more_platforms {
    return Intl.message(
      'Add more platforms',
      name: 'add_more_platforms',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to discard the changes?`
  String get discard_changes_title {
    return Intl.message(
      'Do you want to discard the changes?',
      name: 'discard_changes_title',
      desc: '',
      args: [],
    );
  }

  /// `If you go back now, you will lose your edits.`
  String get discard_changes_description {
    return Intl.message(
      'If you go back now, you will lose your edits.',
      name: 'discard_changes_description',
      desc: '',
      args: [],
    );
  }

  /// `Delete Platform`
  String get delete_platform_title {
    return Intl.message(
      'Delete Platform',
      name: 'delete_platform_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this platform?`
  String get delete_platform_description {
    return Intl.message(
      'Are you sure you want to delete this platform?',
      name: 'delete_platform_description',
      desc: '',
      args: [],
    );
  }

  /// `Influencer Draft`
  String get influencer_draft {
    return Intl.message(
      'Influencer Draft',
      name: 'influencer_draft',
      desc: '',
      args: [],
    );
  }

  /// `Influencers Proposal`
  String get influencer_suggestion {
    return Intl.message(
      'Influencers Proposal',
      name: 'influencer_suggestion',
      desc: '',
      args: [],
    );
  }

  /// `Add Influencers`
  String get add_influencers {
    return Intl.message(
      'Add Influencers',
      name: 'add_influencers',
      desc: '',
      args: [],
    );
  }

  /// `Add stars`
  String get add_Stars_influencers {
    return Intl.message(
      'Add stars',
      name: 'add_Stars_influencers',
      desc: '',
      args: [],
    );
  }

  /// `Already used`
  String get already_used {
    return Intl.message(
      'Already used',
      name: 'already_used',
      desc: '',
      args: [],
    );
  }

  /// `Draft (Waiting for price)`
  String get draft_pending_price {
    return Intl.message(
      'Draft (Waiting for price)',
      name: 'draft_pending_price',
      desc: '',
      args: [],
    );
  }

  /// `Draft (Waiting for order completion)`
  String get draft_pending_order {
    return Intl.message(
      'Draft (Waiting for order completion)',
      name: 'draft_pending_order',
      desc: '',
      args: [],
    );
  }

  /// `The selling price must be equal to or greater than the buying price.`
  String get selling_price_validation {
    return Intl.message(
      'The selling price must be equal to or greater than the buying price.',
      name: 'selling_price_validation',
      desc: '',
      args: [],
    );
  }

  /// `Update Required`
  String get update_required_title {
    return Intl.message(
      'Update Required',
      name: 'update_required_title',
      desc: '',
      args: [],
    );
  }

  /// `We've released a new and improved update. Please update the app to continue using it.`
  String get update_required_message {
    return Intl.message(
      'We\'ve released a new and improved update. Please update the app to continue using it.',
      name: 'update_required_message',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get update_now {
    return Intl.message(
      'Update Now',
      name: 'update_now',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Hide Details`
  String get hide_details {
    return Intl.message(
      'Hide Details',
      name: 'hide_details',
      desc: '',
      args: [],
    );
  }

  /// `Additional`
  String get additional {
    return Intl.message(
      'Additional',
      name: 'additional',
      desc: '',
      args: [],
    );
  }

  /// `Discount up to`
  String get discount_up_to_percent {
    return Intl.message(
      'Discount up to',
      name: 'discount_up_to_percent',
      desc: '',
      args: [],
    );
  }

  /// `Delete Chat`
  String get deleteChat {
    return Intl.message(
      'Delete Chat',
      name: 'deleteChat',
      desc: '',
      args: [],
    );
  }

  /// `Photos`
  String get photos {
    return Intl.message(
      'Photos',
      name: 'photos',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get connectionSource {
    return Intl.message(
      'Contacts',
      name: 'connectionSource',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get documentText {
    return Intl.message(
      'Document',
      name: 'documentText',
      desc: '',
      args: [],
    );
  }

  /// `Select contact`
  String get select_contact {
    return Intl.message(
      'Select contact',
      name: 'select_contact',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this conversation?`
  String get deleteChatDesc {
    return Intl.message(
      'Are you sure you want to delete this conversation?',
      name: 'deleteChatDesc',
      desc: '',
      args: [],
    );
  }

  /// `Send Location`
  String get send_location {
    return Intl.message(
      'Send Location',
      name: 'send_location',
      desc: '',
      args: [],
    );
  }

  /// `Search or enter an address`
  String get search_address {
    return Intl.message(
      'Search or enter an address',
      name: 'search_address',
      desc: '',
      args: [],
    );
  }

  /// `Share live location`
  String get share_live_location {
    return Intl.message(
      'Share live location',
      name: 'share_live_location',
      desc: '',
      args: [],
    );
  }

  /// `Send your current location`
  String get send_current_location {
    return Intl.message(
      'Send your current location',
      name: 'send_current_location',
      desc: '',
      args: [],
    );
  }

  /// `Nearby places`
  String get nearby_places {
    return Intl.message(
      'Nearby places',
      name: 'nearby_places',
      desc: '',
      args: [],
    );
  }

  /// `15 minutes`
  String get live_location_duration_15 {
    return Intl.message(
      '15 minutes',
      name: 'live_location_duration_15',
      desc: '',
      args: [],
    );
  }

  /// `1 hour`
  String get live_location_duration_60 {
    return Intl.message(
      '1 hour',
      name: 'live_location_duration_60',
      desc: '',
      args: [],
    );
  }

  /// `8 hours`
  String get live_location_duration_480 {
    return Intl.message(
      '8 hours',
      name: 'live_location_duration_480',
      desc: '',
      args: [],
    );
  }

  /// `Current location shared`
  String get current_location_shared {
    return Intl.message(
      'Current location shared',
      name: 'current_location_shared',
      desc: '',
      args: [],
    );
  }

  /// `Location shared`
  String get place_location_shared {
    return Intl.message(
      'Location shared',
      name: 'place_location_shared',
      desc: '',
      args: [],
    );
  }

  /// `Live location sharing started`
  String get live_location_started {
    return Intl.message(
      'Live location sharing started',
      name: 'live_location_started',
      desc: '',
      args: [],
    );
  }

  /// `Failed to get location`
  String get location_error_general {
    return Intl.message(
      'Failed to get location',
      name: 'location_error_general',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are denied`
  String get location_permissions_denied {
    return Intl.message(
      'Location permissions are denied',
      name: 'location_permissions_denied',
      desc: '',
      args: [],
    );
  }

  /// `Location unavailable`
  String get location_unavailable {
    return Intl.message(
      'Location unavailable',
      name: 'location_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Getting location...`
  String get getting_location {
    return Intl.message(
      'Getting location...',
      name: 'getting_location',
      desc: '',
      args: [],
    );
  }

  /// `Locating...`
  String get locating {
    return Intl.message(
      'Locating...',
      name: 'locating',
      desc: '',
      args: [],
    );
  }

  /// `Search failed`
  String get search_failed {
    return Intl.message(
      'Search failed',
      name: 'search_failed',
      desc: '',
      args: [],
    );
  }

  /// `No places found`
  String get no_places_found {
    return Intl.message(
      'No places found',
      name: 'no_places_found',
      desc: '',
      args: [],
    );
  }

  /// `Current Location`
  String get current_location_message {
    return Intl.message(
      'Current Location',
      name: 'current_location_message',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location_message_title {
    return Intl.message(
      'Location',
      name: 'location_message_title',
      desc: '',
      args: [],
    );
  }

  /// `Live Location`
  String get live_location_message {
    return Intl.message(
      'Live Location',
      name: 'live_location_message',
      desc: '',
      args: [],
    );
  }

  /// `Live Location ({duration} min)`
  String live_location_with_duration(Object duration) {
    return Intl.message(
      'Live Location ($duration min)',
      name: 'live_location_with_duration',
      desc: '',
      args: [duration],
    );
  }

  /// `Expired`
  String get location_expired {
    return Intl.message(
      'Expired',
      name: 'location_expired',
      desc: '',
      args: [],
    );
  }

  /// `Live • {minutes} min remaining`
  String live_location_active(Object minutes) {
    return Intl.message(
      'Live • $minutes min remaining',
      name: 'live_location_active',
      desc: '',
      args: [minutes],
    );
  }

  /// `Location sharing stopped`
  String get location_sharing_stopped {
    return Intl.message(
      'Location sharing stopped',
      name: 'location_sharing_stopped',
      desc: '',
      args: [],
    );
  }

  /// `Open in Maps`
  String get open_in_maps {
    return Intl.message(
      'Open in Maps',
      name: 'open_in_maps',
      desc: '',
      args: [],
    );
  }

  /// `Stop`
  String get stop_live_location {
    return Intl.message(
      'Stop',
      name: 'stop_live_location',
      desc: '',
      args: [],
    );
  }

  /// `Live location sharing stopped`
  String get live_location_stopped_success {
    return Intl.message(
      'Live location sharing stopped',
      name: 'live_location_stopped_success',
      desc: '',
      args: [],
    );
  }

  /// `Failed to stop live location`
  String get live_location_stop_failed {
    return Intl.message(
      'Failed to stop live location',
      name: 'live_location_stop_failed',
      desc: '',
      args: [],
    );
  }

  /// `Read`
  String get read {
    return Intl.message(
      'Read',
      name: 'read',
      desc: '',
      args: [],
    );
  }

  /// `Add at least one service to any influencer draft.`
  String get add_at_least_one_service_to_draft {
    return Intl.message(
      'Add at least one service to any influencer draft.',
      name: 'add_at_least_one_service_to_draft',
      desc: '',
      args: [],
    );
  }

  /// `Category Score`
  String get category_score {
    return Intl.message(
      'Category Score',
      name: 'category_score',
      desc: '',
      args: [],
    );
  }

  /// `ER`
  String get instagram_er {
    return Intl.message(
      'ER',
      name: 'instagram_er',
      desc: '',
      args: [],
    );
  }

  /// `Authenticity`
  String get instagram_authenticity {
    return Intl.message(
      'Authenticity',
      name: 'instagram_authenticity',
      desc: '',
      args: [],
    );
  }

  /// `Reachability`
  String get instagram_reachability {
    return Intl.message(
      'Reachability',
      name: 'instagram_reachability',
      desc: '',
      args: [],
    );
  }

  /// `AQS`
  String get instagram_aqs {
    return Intl.message(
      'AQS',
      name: 'instagram_aqs',
      desc: '',
      args: [],
    );
  }

  /// `Final Score`
  String get final_score {
    return Intl.message(
      'Final Score',
      name: 'final_score',
      desc: '',
      args: [],
    );
  }

  /// `Refund`
  String get refund {
    return Intl.message(
      'Refund',
      name: 'refund',
      desc: '',
      args: [],
    );
  }

  /// `Hold Amount`
  String get hold_amount {
    return Intl.message(
      'Hold Amount',
      name: 'hold_amount',
      desc: '',
      args: [],
    );
  }

  /// `Release Amount`
  String get release_amount {
    return Intl.message(
      'Release Amount',
      name: 'release_amount',
      desc: '',
      args: [],
    );
  }

  /// `Within this month`
  String get within_this_month {
    return Intl.message(
      'Within this month',
      name: 'within_this_month',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get january {
    return Intl.message(
      'January',
      name: 'january',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get february {
    return Intl.message(
      'February',
      name: 'february',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get march {
    return Intl.message(
      'March',
      name: 'march',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get april {
    return Intl.message(
      'April',
      name: 'april',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get may {
    return Intl.message(
      'May',
      name: 'may',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get june {
    return Intl.message(
      'June',
      name: 'june',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get july {
    return Intl.message(
      'July',
      name: 'july',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get august {
    return Intl.message(
      'August',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get september {
    return Intl.message(
      'September',
      name: 'september',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get october {
    return Intl.message(
      'October',
      name: 'october',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get november {
    return Intl.message(
      'November',
      name: 'november',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get december {
    return Intl.message(
      'December',
      name: 'december',
      desc: '',
      args: [],
    );
  }

  /// `Set the amount you want to add`
  String get set_amount_title {
    return Intl.message(
      'Set the amount you want to add',
      name: 'set_amount_title',
      desc: '',
      args: [],
    );
  }

  /// `Available balance in wallet`
  String get wallet_available_balance {
    return Intl.message(
      'Available balance in wallet',
      name: 'wallet_available_balance',
      desc: '',
      args: [],
    );
  }

  /// `Amount you want to add`
  String get wallet_amount_to_add {
    return Intl.message(
      'Amount you want to add',
      name: 'wallet_amount_to_add',
      desc: '',
      args: [],
    );
  }

  /// `Total amount in wallet`
  String get wallet_total_balance {
    return Intl.message(
      'Total amount in wallet',
      name: 'wallet_total_balance',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get archive {
    return Intl.message(
      'Archive',
      name: 'archive',
      desc: '',
      args: [],
    );
  }

  /// `Archived Chats`
  String get archivedChats {
    return Intl.message(
      'Archived Chats',
      name: 'archivedChats',
      desc: '',
      args: [],
    );
  }

  /// `The Search`
  String get the_search {
    return Intl.message(
      'The Search',
      name: 'the_search',
      desc: '',
      args: [],
    );
  }

  /// `Unpin`
  String get unpin {
    return Intl.message(
      'Unpin',
      name: 'unpin',
      desc: '',
      args: [],
    );
  }

  /// `Unarchive`
  String get unArchive {
    return Intl.message(
      'Unarchive',
      name: 'unArchive',
      desc: '',
      args: [],
    );
  }

  /// `Sponsorship score`
  String get sponsorship_score {
    return Intl.message(
      'Sponsorship score',
      name: 'sponsorship_score',
      desc: '',
      args: [],
    );
  }

  /// `You can pin only 3 conversations`
  String get pin_limit {
    return Intl.message(
      'You can pin only 3 conversations',
      name: 'pin_limit',
      desc: '',
      args: [],
    );
  }

  /// `Remove a currently pinned conversation to pin this one instead.`
  String get pin_limit_reached {
    return Intl.message(
      'Remove a currently pinned conversation to pin this one instead.',
      name: 'pin_limit_reached',
      desc: '',
      args: [],
    );
  }

  /// `Sent successfully`
  String get sent_successfully {
    return Intl.message(
      'Sent successfully',
      name: 'sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get reply {
    return Intl.message(
      'Reply',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Download completed`
  String get download_completed {
    return Intl.message(
      'Download completed',
      name: 'download_completed',
      desc: '',
      args: [],
    );
  }

  /// `Download failed`
  String get download_failed {
    return Intl.message(
      'Download failed',
      name: 'download_failed',
      desc: '',
      args: [],
    );
  }

  /// `Loading GIF...`
  String get loading_gif {
    return Intl.message(
      'Loading GIF...',
      name: 'loading_gif',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load GIF`
  String get failed_to_load_gif {
    return Intl.message(
      'Failed to load GIF',
      name: 'failed_to_load_gif',
      desc: '',
      args: [],
    );
  }

  /// `GIF not available`
  String get gif_not_available {
    return Intl.message(
      'GIF not available',
      name: 'gif_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading video...`
  String get loading_video {
    return Intl.message(
      'Loading video...',
      name: 'loading_video',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load video`
  String get failed_to_load_video {
    return Intl.message(
      'Failed to load video',
      name: 'failed_to_load_video',
      desc: '',
      args: [],
    );
  }

  /// `Video source not available`
  String get video_not_available {
    return Intl.message(
      'Video source not available',
      name: 'video_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Pin Message`
  String get pin_message {
    return Intl.message(
      'Pin Message',
      name: 'pin_message',
      desc: '',
      args: [],
    );
  }

  /// `Unpin Message`
  String get unpin_message {
    return Intl.message(
      'Unpin Message',
      name: 'unpin_message',
      desc: '',
      args: [],
    );
  }

  /// `This message will be pinned to the top of the chat for everyone.`
  String get pin_message_description {
    return Intl.message(
      'This message will be pinned to the top of the chat for everyone.',
      name: 'pin_message_description',
      desc: '',
      args: [],
    );
  }

  /// `This message will be unpinned from the top of the chat.`
  String get unpin_message_description {
    return Intl.message(
      'This message will be unpinned from the top of the chat.',
      name: 'unpin_message_description',
      desc: '',
      args: [],
    );
  }

  /// `Message pinned successfully`
  String get message_pinned_successfully {
    return Intl.message(
      'Message pinned successfully',
      name: 'message_pinned_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Message unpinned successfully`
  String get message_unpinned_successfully {
    return Intl.message(
      'Message unpinned successfully',
      name: 'message_unpinned_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to pin message`
  String get failed_to_pin_message {
    return Intl.message(
      'Failed to pin message',
      name: 'failed_to_pin_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to unpin message`
  String get failed_to_unpin_message {
    return Intl.message(
      'Failed to unpin message',
      name: 'failed_to_unpin_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to share`
  String get failed_to_share {
    return Intl.message(
      'Failed to share',
      name: 'failed_to_share',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get reaction_like {
    return Intl.message(
      'Like',
      name: 'reaction_like',
      desc: '',
      args: [],
    );
  }

  /// `Love`
  String get reaction_love {
    return Intl.message(
      'Love',
      name: 'reaction_love',
      desc: '',
      args: [],
    );
  }

  /// `Haha`
  String get reaction_haha {
    return Intl.message(
      'Haha',
      name: 'reaction_haha',
      desc: '',
      args: [],
    );
  }

  /// `Wow`
  String get reaction_wow {
    return Intl.message(
      'Wow',
      name: 'reaction_wow',
      desc: '',
      args: [],
    );
  }

  /// `Sad`
  String get reaction_sad {
    return Intl.message(
      'Sad',
      name: 'reaction_sad',
      desc: '',
      args: [],
    );
  }

  /// `Angry`
  String get reaction_angry {
    return Intl.message(
      'Angry',
      name: 'reaction_angry',
      desc: '',
      args: [],
    );
  }

  /// `Add Balance`
  String get add_balance {
    return Intl.message(
      'Add Balance',
      name: 'add_balance',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get Analysis {
    return Intl.message(
      'Analysis',
      name: 'Analysis',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hour {
    return Intl.message(
      'Hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Images`
  String get images {
    return Intl.message(
      'Images',
      name: 'images',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load channels`
  String get failed_to_load_channels {
    return Intl.message(
      'Failed to load channels',
      name: 'failed_to_load_channels',
      desc: '',
      args: [],
    );
  }

  /// `Forward {count} messages`
  String forward_multiple_messages(int count) {
    return Intl.message(
      'Forward $count messages',
      name: 'forward_multiple_messages',
      desc: '',
      args: [count],
    );
  }

  /// `{count} selected messages`
  String selected_messages_count(int count) {
    return Intl.message(
      '$count selected messages',
      name: 'selected_messages_count',
      desc: '',
      args: [count],
    );
  }

  /// `{count} messages forwarded successfully`
  String messages_forwarded_successfully(int count) {
    return Intl.message(
      '$count messages forwarded successfully',
      name: 'messages_forwarded_successfully',
      desc: '',
      args: [count],
    );
  }

  /// `{messageCount} messages forwarded to {chatCount} chats`
  String messages_forwarded_to_chats(int messageCount, int chatCount) {
    return Intl.message(
      '$messageCount messages forwarded to $chatCount chats',
      name: 'messages_forwarded_to_chats',
      desc: '',
      args: [messageCount, chatCount],
    );
  }

  /// ` to {count} chats`
  String forwarded_to_chats(int count) {
    return Intl.message(
      ' to $count chats',
      name: 'forwarded_to_chats',
      desc: '',
      args: [count],
    );
  }

  /// `📷 Photo`
  String get attachment_photo {
    return Intl.message(
      '📷 Photo',
      name: 'attachment_photo',
      desc: '',
      args: [],
    );
  }

  /// `🎥 Video`
  String get attachment_video {
    return Intl.message(
      '🎥 Video',
      name: 'attachment_video',
      desc: '',
      args: [],
    );
  }

  /// `📎 File`
  String get attachment_file {
    return Intl.message(
      '📎 File',
      name: 'attachment_file',
      desc: '',
      args: [],
    );
  }

  /// `🎤 Voice message`
  String get attachment_voice_message {
    return Intl.message(
      '🎤 Voice message',
      name: 'attachment_voice_message',
      desc: '',
      args: [],
    );
  }

  /// `📎 Attachment`
  String get attachment_general {
    return Intl.message(
      '📎 Attachment',
      name: 'attachment_general',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message_text {
    return Intl.message(
      'Message',
      name: 'message_text',
      desc: '',
      args: [],
    );
  }

  /// `Failed to start recording: {error}`
  String failed_to_start_recording(String error) {
    return Intl.message(
      'Failed to start recording: $error',
      name: 'failed_to_start_recording',
      desc: '',
      args: [error],
    );
  }

  /// `Recording...`
  String get recording_in_progress {
    return Intl.message(
      'Recording...',
      name: 'recording_in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get recording_cancel {
    return Intl.message(
      'Cancel',
      name: 'recording_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get recording_send {
    return Intl.message(
      'Send',
      name: 'recording_send',
      desc: '',
      args: [],
    );
  }

  /// `Error!!`
  String get audio_error {
    return Intl.message(
      'Error!!',
      name: 'audio_error',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw_offer {
    return Intl.message(
      'Withdraw',
      name: 'withdraw_offer',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw the offer`
  String get withdraw_offer_description {
    return Intl.message(
      'Withdraw the offer',
      name: 'withdraw_offer_description',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown_contact {
    return Intl.message(
      'Unknown',
      name: 'unknown_contact',
      desc: '',
      args: [],
    );
  }

  /// `Error sending message: {error}`
  String error_sending_message(String error) {
    return Intl.message(
      'Error sending message: $error',
      name: 'error_sending_message',
      desc: '',
      args: [error],
    );
  }

  /// `Failed to resize and encode image: {error}`
  String failed_resize_encode_image(String error) {
    return Intl.message(
      'Failed to resize and encode image: $error',
      name: 'failed_resize_encode_image',
      desc: '',
      args: [error],
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

  /// `User is busy`
  String get user_busy {
    return Intl.message(
      'User is busy',
      name: 'user_busy',
      desc: '',
      args: [],
    );
  }

  /// `Paint`
  String get image_editor_paint {
    return Intl.message(
      'Paint',
      name: 'image_editor_paint',
      desc: '',
      args: [],
    );
  }

  /// `Text`
  String get image_editor_text {
    return Intl.message(
      'Text',
      name: 'image_editor_text',
      desc: '',
      args: [],
    );
  }

  /// `Crop & Rotate`
  String get image_editor_crop_rotate {
    return Intl.message(
      'Crop & Rotate',
      name: 'image_editor_crop_rotate',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get image_editor_filter {
    return Intl.message(
      'Filter',
      name: 'image_editor_filter',
      desc: '',
      args: [],
    );
  }

  /// `Emoji`
  String get image_editor_emoji {
    return Intl.message(
      'Emoji',
      name: 'image_editor_emoji',
      desc: '',
      args: [],
    );
  }

  /// `Sticker`
  String get image_editor_sticker {
    return Intl.message(
      'Sticker',
      name: 'image_editor_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Blur`
  String get image_editor_blur {
    return Intl.message(
      'Blur',
      name: 'image_editor_blur',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get image_editor_done {
    return Intl.message(
      'Done',
      name: 'image_editor_done',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get image_editor_back {
    return Intl.message(
      'Back',
      name: 'image_editor_back',
      desc: '',
      args: [],
    );
  }

  /// `Undo`
  String get image_editor_undo {
    return Intl.message(
      'Undo',
      name: 'image_editor_undo',
      desc: '',
      args: [],
    );
  }

  /// `Redo`
  String get image_editor_redo {
    return Intl.message(
      'Redo',
      name: 'image_editor_redo',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get image_editor_remove {
    return Intl.message(
      'Remove',
      name: 'image_editor_remove',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get image_editor_cancel {
    return Intl.message(
      'Cancel',
      name: 'image_editor_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get image_editor_apply {
    return Intl.message(
      'Apply',
      name: 'image_editor_apply',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get image_editor_reset {
    return Intl.message(
      'Reset',
      name: 'image_editor_reset',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get image_editor_close {
    return Intl.message(
      'Close',
      name: 'image_editor_close',
      desc: '',
      args: [],
    );
  }

  /// `Crop`
  String get image_editor_crop {
    return Intl.message(
      'Crop',
      name: 'image_editor_crop',
      desc: '',
      args: [],
    );
  }

  /// `Rotate`
  String get image_editor_rotate {
    return Intl.message(
      'Rotate',
      name: 'image_editor_rotate',
      desc: '',
      args: [],
    );
  }

  /// `Flip`
  String get image_editor_flip {
    return Intl.message(
      'Flip',
      name: 'image_editor_flip',
      desc: '',
      args: [],
    );
  }

  /// `Ratio`
  String get image_editor_ratio {
    return Intl.message(
      'Ratio',
      name: 'image_editor_ratio',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get image_editor_free {
    return Intl.message(
      'Free',
      name: 'image_editor_free',
      desc: '',
      args: [],
    );
  }

  /// `Original`
  String get image_editor_original {
    return Intl.message(
      'Original',
      name: 'image_editor_original',
      desc: '',
      args: [],
    );
  }

  /// `Square`
  String get image_editor_square {
    return Intl.message(
      'Square',
      name: 'image_editor_square',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get image_editor_custom {
    return Intl.message(
      'Custom',
      name: 'image_editor_custom',
      desc: '',
      args: [],
    );
  }

  /// `Font Scale`
  String get image_editor_font_scale {
    return Intl.message(
      'Font Scale',
      name: 'image_editor_font_scale',
      desc: '',
      args: [],
    );
  }

  /// `Font Color`
  String get image_editor_font_color {
    return Intl.message(
      'Font Color',
      name: 'image_editor_font_color',
      desc: '',
      args: [],
    );
  }

  /// `Background Color`
  String get image_editor_background_color {
    return Intl.message(
      'Background Color',
      name: 'image_editor_background_color',
      desc: '',
      args: [],
    );
  }

  /// `Font Family`
  String get image_editor_font_family {
    return Intl.message(
      'Font Family',
      name: 'image_editor_font_family',
      desc: '',
      args: [],
    );
  }

  /// `Align Left`
  String get image_editor_align_left {
    return Intl.message(
      'Align Left',
      name: 'image_editor_align_left',
      desc: '',
      args: [],
    );
  }

  /// `Align Center`
  String get image_editor_align_center {
    return Intl.message(
      'Align Center',
      name: 'image_editor_align_center',
      desc: '',
      args: [],
    );
  }

  /// `Align Right`
  String get image_editor_align_right {
    return Intl.message(
      'Align Right',
      name: 'image_editor_align_right',
      desc: '',
      args: [],
    );
  }

  /// `Text Style`
  String get image_editor_text_style {
    return Intl.message(
      'Text Style',
      name: 'image_editor_text_style',
      desc: '',
      args: [],
    );
  }

  /// `Bold`
  String get image_editor_bold {
    return Intl.message(
      'Bold',
      name: 'image_editor_bold',
      desc: '',
      args: [],
    );
  }

  /// `Italic`
  String get image_editor_italic {
    return Intl.message(
      'Italic',
      name: 'image_editor_italic',
      desc: '',
      args: [],
    );
  }

  /// `Underline`
  String get image_editor_underline {
    return Intl.message(
      'Underline',
      name: 'image_editor_underline',
      desc: '',
      args: [],
    );
  }

  /// `Small Caps`
  String get image_editor_smallcaps {
    return Intl.message(
      'Small Caps',
      name: 'image_editor_smallcaps',
      desc: '',
      args: [],
    );
  }

  /// `Stroke Width`
  String get image_editor_stroke_width {
    return Intl.message(
      'Stroke Width',
      name: 'image_editor_stroke_width',
      desc: '',
      args: [],
    );
  }

  /// `Opacity`
  String get image_editor_opacity {
    return Intl.message(
      'Opacity',
      name: 'image_editor_opacity',
      desc: '',
      args: [],
    );
  }

  /// `Brush Size`
  String get image_editor_brush_size {
    return Intl.message(
      'Brush Size',
      name: 'image_editor_brush_size',
      desc: '',
      args: [],
    );
  }

  /// `Eraser`
  String get image_editor_eraser {
    return Intl.message(
      'Eraser',
      name: 'image_editor_eraser',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get image_editor_none {
    return Intl.message(
      'None',
      name: 'image_editor_none',
      desc: '',
      args: [],
    );
  }

  /// `Circle`
  String get image_editor_circle {
    return Intl.message(
      'Circle',
      name: 'image_editor_circle',
      desc: '',
      args: [],
    );
  }

  /// `Square`
  String get image_editor_square_shape {
    return Intl.message(
      'Square',
      name: 'image_editor_square_shape',
      desc: '',
      args: [],
    );
  }

  /// `Rectangle`
  String get image_editor_rectangle {
    return Intl.message(
      'Rectangle',
      name: 'image_editor_rectangle',
      desc: '',
      args: [],
    );
  }

  /// `Arrow`
  String get image_editor_arrow {
    return Intl.message(
      'Arrow',
      name: 'image_editor_arrow',
      desc: '',
      args: [],
    );
  }

  /// `Line`
  String get image_editor_line {
    return Intl.message(
      'Line',
      name: 'image_editor_line',
      desc: '',
      args: [],
    );
  }

  /// `Freestyle`
  String get image_editor_freestyle {
    return Intl.message(
      'Freestyle',
      name: 'image_editor_freestyle',
      desc: '',
      args: [],
    );
  }

  /// `Blur Factor`
  String get image_editor_blur_factor {
    return Intl.message(
      'Blur Factor',
      name: 'image_editor_blur_factor',
      desc: '',
      args: [],
    );
  }

  /// `Import Sticker`
  String get image_editor_import_sticker {
    return Intl.message(
      'Import Sticker',
      name: 'image_editor_import_sticker',
      desc: '',
      args: [],
    );
  }

  /// `Layer`
  String get image_editor_layer {
    return Intl.message(
      'Layer',
      name: 'image_editor_layer',
      desc: '',
      args: [],
    );
  }

  /// `Move Up`
  String get image_editor_move_up {
    return Intl.message(
      'Move Up',
      name: 'image_editor_move_up',
      desc: '',
      args: [],
    );
  }

  /// `Move Down`
  String get image_editor_move_down {
    return Intl.message(
      'Move Down',
      name: 'image_editor_move_down',
      desc: '',
      args: [],
    );
  }

  /// `To Foreground`
  String get image_editor_to_foreground {
    return Intl.message(
      'To Foreground',
      name: 'image_editor_to_foreground',
      desc: '',
      args: [],
    );
  }

  /// `To Background`
  String get image_editor_to_background {
    return Intl.message(
      'To Background',
      name: 'image_editor_to_background',
      desc: '',
      args: [],
    );
  }

  /// `Duplicate`
  String get image_editor_duplicate {
    return Intl.message(
      'Duplicate',
      name: 'image_editor_duplicate',
      desc: '',
      args: [],
    );
  }

  /// `Remove Layer`
  String get image_editor_remove_layer {
    return Intl.message(
      'Remove Layer',
      name: 'image_editor_remove_layer',
      desc: '',
      args: [],
    );
  }

  /// `No changes detected`
  String get image_editor_no_changes_detected {
    return Intl.message(
      'No changes detected',
      name: 'image_editor_no_changes_detected',
      desc: '',
      args: [],
    );
  }

  /// `Unsaved Changes`
  String get image_editor_unsaved_changes {
    return Intl.message(
      'Unsaved Changes',
      name: 'image_editor_unsaved_changes',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to leave without saving your changes?`
  String get image_editor_unsaved_changes_body {
    return Intl.message(
      'Are you sure you want to leave without saving your changes?',
      name: 'image_editor_unsaved_changes_body',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get image_editor_save {
    return Intl.message(
      'Save',
      name: 'image_editor_save',
      desc: '',
      args: [],
    );
  }

  /// `Don't Save`
  String get image_editor_dont_save {
    return Intl.message(
      'Don\'t Save',
      name: 'image_editor_dont_save',
      desc: '',
      args: [],
    );
  }

  /// `Tune`
  String get image_editor_tune {
    return Intl.message(
      'Tune',
      name: 'image_editor_tune',
      desc: '',
      args: [],
    );
  }

  /// `Brightness`
  String get image_editor_brightness {
    return Intl.message(
      'Brightness',
      name: 'image_editor_brightness',
      desc: '',
      args: [],
    );
  }

  /// `Contrast`
  String get image_editor_contrast {
    return Intl.message(
      'Contrast',
      name: 'image_editor_contrast',
      desc: '',
      args: [],
    );
  }

  /// `Saturation`
  String get image_editor_saturation {
    return Intl.message(
      'Saturation',
      name: 'image_editor_saturation',
      desc: '',
      args: [],
    );
  }

  /// `Exposure`
  String get image_editor_exposure {
    return Intl.message(
      'Exposure',
      name: 'image_editor_exposure',
      desc: '',
      args: [],
    );
  }

  /// `Hue`
  String get image_editor_hue {
    return Intl.message(
      'Hue',
      name: 'image_editor_hue',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get image_editor_temperature {
    return Intl.message(
      'Temperature',
      name: 'image_editor_temperature',
      desc: '',
      args: [],
    );
  }

  /// `Sharpness`
  String get image_editor_sharpness {
    return Intl.message(
      'Sharpness',
      name: 'image_editor_sharpness',
      desc: '',
      args: [],
    );
  }

  /// `Fade`
  String get image_editor_fade {
    return Intl.message(
      'Fade',
      name: 'image_editor_fade',
      desc: '',
      args: [],
    );
  }

  /// `Luminance`
  String get image_editor_luminance {
    return Intl.message(
      'Luminance',
      name: 'image_editor_luminance',
      desc: '',
      args: [],
    );
  }

  /// `Zoom`
  String get image_editor_move_zoom {
    return Intl.message(
      'Zoom',
      name: 'image_editor_move_zoom',
      desc: '',
      args: [],
    );
  }

  /// `Dash Line`
  String get image_editor_dash_line {
    return Intl.message(
      'Dash Line',
      name: 'image_editor_dash_line',
      desc: '',
      args: [],
    );
  }

  /// `Polygon`
  String get image_editor_polygon {
    return Intl.message(
      'Polygon',
      name: 'image_editor_polygon',
      desc: '',
      args: [],
    );
  }

  /// `Pixelate`
  String get image_editor_pixelate {
    return Intl.message(
      'Pixelate',
      name: 'image_editor_pixelate',
      desc: '',
      args: [],
    );
  }

  /// `Toggle Fill`
  String get image_editor_toggle_fill {
    return Intl.message(
      'Toggle Fill',
      name: 'image_editor_toggle_fill',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get image_editor_more {
    return Intl.message(
      'More',
      name: 'image_editor_more',
      desc: '',
      args: [],
    );
  }

  /// `Enter text`
  String get image_editor_input_hint {
    return Intl.message(
      'Enter text',
      name: 'image_editor_input_hint',
      desc: '',
      args: [],
    );
  }

  /// `Align Text`
  String get image_editor_align_text {
    return Intl.message(
      'Align Text',
      name: 'image_editor_align_text',
      desc: '',
      args: [],
    );
  }

  /// `Background Mode`
  String get image_editor_background_mode {
    return Intl.message(
      'Background Mode',
      name: 'image_editor_background_mode',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get image_editor_search {
    return Intl.message(
      'Search',
      name: 'image_editor_search',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get image_editor_recent {
    return Intl.message(
      'Recent',
      name: 'image_editor_recent',
      desc: '',
      args: [],
    );
  }

  /// `Smileys & People`
  String get image_editor_smileys {
    return Intl.message(
      'Smileys & People',
      name: 'image_editor_smileys',
      desc: '',
      args: [],
    );
  }

  /// `Animals & Nature`
  String get image_editor_animals {
    return Intl.message(
      'Animals & Nature',
      name: 'image_editor_animals',
      desc: '',
      args: [],
    );
  }

  /// `Food & Drink`
  String get image_editor_food {
    return Intl.message(
      'Food & Drink',
      name: 'image_editor_food',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get image_editor_activities {
    return Intl.message(
      'Activities',
      name: 'image_editor_activities',
      desc: '',
      args: [],
    );
  }

  /// `Travel & Places`
  String get image_editor_travel {
    return Intl.message(
      'Travel & Places',
      name: 'image_editor_travel',
      desc: '',
      args: [],
    );
  }

  /// `Objects`
  String get image_editor_objects {
    return Intl.message(
      'Objects',
      name: 'image_editor_objects',
      desc: '',
      args: [],
    );
  }

  /// `Symbols`
  String get image_editor_symbols {
    return Intl.message(
      'Symbols',
      name: 'image_editor_symbols',
      desc: '',
      args: [],
    );
  }

  /// `Flags`
  String get image_editor_flags {
    return Intl.message(
      'Flags',
      name: 'image_editor_flags',
      desc: '',
      args: [],
    );
  }

  /// `No emoji`
  String get image_editor_no_emoji {
    return Intl.message(
      'No emoji',
      name: 'image_editor_no_emoji',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get image_editor_loading {
    return Intl.message(
      'Loading',
      name: 'image_editor_loading',
      desc: '',
      args: [],
    );
  }

  /// `Preparing`
  String get image_editor_preparing {
    return Intl.message(
      'Preparing',
      name: 'image_editor_preparing',
      desc: '',
      args: [],
    );
  }

  /// `Payment Failed`
  String get payment_failed {
    return Intl.message(
      'Payment Failed',
      name: 'payment_failed',
      desc: '',
      args: [],
    );
  }

  /// `Microphone permission is required to record voice messages`
  String get microphone_permission_required {
    return Intl.message(
      'Microphone permission is required to record voice messages',
      name: 'microphone_permission_required',
      desc: '',
      args: [],
    );
  }

  /// `Recording`
  String get recording {
    return Intl.message(
      'Recording',
      name: 'recording',
      desc: '',
      args: [],
    );
  }

  /// `Albums`
  String get albums {
    return Intl.message(
      'Albums',
      name: 'albums',
      desc: '',
      args: [],
    );
  }

  /// `Add a caption...`
  String get add_caption {
    return Intl.message(
      'Add a caption...',
      name: 'add_caption',
      desc: '',
      args: [],
    );
  }

  /// `Add more documents`
  String get add_more_documents {
    return Intl.message(
      'Add more documents',
      name: 'add_more_documents',
      desc: '',
      args: [],
    );
  }

  /// `added`
  String get added {
    return Intl.message(
      'added',
      name: 'added',
      desc: '',
      args: [],
    );
  }

  /// `Failed to select additional files`
  String get failed_to_select_files {
    return Intl.message(
      'Failed to select additional files',
      name: 'failed_to_select_files',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send documents`
  String get failed_to_send_documents {
    return Intl.message(
      'Failed to send documents',
      name: 'failed_to_send_documents',
      desc: '',
      args: [],
    );
  }

  /// `Cannot open file`
  String get cannot_open_file {
    return Intl.message(
      'Cannot open file',
      name: 'cannot_open_file',
      desc: '',
      args: [],
    );
  }

  /// `Cannot open file with external app`
  String get cannot_open_file_with_external_app {
    return Intl.message(
      'Cannot open file with external app',
      name: 'cannot_open_file_with_external_app',
      desc: '',
      args: [],
    );
  }

  /// `Cannot share file`
  String get cannot_share_file {
    return Intl.message(
      'Cannot share file',
      name: 'cannot_share_file',
      desc: '',
      args: [],
    );
  }

  /// `Request Ad`
  String get requestAd {
    return Intl.message(
      'Request Ad',
      name: 'requestAd',
      desc: '',
      args: [],
    );
  }

  /// `My Ad Prices`
  String get myAdPrices {
    return Intl.message(
      'My Ad Prices',
      name: 'myAdPrices',
      desc: '',
      args: [],
    );
  }

  /// `Million`
  String get million {
    return Intl.message(
      'Million',
      name: 'million',
      desc: '',
      args: [],
    );
  }

  /// `Thousand`
  String get thousand {
    return Intl.message(
      'Thousand',
      name: 'thousand',
      desc: '',
      args: [],
    );
  }

  /// `Keywords`
  String get keywords {
    return Intl.message(
      'Keywords',
      name: 'keywords',
      desc: '',
      args: [],
    );
  }

  /// `Show All`
  String get show_all {
    return Intl.message(
      'Show All',
      name: 'show_all',
      desc: '',
      args: [],
    );
  }

  /// `View All Stores`
  String get view_all_stores_with_count {
    return Intl.message(
      'View All Stores',
      name: 'view_all_stores_with_count',
      desc: '',
      args: [],
    );
  }

  /// `Additional Sections`
  String get additional_sections {
    return Intl.message(
      'Additional Sections',
      name: 'additional_sections',
      desc: '',
      args: [],
    );
  }

  /// `Show Less`
  String get show_less {
    return Intl.message(
      'Show Less',
      name: 'show_less',
      desc: '',
      args: [],
    );
  }

  /// `Fal License`
  String get license_val {
    return Intl.message(
      'Fal License',
      name: 'license_val',
      desc: '',
      args: [],
    );
  }

  /// `100% Money Back Guarantee`
  String get money_back_guarantee {
    return Intl.message(
      '100% Money Back Guarantee',
      name: 'money_back_guarantee',
      desc: '',
      args: [],
    );
  }

  /// `Request Ad`
  String get request_ad {
    return Intl.message(
      'Request Ad',
      name: 'request_ad',
      desc: '',
      args: [],
    );
  }

  /// `Go to Payment`
  String get go_to_payment_1 {
    return Intl.message(
      'Go to Payment',
      name: 'go_to_payment_1',
      desc: '',
      args: [],
    );
  }

  /// `No clients yet`
  String get no_clients_yet {
    return Intl.message(
      'No clients yet',
      name: 'no_clients_yet',
      desc: '',
      args: [],
    );
  }

  /// `Clients will appear here`
  String get clients_will_appear_here {
    return Intl.message(
      'Clients will appear here',
      name: 'clients_will_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `My Work and Ads`
  String get my_work_and_ads {
    return Intl.message(
      'My Work and Ads',
      name: 'my_work_and_ads',
      desc: '',
      args: [],
    );
  }

  /// `Exclusive`
  String get exclusive {
    return Intl.message(
      'Exclusive',
      name: 'exclusive',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get one_contract {
    return Intl.message(
      'Contract',
      name: 'one_contract',
      desc: '',
      args: [],
    );
  }

  /// `Clients`
  String get clients {
    return Intl.message(
      'Clients',
      name: 'clients',
      desc: '',
      args: [],
    );
  }

  /// `My Ads`
  String get my_ads {
    return Intl.message(
      'My Ads',
      name: 'my_ads',
      desc: '',
      args: [],
    );
  }

  /// `No previous ads`
  String get no_previous_ads {
    return Intl.message(
      'No previous ads',
      name: 'no_previous_ads',
      desc: '',
      args: [],
    );
  }

  /// `Previous ads will appear here`
  String get previous_ads_will_appear_here {
    return Intl.message(
      'Previous ads will appear here',
      name: 'previous_ads_will_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `Follower Category`
  String get follower_category {
    return Intl.message(
      'Follower Category',
      name: 'follower_category',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get countries {
    return Intl.message(
      'Countries',
      name: 'countries',
      desc: '',
      args: [],
    );
  }

  /// `Cities`
  String get cities {
    return Intl.message(
      'Cities',
      name: 'cities',
      desc: '',
      args: [],
    );
  }

  /// `Age Group`
  String get age_group {
    return Intl.message(
      'Age Group',
      name: 'age_group',
      desc: '',
      args: [],
    );
  }

  /// `Top Gender`
  String get top_gender {
    return Intl.message(
      'Top Gender',
      name: 'top_gender',
      desc: '',
      args: [],
    );
  }

  /// `Top Age Group`
  String get top_age_group {
    return Intl.message(
      'Top Age Group',
      name: 'top_age_group',
      desc: '',
      args: [],
    );
  }

  /// `Top City`
  String get top_city {
    return Intl.message(
      'Top City',
      name: 'top_city',
      desc: '',
      args: [],
    );
  }

  /// `Show Audience Segment Details`
  String get show_audience_segment_details {
    return Intl.message(
      'Show Audience Segment Details',
      name: 'show_audience_segment_details',
      desc: '',
      args: [],
    );
  }

  /// `Hide Audience Segment Details`
  String get hide_audience_segment_details {
    return Intl.message(
      'Hide Audience Segment Details',
      name: 'hide_audience_segment_details',
      desc: '',
      args: [],
    );
  }

  /// `Unblocked successfully`
  String get unBlockedSuccessfully {
    return Intl.message(
      'Unblocked successfully',
      name: 'unBlockedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Blocked successfully`
  String get blockedSuccessfully {
    return Intl.message(
      'Blocked successfully',
      name: 'blockedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `You are blocked by this user`
  String get you_are_blocked_by_user {
    return Intl.message(
      'You are blocked by this user',
      name: 'you_are_blocked_by_user',
      desc: '',
      args: [],
    );
  }

  /// `You have blocked this user`
  String get you_have_blocked_this_user {
    return Intl.message(
      'You have blocked this user',
      name: 'you_have_blocked_this_user',
      desc: '',
      args: [],
    );
  }

  /// `Blocked {time} ago`
  String blocked_time_ago(String time) {
    return Intl.message(
      'Blocked $time ago',
      name: 'blocked_time_ago',
      desc: '',
      args: [time],
    );
  }

  /// `day`
  String get time_day {
    return Intl.message(
      'day',
      name: 'time_day',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get time_days {
    return Intl.message(
      'days',
      name: 'time_days',
      desc: '',
      args: [],
    );
  }

  /// `hour`
  String get time_hour {
    return Intl.message(
      'hour',
      name: 'time_hour',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get time_hours {
    return Intl.message(
      'hours',
      name: 'time_hours',
      desc: '',
      args: [],
    );
  }

  /// `minute`
  String get time_minute {
    return Intl.message(
      'minute',
      name: 'time_minute',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get time_minutes {
    return Intl.message(
      'minutes',
      name: 'time_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Just now`
  String get time_just_now {
    return Intl.message(
      'Just now',
      name: 'time_just_now',
      desc: '',
      args: [],
    );
  }

  /// `Accurate to {accuracy}m`
  String location_accuracy(Object accuracy) {
    return Intl.message(
      'Accurate to ${accuracy}m',
      name: 'location_accuracy',
      desc: '',
      args: [accuracy],
    );
  }

  /// `Unknown Place`
  String get unknown_place {
    return Intl.message(
      'Unknown Place',
      name: 'unknown_place',
      desc: '',
      args: [],
    );
  }

  /// `No address available`
  String get no_address_available {
    return Intl.message(
      'No address available',
      name: 'no_address_available',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied to access photos`
  String get permission_denied_photos {
    return Intl.message(
      'Permission denied to access photos',
      name: 'permission_denied_photos',
      desc: '',
      args: [],
    );
  }

  /// `No photo albums found`
  String get no_photo_albums_found {
    return Intl.message(
      'No photo albums found',
      name: 'no_photo_albums_found',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load more photos`
  String get failed_to_load_photos {
    return Intl.message(
      'Failed to load more photos',
      name: 'failed_to_load_photos',
      desc: '',
      args: [],
    );
  }

  /// `Images edited successfully`
  String get images_edited_successfully {
    return Intl.message(
      'Images edited successfully',
      name: 'images_edited_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load album photos`
  String get failed_to_load_album_photos {
    return Intl.message(
      'Failed to load album photos',
      name: 'failed_to_load_album_photos',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied to access videos`
  String get permission_denied_videos {
    return Intl.message(
      'Permission denied to access videos',
      name: 'permission_denied_videos',
      desc: '',
      args: [],
    );
  }

  /// `No video albums found`
  String get no_video_albums_found {
    return Intl.message(
      'No video albums found',
      name: 'no_video_albums_found',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load more videos`
  String get failed_to_load_videos {
    return Intl.message(
      'Failed to load more videos',
      name: 'failed_to_load_videos',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load album videos`
  String get failed_to_load_album_videos {
    return Intl.message(
      'Failed to load album videos',
      name: 'failed_to_load_album_videos',
      desc: '',
      args: [],
    );
  }

  /// `Opening {fileName}...`
  String opening_file(Object fileName) {
    return Intl.message(
      'Opening $fileName...',
      name: 'opening_file',
      desc: '',
      args: [fileName],
    );
  }

  /// `Influencer Details`
  String get influencer_details {
    return Intl.message(
      'Influencer Details',
      name: 'influencer_details',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year_age {
    return Intl.message(
      'Year',
      name: 'year_age',
      desc: '',
      args: [],
    );
  }

  /// `View All Analytics`
  String get view_all_analytics {
    return Intl.message(
      'View All Analytics',
      name: 'view_all_analytics',
      desc: '',
      args: [],
    );
  }

  /// `General Information`
  String get general_information {
    return Intl.message(
      'General Information',
      name: 'general_information',
      desc: '',
      args: [],
    );
  }

  /// `Manage My Business`
  String get manage_my_business {
    return Intl.message(
      'Manage My Business',
      name: 'manage_my_business',
      desc: '',
      args: [],
    );
  }

  /// `100% refund if the ad is not published.`
  String get full_refund_if_no_ad {
    return Intl.message(
      '100% refund if the ad is not published.',
      name: 'full_refund_if_no_ad',
      desc: '',
      args: [],
    );
  }

  /// `The influencer receives the payment after submitting the ad and getting your approval.`
  String get influencer_gets_paid_after_approval {
    return Intl.message(
      'The influencer receives the payment after submitting the ad and getting your approval.',
      name: 'influencer_gets_paid_after_approval',
      desc: '',
      args: [],
    );
  }

  /// `You can edit the ad details after placing the order.`
  String get ad_details_editable_after_order {
    return Intl.message(
      'You can edit the ad details after placing the order.',
      name: 'ad_details_editable_after_order',
      desc: '',
      args: [],
    );
  }

  /// `Pay Using`
  String get pay_using {
    return Intl.message(
      'Pay Using',
      name: 'pay_using',
      desc: '',
      args: [],
    );
  }

  /// `The influencer hasn't added their ad prices yet.`
  String get no_prices_added {
    return Intl.message(
      'The influencer hasn\'t added their ad prices yet.',
      name: 'no_prices_added',
      desc: '',
      args: [],
    );
  }

  /// `Register your interest to get notified once the influencer adds their prices.`
  String get register_interest_message {
    return Intl.message(
      'Register your interest to get notified once the influencer adds their prices.',
      name: 'register_interest_message',
      desc: '',
      args: [],
    );
  }

  /// `Register Interest in Prices`
  String get register_interest_button {
    return Intl.message(
      'Register Interest in Prices',
      name: 'register_interest_button',
      desc: '',
      args: [],
    );
  }

  /// `Your interest has been registered`
  String get interest_registered {
    return Intl.message(
      'Your interest has been registered',
      name: 'interest_registered',
      desc: '',
      args: [],
    );
  }

  /// `Add Prices`
  String get add_prices {
    return Intl.message(
      'Add Prices',
      name: 'add_prices',
      desc: '',
      args: [],
    );
  }

  /// `{name} added to campaign`
  String influencer_added_to_campaign(Object name) {
    return Intl.message(
      '$name added to campaign',
      name: 'influencer_added_to_campaign',
      desc: '',
      args: [name],
    );
  }

  /// `Analysis`
  String get analysis {
    return Intl.message(
      'Analysis',
      name: 'analysis',
      desc: '',
      args: [],
    );
  }

  /// `There are no platform added in social media`
  String get there_are_no_platform_added_in_social_media {
    return Intl.message(
      'There are no platform added in social media',
      name: 'there_are_no_platform_added_in_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Distribution of Video Likes`
  String get distribution_of_video_likes {
    return Intl.message(
      'Distribution of Video Likes',
      name: 'distribution_of_video_likes',
      desc: '',
      args: [],
    );
  }

  /// `Hashtags`
  String get hashtags {
    return Intl.message(
      'Hashtags',
      name: 'hashtags',
      desc: '',
      args: [],
    );
  }

  /// `Likes Avg. per Post`
  String get likes_avg_per_post {
    return Intl.message(
      'Likes Avg. per Post',
      name: 'likes_avg_per_post',
      desc: '',
      args: [],
    );
  }

  /// `Comments Avg. per Post`
  String get comments_avg_per_post {
    return Intl.message(
      'Comments Avg. per Post',
      name: 'comments_avg_per_post',
      desc: '',
      args: [],
    );
  }

  /// `Followers Countries`
  String get audience_countries {
    return Intl.message(
      'Followers Countries',
      name: 'audience_countries',
      desc: '',
      args: [],
    );
  }

  /// `Likes Growth`
  String get likes_growth {
    return Intl.message(
      'Likes Growth',
      name: 'likes_growth',
      desc: '',
      args: [],
    );
  }

  /// `Interaction rate`
  String get engagement_rate {
    return Intl.message(
      'Interaction rate',
      name: 'engagement_rate',
      desc: '',
      args: [],
    );
  }

  /// `Followers Type`
  String get audience_type {
    return Intl.message(
      'Followers Type',
      name: 'audience_type',
      desc: '',
      args: [],
    );
  }

  /// `General Analysis`
  String get general_analysis {
    return Intl.message(
      'General Analysis',
      name: 'general_analysis',
      desc: '',
      args: [],
    );
  }

  /// `Follower Growth`
  String get follower_growth {
    return Intl.message(
      'Follower Growth',
      name: 'follower_growth',
      desc: '',
      args: [],
    );
  }

  /// `Content creators`
  String get generators {
    return Intl.message(
      'Content creators',
      name: 'generators',
      desc: '',
      args: [],
    );
  }

  /// `Influencers`
  String get influencers {
    return Intl.message(
      'Influencers',
      name: 'influencers',
      desc: '',
      args: [],
    );
  }

  /// `Consumers`
  String get consumers {
    return Intl.message(
      'Consumers',
      name: 'consumers',
      desc: '',
      args: [],
    );
  }

  /// `Suspicious`
  String get suspicious {
    return Intl.message(
      'Suspicious',
      name: 'suspicious',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0{no followers} =1{{formattedCount} follower} other{{formattedCount} followers}}`
  String followers_count(int count, String formattedCount) {
    return Intl.plural(
      count,
      zero: 'no followers',
      one: '$formattedCount follower',
      other: '$formattedCount followers',
      name: 'followers_count',
      desc: 'Display follower count with proper pluralization',
      args: [count, formattedCount],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Post Frequency`
  String get post_frequency {
    return Intl.message(
      'Post Frequency',
      name: 'post_frequency',
      desc: '',
      args: [],
    );
  }

  /// `Avg. Views per Post`
  String get avg_views_per_post {
    return Intl.message(
      'Avg. Views per Post',
      name: 'avg_views_per_post',
      desc: '',
      args: [],
    );
  }

  /// `Good`
  String get good {
    return Intl.message(
      'Good',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get average {
    return Intl.message(
      'Average',
      name: 'average',
      desc: '',
      args: [],
    );
  }

  /// `Excellent`
  String get excellent {
    return Intl.message(
      'Excellent',
      name: 'excellent',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Poor`
  String get poor {
    return Intl.message(
      'Poor',
      name: 'poor',
      desc: '',
      args: [],
    );
  }

  /// `posts`
  String get posts {
    return Intl.message(
      'posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `Last`
  String get last {
    return Intl.message(
      'Last',
      name: 'last',
      desc: '',
      args: [],
    );
  }

  /// `Last 7 Days`
  String get last_7_days {
    return Intl.message(
      'Last 7 Days',
      name: 'last_7_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 30 Days`
  String get last_30_days {
    return Intl.message(
      'Last 30 Days',
      name: 'last_30_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 90 Days`
  String get last_90_days {
    return Intl.message(
      'Last 90 Days',
      name: 'last_90_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 180 Days`
  String get last_180_days {
    return Intl.message(
      'Last 180 Days',
      name: 'last_180_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 365 Days`
  String get last_365_days {
    return Intl.message(
      'Last 365 Days',
      name: 'last_365_days',
      desc: '',
      args: [],
    );
  }

  /// `Followers Sentiments`
  String get audience_sentiments {
    return Intl.message(
      'Followers Sentiments',
      name: 'audience_sentiments',
      desc: '',
      args: [],
    );
  }

  /// `Positive`
  String get positive {
    return Intl.message(
      'Positive',
      name: 'positive',
      desc: '',
      args: [],
    );
  }

  /// `Negative`
  String get negative {
    return Intl.message(
      'Negative',
      name: 'negative',
      desc: '',
      args: [],
    );
  }

  /// `Neutral`
  String get neutral {
    return Intl.message(
      'Neutral',
      name: 'neutral',
      desc: '',
      args: [],
    );
  }

  /// `Youtube`
  String get youtube {
    return Intl.message(
      'Youtube',
      name: 'youtube',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get twitter {
    return Intl.message(
      'Twitter',
      name: 'twitter',
      desc: '',
      args: [],
    );
  }

  /// `ER`
  String get er {
    return Intl.message(
      'ER',
      name: 'er',
      desc: '',
      args: [],
    );
  }

  /// `There are no analysis here`
  String get there_are_no_analysis_here {
    return Intl.message(
      'There are no analysis here',
      name: 'there_are_no_analysis_here',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Fair`
  String get fair {
    return Intl.message(
      'Fair',
      name: 'fair',
      desc: '',
      args: [],
    );
  }

  /// `Very Good`
  String get very_good {
    return Intl.message(
      'Very Good',
      name: 'very_good',
      desc: '',
      args: [],
    );
  }

  /// `Very Poor`
  String get very_poor {
    return Intl.message(
      'Very Poor',
      name: 'very_poor',
      desc: '',
      args: [],
    );
  }

  /// `Creator`
  String get creator {
    return Intl.message(
      'Creator',
      name: 'creator',
      desc: '',
      args: [],
    );
  }

  /// `Audience`
  String get audience {
    return Intl.message(
      'Audience',
      name: 'audience',
      desc: '',
      args: [],
    );
  }

  /// `Credibility`
  String get credibility {
    return Intl.message(
      'Credibility',
      name: 'credibility',
      desc: '',
      args: [],
    );
  }

  /// `Engagement`
  String get engagement {
    return Intl.message(
      'Engagement',
      name: 'engagement',
      desc: '',
      args: [],
    );
  }

  /// `How is CQS calculated?`
  String get how_cqs_is_calculated {
    return Intl.message(
      'How is CQS calculated?',
      name: 'how_cqs_is_calculated',
      desc: '',
      args: [],
    );
  }

  /// `How is AQS calculated?`
  String get how_aqs_is_calculated {
    return Intl.message(
      'How is AQS calculated?',
      name: 'how_aqs_is_calculated',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get attachments_request_ad {
    return Intl.message(
      'Attachments',
      name: 'attachments_request_ad',
      desc: '',
      args: [],
    );
  }

  /// `Basic Account`
  String get basic_account {
    return Intl.message(
      'Basic Account',
      name: 'basic_account',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Story Views by Gender`
  String get story_views_by_gender {
    return Intl.message(
      'Story Views by Gender',
      name: 'story_views_by_gender',
      desc: '',
      args: [],
    );
  }

  /// `Saved Story Views by Gender`
  String get saved_story_views_by_gender {
    return Intl.message(
      'Saved Story Views by Gender',
      name: 'saved_story_views_by_gender',
      desc: '',
      args: [],
    );
  }

  /// `Story Views by Country`
  String get story_views_by_country {
    return Intl.message(
      'Story Views by Country',
      name: 'story_views_by_country',
      desc: '',
      args: [],
    );
  }

  /// `Saved Story Views by Country`
  String get saved_story_views_by_country {
    return Intl.message(
      'Saved Story Views by Country',
      name: 'saved_story_views_by_country',
      desc: '',
      args: [],
    );
  }

  /// `Search and collaborate with stars`
  String get search_and_collaborate_with_stars {
    return Intl.message(
      'Search and collaborate with stars',
      name: 'search_and_collaborate_with_stars',
      desc: '',
      args: [],
    );
  }

  /// `Create your AI campaign`
  String get create_your_ai_campaign {
    return Intl.message(
      'Create your AI campaign',
      name: 'create_your_ai_campaign',
      desc: '',
      args: [],
    );
  }

  /// `AI analyzes your brand and goals to suggest the ideal influencers for your advertising campaign`
  String get ai_analyzes_brand_and_goals {
    return Intl.message(
      'AI analyzes your brand and goals to suggest the ideal influencers for your advertising campaign',
      name: 'ai_analyzes_brand_and_goals',
      desc: '',
      args: [],
    );
  }

  /// `Start your campaign now`
  String get start_your_campaign_now {
    return Intl.message(
      'Start your campaign now',
      name: 'start_your_campaign_now',
      desc: '',
      args: [],
    );
  }

  /// `The influencer has not added ad prices`
  String get influencer_has_not_added_ad_prices {
    return Intl.message(
      'The influencer has not added ad prices',
      name: 'influencer_has_not_added_ad_prices',
      desc: '',
      args: [],
    );
  }

  /// `Recent Searches`
  String get recent_searches {
    return Intl.message(
      'Recent Searches',
      name: 'recent_searches',
      desc: '',
      args: [],
    );
  }

  /// `Clear All`
  String get clear_all {
    return Intl.message(
      'Clear All',
      name: 'clear_all',
      desc: '',
      args: [],
    );
  }

  /// `Influencer Discounts`
  String get influencer_discounts {
    return Intl.message(
      'Influencer Discounts',
      name: 'influencer_discounts',
      desc: '',
      args: [],
    );
  }

  /// `Viewed Before`
  String get viewed_before {
    return Intl.message(
      'Viewed Before',
      name: 'viewed_before',
      desc: '',
      args: [],
    );
  }

  /// `Collaborated With`
  String get collaborated_with {
    return Intl.message(
      'Collaborated With',
      name: 'collaborated_with',
      desc: '',
      args: [],
    );
  }

  /// `Influencers in Riyadh`
  String get riyadh_influencers {
    return Intl.message(
      'Influencers in Riyadh',
      name: 'riyadh_influencers',
      desc: '',
      args: [],
    );
  }

  /// `Followers Count`
  String get followers_count_filter {
    return Intl.message(
      'Followers Count',
      name: 'followers_count_filter',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Price`
  String get min_price {
    return Intl.message(
      'Minimum Price',
      name: 'min_price',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Price`
  String get max_price {
    return Intl.message(
      'Maximum Price',
      name: 'max_price',
      desc: '',
      args: [],
    );
  }

  /// `Any Price`
  String get any_price {
    return Intl.message(
      'Any Price',
      name: 'any_price',
      desc: '',
      args: [],
    );
  }

  /// `Account Management Fee`
  String get account_management_fee {
    return Intl.message(
      'Account Management Fee',
      name: 'account_management_fee',
      desc: '',
      args: [],
    );
  }

  /// `Add to Campaign`
  String get add_to_campaign {
    return Intl.message(
      'Add to Campaign',
      name: 'add_to_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Select Orders`
  String get select_orders {
    return Intl.message(
      'Select Orders',
      name: 'select_orders',
      desc: '',
      args: [],
    );
  }

  /// `Select orders to add to campaign`
  String get select_orders_to_add {
    return Intl.message(
      'Select orders to add to campaign',
      name: 'select_orders_to_add',
      desc: '',
      args: [],
    );
  }

  /// `No orders available`
  String get no_orders_available {
    return Intl.message(
      'No orders available',
      name: 'no_orders_available',
      desc: '',
      args: [],
    );
  }

  /// `Save Selected`
  String get save_selected {
    return Intl.message(
      'Save Selected',
      name: 'save_selected',
      desc: '',
      args: [],
    );
  }

  /// `Add to New Campaign`
  String get add_to_new_campaign {
    return Intl.message(
      'Add to New Campaign',
      name: 'add_to_new_campaign',
      desc: '',
      args: [],
    );
  }

  /// `A new campaign will be created and the influencer will be added to it`
  String get new_campaign_will_be_created {
    return Intl.message(
      'A new campaign will be created and the influencer will be added to it',
      name: 'new_campaign_will_be_created',
      desc: '',
      args: [],
    );
  }

  /// `Add to other Campaign`
  String get add_to_other_campaign {
    return Intl.message(
      'Add to other Campaign',
      name: 'add_to_other_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Display`
  String get display {
    return Intl.message(
      'Display',
      name: 'display',
      desc: '',
      args: [],
    );
  }

  /// `Influencer is added to `
  String get influencer_is_added_to {
    return Intl.message(
      'Influencer is added to ',
      name: 'influencer_is_added_to',
      desc: '',
      args: [],
    );
  }

  /// `The influencer within this campaign cannot be added or removed`
  String get campaign_already_participated {
    return Intl.message(
      'The influencer within this campaign cannot be added or removed',
      name: 'campaign_already_participated',
      desc: '',
      args: [],
    );
  }

  /// `Complete Order`
  String get complete_order {
    return Intl.message(
      'Complete Order',
      name: 'complete_order',
      desc: '',
      args: [],
    );
  }

  /// `Total amount for drafts influencers`
  String get total_amount_for_drafts_influencers {
    return Intl.message(
      'Total amount for drafts influencers',
      name: 'total_amount_for_drafts_influencers',
      desc: '',
      args: [],
    );
  }

  /// `The total amount is shown when adding services for any influencer.`
  String get amount_will_calculated_when_adding_services {
    return Intl.message(
      'The total amount is shown when adding services for any influencer.',
      name: 'amount_will_calculated_when_adding_services',
      desc: '',
      args: [],
    );
  }

  /// `Draft stars added to campaigns successfully`
  String get draft_stars_added_successfully {
    return Intl.message(
      'Draft stars added to campaigns successfully',
      name: 'draft_stars_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Campaign ID not found`
  String get campaign_id_not_found {
    return Intl.message(
      'Campaign ID not found',
      name: 'campaign_id_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Star ID not found`
  String get star_id_not_found {
    return Intl.message(
      'Star ID not found',
      name: 'star_id_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Asset deleted successfully`
  String get asset_deleted_successfully {
    return Intl.message(
      'Asset deleted successfully',
      name: 'asset_deleted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete asset`
  String get failed_to_delete_asset {
    return Intl.message(
      'Failed to delete asset',
      name: 'failed_to_delete_asset',
      desc: '',
      args: [],
    );
  }

  /// `Error loading star details`
  String get error_loading_star_details {
    return Intl.message(
      'Error loading star details',
      name: 'error_loading_star_details',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Followers: High to Low`
  String get followers_high_to_low {
    return Intl.message(
      'Followers: High to Low',
      name: 'followers_high_to_low',
      desc: '',
      args: [],
    );
  }

  /// `Followers: Low to High`
  String get followers_low_to_high {
    return Intl.message(
      'Followers: Low to High',
      name: 'followers_low_to_high',
      desc: '',
      args: [],
    );
  }

  /// `Number of followers`
  String get number_of_followers {
    return Intl.message(
      'Number of followers',
      name: 'number_of_followers',
      desc: '',
      args: [],
    );
  }

  /// `Save Draft`
  String get save_draft {
    return Intl.message(
      'Save Draft',
      name: 'save_draft',
      desc: '',
      args: [],
    );
  }

  /// `Add to Campaign`
  String get addition_to_campaign {
    return Intl.message(
      'Add to Campaign',
      name: 'addition_to_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Delete Draft Influencer`
  String get delete_draft_influencer_title {
    return Intl.message(
      'Delete Draft Influencer',
      name: 'delete_draft_influencer_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this draft influencer?`
  String get delete_draft_influencer_description {
    return Intl.message(
      'Are you sure you want to delete this draft influencer?',
      name: 'delete_draft_influencer_description',
      desc: '',
      args: [],
    );
  }

  /// `Not Determined`
  String get not_determined {
    return Intl.message(
      'Not Determined',
      name: 'not_determined',
      desc: '',
      args: [],
    );
  }

  /// `{name} has been removed from draft`
  String influencer_removed_from_draft(Object name) {
    return Intl.message(
      '$name has been removed from draft',
      name: 'influencer_removed_from_draft',
      desc: '',
      args: [name],
    );
  }

  /// ``
  String get removed_from_draft_prefix {
    return Intl.message(
      '',
      name: 'removed_from_draft_prefix',
      desc: '',
      args: [],
    );
  }

  /// `has been removed from draft`
  String get removed_from_draft_suffix {
    return Intl.message(
      'has been removed from draft',
      name: 'removed_from_draft_suffix',
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

  /// `letter`
  String get letter {
    return Intl.message(
      'letter',
      name: 'letter',
      desc: '',
      args: [],
    );
  }

  /// `Removed List restored successfully`
  String get action_undo_successfully {
    return Intl.message(
      'Removed List restored successfully',
      name: 'action_undo_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Changes saved successfully`
  String get information_saved {
    return Intl.message(
      'Changes saved successfully',
      name: 'information_saved',
      desc: '',
      args: [],
    );
  }

  /// `Unsaved Changes`
  String get unsaved_changes {
    return Intl.message(
      'Unsaved Changes',
      name: 'unsaved_changes',
      desc: '',
      args: [],
    );
  }

  /// `You have unsaved changes. Are you sure you want to leave without saving?`
  String get unsaved_changes_message {
    return Intl.message(
      'You have unsaved changes. Are you sure you want to leave without saving?',
      name: 'unsaved_changes_message',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to ignore the changes?`
  String get unsaved_changes_title {
    return Intl.message(
      'Do you want to ignore the changes?',
      name: 'unsaved_changes_title',
      desc: '',
      args: [],
    );
  }

  /// `If you go back now, you will lose your edits.`
  String get unsaved_changes_subtitle {
    return Intl.message(
      'If you go back now, you will lose your edits.',
      name: 'unsaved_changes_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Custom Offer`
  String get custom_offer {
    return Intl.message(
      'Custom Offer',
      name: 'custom_offer',
      desc: '',
      args: [],
    );
  }

  /// `Select Services`
  String get select_services {
    return Intl.message(
      'Select Services',
      name: 'select_services',
      desc: '',
      args: [],
    );
  }

  /// `Followers Category Details`
  String get followers_category_details {
    return Intl.message(
      'Followers Category Details',
      name: 'followers_category_details',
      desc: '',
      args: [],
    );
  }

  /// `Service Name`
  String get service_name {
    return Intl.message(
      'Service Name',
      name: 'service_name',
      desc: '',
      args: [],
    );
  }

  /// `Other Custom Service`
  String get custom_service_other {
    return Intl.message(
      'Other Custom Service',
      name: 'custom_service_other',
      desc: '',
      args: [],
    );
  }

  /// `A custom offer already exists for this service`
  String get custom_offer_exists {
    return Intl.message(
      'A custom offer already exists for this service',
      name: 'custom_offer_exists',
      desc: '',
      args: [],
    );
  }

  /// `A ready-made service already exists for this service`
  String get ready_service_exists {
    return Intl.message(
      'A ready-made service already exists for this service',
      name: 'ready_service_exists',
      desc: '',
      args: [],
    );
  }

  /// `Details for Influencer`
  String get details_for_influencer {
    return Intl.message(
      'Details for Influencer',
      name: 'details_for_influencer',
      desc: '',
      args: [],
    );
  }

  /// `Order Delivery Date`
  String get order_delivery_date {
    return Intl.message(
      'Order Delivery Date',
      name: 'order_delivery_date',
      desc: '',
      args: [],
    );
  }

  /// `Short Description`
  String get short_description {
    return Intl.message(
      'Short Description',
      name: 'short_description',
      desc: '',
      args: [],
    );
  }

  /// `Write advertisement details for the influencer here`
  String get enter_ad_details {
    return Intl.message(
      'Write advertisement details for the influencer here',
      name: 'enter_ad_details',
      desc: '',
      args: [],
    );
  }

  /// `Send Custom Offer`
  String get send_custom_offer {
    return Intl.message(
      'Send Custom Offer',
      name: 'send_custom_offer',
      desc: '',
      args: [],
    );
  }

  /// `Add Custom Offer`
  String get add_custom_offer {
    return Intl.message(
      'Add Custom Offer',
      name: 'add_custom_offer',
      desc: '',
      args: [],
    );
  }

  /// `Service name is required`
  String get service_name_required {
    return Intl.message(
      'Service name is required',
      name: 'service_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Price is required`
  String get price_required {
    return Intl.message(
      'Price is required',
      name: 'price_required',
      desc: '',
      args: [],
    );
  }

  /// `Service name is duplicated`
  String get service_name_duplicate {
    return Intl.message(
      'Service name is duplicated',
      name: 'service_name_duplicate',
      desc: '',
      args: [],
    );
  }

  /// `15-20 years`
  String get age_15_20 {
    return Intl.message(
      '15-20 years',
      name: 'age_15_20',
      desc: '',
      args: [],
    );
  }

  /// `21-25 years`
  String get age_21_25 {
    return Intl.message(
      '21-25 years',
      name: 'age_21_25',
      desc: '',
      args: [],
    );
  }

  /// `26-35 years`
  String get age_26_35 {
    return Intl.message(
      '26-35 years',
      name: 'age_26_35',
      desc: '',
      args: [],
    );
  }

  /// `36-45 years`
  String get age_36_45 {
    return Intl.message(
      '36-45 years',
      name: 'age_36_45',
      desc: '',
      args: [],
    );
  }

  /// `46 years and above`
  String get age_46_plus {
    return Intl.message(
      '46 years and above',
      name: 'age_46_plus',
      desc: '',
      args: [],
    );
  }

  /// `Nano (0 - 1,000)`
  String get nano {
    return Intl.message(
      'Nano (0 - 1,000)',
      name: 'nano',
      desc: '',
      args: [],
    );
  }

  /// `Micro (1,000 - 100k)`
  String get micro {
    return Intl.message(
      'Micro (1,000 - 100k)',
      name: 'micro',
      desc: '',
      args: [],
    );
  }

  /// `Macro (100k - 1M)`
  String get macro {
    return Intl.message(
      'Macro (100k - 1M)',
      name: 'macro',
      desc: '',
      args: [],
    );
  }

  /// `+1M`
  String get plus_1m {
    return Intl.message(
      '+1M',
      name: 'plus_1m',
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

  /// `Add Extra Service`
  String get add_extra_service {
    return Intl.message(
      'Add Extra Service',
      name: 'add_extra_service',
      desc: '',
      args: [],
    );
  }

  /// `You can send a custom offer to the influencer.`
  String get you_can_send_offer {
    return Intl.message(
      'You can send a custom offer to the influencer.',
      name: 'you_can_send_offer',
      desc: '',
      args: [],
    );
  }

  /// `Share Campaign`
  String get share_campaign {
    return Intl.message(
      'Share Campaign',
      name: 'share_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `This score represents how suitable this influencer is for you, based on criteria related to their audience and account performance.`
  String get compatibility_description {
    return Intl.message(
      'This score represents how suitable this influencer is for you, based on criteria related to their audience and account performance.',
      name: 'compatibility_description',
      desc: '',
      args: [],
    );
  }

  /// `How this score is calculated`
  String get how_score_calculated {
    return Intl.message(
      'How this score is calculated',
      name: 'how_score_calculated',
      desc: '',
      args: [],
    );
  }

  /// `Compatibility Score`
  String get compatibility_score {
    return Intl.message(
      'Compatibility Score',
      name: 'compatibility_score',
      desc: '',
      args: [],
    );
  }

  /// `Compatibility Score Details with this Influencer`
  String get compatibility_score_details {
    return Intl.message(
      'Compatibility Score Details with this Influencer',
      name: 'compatibility_score_details',
      desc: '',
      args: [],
    );
  }

  /// `This score represents how well this influencer matches you, based on a set of criteria related to their audience and account performance.`
  String get compatibility_score_description {
    return Intl.message(
      'This score represents how well this influencer matches you, based on a set of criteria related to their audience and account performance.',
      name: 'compatibility_score_description',
      desc: '',
      args: [],
    );
  }

  /// `How to Calculate this Score`
  String get how_to_calculate_score {
    return Intl.message(
      'How to Calculate this Score',
      name: 'how_to_calculate_score',
      desc: '',
      args: [],
    );
  }

  /// `Domain Match`
  String get domain_match {
    return Intl.message(
      'Domain Match',
      name: 'domain_match',
      desc: '',
      args: [],
    );
  }

  /// `Audience Quality`
  String get audience_quality {
    return Intl.message(
      'Audience Quality',
      name: 'audience_quality',
      desc: '',
      args: [],
    );
  }

  /// `Previous Clients`
  String get previous_clients {
    return Intl.message(
      'Previous Clients',
      name: 'previous_clients',
      desc: '',
      args: [],
    );
  }

  /// `Audience Authenticity`
  String get audience_authenticity {
    return Intl.message(
      'Audience Authenticity',
      name: 'audience_authenticity',
      desc: '',
      args: [],
    );
  }

  /// `Audience Reachability`
  String get audience_reachability {
    return Intl.message(
      'Audience Reachability',
      name: 'audience_reachability',
      desc: '',
      args: [],
    );
  }

  /// `Audience Quality Score (AQS) is a composite metric from 1 to 100 that defines the overall quality of an influencer’s audience.\nIt depends on several factors such as: engagement rate, audience quality, follower/following growth, and interaction credibility.\nThe higher the AQS value, the better the quality.`
  String get audience_authenticity_description {
    return Intl.message(
      'Audience Quality Score (AQS) is a composite metric from 1 to 100 that defines the overall quality of an influencer’s audience.\nIt depends on several factors such as: engagement rate, audience quality, follower/following growth, and interaction credibility.\nThe higher the AQS value, the better the quality.',
      name: 'audience_authenticity_description',
      desc: '',
      args: [],
    );
  }

  /// `Real people`
  String get real_people {
    return Intl.message(
      'Real people',
      name: 'real_people',
      desc: '',
      args: [],
    );
  }

  /// `Mass following`
  String get mass_following {
    return Intl.message(
      'Mass following',
      name: 'mass_following',
      desc: '',
      args: [],
    );
  }

  /// `Suspicious accounts`
  String get suspicious_accounts {
    return Intl.message(
      'Suspicious accounts',
      name: 'suspicious_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Measures how well the influencer’s domain matches the campaign’s categories. The higher the match, the more suitable the influencer is for the campaign.`
  String get domain_match_description {
    return Intl.message(
      'Measures how well the influencer’s domain matches the campaign’s categories. The higher the match, the more suitable the influencer is for the campaign.',
      name: 'domain_match_description',
      desc: '',
      args: [],
    );
  }

  /// `Reflects the level of audience interaction with the influencer’s content on social platforms (likes, comments, shares). This helps measure how impactful the content is on followers.`
  String get engagement_rate_description {
    return Intl.message(
      'Reflects the level of audience interaction with the influencer’s content on social platforms (likes, comments, shares). This helps measure how impactful the content is on followers.',
      name: 'engagement_rate_description',
      desc: '',
      args: [],
    );
  }

  /// `Previous work`
  String get previous_work {
    return Intl.message(
      'Previous work',
      name: 'previous_work',
      desc: '',
      args: [],
    );
  }

  /// `Evaluates the influencer’s past collaborations with brands in the same campaign domain.`
  String get previous_work_description {
    return Intl.message(
      'Evaluates the influencer’s past collaborations with brands in the same campaign domain.',
      name: 'previous_work_description',
      desc: '',
      args: [],
    );
  }

  /// `Audience credibility`
  String get audience_credibility {
    return Intl.message(
      'Audience credibility',
      name: 'audience_credibility',
      desc: '',
      args: [],
    );
  }

  /// `Shows the percentage of real audience, based on the ratio of real people and influencers in the account. The higher the ratio, the more credible the audience. If a large part of the audience consists of mass-following or suspicious accounts, the audience is considered unreliable.`
  String get audience_credibility_description {
    return Intl.message(
      'Shows the percentage of real audience, based on the ratio of real people and influencers in the account. The higher the ratio, the more credible the audience. If a large part of the audience consists of mass-following or suspicious accounts, the audience is considered unreliable.',
      name: 'audience_credibility_description',
      desc: '',
      args: [],
    );
  }

  /// `Audience Reachability`
  String get audience_reachability1 {
    return Intl.message(
      'Audience Reachability',
      name: 'audience_reachability1',
      desc: '',
      args: [],
    );
  }

  /// `Users following fewer than 1500 accounts are considered reachable and often see most of the influencer’s posts. Those following many accounts are less likely to see the influencer’s content among thousands of posts, making reachability lower.`
  String get audience_reachability_description {
    return Intl.message(
      'Users following fewer than 1500 accounts are considered reachable and often see most of the influencer’s posts. Those following many accounts are less likely to see the influencer’s content among thousands of posts, making reachability lower.',
      name: 'audience_reachability_description',
      desc: '',
      args: [],
    );
  }

  /// `Influencers`
  String get influencers1 {
    return Intl.message(
      'Influencers',
      name: 'influencers1',
      desc: '',
      args: [],
    );
  }

  /// `Accounts with more than 5000 followers.`
  String get influencers_description {
    return Intl.message(
      'Accounts with more than 5000 followers.',
      name: 'influencers_description',
      desc: '',
      args: [],
    );
  }

  /// `Mass following accounts`
  String get mass_following1 {
    return Intl.message(
      'Mass following accounts',
      name: 'mass_following1',
      desc: '',
      args: [],
    );
  }

  /// `Accounts that follow more than 1500 profiles.\nPeople with a high number of followings are less likely to see the influencer’s posts, as platforms prioritize showing posts from accounts they engage with more.\nSome of these accounts may also use automated methods like follow/unfollow to force the influencer to follow them back.`
  String get mass_following_description {
    return Intl.message(
      'Accounts that follow more than 1500 profiles.\nPeople with a high number of followings are less likely to see the influencer’s posts, as platforms prioritize showing posts from accounts they engage with more.\nSome of these accounts may also use automated methods like follow/unfollow to force the influencer to follow them back.',
      name: 'mass_following_description',
      desc: '',
      args: [],
    );
  }

  /// `Suspicious accounts`
  String get suspicious_accounts1 {
    return Intl.message(
      'Suspicious accounts',
      name: 'suspicious_accounts1',
      desc: '',
      args: [],
    );
  }

  /// `Bots or individuals using automated tools to increase likes and comments or to buy followers are considered suspicious accounts.\nThey are detected by a machine learning model trained on over 53 patterns, capable of identifying 95% of known fraudulent activities.`
  String get suspicious_accounts_description {
    return Intl.message(
      'Bots or individuals using automated tools to increase likes and comments or to buy followers are considered suspicious accounts.\nThey are detected by a machine learning model trained on over 53 patterns, capable of identifying 95% of known fraudulent activities.',
      name: 'suspicious_accounts_description',
      desc: '',
      args: [],
    );
  }

  /// `Audience Quality Score (AQS)`
  String get audience_quality_score {
    return Intl.message(
      'Audience Quality Score (AQS)',
      name: 'audience_quality_score',
      desc: '',
      args: [],
    );
  }

  /// `A composite score from 1 to 100 that determines the overall quality of an influencer's audience. The higher the AQS, the better the quality.`
  String get definition {
    return Intl.message(
      'A composite score from 1 to 100 that determines the overall quality of an influencer\'s audience. The higher the AQS, the better the quality.',
      name: 'definition',
      desc: '',
      args: [],
    );
  }

  /// `Interaction Rate`
  String get interaction_rate {
    return Intl.message(
      'Interaction Rate',
      name: 'interaction_rate',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of followers who engage with the influencer's content.`
  String get interaction_rate_desc {
    return Intl.message(
      'The percentage of followers who engage with the influencer\'s content.',
      name: 'interaction_rate_desc',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of real people and influencers among the influencer’s followers.`
  String get audience_quality_desc {
    return Intl.message(
      'The percentage of real people and influencers among the influencer’s followers.',
      name: 'audience_quality_desc',
      desc: '',
      args: [],
    );
  }

  /// `Followers & Following Growth`
  String get growth_patterns {
    return Intl.message(
      'Followers & Following Growth',
      name: 'growth_patterns',
      desc: '',
      args: [],
    );
  }

  /// `The growth patterns of followers and the accounts the influencer follows.`
  String get growth_patterns_desc {
    return Intl.message(
      'The growth patterns of followers and the accounts the influencer follows.',
      name: 'growth_patterns_desc',
      desc: '',
      args: [],
    );
  }

  /// `Interaction Authenticity`
  String get interaction_authenticity {
    return Intl.message(
      'Interaction Authenticity',
      name: 'interaction_authenticity',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of likes and comments from real people, excluding engagement from pods or giveaway contests.`
  String get interaction_authenticity_desc {
    return Intl.message(
      'The percentage of likes and comments from real people, excluding engagement from pods or giveaway contests.',
      name: 'interaction_authenticity_desc',
      desc: '',
      args: [],
    );
  }

  /// `Audience Quality Score Criteria`
  String get audience_quality_score_criteria_title {
    return Intl.message(
      'Audience Quality Score Criteria',
      name: 'audience_quality_score_criteria_title',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of followers who interact with the influencer’s content.`
  String get engagement_rate_description1 {
    return Intl.message(
      'The percentage of followers who interact with the influencer’s content.',
      name: 'engagement_rate_description1',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of real people and influencers among the influencer’s followers.`
  String get audience_quality_description {
    return Intl.message(
      'The percentage of real people and influencers among the influencer’s followers.',
      name: 'audience_quality_description',
      desc: '',
      args: [],
    );
  }

  /// `Followers & Following Growth`
  String get followers_growth {
    return Intl.message(
      'Followers & Following Growth',
      name: 'followers_growth',
      desc: '',
      args: [],
    );
  }

  /// `Patterns of growth in followers and the accounts the influencer follows.`
  String get followers_growth_description {
    return Intl.message(
      'Patterns of growth in followers and the accounts the influencer follows.',
      name: 'followers_growth_description',
      desc: '',
      args: [],
    );
  }

  /// `Interaction Credibility`
  String get interaction_credibility {
    return Intl.message(
      'Interaction Credibility',
      name: 'interaction_credibility',
      desc: '',
      args: [],
    );
  }

  /// `The percentage of recent likes and comments from real people, without inflation from engagement pods or giveaway contests.`
  String get interaction_credibility_description {
    return Intl.message(
      'The percentage of recent likes and comments from real people, without inflation from engagement pods or giveaway contests.',
      name: 'interaction_credibility_description',
      desc: '',
      args: [],
    );
  }

  /// `Audience Trustworthiness`
  String get audience_trustworthiness {
    return Intl.message(
      'Audience Trustworthiness',
      name: 'audience_trustworthiness',
      desc: '',
      args: [],
    );
  }

  /// `Audience trustworthiness means having real people and influencers in the account, while excluding suspicious accounts and mass-follow accounts. It indicates the percentage of genuine audience and depends on the ratio of real people and influencers. The higher their number, the greater the trustworthiness of the audience. If a large portion of the audience consists of suspicious or mass-follow accounts, the audience is considered unreliable.`
  String get audience_trustworthiness_description {
    return Intl.message(
      'Audience trustworthiness means having real people and influencers in the account, while excluding suspicious accounts and mass-follow accounts. It indicates the percentage of genuine audience and depends on the ratio of real people and influencers. The higher their number, the greater the trustworthiness of the audience. If a large portion of the audience consists of suspicious or mass-follow accounts, the audience is considered unreliable.',
      name: 'audience_trustworthiness_description',
      desc: '',
      args: [],
    );
  }

  /// `Low Match`
  String get low_match {
    return Intl.message(
      'Low Match',
      name: 'low_match',
      desc: '',
      args: [],
    );
  }

  /// `Weak Match`
  String get weak_match {
    return Intl.message(
      'Weak Match',
      name: 'weak_match',
      desc: '',
      args: [],
    );
  }

  /// `Poor Match`
  String get poor_match {
    return Intl.message(
      'Poor Match',
      name: 'poor_match',
      desc: '',
      args: [],
    );
  }

  /// `Good Match`
  String get good_match {
    return Intl.message(
      'Good Match',
      name: 'good_match',
      desc: '',
      args: [],
    );
  }

  /// `Very Good Match`
  String get very_good_match {
    return Intl.message(
      'Very Good Match',
      name: 'very_good_match',
      desc: '',
      args: [],
    );
  }

  /// `Excellent Match`
  String get excellent_match {
    return Intl.message(
      'Excellent Match',
      name: 'excellent_match',
      desc: '',
      args: [],
    );
  }

  /// `Create List`
  String get favorites_create_list_title {
    return Intl.message(
      'Create List',
      name: 'favorites_create_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Create your first list to group your favorite influencers`
  String get favorites_create_first_list_subtitle {
    return Intl.message(
      'Create your first list to group your favorite influencers',
      name: 'favorites_create_first_list_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Create new list`
  String get favorites_create_new_list_button {
    return Intl.message(
      'Create new list',
      name: 'favorites_create_new_list_button',
      desc: '',
      args: [],
    );
  }

  /// `Maximum 30 characters`
  String get favorites_max_30_chars {
    return Intl.message(
      'Maximum 30 characters',
      name: 'favorites_max_30_chars',
      desc: '',
      args: [],
    );
  }

  /// `30/`
  String get favorites_char_count_prefix {
    return Intl.message(
      '30/',
      name: 'favorites_char_count_prefix',
      desc: '',
      args: [],
    );
  }

  /// ` chars`
  String get favorites_char_count_suffix {
    return Intl.message(
      ' chars',
      name: 'favorites_char_count_suffix',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Select the lists you want to add the influencer to`
  String get favorites_select_lists_to_add_influencer {
    return Intl.message(
      'Select the lists you want to add the influencer to',
      name: 'favorites_select_lists_to_add_influencer',
      desc: '',
      args: [],
    );
  }

  /// `Activate a unified price (package)`
  String get active_bundle_services {
    return Intl.message(
      'Activate a unified price (package)',
      name: 'active_bundle_services',
      desc: '',
      args: [],
    );
  }

  /// `Price will display to the customer as one price for all platforms.`
  String get price_will_be_unified_when_sending_offer {
    return Intl.message(
      'Price will display to the customer as one price for all platforms.',
      name: 'price_will_be_unified_when_sending_offer',
      desc: '',
      args: [],
    );
  }

  /// `Unified Price`
  String get unified_price {
    return Intl.message(
      'Unified Price',
      name: 'unified_price',
      desc: '',
      args: [],
    );
  }

  /// `Client Notes`
  String get notes_for_client {
    return Intl.message(
      'Client Notes',
      name: 'notes_for_client',
      desc: '',
      args: [],
    );
  }

  /// `Add you notes here...`
  String get add_notes_for_client {
    return Intl.message(
      'Add you notes here...',
      name: 'add_notes_for_client',
      desc: '',
      args: [],
    );
  }

  /// `The unified price is enabled; you cannot choose services.`
  String get cannot_change_quantity_in_bundle_mode {
    return Intl.message(
      'The unified price is enabled; you cannot choose services.',
      name: 'cannot_change_quantity_in_bundle_mode',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Influencer removed from `
  String get toast_influencer_removed_from {
    return Intl.message(
      'Influencer removed from ',
      name: 'toast_influencer_removed_from',
      desc: '',
      args: [],
    );
  }

  /// `Select the lists you want to add or remove the influencer from`
  String get manage_lists_subtitle {
    return Intl.message(
      'Select the lists you want to add or remove the influencer from',
      name: 'manage_lists_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `When you add an influencer to your favorites, they will appear here.`
  String get when_add_influencer_it_will_appear_here {
    return Intl.message(
      'When you add an influencer to your favorites, they will appear here.',
      name: 'when_add_influencer_it_will_appear_here',
      desc: '',
      args: [],
    );
  }

  /// `Influencers in `
  String get influencers_in {
    return Intl.message(
      'Influencers in ',
      name: 'influencers_in',
      desc: '',
      args: [],
    );
  }

  /// `Login to view your favorites`
  String get login_to_view_favorites {
    return Intl.message(
      'Login to view your favorites',
      name: 'login_to_view_favorites',
      desc: '',
      args: [],
    );
  }

  /// `You can add influencers to favorites, view or manage them after logging in.`
  String get login_to_view_favorites_subtitle {
    return Intl.message(
      'You can add influencers to favorites, view or manage them after logging in.',
      name: 'login_to_view_favorites_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Login to access all influencers`
  String get login_to_view_all_influencers {
    return Intl.message(
      'Login to access all influencers',
      name: 'login_to_view_all_influencers',
      desc: '',
      args: [],
    );
  }

  /// `To view all influencers and choose the most suitable for your advertising campaigns, please log in to your account.`
  String get login_to_view_all_influencers_subtitle {
    return Intl.message(
      'To view all influencers and choose the most suitable for your advertising campaigns, please log in to your account.',
      name: 'login_to_view_all_influencers_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Login to access influencer services`
  String get login_to_view_influencers_services {
    return Intl.message(
      'Login to access influencer services',
      name: 'login_to_view_influencers_services',
      desc: '',
      args: [],
    );
  }

  /// `To view all available influencer services and choose the most suitable for your advertising campaigns, please log in to your account.`
  String get login_to_view_influencers_services_subtitle {
    return Intl.message(
      'To view all available influencer services and choose the most suitable for your advertising campaigns, please log in to your account.',
      name: 'login_to_view_influencers_services_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `No platforms available`
  String get no_platforms {
    return Intl.message(
      'No platforms available',
      name: 'no_platforms',
      desc: '',
      args: [],
    );
  }

  /// `News Accounts`
  String get news_accounts {
    return Intl.message(
      'News Accounts',
      name: 'news_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Technology & Devices`
  String get tech {
    return Intl.message(
      'Technology & Devices',
      name: 'tech',
      desc: '',
      args: [],
    );
  }

  /// `0% Service Fee`
  String get zero_service_fee {
    return Intl.message(
      '0% Service Fee',
      name: 'zero_service_fee',
      desc: '',
      args: [],
    );
  }

  /// `Save your full budget — your campaigns in the first month have no 5% service fee.`
  String get first_month_offer {
    return Intl.message(
      'Save your full budget — your campaigns in the first month have no 5% service fee.',
      name: 'first_month_offer',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Campaign Now`
  String get start_campaign_now {
    return Intl.message(
      'Start Your Campaign Now',
      name: 'start_campaign_now',
      desc: '',
      args: [],
    );
  }

  /// `Days Remaining`
  String get days_remaining {
    return Intl.message(
      'Days Remaining',
      name: 'days_remaining',
      desc: '',
      args: [],
    );
  }

  /// `Remaining`
  String get remaining {
    return Intl.message(
      'Remaining',
      name: 'remaining',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all_tab {
    return Intl.message(
      'All',
      name: 'all_tab',
      desc: '',
      args: [],
    );
  }

  /// `No recent searches`
  String get no_recent_searches {
    return Intl.message(
      'No recent searches',
      name: 'no_recent_searches',
      desc: '',
      args: [],
    );
  }

  /// `No influencers match the current filter.`
  String get no_filter_data_title {
    return Intl.message(
      'No influencers match the current filter.',
      name: 'no_filter_data_title',
      desc: '',
      args: [],
    );
  }

  /// `Try adjusting your filter options to get more results.`
  String get no_filter_data_subtitle {
    return Intl.message(
      'Try adjusting your filter options to get more results.',
      name: 'no_filter_data_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Platform`
  String get platform {
    return Intl.message(
      'Platform',
      name: 'platform',
      desc: '',
      args: [],
    );
  }

  /// `Mawthooq exist`
  String get mosoque_exist {
    return Intl.message(
      'Mawthooq exist',
      name: 'mosoque_exist',
      desc: '',
      args: [],
    );
  }

  /// `Show Results`
  String get show_results {
    return Intl.message(
      'Show Results',
      name: 'show_results',
      desc: '',
      args: [],
    );
  }

  /// `Any Number`
  String get any_number {
    return Intl.message(
      'Any Number',
      name: 'any_number',
      desc: '',
      args: [],
    );
  }

  /// `General Accounts`
  String get general_accounts {
    return Intl.message(
      'General Accounts',
      name: 'general_accounts',
      desc: '',
      args: [],
    );
  }

  /// `Start your first Favorites list`
  String get start_your_first_favorite {
    return Intl.message(
      'Start your first Favorites list',
      name: 'start_your_first_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Gather your favorite influencers into your own lists.`
  String get start_your_first_favorite_subtitle {
    return Intl.message(
      'Gather your favorite influencers into your own lists.',
      name: 'start_your_first_favorite_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please select a country first`
  String get please_select_country_first {
    return Intl.message(
      'Please select a country first',
      name: 'please_select_country_first',
      desc: '',
      args: [],
    );
  }

  /// `We've Moved to Nojom App!`
  String get migrate_to_nogom_title {
    return Intl.message(
      'We\'ve Moved to Nojom App!',
      name: 'migrate_to_nogom_title',
      desc: '',
      args: [],
    );
  }

  /// `The Brand app has been merged with the Nojom app for a unified experience that brings companies and influencers together in one place.\nYou can continue using your current account and all your data through the Nojom app.`
  String get migrate_to_nogom_description {
    return Intl.message(
      'The Brand app has been merged with the Nojom app for a unified experience that brings companies and influencers together in one place.\nYou can continue using your current account and all your data through the Nojom app.',
      name: 'migrate_to_nogom_description',
      desc: '',
      args: [],
    );
  }

  /// `Go to Nojom App`
  String get migrate_to_nogom_button {
    return Intl.message(
      'Go to Nojom App',
      name: 'migrate_to_nogom_button',
      desc: '',
      args: [],
    );
  }

  /// `Your data is safe, continue with the same account in Nojom app.`
  String get migrate_to_nogom_subtitle {
    return Intl.message(
      'Your data is safe, continue with the same account in Nojom app.',
      name: 'migrate_to_nogom_subtitle',
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
