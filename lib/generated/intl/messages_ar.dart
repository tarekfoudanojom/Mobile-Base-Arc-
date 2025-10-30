// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(orderNumber) =>
      "تم إنشاء الطلب بنجاح! الطلب رقم ${orderNumber}";

  static String m1(maxSize, filesName) =>
      "حجم الملف يتجاوز ${maxSize} ميجابايت لـ: ${filesName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "access_denied": MessageLookupByLibrary.simpleMessage("تم رفض الوصول"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("إضافة عنصر جديد"),
        "all_orders": MessageLookupByLibrary.simpleMessage("جميع الطلبات"),
        "always_use_dark_theme": MessageLookupByLibrary.simpleMessage(
            "استخدام المظهر المظلم دائماً"),
        "always_use_light_theme": MessageLookupByLibrary.simpleMessage(
            "استخدام المظهر الفاتح دائماً"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "appearance": MessageLookupByLibrary.simpleMessage("المظهر"),
        "apple_pay": MessageLookupByLibrary.simpleMessage("آبل باي"),
        "arabic": MessageLookupByLibrary.simpleMessage("العربية"),
        "are_you_sure": MessageLookupByLibrary.simpleMessage("هل أنت متأكد؟"),
        "back_to_home": MessageLookupByLibrary.simpleMessage("العودة للرئيسية"),
        "bank_transfer": MessageLookupByLibrary.simpleMessage("تحويل بنكي"),
        "by_clicking_continue_you_agree_to":
            MessageLookupByLibrary.simpleMessage(
                "بالنقر على متابعة، فإنك توافق على"),
        "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "cancelled": MessageLookupByLibrary.simpleMessage("ملغي"),
        "cash_on_delivery":
            MessageLookupByLibrary.simpleMessage("الدفع عند الاستلام"),
        "completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال كلمة المرور المطابقة"),
        "confirm_delete": MessageLookupByLibrary.simpleMessage("تأكيد الحذف"),
        "confirm_delete_txt": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد حذف هذا العنصر؟"),
        "confirm_save_txt":
            MessageLookupByLibrary.simpleMessage("هل تريد حفظ التغييرات؟"),
        "continue_editing":
            MessageLookupByLibrary.simpleMessage("متابعة التعديل"),
        "create_another": MessageLookupByLibrary.simpleMessage("إنشاء آخر"),
        "create_order": MessageLookupByLibrary.simpleMessage("إنشاء طلب"),
        "credit_card": MessageLookupByLibrary.simpleMessage("بطاقة ائتمان"),
        "customer": MessageLookupByLibrary.simpleMessage("العميل"),
        "customer_email":
            MessageLookupByLibrary.simpleMessage("بريد العميل الإلكتروني"),
        "customer_email_invalid": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال عنوان بريد إلكتروني صحيح"),
        "customer_email_required": MessageLookupByLibrary.simpleMessage(
            "بريد العميل الإلكتروني مطلوب"),
        "customer_information":
            MessageLookupByLibrary.simpleMessage("معلومات العميل"),
        "customer_name": MessageLookupByLibrary.simpleMessage("اسم العميل"),
        "customer_name_min_length": MessageLookupByLibrary.simpleMessage(
            "اسم العميل يجب أن يكون على الأقل حرفين"),
        "customer_name_required":
            MessageLookupByLibrary.simpleMessage("اسم العميل مطلوب"),
        "customer_phone": MessageLookupByLibrary.simpleMessage("هاتف العميل"),
        "customer_phone_min_length": MessageLookupByLibrary.simpleMessage(
            "رقم الهاتف يجب أن يكون على الأقل 10 أرقام"),
        "customer_phone_optional":
            MessageLookupByLibrary.simpleMessage("هاتف العميل (اختياري)"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("الوضع المظلم"),
        "date": MessageLookupByLibrary.simpleMessage("التاريخ"),
        "delivered": MessageLookupByLibrary.simpleMessage("تم التسليم"),
        "delivery_date": MessageLookupByLibrary.simpleMessage("تاريخ التسليم"),
        "delivery_date_optional":
            MessageLookupByLibrary.simpleMessage("تاريخ التسليم (اختياري)"),
        "discard": MessageLookupByLibrary.simpleMessage("تجاهل"),
        "discard_changes":
            MessageLookupByLibrary.simpleMessage("تجاهل التغييرات"),
        "done": MessageLookupByLibrary.simpleMessage("تم"),
        "english": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("طلب خاطئ"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نتيجة"),
        "error_Timeout_Error":
            MessageLookupByLibrary.simpleMessage("انتهت المهلة"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("غير مصرح"),
        "error_cancel_token":
            MessageLookupByLibrary.simpleMessage("تم قطع الاتصال"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("خطأ في التعارض"),
        "error_connection":
            MessageLookupByLibrary.simpleMessage("حدث خطأ أثناء الاتصال"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("ليس لديك الصلاحية"),
        "explore": MessageLookupByLibrary.simpleMessage("استكشف"),
        "file": MessageLookupByLibrary.simpleMessage("ملف"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال هذا الحقل"),
        "follow_system_setting":
            MessageLookupByLibrary.simpleMessage("اتباع إعدادات النظام"),
        "general": MessageLookupByLibrary.simpleMessage("عام"),
        "google_pay": MessageLookupByLibrary.simpleMessage("جوجل باي"),
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "item_count": MessageLookupByLibrary.simpleMessage("عدد القطع"),
        "item_count_invalid":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رقم صحيح"),
        "item_count_min": MessageLookupByLibrary.simpleMessage(
            "عدد القطع يجب أن يكون أكبر من 0"),
        "item_count_required":
            MessageLookupByLibrary.simpleMessage("عدد القطع مطلوب"),
        "items": MessageLookupByLibrary.simpleMessage("القطع"),
        "keep_going": MessageLookupByLibrary.simpleMessage("متابعة"),
        "keep_it": MessageLookupByLibrary.simpleMessage("الاحتفاظ به"),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "library": MessageLookupByLibrary.simpleMessage("المكتبة"),
        "light_mode": MessageLookupByLibrary.simpleMessage("الوضع المضيء"),
        "link_validate":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رابط صحيح"),
        "loadingText": MessageLookupByLibrary.simpleMessage("جار التحميل…"),
        "login_or_create_account":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول أو إنشاء حساب"),
        "mailValidation": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال بريد إلكتروني صحيح"),
        "message": MessageLookupByLibrary.simpleMessage("الرسالة"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون أكثر من حرفين وأقل من 30"),
        "noResults": MessageLookupByLibrary.simpleMessage("لا توجد نتائج"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
        "no_orders_found":
            MessageLookupByLibrary.simpleMessage("لا توجد طلبات"),
        "notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "notes_optional":
            MessageLookupByLibrary.simpleMessage("ملاحظات (اختياري)"),
        "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "open": MessageLookupByLibrary.simpleMessage("فتح"),
        "order_created_success":
            MessageLookupByLibrary.simpleMessage("تم إنشاء الطلب بنجاح"),
        "order_created_success_message": m0,
        "order_created_successfully":
            MessageLookupByLibrary.simpleMessage("تم إنشاء الطلب بنجاح!"),
        "order_details": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
        "order_not_found":
            MessageLookupByLibrary.simpleMessage("الطلب غير موجود"),
        "order_notes_optional":
            MessageLookupByLibrary.simpleMessage("ملاحظات الطلب (اختياري)"),
        "order_number": MessageLookupByLibrary.simpleMessage("رقم الطلب"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "يجب أن يحتوي على أحرف كبيرة وصغيرة وأرقام ورموز خاصة"),
        "payment": MessageLookupByLibrary.simpleMessage("الدفع"),
        "payment_delivery":
            MessageLookupByLibrary.simpleMessage("الدفع والتسليم"),
        "payment_method": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
        "payment_method_required":
            MessageLookupByLibrary.simpleMessage("طريقة الدفع مطلوبة"),
        "paypal": MessageLookupByLibrary.simpleMessage("باي بال"),
        "pending": MessageLookupByLibrary.simpleMessage("معلق"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال رقم هاتف محمول صحيح"),
        "phone_number": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "please_enter_valid_phone_number":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رقم هاتف صحيح"),
        "process": MessageLookupByLibrary.simpleMessage("معالجة"),
        "processing": MessageLookupByLibrary.simpleMessage("قيد المعالجة"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "pull_to_refresh_or_filter": MessageLookupByLibrary.simpleMessage(
            "اسحب للأسفل للتحديث أو جرب فلتر مختلف"),
        "removed_from_draft_prefix":
            MessageLookupByLibrary.simpleMessage("تمت الإزالة من"),
        "removed_from_draft_suffix":
            MessageLookupByLibrary.simpleMessage("المسودة"),
        "save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "save_changes": MessageLookupByLibrary.simpleMessage("حفظ التغييرات"),
        "search": MessageLookupByLibrary.simpleMessage("بحث"),
        "search_orders":
            MessageLookupByLibrary.simpleMessage("البحث في الطلبات..."),
        "select_delivery_date":
            MessageLookupByLibrary.simpleMessage("اختر تاريخ التسليم"),
        "select_payment_method":
            MessageLookupByLibrary.simpleMessage("اختر طريقة الدفع"),
        "select_payment_method_title":
            MessageLookupByLibrary.simpleMessage("اختر طريقة الدفع"),
        "select_upload_file_option":
            MessageLookupByLibrary.simpleMessage("اختر خيار تحميل الملف"),
        "send_report": MessageLookupByLibrary.simpleMessage("إرسال تقرير"),
        "sent_successfully":
            MessageLookupByLibrary.simpleMessage("تم الإرسال بنجاح"),
        "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
        "shipped": MessageLookupByLibrary.simpleMessage("تم الشحن"),
        "shipping_address": MessageLookupByLibrary.simpleMessage("عنوان الشحن"),
        "shipping_address_min_length": MessageLookupByLibrary.simpleMessage(
            "عنوان الشحن يجب أن يكون على الأقل 10 أحرف"),
        "shipping_address_required":
            MessageLookupByLibrary.simpleMessage("عنوان الشحن مطلوب"),
        "sign_in_or_create_account_now": MessageLookupByLibrary.simpleMessage(
            "قم بتسجيل الدخول أو إنشاء حساب الآن للبدء"),
        "sign_up_with_phone_number":
            MessageLookupByLibrary.simpleMessage("التسجيل برقم الهاتف"),
        "size_more_than_mg_error": m1,
        "snap_chat_validate": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال رابط سناب شات صحيح"),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("حدث خطأ ما."),
        "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
        "system_mode": MessageLookupByLibrary.simpleMessage("وضع النظام"),
        "terms_and_conditions_and_privacy_policy":
            MessageLookupByLibrary.simpleMessage(
                "الشروط والأحكام وسياسة الخصوصية"),
        "theme": MessageLookupByLibrary.simpleMessage("المظهر"),
        "total": MessageLookupByLibrary.simpleMessage("المجموع"),
        "total_amount": MessageLookupByLibrary.simpleMessage("المبلغ الإجمالي"),
        "undo": MessageLookupByLibrary.simpleMessage("تراجع"),
        "unexpected_error":
            MessageLookupByLibrary.simpleMessage("حدث خطأ غير متوقع"),
        "unsaved_changes_subtitle": MessageLookupByLibrary.simpleMessage(
            "لديك تغييرات غير محفوظة. ماذا تريد أن تفعل؟"),
        "unsaved_changes_title":
            MessageLookupByLibrary.simpleMessage("تغييرات غير محفوظة"),
        "upload_file": MessageLookupByLibrary.simpleMessage("رفع ملف"),
        "view_details": MessageLookupByLibrary.simpleMessage("عرض التفاصيل"),
        "welcome_message":
            MessageLookupByLibrary.simpleMessage("مرحباً بك في تطبيقي"),
        "wrong_url_video":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رابط فيديو صحيح")
      };
}
