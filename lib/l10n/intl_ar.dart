// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'intl.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get access_denied => 'تم رفض الوصول';

  @override
  String get add_new_item => 'إضافة عنصر جديد';

  @override
  String get app_cancel => 'إلغاء';

  @override
  String get app_confirm => 'تأكيد';

  @override
  String get are_you_sure => 'هل أنت متأكد؟';

  @override
  String get by_clicking_continue_you_agree_to =>
      'بالنقر على متابعة، فإنك توافق على';

  @override
  String get camera => 'الكاميرا';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirmValidation => 'يرجى إدخال كلمة المرور المطابقة';

  @override
  String get confirm_delete => 'تأكيد الحذف';

  @override
  String get confirm_delete_txt => 'هل أنت متأكد أنك تريد حذف هذا العنصر؟';

  @override
  String get confirm_save_txt => 'هل تريد حفظ التغييرات؟';

  @override
  String get continue_editing => 'متابعة التعديل';

  @override
  String get discard => 'تجاهل';

  @override
  String get discard_changes => 'تجاهل التغييرات';

  @override
  String get done => 'تم';

  @override
  String get error_BadRequest_Error => 'طلب خاطئ';

  @override
  String get error_NotFound_Error => 'لم يتم العثور على نتيجة';

  @override
  String get error_Timeout_Error => 'انتهت المهلة';

  @override
  String get error_Unauthorized_Error => 'غير مصرح';

  @override
  String get error_cancel_token => 'تم قطع الاتصال';

  @override
  String get error_conflict => 'خطأ في التعارض';

  @override
  String get error_connection => 'حدث خطأ أثناء الاتصال';

  @override
  String get error_forbidden_error => 'ليس لديك الصلاحية';

  @override
  String get explore => 'استكشف';

  @override
  String get file => 'ملف';

  @override
  String get fillField => 'يرجى إدخال هذا الحقل';

  @override
  String get home => 'الرئيسية';

  @override
  String get keep_going => 'متابعة';

  @override
  String get keep_it => 'الاحتفاظ به';

  @override
  String get library => 'المكتبة';

  @override
  String get link_validate => 'يرجى إدخال رابط صحيح';

  @override
  String get loadingText => 'جار التحميل…';

  @override
  String get login_or_create_account => 'تسجيل الدخول أو إنشاء حساب';

  @override
  String get mailValidation => 'يرجى إدخال بريد إلكتروني صحيح';

  @override
  String get nameValidation => 'يجب أن يكون أكثر من حرفين وأقل من 30';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get open => 'فتح';

  @override
  String get passValidation =>
      'يجب أن يحتوي على أحرف كبيرة وصغيرة وأرقام ورموز خاصة';

  @override
  String get phoneValidation => 'يرجى إدخال رقم هاتف محمول صحيح';

  @override
  String get phone_number => 'رقم الهاتف';

  @override
  String get please_enter_valid_phone_number => 'يرجى إدخال رقم هاتف صحيح';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get removed_from_draft_prefix => 'تمت الإزالة من';

  @override
  String get removed_from_draft_suffix => 'المسودة';

  @override
  String get save => 'حفظ';

  @override
  String get save_changes => 'حفظ التغييرات';

  @override
  String get search => 'بحث';

  @override
  String get select_upload_file_option => 'اختر خيار تحميل الملف';

  @override
  String get sign_in_or_create_account_now =>
      'قم بتسجيل الدخول أو إنشاء حساب الآن للبدء';

  @override
  String get sign_up_with_phone_number => 'التسجيل برقم الهاتف';

  @override
  String size_more_than_mg_error(double maxSize, String filesName) {
    final intl.NumberFormat maxSizeNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String maxSizeString = maxSizeNumberFormat.format(maxSize);

    return 'حجم الملف يتجاوز $maxSizeString ميجابايت لـ: $filesName';
  }

  @override
  String get snap_chat_validate => 'يرجى إدخال رابط سناب شات صحيح';

  @override
  String get something_went_wrong => 'حدث خطأ ما.';

  @override
  String get submit => 'إرسال';

  @override
  String get terms_and_conditions_and_privacy_policy =>
      'الشروط والأحكام وسياسة الخصوصية';

  @override
  String get undo => 'تراجع';

  @override
  String get unsaved_changes_subtitle =>
      'لديك تغييرات غير محفوظة. ماذا تريد أن تفعل؟';

  @override
  String get unsaved_changes_title => 'تغييرات غير محفوظة';

  @override
  String get upload_file => 'رفع ملف';

  @override
  String get welcome_message => 'مرحباً بك في تطبيقي';

  @override
  String get wrong_url_video => 'يرجى إدخال رابط فيديو صحيح';

  @override
  String get send_report => 'إرسال تقرير';

  @override
  String get message => 'الرسالة';

  @override
  String get sent_successfully => 'تم الإرسال بنجاح';

  @override
  String get no_internet_connection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get theme => 'المظهر';

  @override
  String get arabic => 'العربية';

  @override
  String get english => 'الإنجليزية';

  @override
  String get dark_mode => 'الوضع المظلم';

  @override
  String get light_mode => 'الوضع المضيء';

  @override
  String get system_mode => 'وضع النظام';

  @override
  String get appearance => 'المظهر';

  @override
  String get general => 'عام';

  @override
  String get create_order => 'إنشاء طلب';

  @override
  String get order_details => 'تفاصيل الطلب';

  @override
  String get total => 'المجموع';

  @override
  String get items => 'القطع';

  @override
  String get date => 'التاريخ';

  @override
  String get payment => 'الدفع';

  @override
  String get notes => 'ملاحظات';

  @override
  String get view_details => 'عرض التفاصيل';

  @override
  String get process => 'معالجة';

  @override
  String get customer_information => 'معلومات العميل';

  @override
  String get customer_name => 'اسم العميل';

  @override
  String get customer_email => 'بريد العميل الإلكتروني';

  @override
  String get customer_phone => 'هاتف العميل';

  @override
  String get shipping_address => 'عنوان الشحن';

  @override
  String get item_count => 'عدد القطع';

  @override
  String get payment_method => 'طريقة الدفع';

  @override
  String get delivery_date => 'تاريخ التسليم';

  @override
  String get credit_card => 'بطاقة ائتمان';

  @override
  String get bank_transfer => 'تحويل بنكي';

  @override
  String get paypal => 'باي بال';

  @override
  String get cash_on_delivery => 'الدفع عند الاستلام';

  @override
  String get apple_pay => 'آبل باي';

  @override
  String get google_pay => 'جوجل باي';

  @override
  String get order_created_successfully => 'تم إنشاء الطلب بنجاح!';

  @override
  String get order_number => 'رقم الطلب';

  @override
  String get total_amount => 'المبلغ الإجمالي';

  @override
  String get customer => 'العميل';

  @override
  String get back_to_home => 'العودة للرئيسية';

  @override
  String get create_another => 'إنشاء آخر';

  @override
  String get customer_name_required => 'اسم العميل مطلوب';

  @override
  String get customer_name_min_length =>
      'اسم العميل يجب أن يكون على الأقل حرفين';

  @override
  String get customer_email_required => 'بريد العميل الإلكتروني مطلوب';

  @override
  String get customer_email_invalid => 'يرجى إدخال عنوان بريد إلكتروني صحيح';

  @override
  String get customer_phone_min_length =>
      'رقم الهاتف يجب أن يكون على الأقل 10 أرقام';

  @override
  String get shipping_address_required => 'عنوان الشحن مطلوب';

  @override
  String get shipping_address_min_length =>
      'عنوان الشحن يجب أن يكون على الأقل 10 أحرف';

  @override
  String get item_count_required => 'عدد القطع مطلوب';

  @override
  String get item_count_invalid => 'يرجى إدخال رقم صحيح';

  @override
  String get item_count_min => 'عدد القطع يجب أن يكون أكبر من 0';

  @override
  String get payment_method_required => 'طريقة الدفع مطلوبة';

  @override
  String get order_created_success => 'تم إنشاء الطلب بنجاح';

  @override
  String get unexpected_error => 'حدث خطأ غير متوقع';

  @override
  String get order_not_found => 'الطلب غير موجود';

  @override
  String get always_use_light_theme => 'استخدام المظهر الفاتح دائماً';

  @override
  String get always_use_dark_theme => 'استخدام المظهر المظلم دائماً';

  @override
  String get follow_system_setting => 'اتباع إعدادات النظام';

  @override
  String get search_orders => 'البحث في الطلبات...';

  @override
  String get all_orders => 'جميع الطلبات';

  @override
  String get pending => 'معلق';

  @override
  String get processing => 'قيد المعالجة';

  @override
  String get shipped => 'تم الشحن';

  @override
  String get delivered => 'تم التسليم';

  @override
  String get completed => 'مكتمل';

  @override
  String get cancelled => 'ملغي';

  @override
  String get no_orders_found => 'لا توجد طلبات';

  @override
  String get pull_to_refresh_or_filter =>
      'اسحب للأسفل للتحديث أو جرب فلتر مختلف';

  @override
  String get notes_optional => 'ملاحظات (اختياري)';

  @override
  String get order_notes_optional => 'ملاحظات الطلب (اختياري)';

  @override
  String get payment_delivery => 'الدفع والتسليم';

  @override
  String get select_payment_method => 'اختر طريقة الدفع';

  @override
  String get select_payment_method_title => 'اختر طريقة الدفع';

  @override
  String get delivery_date_optional => 'تاريخ التسليم (اختياري)';

  @override
  String get select_delivery_date => 'اختر تاريخ التسليم';

  @override
  String get customer_phone_optional => 'هاتف العميل (اختياري)';

  @override
  String order_created_success_message(Object orderNumber) {
    return 'تم إنشاء الطلب بنجاح! الطلب رقم $orderNumber';
  }
}
