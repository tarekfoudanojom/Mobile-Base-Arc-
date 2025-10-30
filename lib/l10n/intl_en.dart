// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'intl.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get access_denied => 'Access Denied';

  @override
  String get add_new_item => 'Add new item';

  @override
  String get app_cancel => 'Cancel';

  @override
  String get app_confirm => 'Confirm';

  @override
  String get are_you_sure => 'Are you sure?';

  @override
  String get by_clicking_continue_you_agree_to =>
      'By clicking continue, you agree to';

  @override
  String get camera => 'Camera';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirmValidation => 'Please enter the password identical';

  @override
  String get confirm_delete => 'Confirm Delete';

  @override
  String get confirm_delete_txt => 'Are you sure you want to delete this item?';

  @override
  String get confirm_save_txt => 'Do you want to save your changes?';

  @override
  String get continue_editing => 'Continue Editing';

  @override
  String get discard => 'Discard';

  @override
  String get discard_changes => 'Discard Changes';

  @override
  String get done => 'Done';

  @override
  String get error_BadRequest_Error => 'BAD REQUEST';

  @override
  String get error_NotFound_Error => 'No result found';

  @override
  String get error_Timeout_Error => 'TIME OUT';

  @override
  String get error_Unauthorized_Error => 'UNAUTHORIZED';

  @override
  String get error_cancel_token => 'The connection is interrupted';

  @override
  String get error_conflict => 'Conflict error';

  @override
  String get error_connection => 'An error occurred during the connection';

  @override
  String get error_forbidden_error => 'YOU DO NOT HAVE PRIVILEGE';

  @override
  String get explore => 'Explore';

  @override
  String get file => 'File';

  @override
  String get fillField => 'Please enter this field';

  @override
  String get home => 'Home';

  @override
  String get keep_going => 'Continue';

  @override
  String get keep_it => 'Keep It';

  @override
  String get library => 'Library';

  @override
  String get link_validate => 'Please enter a valid link';

  @override
  String get loadingText => 'Loading…';

  @override
  String get login_or_create_account => 'Login or Create Account';

  @override
  String get mailValidation => 'Please enter a valid email';

  @override
  String get nameValidation => 'Should be more than 2 and less than 30';

  @override
  String get noResults => 'No Results';

  @override
  String get notifications => 'Notifications';

  @override
  String get open => 'Open';

  @override
  String get passValidation =>
      'Should have Upper and Lower case, numbers and special characters';

  @override
  String get phoneValidation => 'Please enter a valid mobile phone';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get please_enter_valid_phone_number =>
      'Please enter a valid phone number';

  @override
  String get profile => 'Profile';

  @override
  String get removed_from_draft_prefix => 'Removed from';

  @override
  String get removed_from_draft_suffix => 'draft';

  @override
  String get save => 'Save';

  @override
  String get save_changes => 'Save Changes';

  @override
  String get search => 'Search';

  @override
  String get select_upload_file_option => 'Select upload file option';

  @override
  String get sign_in_or_create_account_now =>
      'Sign in or create an account now to get started';

  @override
  String get sign_up_with_phone_number => 'Sign Up with Phone Number';

  @override
  String size_more_than_mg_error(double maxSize, String filesName) {
    final intl.NumberFormat maxSizeNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String maxSizeString = maxSizeNumberFormat.format(maxSize);

    return 'File size exceeds $maxSizeString MB for: $filesName';
  }

  @override
  String get snap_chat_validate => 'Please enter a valid Snapchat link';

  @override
  String get something_went_wrong => 'Something went wrong.';

  @override
  String get submit => 'Submit';

  @override
  String get terms_and_conditions_and_privacy_policy =>
      'Terms and Conditions & Privacy Policy';

  @override
  String get undo => 'Undo';

  @override
  String get unsaved_changes_subtitle =>
      'You have unsaved changes. What would you like to do?';

  @override
  String get unsaved_changes_title => 'Unsaved Changes';

  @override
  String get upload_file => 'Upload File';

  @override
  String get welcome_message => 'Welcome to MyApp';

  @override
  String get wrong_url_video => 'Please enter a valid video URL';

  @override
  String get send_report => 'Send Report';

  @override
  String get message => 'Message';

  @override
  String get sent_successfully => 'Sent Successfully';

  @override
  String get no_internet_connection => 'No Internet Connection';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get arabic => 'Arabic';

  @override
  String get english => 'English';

  @override
  String get dark_mode => 'Dark Mode';

  @override
  String get light_mode => 'Light Mode';

  @override
  String get system_mode => 'System Mode';

  @override
  String get appearance => 'Appearance';

  @override
  String get general => 'General';

  @override
  String get create_order => 'Create Order';

  @override
  String get order_details => 'Order Details';

  @override
  String get total => 'Total';

  @override
  String get items => 'Items';

  @override
  String get date => 'Date';

  @override
  String get payment => 'Payment';

  @override
  String get notes => 'Notes';

  @override
  String get view_details => 'View Details';

  @override
  String get process => 'Process';

  @override
  String get customer_information => 'Customer Information';

  @override
  String get customer_name => 'Customer Name';

  @override
  String get customer_email => 'Customer Email';

  @override
  String get customer_phone => 'Customer Phone';

  @override
  String get shipping_address => 'Shipping Address';

  @override
  String get item_count => 'Item Count';

  @override
  String get payment_method => 'Payment Method';

  @override
  String get delivery_date => 'Delivery Date';

  @override
  String get credit_card => 'Credit Card';

  @override
  String get bank_transfer => 'Bank Transfer';

  @override
  String get paypal => 'PayPal';

  @override
  String get cash_on_delivery => 'Cash on Delivery';

  @override
  String get apple_pay => 'Apple Pay';

  @override
  String get google_pay => 'Google Pay';

  @override
  String get order_created_successfully => 'Order Created Successfully!';

  @override
  String get order_number => 'Order Number';

  @override
  String get total_amount => 'Total Amount';

  @override
  String get customer => 'Customer';

  @override
  String get back_to_home => 'Back to Home';

  @override
  String get create_another => 'Create Another';

  @override
  String get customer_name_required => 'Customer name is required';

  @override
  String get customer_name_min_length =>
      'Customer name must be at least 2 characters';

  @override
  String get customer_email_required => 'Customer email is required';

  @override
  String get customer_email_invalid => 'Please enter a valid email address';

  @override
  String get customer_phone_min_length =>
      'Phone number must be at least 10 digits';

  @override
  String get shipping_address_required => 'Shipping address is required';

  @override
  String get shipping_address_min_length =>
      'Shipping address must be at least 10 characters';

  @override
  String get item_count_required => 'Item count is required';

  @override
  String get item_count_invalid => 'Please enter a valid number';

  @override
  String get item_count_min => 'Item count must be greater than 0';

  @override
  String get payment_method_required => 'Payment method is required';

  @override
  String get order_created_success => 'Order created successfully';

  @override
  String get unexpected_error => 'An unexpected error occurred';

  @override
  String get order_not_found => 'Order not found';

  @override
  String get always_use_light_theme => 'Always use light theme';

  @override
  String get always_use_dark_theme => 'Always use dark theme';

  @override
  String get follow_system_setting => 'Follow system setting';

  @override
  String get search_orders => 'Search orders...';

  @override
  String get all_orders => 'All Orders';

  @override
  String get pending => 'Pending';

  @override
  String get processing => 'Processing';

  @override
  String get shipped => 'Shipped';

  @override
  String get delivered => 'Delivered';

  @override
  String get completed => 'Completed';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get no_orders_found => 'No orders found';

  @override
  String get pull_to_refresh_or_filter =>
      'Pull down to refresh or try a different filter';

  @override
  String get notes_optional => 'Notes (Optional)';

  @override
  String get order_notes_optional => 'Order Notes (Optional)';

  @override
  String get payment_delivery => 'Payment & Delivery';

  @override
  String get select_payment_method => 'Select payment method';

  @override
  String get select_payment_method_title => 'Select Payment Method';

  @override
  String get delivery_date_optional => 'Delivery Date (Optional)';

  @override
  String get select_delivery_date => 'Select delivery date';

  @override
  String get customer_phone_optional => 'Customer Phone (Optional)';

  @override
  String order_created_success_message(Object orderNumber) {
    return 'Order created successfully! Order #$orderNumber';
  }
}
