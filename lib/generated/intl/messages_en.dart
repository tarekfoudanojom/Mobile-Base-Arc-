// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(orderNumber) =>
      "Order created successfully! Order #${orderNumber}";

  static String m1(maxSize, filesName) =>
      "File size exceeds ${maxSize} MB for: ${filesName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "access_denied": MessageLookupByLibrary.simpleMessage("Access Denied"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add new item"),
        "all_orders": MessageLookupByLibrary.simpleMessage("All Orders"),
        "always_use_dark_theme":
            MessageLookupByLibrary.simpleMessage("Always use dark theme"),
        "always_use_light_theme":
            MessageLookupByLibrary.simpleMessage("Always use light theme"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "appearance": MessageLookupByLibrary.simpleMessage("Appearance"),
        "apple_pay": MessageLookupByLibrary.simpleMessage("Apple Pay"),
        "arabic": MessageLookupByLibrary.simpleMessage("Arabic"),
        "are_you_sure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "back_to_home": MessageLookupByLibrary.simpleMessage("Back to Home"),
        "bank_transfer": MessageLookupByLibrary.simpleMessage("Bank Transfer"),
        "by_clicking_continue_you_agree_to":
            MessageLookupByLibrary.simpleMessage(
                "By clicking continue, you agree to"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "cash_on_delivery":
            MessageLookupByLibrary.simpleMessage("Cash on Delivery"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter the password identical"),
        "confirm_delete":
            MessageLookupByLibrary.simpleMessage("Confirm Delete"),
        "confirm_delete_txt": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete this item?"),
        "confirm_save_txt": MessageLookupByLibrary.simpleMessage(
            "Do you want to save your changes?"),
        "continue_editing":
            MessageLookupByLibrary.simpleMessage("Continue Editing"),
        "create_another":
            MessageLookupByLibrary.simpleMessage("Create Another"),
        "create_order": MessageLookupByLibrary.simpleMessage("Create Order"),
        "credit_card": MessageLookupByLibrary.simpleMessage("Credit Card"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "customer_email":
            MessageLookupByLibrary.simpleMessage("Customer Email"),
        "customer_email_invalid": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address"),
        "customer_email_required":
            MessageLookupByLibrary.simpleMessage("Customer email is required"),
        "customer_information":
            MessageLookupByLibrary.simpleMessage("Customer Information"),
        "customer_name": MessageLookupByLibrary.simpleMessage("Customer Name"),
        "customer_name_min_length": MessageLookupByLibrary.simpleMessage(
            "Customer name must be at least 2 characters"),
        "customer_name_required":
            MessageLookupByLibrary.simpleMessage("Customer name is required"),
        "customer_phone":
            MessageLookupByLibrary.simpleMessage("Customer Phone"),
        "customer_phone_min_length": MessageLookupByLibrary.simpleMessage(
            "Phone number must be at least 10 digits"),
        "customer_phone_optional":
            MessageLookupByLibrary.simpleMessage("Customer Phone (Optional)"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
        "delivery_date": MessageLookupByLibrary.simpleMessage("Delivery Date"),
        "delivery_date_optional":
            MessageLookupByLibrary.simpleMessage("Delivery Date (Optional)"),
        "discard": MessageLookupByLibrary.simpleMessage("Discard"),
        "discard_changes":
            MessageLookupByLibrary.simpleMessage("Discard Changes"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "error_Timeout_Error": MessageLookupByLibrary.simpleMessage("TIME OUT"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "error_cancel_token": MessageLookupByLibrary.simpleMessage(
            "The connection is interrupted"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("Conflict error"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "An error occurred during the connection"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("YOU DO NOT HAVE PRIVILEGE"),
        "explore": MessageLookupByLibrary.simpleMessage("Explore"),
        "file": MessageLookupByLibrary.simpleMessage("File"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("Please enter this field"),
        "follow_system_setting":
            MessageLookupByLibrary.simpleMessage("Follow system setting"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "google_pay": MessageLookupByLibrary.simpleMessage("Google Pay"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "item_count": MessageLookupByLibrary.simpleMessage("Item Count"),
        "item_count_invalid":
            MessageLookupByLibrary.simpleMessage("Please enter a valid number"),
        "item_count_min": MessageLookupByLibrary.simpleMessage(
            "Item count must be greater than 0"),
        "item_count_required":
            MessageLookupByLibrary.simpleMessage("Item count is required"),
        "items": MessageLookupByLibrary.simpleMessage("Items"),
        "keep_going": MessageLookupByLibrary.simpleMessage("Continue"),
        "keep_it": MessageLookupByLibrary.simpleMessage("Keep It"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "library": MessageLookupByLibrary.simpleMessage("Library"),
        "light_mode": MessageLookupByLibrary.simpleMessage("Light Mode"),
        "link_validate":
            MessageLookupByLibrary.simpleMessage("Please enter a valid link"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading…"),
        "login_or_create_account":
            MessageLookupByLibrary.simpleMessage("Login or Create Account"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "message": MessageLookupByLibrary.simpleMessage("Message"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "Should be more than 2 and less than 30"),
        "noResults": MessageLookupByLibrary.simpleMessage("No Results"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("No Internet Connection"),
        "no_orders_found":
            MessageLookupByLibrary.simpleMessage("No orders found"),
        "notes": MessageLookupByLibrary.simpleMessage("Notes"),
        "notes_optional":
            MessageLookupByLibrary.simpleMessage("Notes (Optional)"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "order_created_success":
            MessageLookupByLibrary.simpleMessage("Order created successfully"),
        "order_created_success_message": m0,
        "order_created_successfully":
            MessageLookupByLibrary.simpleMessage("Order Created Successfully!"),
        "order_details": MessageLookupByLibrary.simpleMessage("Order Details"),
        "order_not_found":
            MessageLookupByLibrary.simpleMessage("Order not found"),
        "order_notes_optional":
            MessageLookupByLibrary.simpleMessage("Order Notes (Optional)"),
        "order_number": MessageLookupByLibrary.simpleMessage("Order Number"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "Should have Upper and Lower case, numbers and special characters"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "payment_delivery":
            MessageLookupByLibrary.simpleMessage("Payment & Delivery"),
        "payment_method":
            MessageLookupByLibrary.simpleMessage("Payment Method"),
        "payment_method_required":
            MessageLookupByLibrary.simpleMessage("Payment method is required"),
        "paypal": MessageLookupByLibrary.simpleMessage("PayPal"),
        "pending": MessageLookupByLibrary.simpleMessage("Pending"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid mobile phone"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Phone Number"),
        "please_enter_valid_phone_number": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number"),
        "process": MessageLookupByLibrary.simpleMessage("Process"),
        "processing": MessageLookupByLibrary.simpleMessage("Processing"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "pull_to_refresh_or_filter": MessageLookupByLibrary.simpleMessage(
            "Pull down to refresh or try a different filter"),
        "removed_from_draft_prefix":
            MessageLookupByLibrary.simpleMessage("Removed from"),
        "removed_from_draft_suffix":
            MessageLookupByLibrary.simpleMessage("draft"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "save_changes": MessageLookupByLibrary.simpleMessage("Save Changes"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "search_orders":
            MessageLookupByLibrary.simpleMessage("Search orders..."),
        "select_delivery_date":
            MessageLookupByLibrary.simpleMessage("Select delivery date"),
        "select_payment_method":
            MessageLookupByLibrary.simpleMessage("Select payment method"),
        "select_payment_method_title":
            MessageLookupByLibrary.simpleMessage("Select Payment Method"),
        "select_upload_file_option":
            MessageLookupByLibrary.simpleMessage("Select upload file option"),
        "send_report": MessageLookupByLibrary.simpleMessage("Send Report"),
        "sent_successfully":
            MessageLookupByLibrary.simpleMessage("Sent Successfully"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shipped": MessageLookupByLibrary.simpleMessage("Shipped"),
        "shipping_address":
            MessageLookupByLibrary.simpleMessage("Shipping Address"),
        "shipping_address_min_length": MessageLookupByLibrary.simpleMessage(
            "Shipping address must be at least 10 characters"),
        "shipping_address_required": MessageLookupByLibrary.simpleMessage(
            "Shipping address is required"),
        "sign_in_or_create_account_now": MessageLookupByLibrary.simpleMessage(
            "Sign in or create an account now to get started"),
        "sign_up_with_phone_number":
            MessageLookupByLibrary.simpleMessage("Sign Up with Phone Number"),
        "size_more_than_mg_error": m1,
        "snap_chat_validate": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid Snapchat link"),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong."),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "system_mode": MessageLookupByLibrary.simpleMessage("System Mode"),
        "terms_and_conditions_and_privacy_policy":
            MessageLookupByLibrary.simpleMessage(
                "Terms and Conditions & Privacy Policy"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "total_amount": MessageLookupByLibrary.simpleMessage("Total Amount"),
        "undo": MessageLookupByLibrary.simpleMessage("Undo"),
        "unexpected_error": MessageLookupByLibrary.simpleMessage(
            "An unexpected error occurred"),
        "unsaved_changes_subtitle": MessageLookupByLibrary.simpleMessage(
            "You have unsaved changes. What would you like to do?"),
        "unsaved_changes_title":
            MessageLookupByLibrary.simpleMessage("Unsaved Changes"),
        "upload_file": MessageLookupByLibrary.simpleMessage("Upload File"),
        "view_details": MessageLookupByLibrary.simpleMessage("View Details"),
        "welcome_message":
            MessageLookupByLibrary.simpleMessage("Welcome to MyApp"),
        "wrong_url_video": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid video URL")
      };
}
