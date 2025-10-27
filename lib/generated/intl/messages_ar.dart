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

  static String m0(time) => "تم الحظر منذ ${time}";

  static String m1(count) => "حذف ${count} رسائل";

  static String m2(error) => "خطأ في إرسال الرسالة: ${error}";

  static String m3(error) => "فشل في تغيير حجم وتشفير الصورة: ${error}";

  static String m4(error) => "فشل في بدء التسجيل: ${error}";

  static String m5(count, formattedCount) =>
      "${Intl.plural(count, zero: 'لا يوجد متابعين', one: 'متابع واحد', two: 'متابعان اثنان', few: '${formattedCount} متابعين', many: '${formattedCount} متابع', other: '${formattedCount} متابع')}";

  static String m6(count) => "إعادة توجيه ${count} رسائل";

  static String m7(count) => " إلى ${count} محادثات";

  static String m8(name) => "تم إضافة ${name} للحملة";

  static String m9(name) => "تمت إزالة ${name} من المسودة";

  static String m10(minutes) => "مباشر • ${minutes} دقيقة متبقية";

  static String m11(duration) => "الموقع المباشر (${duration} دقيقة)";

  static String m12(accuracy) => "دقيق إلى ${accuracy}م";

  static String m13(count) => "تم حذف ${count} رسائل بنجاح";

  static String m14(count) => "تم إعادة توجيه ${count} رسائل بنجاح";

  static String m15(messageCount, chatCount) =>
      "تم إعادة توجيه ${messageCount} رسائل إلى ${chatCount} محادثات";

  static String m16(fileName) => "جاري فتح ${fileName}...";

  static String m17(count) => "${count} رسائل محددة";

  static String m18(MB, files) =>
      "يجب أن تكون حجم الملفات التالية أقل من ${MB} ميحابيت, ${files}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل العنوان"),
        "Analysis": MessageLookupByLibrary.simpleMessage("التحليل"),
        "Dont_receive_code":
            MessageLookupByLibrary.simpleMessage("لم تتلقى الكود ؟"),
        "Hour": MessageLookupByLibrary.simpleMessage(" ساعات"),
        "Proposals": MessageLookupByLibrary.simpleMessage("المقترحات"),
        "Save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "Star_evaluation": MessageLookupByLibrary.simpleMessage("تقييم المؤثر"),
        "aboutMe": MessageLookupByLibrary.simpleMessage("نبذه"),
        "about_me": MessageLookupByLibrary.simpleMessage("عنّي"),
        "about_use": MessageLookupByLibrary.simpleMessage("عن الشركة"),
        "accept_offer": MessageLookupByLibrary.simpleMessage("قبول عرض"),
        "access_all_features":
            MessageLookupByLibrary.simpleMessage("للوصول إلى جميع الخصائص"),
        "access_denied": MessageLookupByLibrary.simpleMessage("تم رفض الوصول"),
        "account": MessageLookupByLibrary.simpleMessage("الحساب"),
        "account_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل الحساب"),
        "account_first":
            MessageLookupByLibrary.simpleMessage("يرجى تحديد الحساب أولاً"),
        "account_management_fee":
            MessageLookupByLibrary.simpleMessage("رسوم إدارة الحساب"),
        "accounts": MessageLookupByLibrary.simpleMessage("الحسابات"),
        "action_undo_successfully":
            MessageLookupByLibrary.simpleMessage("تم التراجع عن الإجراء بنجاح"),
        "active_bundle_services":
            MessageLookupByLibrary.simpleMessage("تفعيل سعر موحّد (باكج)"),
        "active_now": MessageLookupByLibrary.simpleMessage("متصل الان"),
        "ad_details_editable_after_order": MessageLookupByLibrary.simpleMessage(
            "يمكنك تعديل تفاصيل الإعلان بعد الطلب."),
        "add": MessageLookupByLibrary.simpleMessage("اضافة"),
        "add_Stars_influencers":
            MessageLookupByLibrary.simpleMessage("أضف مؤثرين"),
        "add_account": MessageLookupByLibrary.simpleMessage("اضافة حساب"),
        "add_at_least_one_service_to_draft":
            MessageLookupByLibrary.simpleMessage(
                "أضف خدمة واحدة على الأقل إلى أي مسودة خاصة بمؤثر."),
        "add_attachment": MessageLookupByLibrary.simpleMessage("اضافة مرفق"),
        "add_attachments": MessageLookupByLibrary.simpleMessage("إضافة ملف"),
        "add_balance": MessageLookupByLibrary.simpleMessage("إضافة رصيد"),
        "add_beneficiary": MessageLookupByLibrary.simpleMessage("اضافة مستفيد"),
        "add_caption": MessageLookupByLibrary.simpleMessage("إضافة تعليق..."),
        "add_company": MessageLookupByLibrary.simpleMessage("اضافة شركة"),
        "add_custom_offer":
            MessageLookupByLibrary.simpleMessage("إضافة عرض مخصص"),
        "add_extra_service":
            MessageLookupByLibrary.simpleMessage("إضافة خدمة إضافية"),
        "add_file": MessageLookupByLibrary.simpleMessage("إضافة ملف"),
        "add_first_collaboration":
            MessageLookupByLibrary.simpleMessage("اضف تعاونك الاول"),
        "add_first_product":
            MessageLookupByLibrary.simpleMessage("اضف منتجك الاول"),
        "add_first_social_media":
            MessageLookupByLibrary.simpleMessage("اضف اول قناة تواصل اجتماعى"),
        "add_first_store":
            MessageLookupByLibrary.simpleMessage("اضف متجرك الاول"),
        "add_first_video_image":
            MessageLookupByLibrary.simpleMessage("أضف أول فيديو أو صورة"),
        "add_first_video_or_image":
            MessageLookupByLibrary.simpleMessage("اضف اول فيديو او صورة "),
        "add_influencers": MessageLookupByLibrary.simpleMessage("أضف مؤثرين"),
        "add_list": MessageLookupByLibrary.simpleMessage("إضافة قائمة"),
        "add_more_camp_stars": MessageLookupByLibrary.simpleMessage(
            "اختر المزيد من المؤثرين المقترحين"),
        "add_more_documents":
            MessageLookupByLibrary.simpleMessage("إضافة المزيد من المستندات"),
        "add_more_platforms":
            MessageLookupByLibrary.simpleMessage("إضافة المزيد من المنصات"),
        "add_more_socials": MessageLookupByLibrary.simpleMessage(
            "أضف المزيد من وسائل التواصل الاجتماعي"),
        "add_more_stars": MessageLookupByLibrary.simpleMessage(
            "اختر المزيد من المؤثرين المقترحين"),
        "add_new_account":
            MessageLookupByLibrary.simpleMessage("اضافة حساب جديد"),
        "add_new_bank": MessageLookupByLibrary.simpleMessage("إضافة بنك جديد"),
        "add_new_card":
            MessageLookupByLibrary.simpleMessage("اضافة بطاقة جديدة"),
        "add_new_company":
            MessageLookupByLibrary.simpleMessage("اضافة شركة جديدة"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("إضافة عنصر جديد"),
        "add_new_partner":
            MessageLookupByLibrary.simpleMessage("اضافة شريك جديد"),
        "add_new_product":
            MessageLookupByLibrary.simpleMessage("اضف منتج جديد"),
        "add_new_store": MessageLookupByLibrary.simpleMessage("اضف متجر جديد"),
        "add_new_video_image":
            MessageLookupByLibrary.simpleMessage("أضف فيديو أو صورة جديدة"),
        "add_note": MessageLookupByLibrary.simpleMessage("اضافة ملاحظة"),
        "add_notes_for_client":
            MessageLookupByLibrary.simpleMessage("أضف ملاحظاتك هنا..."),
        "add_partner": MessageLookupByLibrary.simpleMessage("اضف شريكك الأول"),
        "add_portfolio":
            MessageLookupByLibrary.simpleMessage("اضافة سابقة اعمال"),
        "add_prices": MessageLookupByLibrary.simpleMessage("إضافة الأسعار"),
        "add_profile_pic":
            MessageLookupByLibrary.simpleMessage("إضافة صورة الملف الشخصي"),
        "add_social_media":
            MessageLookupByLibrary.simpleMessage("اضف قناة تواصل اجتماعى"),
        "add_socials":
            MessageLookupByLibrary.simpleMessage("أضف حساباتك الاجتماعية "),
        "add_stars": MessageLookupByLibrary.simpleMessage("اضف مؤثرين"),
        "add_stars_to_start":
            MessageLookupByLibrary.simpleMessage("اضف مؤثرين لبدء حملتك"),
        "add_stars_to_start_camp":
            MessageLookupByLibrary.simpleMessage("اضف مؤثرين لبدء حملتك"),
        "add_to_campaign": MessageLookupByLibrary.simpleMessage("أضف للحملة"),
        "add_to_new_campaign":
            MessageLookupByLibrary.simpleMessage("إضافة لحملة جديدة"),
        "add_to_other_campaign":
            MessageLookupByLibrary.simpleMessage("إضافة لحملة اخرى"),
        "add_up_to_fifty_videos_and_images":
            MessageLookupByLibrary.simpleMessage(
                "يمكنك اضافة حتى 50 فيديو او صورة"),
        "add_username":
            MessageLookupByLibrary.simpleMessage("أدخل اسم المستخدم"),
        "add_video_image":
            MessageLookupByLibrary.simpleMessage("أضف فيديو أو صورة"),
        "add_video_or_image":
            MessageLookupByLibrary.simpleMessage("اضف فيديو او صورة"),
        "add_you_tube_video":
            MessageLookupByLibrary.simpleMessage("اضف مقطع يوتيوب"),
        "add_your_notes_here":
            MessageLookupByLibrary.simpleMessage("أضف ملاحظاتك هنا..."),
        "added": MessageLookupByLibrary.simpleMessage("تمت الإضافة"),
        "added_successfully":
            MessageLookupByLibrary.simpleMessage("تمت الاضافة بنجاح"),
        "addition_to_campaign":
            MessageLookupByLibrary.simpleMessage("إضافة الى حملة"),
        "additional": MessageLookupByLibrary.simpleMessage("إضافية"),
        "additional_information": MessageLookupByLibrary.simpleMessage(
            "للحصول على معلومات إضافية حول ما هو مسموح به وما هو غير مسموح به في نجوم."),
        "additional_sections":
            MessageLookupByLibrary.simpleMessage("اقسام إضافية"),
        "address": MessageLookupByLibrary.simpleMessage("العنوان"),
        "ads": MessageLookupByLibrary.simpleMessage("للإعلان"),
        "after_verification_you_can_start_direct_conversations_with_influencers_and_discuss_your_marketing_campaign_details":
            MessageLookupByLibrary.simpleMessage(
                "بعد التوثيق، يمكنك بدء المحادثات المباشرة مع المؤثرين، ومناقشة تفاصيل حملاتك التسويقية."),
        "age": MessageLookupByLibrary.simpleMessage("العمر"),
        "age_15_20": MessageLookupByLibrary.simpleMessage("20-15 سنة"),
        "age_21_25": MessageLookupByLibrary.simpleMessage("25-21 سنة"),
        "age_26_35": MessageLookupByLibrary.simpleMessage("35-26 سنة"),
        "age_36_45": MessageLookupByLibrary.simpleMessage("45-36 سنة"),
        "age_46_plus": MessageLookupByLibrary.simpleMessage("46 سنة فأكثر"),
        "age_group": MessageLookupByLibrary.simpleMessage("الفئة العمرية"),
        "age_group_of_target_audience": MessageLookupByLibrary.simpleMessage(
            "الفئة العمرية للجمهور المستهدف"),
        "age_prompt": MessageLookupByLibrary.simpleMessage("كم عمرك؟"),
        "age_selection": MessageLookupByLibrary.simpleMessage("اختر السن"),
        "agency": MessageLookupByLibrary.simpleMessage("الوكالة"),
        "agency_email":
            MessageLookupByLibrary.simpleMessage("البريد الإلكتروني للوكالة"),
        "agency_info": MessageLookupByLibrary.simpleMessage("معلومات الوكالة"),
        "agency_name": MessageLookupByLibrary.simpleMessage("اسم الوكالة"),
        "agency_tax": MessageLookupByLibrary.simpleMessage("رسوم الوكالة"),
        "aiAnalyzingLink": MessageLookupByLibrary.simpleMessage(
            "الذكاء الاصطناعي يقوم بتحليل الرابط واستخراج المعلومات اللازمة لإنشاء بيانات حملتك."),
        "ai_add_stars_hint": MessageLookupByLibrary.simpleMessage(
            "الذكاء الاصطناعي في نجوم سيقترح لك المؤثرين الأنسب لحملتك بناءً على تفاصيل الحملة. أضفهم وابدأ الآن!"),
        "ai_analyzes_brand_and_goals": MessageLookupByLibrary.simpleMessage(
            "الذكاء الاصطناعي يحلل علامتك التجارية وأهدافك ليقترح المؤثرين المثاليين لحملتك الإعلانية"),
        "ai_assistance_message": MessageLookupByLibrary.simpleMessage(
            "أدخل رابط موقعك أو حسابك على وسائل التواصل الاجتماعي، وسيقوم الذكاء الاصطناعي في نجوم بتعبئة البيانات تلقائيًا لك. يمكنك الاطلاع عليها وتعديلها حسب رغبتك قبل إنشاء الحملة."),
        "ai_description": MessageLookupByLibrary.simpleMessage(
            "الذكاء الاصطناعي يسهّل عليك إنشاء حملتك التسويقية ويقترح لك المؤثرين الأنسب لمجال منشأتك."),
        "ai_makes_it_easy_to_create_your_marketing_campaign_and_suggests_the_most_suitable_stars_for_your_business_field":
            MessageLookupByLibrary.simpleMessage(
                "الذكاء الاصطناعي يسهّل عليك إنشاء حملتك التسويقية ويقترح لك المؤثرين الأنسب لمجال منشأتك."),
        "ai_star_suggestion_desc": MessageLookupByLibrary.simpleMessage(
            "تم اقتراح هؤلاء المؤثرين بواسطة الذكاء الاصطناعي بناءً على بيانات حملتك لتحقيق أفضل تطابق."),
        "ai_that_simplifies_every_step":
            MessageLookupByLibrary.simpleMessage("ذكاء اصطناعي يسهّل كل خطوة"),
        "albums": MessageLookupByLibrary.simpleMessage("الألبومات"),
        "all": MessageLookupByLibrary.simpleMessage("الكل"),
        "allPlatForm": MessageLookupByLibrary.simpleMessage("كافة المنصات"),
        "all_campaigns": MessageLookupByLibrary.simpleMessage("كل الحملات"),
        "all_cities": MessageLookupByLibrary.simpleMessage("جميع المدن"),
        "all_countries": MessageLookupByLibrary.simpleMessage("جميع الدول"),
        "all_tab": MessageLookupByLibrary.simpleMessage("الكل"),
        "allow_my_location_access":
            MessageLookupByLibrary.simpleMessage("السماح بالوصول إلى موقعي"),
        "allow_notifications":
            MessageLookupByLibrary.simpleMessage("السماح بالإشعارات"),
        "already_released_payment":
            MessageLookupByLibrary.simpleMessage("قام بالدفع بالفعل"),
        "already_used": MessageLookupByLibrary.simpleMessage("مستخدمة مسبقًا"),
        "amount_to_withdraw":
            MessageLookupByLibrary.simpleMessage("المبلغ المراد سحبه"),
        "amount_will_calculated_when_adding_services":
            MessageLookupByLibrary.simpleMessage(
                "إجمالي المبلغ يظهر عند إضافة خدمات لأي مؤثر."),
        "analysis": MessageLookupByLibrary.simpleMessage("التحليل"),
        "analyst_review": MessageLookupByLibrary.simpleMessage(
            "خلال الفترة من ال5 إلى 15 يوما القادمة سوف يقوم ملحللونا بمراجعة المعلومات التى قدمتها. إذا تمكنا من الشراكة معك، سوف نتصل بك للحصول على معلومات إضافية. "),
        "and_write_review":
            MessageLookupByLibrary.simpleMessage("واكتب تقييمك"),
        "answer_5_questions": MessageLookupByLibrary.simpleMessage(
            "اجب على 5 اسئلة واحصل على 2 ريال اليوم بالاضافة الى فرصة للفوز ببطاقة هدايا بقيمة 100 ريال "),
        "any_number": MessageLookupByLibrary.simpleMessage("أي عدد"),
        "any_price": MessageLookupByLibrary.simpleMessage("أي سعر"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "app_store": MessageLookupByLibrary.simpleMessage("متجر التطبيقات"),
        "apple": MessageLookupByLibrary.simpleMessage("أبل"),
        "apple_pay": MessageLookupByLibrary.simpleMessage("أبل باي"),
        "apple_store": MessageLookupByLibrary.simpleMessage("متجر تطبيقات أبل"),
        "application": MessageLookupByLibrary.simpleMessage("الاستمارة"),
        "apply": MessageLookupByLibrary.simpleMessage("حفظ"),
        "appropriate_platforms_for_campaign":
            MessageLookupByLibrary.simpleMessage("المنصات المناسبة للحملة"),
        "approval_confirmation": MessageLookupByLibrary.simpleMessage(
            "بموافقتك على الطلب ، تاكد انك استلمت الطلب وسيتم تحرير المبلغ ليصبح متاحًا للنجم. إذا لم يتم اتخاذ أي إجراء خلال 5 أيام من تاريخ تسليم الطلب، سيتم الموافقة تلقائيًا على الطلب وتحويل المبلغ إلى النجم تلقائيًا لضمان سير العمليات بسلاسة."),
        "approved": MessageLookupByLibrary.simpleMessage("مقبول"),
        "approved_request": MessageLookupByLibrary.simpleMessage("وافق النحم"),
        "approved_title": MessageLookupByLibrary.simpleMessage("موعد التسليم"),
        "april": MessageLookupByLibrary.simpleMessage("أبريل"),
        "ar_name": MessageLookupByLibrary.simpleMessage("الاسم بالعربية"),
        "arabic_name_validation": MessageLookupByLibrary.simpleMessage(
            "يجب أن تكون الحروف باللغة العربية"),
        "archive": MessageLookupByLibrary.simpleMessage("أرشفة"),
        "archivedChats": MessageLookupByLibrary.simpleMessage("محادثات مؤرشفة"),
        "are_you_influencer":
            MessageLookupByLibrary.simpleMessage("هل أنت مؤثر؟"),
        "are_you_sure": MessageLookupByLibrary.simpleMessage("هل أنت متأكد؟"),
        "artificialIntelligence":
            MessageLookupByLibrary.simpleMessage("الذكاء الاصطناعي"),
        "asset_deleted_successfully":
            MessageLookupByLibrary.simpleMessage("تم حذف المرفق بنجاح"),
        "attach_file": MessageLookupByLibrary.simpleMessage("المرفقات"),
        "attach_proof": MessageLookupByLibrary.simpleMessage("إرفاق شهادة"),
        "attach_screenshot":
            MessageLookupByLibrary.simpleMessage("ارفق لقطة شاشة"),
        "attached_notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "attachment": MessageLookupByLibrary.simpleMessage("المُرفقات"),
        "attachment_file": MessageLookupByLibrary.simpleMessage("📎 ملف"),
        "attachment_for_star":
            MessageLookupByLibrary.simpleMessage("المرفقات للمؤثر"),
        "attachment_general": MessageLookupByLibrary.simpleMessage("📎 مرفق"),
        "attachment_photo": MessageLookupByLibrary.simpleMessage("📷 صورة"),
        "attachment_uploaded":
            MessageLookupByLibrary.simpleMessage("تم تحميل الملف بنجاح"),
        "attachment_video": MessageLookupByLibrary.simpleMessage("🎥 فيديو"),
        "attachment_voice_message":
            MessageLookupByLibrary.simpleMessage("🎤 رسالة صوتية"),
        "attachments": MessageLookupByLibrary.simpleMessage("المُرفقات"),
        "attachments_request_ad":
            MessageLookupByLibrary.simpleMessage("المرفقات"),
        "attachments_shared_successfully":
            MessageLookupByLibrary.simpleMessage("تم مشاركة المرفقات بنجاح"),
        "attachments_will_appear_here": MessageLookupByLibrary.simpleMessage(
            "ستظهر المرفقات هنا بمجرد قيام المؤثر برفعها."),
        "audience": MessageLookupByLibrary.simpleMessage("الجمهور"),
        "audience_authenticity":
            MessageLookupByLibrary.simpleMessage("مصداقية الجمهور"),
        "audience_authenticity_description": MessageLookupByLibrary.simpleMessage(
            "درجة جودة الجمهور (AQS) هي مقياس مركّب من 1 إلى 100 يحدد الجودة العامة لجمهور المؤثر.\nتعتمد على عدة عناصر مثل: معدل التفاعل، جودة الجمهور، نمو المتابعين والمتابَعين، ومصداقية التفاعل.\nكلما ارتفعت قيمة AQS كانت الجودة أفضل."),
        "audience_countries":
            MessageLookupByLibrary.simpleMessage("دول الجمهور"),
        "audience_credibility":
            MessageLookupByLibrary.simpleMessage("مصداقية الجمهور"),
        "audience_credibility_description": MessageLookupByLibrary.simpleMessage(
            "مصداقية الجمهور توضح نسبة الجمهور الحقيقي، وتعتمد على نسبة الأشخاص الحقيقيين والمؤثرين في الحساب. كلما زاد عددهم، ارتفعت مصداقية الجمهور. أما إذا كان جزء كبير من الجمهور عبارة عن حسابات كثيرة المتابعات أو حسابات مشبوهة، فإن الجمهور يعتبر غير موثوق."),
        "audience_quality":
            MessageLookupByLibrary.simpleMessage("جودة الجمهور"),
        "audience_quality_description": MessageLookupByLibrary.simpleMessage(
            "نسبة الأشخاص الحقيقيين والمؤثرين بين متابعي المؤثر."),
        "audience_quality_score":
            MessageLookupByLibrary.simpleMessage("درجة جودة الجمهور (AQS)"),
        "audience_quality_score_criteria_title":
            MessageLookupByLibrary.simpleMessage(
                "معايير حساب درجة جودة الجمهور"),
        "audience_reachability":
            MessageLookupByLibrary.simpleMessage("قابلية الوصول"),
        "audience_reachability1":
            MessageLookupByLibrary.simpleMessage("قابلية الوصول إلى الجمهور"),
        "audience_reachability_description": MessageLookupByLibrary.simpleMessage(
            "المستخدمون الذين يتابعون أقل من 1500 حساب يُعتبرون جمهورًا يمكن الوصول إليه، وغالبًا يشاهدون معظم منشورات المؤثر. أما الأشخاص الذين يتابعون عددًا كبيرًا من الحسابات، فقد لا تظهر لهم منشورات المؤثر بين آلاف المنشورات الأخرى، لذلك يُعتبر وصول هذا الجمهور أقل."),
        "audience_sentiments":
            MessageLookupByLibrary.simpleMessage("آراء الجمهور"),
        "audience_trustworthiness":
            MessageLookupByLibrary.simpleMessage("مصداقية الجمهور"),
        "audience_trustworthiness_description":
            MessageLookupByLibrary.simpleMessage(
                "مصداقية الجمهور تعني وجود أشخاص حقيقيين ومؤثرين ضمن الحساب، مع استبعاد الحسابات المشبوهة وكثيرة المتابعات. وهي توضح نسبة الجمهور الحقيقي وتعتمد على نسبة الأشخاص الحقيقيين والمؤثرين في الحساب. كلما زاد عددهم ارتفعت مصداقية الجمهور، أما إذا كان جزء كبير من الجمهور عبارة عن حسابات مشبوهة أو كثيرة المتابعات فإن الجمهور يُعتبر غير موثوق."),
        "audience_type": MessageLookupByLibrary.simpleMessage("نوع الجمهور"),
        "audio_error": MessageLookupByLibrary.simpleMessage("خطأ!!"),
        "august": MessageLookupByLibrary.simpleMessage("أغسطس"),
        "authenticate_message": MessageLookupByLibrary.simpleMessage(
            "برجاء تسجيل الدخزل أو إنشاء حساب للتعاون، عرض صفحات النجوم، التواصل، المزيد... "),
        "auto_filled_information_note": MessageLookupByLibrary.simpleMessage(
            "تم تعبئة هذه المعلومات تلقائيًا عن طريق الذكاء الاصطناعي في نجوم بناءً على البيانات المتاحة في الرابط الذي أدخلته. يمكنك تعديل أي خيار أو تغيير أي معلومة لتناسب احتياجاتك بشكل أفضل."),
        "auto_generated_description_note": MessageLookupByLibrary.simpleMessage(
            "تم إنشاء هذا الوصف تلقائيًا بواسطة الذكاء الاصطناعي بناءً على المعلومات المدخلة. يمكنك تعديله يدويًا أو الضغط على “إعادة الصياغة” لإنشاء وصف جديد بصياغة مختلفة."),
        "available_balance":
            MessageLookupByLibrary.simpleMessage("المبلغ المتاح"),
        "available_campaign":
            MessageLookupByLibrary.simpleMessage("الحملات المتاحة"),
        "average": MessageLookupByLibrary.simpleMessage("متوسط"),
        "avg_views_per_post":
            MessageLookupByLibrary.simpleMessage("متوسط المشاهدات لكل منشور"),
        "away_from":
            MessageLookupByLibrary.simpleMessage("بعيد عن مستوى العملاء ال"),
        "back": MessageLookupByLibrary.simpleMessage("رجوع"),
        "bad_experience": MessageLookupByLibrary.simpleMessage(
            "لدي تجربة سيئة في استخدام التطبيق"),
        "balance": MessageLookupByLibrary.simpleMessage(" الرصيد"),
        "bank": MessageLookupByLibrary.simpleMessage("البنك"),
        "bankName": MessageLookupByLibrary.simpleMessage("اسم البنك"),
        "bank_account": MessageLookupByLibrary.simpleMessage("الحساب البنكي"),
        "bank_deleted_success":
            MessageLookupByLibrary.simpleMessage("تم حذف البنك بنجاح"),
        "bank_name": MessageLookupByLibrary.simpleMessage("اسم البنك"),
        "bank_updated_success":
            MessageLookupByLibrary.simpleMessage("تم تحديث البنك بنجاح"),
        "basic_account": MessageLookupByLibrary.simpleMessage("الحساب الأساسي"),
        "before_reporting": MessageLookupByLibrary.simpleMessage(
            "قبل الإبلاغ عن هذا الملف الشخصي.!"),
        "beneficiary_name":
            MessageLookupByLibrary.simpleMessage("اسم المستفيد"),
        "better_alt":
            MessageLookupByLibrary.simpleMessage("لقد وجدت بديلا أفضل"),
        "bid": MessageLookupByLibrary.simpleMessage("مزايدة"),
        "bid_accepted": MessageLookupByLibrary.simpleMessage("قبول العرض"),
        "bid_description":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال وصف المزايدة"),
        "biddings": MessageLookupByLibrary.simpleMessage("المزايدات"),
        "billing_address":
            MessageLookupByLibrary.simpleMessage("عنوان الفواتير"),
        "birthDate": MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
        "birth_day": MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
        "blackmail": MessageLookupByLibrary.simpleMessage("الابتزاز والتحرش"),
        "blockAndReport": MessageLookupByLibrary.simpleMessage("حظر وابلاغ"),
        "blockedSuccessfully":
            MessageLookupByLibrary.simpleMessage("تم الحظر بنجاح"),
        "blocked_time_ago": m0,
        "blue": MessageLookupByLibrary.simpleMessage("الأزرق"),
        "blue_level_reward": MessageLookupByLibrary.simpleMessage(
            "1200 نقطة للوصول الى المستوى الأزرق"),
        "boost_your_collaboration": MessageLookupByLibrary.simpleMessage(
            "عزز فؤصك للتعاون باضافة فيديو لأحد حملاتك الناجحة الى سابقة أعمالك"),
        "brand": MessageLookupByLibrary.simpleMessage("الشركات"),
        "brand_name":
            MessageLookupByLibrary.simpleMessage("اسم العلامة التجارية"),
        "brand_only":
            MessageLookupByLibrary.simpleMessage(" العلامات التجارية فقط"),
        "brand_profile_desc": MessageLookupByLibrary.simpleMessage(
            "صفحة الشركات مرئية للشركات فقط. استخدم هذا الرابط كرابط لشركاتك على جميع المنصات."),
        "brands_login": MessageLookupByLibrary.simpleMessage(
            "تسجيل الدخول للعلامات التجارية"),
        "brands_only":
            MessageLookupByLibrary.simpleMessage(" العلامات التجارية فقط"),
        "brief": MessageLookupByLibrary.simpleMessage("وصف مختصر"),
        "brief_description_of_influencer":
            MessageLookupByLibrary.simpleMessage("تفاصيل"),
        "budget": MessageLookupByLibrary.simpleMessage("الميزانية"),
        "budget_suggestion_note": MessageLookupByLibrary.simpleMessage(
            "تم اقتراح هذه الميزانية تلقائيًا، ويمكنك تعديلها بما يتناسب مع خطتك وأهدافك."),
        "business": MessageLookupByLibrary.simpleMessage("الأعمال"),
        "business_email":
            MessageLookupByLibrary.simpleMessage("بريد العمل الالكترونى"),
        "by_clicking_continue_you_agree_to":
            MessageLookupByLibrary.simpleMessage(
                "بالضغط على الاستمرار توافق على"),
        "cRN": MessageLookupByLibrary.simpleMessage("رقم السجل التجارى"),
        "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
        "campaign": MessageLookupByLibrary.simpleMessage("الحملة"),
        "campaignData": MessageLookupByLibrary.simpleMessage("بيانات الحملة"),
        "campaignDataReady":
            MessageLookupByLibrary.simpleMessage("بيانات حملتك جاهزة ✨"),
        "campaignDetails":
            MessageLookupByLibrary.simpleMessage("تفاصيل الحملة"),
        "campaignFiles": MessageLookupByLibrary.simpleMessage("ملفات الحملة"),
        "campaignId": MessageLookupByLibrary.simpleMessage("رقم الحملة"),
        "campaignStatus": MessageLookupByLibrary.simpleMessage("حالة الحملات"),
        "campaignTitle": MessageLookupByLibrary.simpleMessage("عنوان الحملة"),
        "campaign_already_participated": MessageLookupByLibrary.simpleMessage(
            "المؤثر ضمن هذه الحملة، لا يمكن إضافته أو إزالته"),
        "campaign_attachments":
            MessageLookupByLibrary.simpleMessage("مرفقات الحملة"),
        "campaign_attachments_supported_formats":
            MessageLookupByLibrary.simpleMessage(
                "الملفات المدعومة: الصور، الفيديو، ملفات PDF "),
        "campaign_closed":
            MessageLookupByLibrary.simpleMessage("الحملة مغلقة الآن"),
        "campaign_completion": MessageLookupByLibrary.simpleMessage(
            "عند اكتمال طلبك والموافقة عليه، سيتمكن النجم من سحب المبلغ"),
        "campaign_cost": MessageLookupByLibrary.simpleMessage("تكلفة الحملة"),
        "campaign_created":
            MessageLookupByLibrary.simpleMessage("تم نشر الحملة بنجاح"),
        "campaign_data": MessageLookupByLibrary.simpleMessage("بيانات الحملة"),
        "campaign_date":
            MessageLookupByLibrary.simpleMessage("تاريخ الحملة(اختيارى)"),
        "campaign_describe": MessageLookupByLibrary.simpleMessage("وصف الحملة"),
        "campaign_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل الحملة"),
        "campaign_history": MessageLookupByLibrary.simpleMessage("المعاملات"),
        "campaign_id_not_found":
            MessageLookupByLibrary.simpleMessage("معرف الحملة غير موجود"),
        "campaign_info": MessageLookupByLibrary.simpleMessage(
            "تم إيداع المبلغ بنجاح في منصة نجوم، ولكن لن يتم تحويله إلى المؤثرين مباشرة. بعد تسليم المؤثر للحملة المطلوبة، يمكنك مراجعة العمل والموافقة على تحويل المبلغ. إذا لم يتم اتخاذ أي إجراء خلال 5 أيام من تاريخ التسليم، سيتم اعتماد الحملة وتحويل المبلغ إلى المؤثر تلقائيًا لضمان سير العمليات بسلاسة."),
        "campaign_objectives":
            MessageLookupByLibrary.simpleMessage("الهدف من الحملة"),
        "campaign_publish_date":
            MessageLookupByLibrary.simpleMessage("التاريخ"),
        "campaign_publish_time": MessageLookupByLibrary.simpleMessage("الوقت"),
        "campaign_status": MessageLookupByLibrary.simpleMessage("حالة الحملة"),
        "campaign_title": MessageLookupByLibrary.simpleMessage("عنوان الحملة"),
        "campaigns": MessageLookupByLibrary.simpleMessage("الحملات"),
        "campaigns_overview_message": MessageLookupByLibrary.simpleMessage(
            "هنا ستجد جميع حملاتك بمجرد إنشائها. يمكنك تقديم حملة جديد والاطلاع على تفاصيل الحملات الحالية والسابقة."),
        "can_not_pace_bid": MessageLookupByLibrary.simpleMessage(
            "لا يمكنك تقديم مزايدة لهذه الحملة"),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "cancel_bid": MessageLookupByLibrary.simpleMessage("الغاء المزايدة"),
        "cancel_this_bid":
            MessageLookupByLibrary.simpleMessage("الغاء هذه المزايدة؟"),
        "cancel_withdraw":
            MessageLookupByLibrary.simpleMessage("إلغاء هذا السحب"),
        "cannot_change_quantity_in_bundle_mode":
            MessageLookupByLibrary.simpleMessage(
                "السعر الموحّد مفعل، لا يمكنك اختيار خدمات"),
        "cannot_open_file":
            MessageLookupByLibrary.simpleMessage("لا يمكن فتح الملف"),
        "cannot_open_file_with_external_app":
            MessageLookupByLibrary.simpleMessage(
                "لا يمكن فتح الملف بتطبيق خارجي"),
        "cannot_share_file":
            MessageLookupByLibrary.simpleMessage("لا يمكن مشاركة الملف"),
        "card": MessageLookupByLibrary.simpleMessage("البطاقة"),
        "card_number": MessageLookupByLibrary.simpleMessage("رقم البطاقة"),
        "career": MessageLookupByLibrary.simpleMessage("المسار المهني"),
        "category": MessageLookupByLibrary.simpleMessage("المجال"),
        "category_and_tags":
            MessageLookupByLibrary.simpleMessage("الاقسام و الفئات"),
        "category_score": MessageLookupByLibrary.simpleMessage("درجة الفئة"),
        "ceo_name": MessageLookupByLibrary.simpleMessage("أحمد آّل سنان"),
        "change": MessageLookupByLibrary.simpleMessage("تغيير"),
        "change_logo": MessageLookupByLibrary.simpleMessage("تغيير الشعار"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور"),
        "chat": MessageLookupByLibrary.simpleMessage("محادثة"),
        "chatWithClient":
            MessageLookupByLibrary.simpleMessage("دردشة مع العميل"),
        "chat_with_us": MessageLookupByLibrary.simpleMessage("تواصل معنا"),
        "chats": MessageLookupByLibrary.simpleMessage("المحادثات"),
        "chatting_star_messages_displayed_here":
            MessageLookupByLibrary.simpleMessage(
                "سيتم عرض جميع محادثات النجوم هنا بعد التواصل معهم."),
        "check_your_domain":
            MessageLookupByLibrary.simpleMessage("من فضلك تحقق من النطاق"),
        "check_your_email":
            MessageLookupByLibrary.simpleMessage("تحقق من بريدك الالكتروني"),
        "choose_account": MessageLookupByLibrary.simpleMessage("اختر حسابًا"),
        "choose_profile_image":
            MessageLookupByLibrary.simpleMessage("اختر صورة الملف الشخصي"),
        "cities": MessageLookupByLibrary.simpleMessage("المدن"),
        "cities_selected": MessageLookupByLibrary.simpleMessage("مدن مختارة"),
        "city": MessageLookupByLibrary.simpleMessage("المدينة"),
        "claim_link":
            MessageLookupByLibrary.simpleMessage("احصل على رابط نجوم الخاص بك"),
        "clear": MessageLookupByLibrary.simpleMessage("اعادة تعيين"),
        "clear_all": MessageLookupByLibrary.simpleMessage("مسح الكل"),
        "clear_chat": MessageLookupByLibrary.simpleMessage("مسح الدردشة"),
        "click_link": MessageLookupByLibrary.simpleMessage("اضغط على الرابط"),
        "click_link_desc": MessageLookupByLibrary.simpleMessage(
            "ابحث عن الروابط بالأعلى، واضغط على الموقع لكتابة تقييم."),
        "click_link_title":
            MessageLookupByLibrary.simpleMessage("اضغط على الرابط"),
        "click_link_to_open":
            MessageLookupByLibrary.simpleMessage("اضغط هنا لفتح الرابط"),
        "client": MessageLookupByLibrary.simpleMessage("عميل"),
        "client_accept_deposit": MessageLookupByLibrary.simpleMessage(
            "بمجرد قبول العميل لك، سيقوم بإيداع الأموال وتحرير الدفع عند إكمال حملته."),
        "client_pay":
            MessageLookupByLibrary.simpleMessage("قيام العميل بالدفع"),
        "client_release":
            MessageLookupByLibrary.simpleMessage("قيام العميل بتحرير الدفع"),
        "client_release_deposit": MessageLookupByLibrary.simpleMessage(
            "لقد قام العميل بالفعل بالإيداع.\n"),
        "clients": MessageLookupByLibrary.simpleMessage("عملائي"),
        "clients_files": MessageLookupByLibrary.simpleMessage("ملفات العميل"),
        "clients_will_appear_here":
            MessageLookupByLibrary.simpleMessage("سيظهر عملاؤك هنا"),
        "close": MessageLookupByLibrary.simpleMessage("اغلاق"),
        "close_campaign":
            MessageLookupByLibrary.simpleMessage("الحملات المغلقة"),
        "close_campaign_button_cont":
            MessageLookupByLibrary.simpleMessage("نعم، اغلق هذه الحملة"),
        "close_campaign_confirm_message":
            MessageLookupByLibrary.simpleMessage("اغلاق هذه الحملة؟"),
        "closedCampaigns":
            MessageLookupByLibrary.simpleMessage("الحملات المغلقة"),
        "code_not_received":
            MessageLookupByLibrary.simpleMessage("لم تتلق الكود ؟"),
        "collaborated_with":
            MessageLookupByLibrary.simpleMessage("تعاونت معهم"),
        "collaborations": MessageLookupByLibrary.simpleMessage("تعاونات"),
        "comment": MessageLookupByLibrary.simpleMessage("تعليق"),
        "comments": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "comments_avg_per_post":
            MessageLookupByLibrary.simpleMessage("معدل التعليقات لكل منشور"),
        "commercial_or_freelance_number": MessageLookupByLibrary.simpleMessage(
            "رقم السجل التجاري أو وثيقة العمل الحُر"),
        "commercial_register_number":
            MessageLookupByLibrary.simpleMessage("رقم السجل التجاري"),
        "commercial_registration":
            MessageLookupByLibrary.simpleMessage("السجل التجاري"),
        "commercial_registration_or_freelance_document":
            MessageLookupByLibrary.simpleMessage(
                "السجل التجاري أو وثيقة العمل الحُر"),
        "community_guidelines":
            MessageLookupByLibrary.simpleMessage("إرشادات مجتمعنا"),
        "company_link":
            MessageLookupByLibrary.simpleMessage("رابط يعبر عن شركتك"),
        "company_name": MessageLookupByLibrary.simpleMessage("اسم الشركة"),
        "company_name_as_in_record": MessageLookupByLibrary.simpleMessage(
            "اسم الشركة كما هو في السجل التجاري"),
        "company_size": MessageLookupByLibrary.simpleMessage("حجم الشركة"),
        "company_type": MessageLookupByLibrary.simpleMessage("نوع الشركة"),
        "compatibility_score":
            MessageLookupByLibrary.simpleMessage("درجة التوافق"),
        "compatibility_score_description": MessageLookupByLibrary.simpleMessage(
            "هذه الدرجة تمثل مدى ملاءمة هذا المؤثر لك، بناءً على مجموعة من المعايير المرتبطة بجمهوره وأداء حسابه."),
        "compatibility_score_details": MessageLookupByLibrary.simpleMessage(
            "تفاصيل درجة التوافق مع هذا المؤثر"),
        "complete": MessageLookupByLibrary.simpleMessage("مكتمل"),
        "complete_data_submit_verification": MessageLookupByLibrary.simpleMessage(
            "اكمل معلومات حسابك، مما يتيح لك الوصول الي جميع المميزات في منصة نجوم."),
        "complete_order": MessageLookupByLibrary.simpleMessage("إتمام الطلب"),
        "complete_profile": MessageLookupByLibrary.simpleMessage(
            "أخيرا، إكمال ملفك الشخصي بنسبة 100% سيجعل الأمر أسرع وأسهل لنا للبدء في استامرتك "),
        "complete_your_data":
            MessageLookupByLibrary.simpleMessage("اكمل معلوماتك لتوثيق حسابك"),
        "completed": MessageLookupByLibrary.simpleMessage("مكتمل"),
        "completedCampaigns":
            MessageLookupByLibrary.simpleMessage("الحملات المكتملة"),
        "completed_campaign":
            MessageLookupByLibrary.simpleMessage("الحملات المكتملة"),
        "completed_request":
            MessageLookupByLibrary.simpleMessage("تمت موافقتك"),
        "completed_title": MessageLookupByLibrary.simpleMessage("تم التسليم"),
        "completion_message": MessageLookupByLibrary.simpleMessage(
            "لقد اكملت العمل الذى طلبته وأرفقت المستندات اللازمة..."),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmUnBlock": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد إلغاء حظر هذا المستخدم؟"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "من فضلك ادخل كلمة المرورمتطابق"),
        "confirm_cancel_bid":
            MessageLookupByLibrary.simpleMessage("نعم، قم بإلغاء هذه المزايدة"),
        "confirm_del_account": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد من حذف حسابك بشكل دائم ؟"),
        "confirm_delete": MessageLookupByLibrary.simpleMessage("نعم، احذفه!"),
        "confirm_delete_txt":
            MessageLookupByLibrary.simpleMessage("انت على وشك حذف"),
        "confirm_deleting": MessageLookupByLibrary.simpleMessage(
            "يرجى تأكيد قرارك قبل المتابعة."),
        "confirm_message": MessageLookupByLibrary.simpleMessage(
            "لقد قمت بإعادة تعيين كلمة المرور الخاصة بك\nبنجاح. الرجاء استخدام كلمة المرور الجديدة\n عند تسجيل الدخول"),
        "confirm_new_password":
            MessageLookupByLibrary.simpleMessage("تاكيد كلمة المرور الجديدة"),
        "confirm_order_approval":
            MessageLookupByLibrary.simpleMessage("تأكيد الموافقة على الطلب"),
        "confirm_save_txt": MessageLookupByLibrary.simpleMessage(
            "هل تود حفظ التعديلات قبل الخروخ"),
        "confirm_sign_out":
            MessageLookupByLibrary.simpleMessage("هل تريد تأكيد "),
        "confirm_verification_code":
            MessageLookupByLibrary.simpleMessage("تأكيد رمز التحقق"),
        "confirmationReportsText": MessageLookupByLibrary.simpleMessage(
            "يرجى التحقق من التقرير الخاص بك قبل التقديم للمذايدة"),
        "confirmation_prompt":
            MessageLookupByLibrary.simpleMessage("هل أنت متاكد من أنك تريد"),
        "congratulations": MessageLookupByLibrary.simpleMessage("تهانينا"),
        "connect": MessageLookupByLibrary.simpleMessage("تواصل"),
        "connect_description": MessageLookupByLibrary.simpleMessage(
            "بعد التوثيق، يمكنك بدء المحادثات المباشرة مع المؤثرين، ومناقشة تفاصيل حملاتك التسويقية."),
        "connect_with_influencers":
            MessageLookupByLibrary.simpleMessage("تواصل مع المؤثرين"),
        "connectionSource": MessageLookupByLibrary.simpleMessage("جهة اتصال"),
        "consumers": MessageLookupByLibrary.simpleMessage("مستهلكون"),
        "contact": MessageLookupByLibrary.simpleMessage("جهة الاتصال"),
        "contact_name": MessageLookupByLibrary.simpleMessage("الاسم"),
        "contact_use": MessageLookupByLibrary.simpleMessage("اتصل بنا"),
        "contact_with_star":
            MessageLookupByLibrary.simpleMessage("التواصل مع النجم"),
        "continue_editing":
            MessageLookupByLibrary.simpleMessage("متابعة التعديل"),
        "contract": MessageLookupByLibrary.simpleMessage("العقود"),
        "contract_canceled":
            MessageLookupByLibrary.simpleMessage("الغاء العقد"),
        "contract_date": MessageLookupByLibrary.simpleMessage("تاريخ العقد"),
        "cooperating_with_companies": MessageLookupByLibrary.simpleMessage(
            "التعاون مع الشركات يعزز الفرص وجاذبية الملف الشخصي."),
        "cooperations": MessageLookupByLibrary.simpleMessage("التعاونات"),
        "copied": MessageLookupByLibrary.simpleMessage("تم النسخ بنجاح"),
        "copy": MessageLookupByLibrary.simpleMessage("نسخ"),
        "copy_link": MessageLookupByLibrary.simpleMessage("نسخ الرابط"),
        "countries": MessageLookupByLibrary.simpleMessage("الدول"),
        "country": MessageLookupByLibrary.simpleMessage("الدولة"),
        "coupon": MessageLookupByLibrary.simpleMessage("كوبون(اختيارى)"),
        "cr_number": MessageLookupByLibrary.simpleMessage("رقم السجل التجاري"),
        "cr_number_hint": MessageLookupByLibrary.simpleMessage(
            "رقم السجل التجاري أو رقم المنشأة يتكوّن من 10 أرقام، وغالبًا يبدأ بـ 1 أو 7، ويُصدر من وزارة التجارة."),
        "create": MessageLookupByLibrary.simpleMessage("إنشاء"),
        "createYourCampaignThrough":
            MessageLookupByLibrary.simpleMessage("أنشئ حملتك عن طريق"),
        "create_account": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
        "create_and_add": MessageLookupByLibrary.simpleMessage("إنشاء وإضافة"),
        "create_campaign": MessageLookupByLibrary.simpleMessage("إنشاء حملة"),
        "create_campaign_in_small":
            MessageLookupByLibrary.simpleMessage("إنشاء حملة"),
        "create_campaign_with_ai": MessageLookupByLibrary.simpleMessage(
            "أنشئ حملتك مع الذكاء الاصطناعي"),
        "create_new_account":
            MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
        "create_offer": MessageLookupByLibrary.simpleMessage("إنشاء عرض"),
        "create_star_account":
            MessageLookupByLibrary.simpleMessage("انشئ حساب النجم الخاص بك"),
        "create_your_ai_campaign": MessageLookupByLibrary.simpleMessage(
            "أنشئ حملتك بالذكاء الاصطناعي"),
        "creation_date": MessageLookupByLibrary.simpleMessage("تاريخ الانشاء"),
        "creator": MessageLookupByLibrary.simpleMessage("النشاط"),
        "credibility": MessageLookupByLibrary.simpleMessage("المصداقية"),
        "crn_already_verified": MessageLookupByLibrary.simpleMessage(
            "لقد قمت بالتحقق من رقم السجل التجارى بالفعل"),
        "currency": MessageLookupByLibrary.simpleMessage("العملة"),
        "current_campaigns":
            MessageLookupByLibrary.simpleMessage("الحملات الحالية"),
        "current_location_message":
            MessageLookupByLibrary.simpleMessage("الموقع الحالي"),
        "current_location_shared":
            MessageLookupByLibrary.simpleMessage("تم مشاركة الموقع الحالي"),
        "current_password":
            MessageLookupByLibrary.simpleMessage("كلمة المرور الحالية"),
        "current_score":
            MessageLookupByLibrary.simpleMessage("درجة الثقة الحالية"),
        "custom": MessageLookupByLibrary.simpleMessage("مخصص"),
        "custom_invitation_link":
            MessageLookupByLibrary.simpleMessage("رابط الدعوة المخصص الخاص بك"),
        "custom_link": MessageLookupByLibrary.simpleMessage("رابط مخصص"),
        "custom_offer": MessageLookupByLibrary.simpleMessage("عرض مخصص"),
        "custom_offer_exists": MessageLookupByLibrary.simpleMessage(
            "يوجد عرض مخصص مضاف لنفس هذه الخدمة"),
        "custom_service_other":
            MessageLookupByLibrary.simpleMessage("خدمة مخصصة اخرى"),
        "customer_support":
            MessageLookupByLibrary.simpleMessage("خدمة العملاء"),
        "cvv":
            MessageLookupByLibrary.simpleMessage("رمز التحقق من البطاقة (CVV)"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("الوضع الليلي"),
        "data_privacy": MessageLookupByLibrary.simpleMessage("خصوصية البيانات"),
        "date": MessageLookupByLibrary.simpleMessage("التاريخ"),
        "days": MessageLookupByLibrary.simpleMessage("ايام"),
        "days_remaining": MessageLookupByLibrary.simpleMessage("يوم متبقي"),
        "deactivate_account":
            MessageLookupByLibrary.simpleMessage("تعطيل الحساب"),
        "deactivate_message": MessageLookupByLibrary.simpleMessage(
            "سيتم إخفاء ملفك الشخصى مؤقتًا\nحتى تقوم بتنشيطه مرة أخرى عن طريق\nتسجيل الدخول مرة أخرى"),
        "deadline": MessageLookupByLibrary.simpleMessage("موعد التسليم"),
        "december": MessageLookupByLibrary.simpleMessage("ديسمبر"),
        "definition": MessageLookupByLibrary.simpleMessage(
            "هي مقياس مركّب من 1 إلى 100 يحدد الجودة العامة لجمهور المؤثر. كلما ارتفعت قيمة AQS كانت الجودة أفضل."),
        "delete": MessageLookupByLibrary.simpleMessage("حذف"),
        "deleteChat": MessageLookupByLibrary.simpleMessage("حذف المحادثة"),
        "deleteChatDesc": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد حذف هذه المحادثة؟"),
        "delete_account": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
        "delete_account_message": MessageLookupByLibrary.simpleMessage(
            "هل تريد إلغاء تنشيط حسابك مؤقتًا\nبدلاً من الحذف؟"),
        "delete_account_notice": MessageLookupByLibrary.simpleMessage(
            "سوف تفقد كافة بياناتك عن طريق\nحذف حسابك. ولا يمكن التراجع عن هذا الإجراء."),
        "delete_bank_account":
            MessageLookupByLibrary.simpleMessage("حذف الحساب البنكى"),
        "delete_bank_account_confirmation": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد حذف هذا الحساب المصرفي؟ ستتم إزالة جميع البيانات المرتبطة ولا يمكن الوصول إليها مرة أخرى. يرجى تأكيد قرارك قبل المتابعة."),
        "delete_company": MessageLookupByLibrary.simpleMessage("حذف الشركة"),
        "delete_draft_influencer_description":
            MessageLookupByLibrary.simpleMessage(
                "هل أنت متأكد أنك تريد حذف هذه المسودة الخاصة بالمؤثر؟"),
        "delete_draft_influencer_title":
            MessageLookupByLibrary.simpleMessage("حذف المسودة"),
        "delete_fil_message": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد حذف هذا الملف؟"),
        "delete_file": MessageLookupByLibrary.simpleMessage("حذف الملف"),
        "delete_for_everyone":
            MessageLookupByLibrary.simpleMessage("الحذف للجميع"),
        "delete_list": MessageLookupByLibrary.simpleMessage("حذف القائمة"),
        "delete_list_confirmation": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد من حذف هذه القائمة؟ لا يمكن التراجع عن هذا الإجراء."),
        "delete_message": MessageLookupByLibrary.simpleMessage("حذف الرسالة"),
        "delete_messages": m1,
        "delete_messages_for_everyone":
            MessageLookupByLibrary.simpleMessage("حذف للجميع"),
        "delete_my_account": MessageLookupByLibrary.simpleMessage("حذف حسابي"),
        "delete_partner": MessageLookupByLibrary.simpleMessage("حذف الشريك"),
        "delete_platform_description": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد أنك تريد حذف هذه المنصة؟"),
        "delete_platform_title":
            MessageLookupByLibrary.simpleMessage("حذف المنصة"),
        "delete_portfolio":
            MessageLookupByLibrary.simpleMessage("حذف سابقة الاعمال"),
        "delete_product": MessageLookupByLibrary.simpleMessage("حذف المنتج"),
        "delete_store": MessageLookupByLibrary.simpleMessage("حذف المتجر"),
        "delete_you_tube_video":
            MessageLookupByLibrary.simpleMessage("حذف مقطع يوتيوب"),
        "delete_your_account":
            MessageLookupByLibrary.simpleMessage("حذف حسابك؟"),
        "delivered": MessageLookupByLibrary.simpleMessage("تم التسليم"),
        "delivered_request":
            MessageLookupByLibrary.simpleMessage("تسليم الطلب"),
        "delivery_in": MessageLookupByLibrary.simpleMessage("يتم التسليم فى"),
        "deposit": MessageLookupByLibrary.simpleMessage("إيداع"),
        "depositIsSecure": MessageLookupByLibrary.simpleMessage(
            "يتم الاحتفاظ بالوديعة بشكل آمن بواسطة نجوم"),
        "deposit_done": MessageLookupByLibrary.simpleMessage("تم إيداع"),
        "deposit_process": MessageLookupByLibrary.simpleMessage(
            "تستغرق عملية الإيداع من 5 دقائق إلى يومين عمل"),
        "describe": MessageLookupByLibrary.simpleMessage("الوصف"),
        "describeOfferHere":
            MessageLookupByLibrary.simpleMessage("اوصف عرضك هنا..."),
        "describe_bid": MessageLookupByLibrary.simpleMessage("اوصف مزايدتك"),
        "describe_camp_details": MessageLookupByLibrary.simpleMessage(
            "قم بوصف الحملة التي تخطط لها. قم بتوفير أكبر قدر ممكن من التفاصيل لجذب النجوم ذوي الصلة."),
        "description": MessageLookupByLibrary.simpleMessage("وصف"),
        "detailed_applications": MessageLookupByLibrary.simpleMessage(
            "بالإضافة إلى ذلك تظهر الاستمارات التي تحتوى على المزيد من التفاصيل مدى جديتك"),
        "details": MessageLookupByLibrary.simpleMessage("تفاصيل"),
        "details_for_influencer":
            MessageLookupByLibrary.simpleMessage("تفاصيل للمؤثر"),
        "details_privacy_hint": MessageLookupByLibrary.simpleMessage(
            "هذه التفاصيل متاحة فقط لهذا المؤثر."),
        "details_provided_to_influencer":
            MessageLookupByLibrary.simpleMessage("التفاصيل المقدمة للمؤثر"),
        "discard": MessageLookupByLibrary.simpleMessage("الغاء التعديلات"),
        "discard_changes":
            MessageLookupByLibrary.simpleMessage("تجاهل التغييرات"),
        "discard_changes_description": MessageLookupByLibrary.simpleMessage(
            "اذا تراجعت الان، سوف تفقد تعديلاتك."),
        "discard_changes_prompt":
            MessageLookupByLibrary.simpleMessage("هل تريد تجاهل التغييرات؟"),
        "discard_changes_title":
            MessageLookupByLibrary.simpleMessage("هل تريد تجاهل التغييرات؟"),
        "discard_changes_warning": MessageLookupByLibrary.simpleMessage(
            "اذا تراجعت الان، سوف تفقد تعديلاتك."),
        "discount": MessageLookupByLibrary.simpleMessage("خصم"),
        "discount_all_platforms":
            MessageLookupByLibrary.simpleMessage("خصم جميع المنصات"),
        "discount_up_to_percent":
            MessageLookupByLibrary.simpleMessage("خصم حتى"),
        "display": MessageLookupByLibrary.simpleMessage("عرض"),
        "distribution_of_video_likes": MessageLookupByLibrary.simpleMessage(
            "توزيع الإعجابات على مقاطع الفيديو"),
        "document": MessageLookupByLibrary.simpleMessage("وثيقة"),
        "documentText": MessageLookupByLibrary.simpleMessage("مستند"),
        "dollar": MessageLookupByLibrary.simpleMessage("دولار"),
        "domain_match": MessageLookupByLibrary.simpleMessage("تطابق المجال"),
        "domain_match_description": MessageLookupByLibrary.simpleMessage(
            "تقيس مدى تطابق مجالات المؤثر مع فئات الحملة. كلما زاد هذا التطابق، زادت ملاءمة المؤثر للحملة."),
        "done": MessageLookupByLibrary.simpleMessage("تم"),
        "download_app": MessageLookupByLibrary.simpleMessage("حمل التطبيق"),
        "download_company_app":
            MessageLookupByLibrary.simpleMessage("تنزيل تطبيق الشركة"),
        "download_completed":
            MessageLookupByLibrary.simpleMessage("تم التحميل بنجاح"),
        "download_failed": MessageLookupByLibrary.simpleMessage("فشل التحميل"),
        "download_influencer_app":
            MessageLookupByLibrary.simpleMessage("حمل تطبيق المؤثرين"),
        "download_influencer_app_now":
            MessageLookupByLibrary.simpleMessage("حمّل تطبيق المؤثرين الآن!"),
        "draft_pending_order":
            MessageLookupByLibrary.simpleMessage("مسودة (بانتظار إتمام الطلب)"),
        "draft_pending_price":
            MessageLookupByLibrary.simpleMessage("مسودة (بانتظار إضافة السعر)"),
        "draft_stars_added_successfully": MessageLookupByLibrary.simpleMessage(
            "تمت إضافة المؤثرين إلى مسودة الحملات بنجاح"),
        "duration": MessageLookupByLibrary.simpleMessage("مدة"),
        "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
        "edit_agency": MessageLookupByLibrary.simpleMessage("تعديل الوكالة"),
        "edit_bid": MessageLookupByLibrary.simpleMessage("تعديل المزايدة"),
        "edit_profile":
            MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
        "edit_profile_picture":
            MessageLookupByLibrary.simpleMessage("تعديل صورة الملف الشخصي"),
        "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "email_address":
            MessageLookupByLibrary.simpleMessage("البريد الاكتروني"),
        "email_already_verified": MessageLookupByLibrary.simpleMessage(
            "لقد قمت بالتحقق من البريد الالكترونى بالفعل"),
        "email_files_to_client": MessageLookupByLibrary.simpleMessage(
            "إرسال الملفات بالبريد الإلكتروني إلى العميل"),
        "email_phone": MessageLookupByLibrary.simpleMessage(
            "اسم المستخدم أو البريد الالكتروني"),
        "email_verification_notice": MessageLookupByLibrary.simpleMessage(
            "سيتم إرسال رسالة تأكيد إلى بريدك الإلكتروني. يرجى فتح الرسالة والضغط على الرابط الموجود فيها لتأكيد عنوان بريدك."),
        "enable_unified_price":
            MessageLookupByLibrary.simpleMessage("تفعيل سعر موحّد (باكج)"),
        "enabled": MessageLookupByLibrary.simpleMessage("مفعل"),
        "end_to_end_encrypted": MessageLookupByLibrary.simpleMessage(
            "الرسائل والمكالمات مشفرة بين الطرفين. لا يمكن لأي شخص خارج هذه الدردشة، حتى نجوم، قراءتها أو الاستماع إليها. انقر لمعرفة المزيد."),
        "engagement": MessageLookupByLibrary.simpleMessage("التفاعل"),
        "engagement_rate": MessageLookupByLibrary.simpleMessage("معدل التفاعل"),
        "engagement_rate_description": MessageLookupByLibrary.simpleMessage(
            "يعكس مستوى تفاعل الجمهور مع محتوى المؤثر على منصات التواصل الاجتماعي (مثل الإعجابات، التعليقات، والمشاركات). يساعد هذا المؤشر في قياس مدى تأثير المحتوى على المتابعين."),
        "engagement_rate_description1": MessageLookupByLibrary.simpleMessage(
            "نسبة المتابعين الذين يتفاعلون مع محتوى المؤثر."),
        "english_name_validation": MessageLookupByLibrary.simpleMessage(
            "يجب أن تكون الحروف باللغة الإنجليزية"),
        "enjoy_a_smooth_experience_when_requesting_influencer_services_ensuring_a_safe_and_professional_process_for_successful_collaboration":
            MessageLookupByLibrary.simpleMessage(
                "استمتع بتجربة سلسة في طلب خدمات المؤثرين، مما يضمن عملية آمنة واحترافية لتعاون ناجح."),
        "enjoy_outstanding": MessageLookupByLibrary.simpleMessage(
            "استمتع بتجربة استخدم متميزة وميزات حصرية للمشاهير فقط."),
        "enter_ad_details": MessageLookupByLibrary.simpleMessage(
            "اكتب تفاصيل تخص الإعلان للمؤثر هنا"),
        "enter_amount":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال المبلغ"),
        "enter_brand_name": MessageLookupByLibrary.simpleMessage(
            "أدخل اسم العلامة التجارية التي سوف تظهر للمؤثرين."),
        "enter_campaign_objective_placeholder":
            MessageLookupByLibrary.simpleMessage("ادخل الهدف من الحملة..."),
        "enter_code": MessageLookupByLibrary.simpleMessage(
            "أدخل الرمز المكون من 6 أرقام"),
        "enter_commercial_registration_number":
            MessageLookupByLibrary.simpleMessage(
                "أدخل رقم السجل التجاري لشركتك أو رقم وثيقة العمل الحُر. سيتم استخدام هذه المعلومات للتحقق من حسابك، مع الحفاظ على سريتها التامة لأغراض التحقق فقط."),
        "enter_company_link": MessageLookupByLibrary.simpleMessage(
            "أدخل رابط الموقع الإلكتروني لشركتك أو حسابك على وسائل التواصل الاجتماعي. سيتم عرضه في ملفك على المنصة ليتعرف الآخرون على نشاطك وخدماتك بشكل أفضل."),
        "enter_contact_name": MessageLookupByLibrary.simpleMessage(
            "أدخل اسم الشخص المسؤول عن إدارة الحساب في المنصة."),
        "enter_current_password":
            MessageLookupByLibrary.simpleMessage("ادخل كلمة المرور الحالية"),
        "enter_email": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال البريد الإلكتروني"),
        "enter_email_or_phone": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال البريد الإلكتروني أو رقم الهاتف"),
        "enter_email_phone": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال البريد الإلكتروني أو رقم الهاتف"),
        "enter_link": MessageLookupByLibrary.simpleMessage("أدخل الرابط"),
        "enter_name": MessageLookupByLibrary.simpleMessage("أدخل اسمك"),
        "enter_new_password":
            MessageLookupByLibrary.simpleMessage("ادخل كلمة المرور الجديدة"),
        "enter_number_or_phone": MessageLookupByLibrary.simpleMessage(
            "ادخل البريد الاكتروني و رقم هاتف"),
        "enter_official_trade_name": MessageLookupByLibrary.simpleMessage(
            "أدخل الاسم التجاري الرسمي للشركة كما هو مسجل في السجلات التجارية."),
        "enter_pass":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال كلمة المرور"),
        "enter_phone_number": MessageLookupByLibrary.simpleMessage(
            "أدخل رقم هاتفك لنتمكن من التحقق من حسابك. سيتم إرسال رمز تحقق إلى هذا الرقم."),
        "enter_phone_verification_code":
            MessageLookupByLibrary.simpleMessage("أدخل رمز التحقق المرسل الى"),
        "enter_public_name": MessageLookupByLibrary.simpleMessage(
            "أدخل اسمك الذى يظهر للجميع بالإنجليزية والعربية."),
        "enter_reason": MessageLookupByLibrary.simpleMessage("اكتب سببك هنا"),
        "enter_security_code":
            MessageLookupByLibrary.simpleMessage("أدخل الرمز الأمني"),
        "enter_valid_bid": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال مبلغ صالح للمزايدة"),
        "enter_valid_delivery_value":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال معاد التوصيل"),
        "enter_vat_number": MessageLookupByLibrary.simpleMessage(
            "أدخال رقم ضريبة القيمة المضافة الخاصة بشركتك. ستُستخدم هذه المعلومات للتحقق من حسابك، وسيتم الاحتفاظ بها بسرية تامة لأغراض التحقق فقط."),
        "enter_verification_code_sent_to":
            MessageLookupByLibrary.simpleMessage("أدخل رمز التحقق المرسل الى"),
        "enter_your_link_here":
            MessageLookupByLibrary.simpleMessage("أدخل رابطك هنا"),
        "entertainment": MessageLookupByLibrary.simpleMessage("الترفيه"),
        "er": MessageLookupByLibrary.simpleMessage("معدل التفاعل"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("طلب غير صالح"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نتائج"),
        "error_Timeout_Error":
            MessageLookupByLibrary.simpleMessage("انتهت المدة"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("غير مصرح"),
        "error_cancel_token":
            MessageLookupByLibrary.simpleMessage("تم مقاطعة الاتصال"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("كلمة المرور غير مطابقة"),
        "error_conflict": MessageLookupByLibrary.simpleMessage("خطأ تعارض"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "حصل خطأ اثناء اتصالك بالشبكة"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("تم فقد الاتصال"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("ليس لديك الصلاحية"),
        "error_general":
            MessageLookupByLibrary.simpleMessage("حصل خطأ غير متوقع"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("حصل خطأ في السيرفر"),
        "error_loading_star_details":
            MessageLookupByLibrary.simpleMessage("خطأ في تحميل تفاصيل المؤثر"),
        "error_sending_message": m2,
        "error_socket":
            MessageLookupByLibrary.simpleMessage("تأكد من إتصالك بالانترنيت"),
        "everyone": MessageLookupByLibrary.simpleMessage("الجميع"),
        "example_reward": MessageLookupByLibrary.simpleMessage(
            "على سبيل المثال: اذا قمت بدعوة 100 صديق،سوف تربح 1000 ريال"),
        "excellent": MessageLookupByLibrary.simpleMessage("ممتاز"),
        "excellent_match": MessageLookupByLibrary.simpleMessage("توافق ممتاز"),
        "exceptional_exp":
            MessageLookupByLibrary.simpleMessage("تجربة استثنائية"),
        "exclusive": MessageLookupByLibrary.simpleMessage("عقد حصري"),
        "expiry_date": MessageLookupByLibrary.simpleMessage("تاريخ الانتهاء"),
        "exploreCampaigns":
            MessageLookupByLibrary.simpleMessage("استكشف حملاتك هنا"),
        "explore_campaigns":
            MessageLookupByLibrary.simpleMessage("اكتشف الحملات الجديدة هنا"),
        "facebook": MessageLookupByLibrary.simpleMessage("الفيسبوك"),
        "fail_message": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما. يرجى المحاولة مرة أخرى"),
        "failed_resize_encode_image": m3,
        "failed_to_delete_asset":
            MessageLookupByLibrary.simpleMessage("فشل في حذف المرفق"),
        "failed_to_delete_message":
            MessageLookupByLibrary.simpleMessage("فشل في حذف الرسالة"),
        "failed_to_delete_messages":
            MessageLookupByLibrary.simpleMessage("فشل في حذف الرسائل"),
        "failed_to_forward_message":
            MessageLookupByLibrary.simpleMessage("فشل في إعادة توجيه الرسالة"),
        "failed_to_forward_messages":
            MessageLookupByLibrary.simpleMessage("فشل في إعادة توجيه الرسائل"),
        "failed_to_load_album_photos":
            MessageLookupByLibrary.simpleMessage("فشل في تحميل صور الألبوم"),
        "failed_to_load_album_videos": MessageLookupByLibrary.simpleMessage(
            "فشل في تحميل فيديوهات الألبوم"),
        "failed_to_load_channels":
            MessageLookupByLibrary.simpleMessage("فشل في تحميل القنوات"),
        "failed_to_load_gif": MessageLookupByLibrary.simpleMessage(
            "فشل في تحميل الصورة المتحركة"),
        "failed_to_load_photos": MessageLookupByLibrary.simpleMessage(
            "فشل في تحميل المزيد من الصور"),
        "failed_to_load_video":
            MessageLookupByLibrary.simpleMessage("فشل في تحميل الفيديو"),
        "failed_to_load_videos": MessageLookupByLibrary.simpleMessage(
            "فشل في تحميل المزيد من الفيديوهات"),
        "failed_to_pin_message":
            MessageLookupByLibrary.simpleMessage("فشل في تثبيت الرسالة"),
        "failed_to_select_files":
            MessageLookupByLibrary.simpleMessage("فشل في تحديد ملفات إضافية"),
        "failed_to_send_documents":
            MessageLookupByLibrary.simpleMessage("فشل في إرسال المستندات"),
        "failed_to_share":
            MessageLookupByLibrary.simpleMessage("فشل في المشاركة"),
        "failed_to_share_attachments":
            MessageLookupByLibrary.simpleMessage("فشل في مشاركة المرفقات"),
        "failed_to_start_recording": m4,
        "failed_to_unpin_message":
            MessageLookupByLibrary.simpleMessage("فشل في إلغاء تثبيت الرسالة"),
        "failureActions": MessageLookupByLibrary.simpleMessage("إجراءات الفشل"),
        "fair": MessageLookupByLibrary.simpleMessage("عادل"),
        "faq": MessageLookupByLibrary.simpleMessage("التعليمات"),
        "faqs": MessageLookupByLibrary.simpleMessage("الاسئلة الشائعة"),
        "favorites": MessageLookupByLibrary.simpleMessage("المفضلة"),
        "favorites_add_to_favorites_title":
            MessageLookupByLibrary.simpleMessage("إضافة الى مفضلة"),
        "favorites_char_count_prefix":
            MessageLookupByLibrary.simpleMessage("30/"),
        "favorites_char_count_suffix":
            MessageLookupByLibrary.simpleMessage(" حرف"),
        "favorites_character_limit_exceeded":
            MessageLookupByLibrary.simpleMessage(
                "تم تجاوز الحد المسموح للحروف"),
        "favorites_character_limit_note": MessageLookupByLibrary.simpleMessage(
            "أسماء القوائم محدودة بـ 30 حرفاً لضمان العرض الصحيح"),
        "favorites_create_first_list":
            MessageLookupByLibrary.simpleMessage("أنشئ قائمتك الأولى"),
        "favorites_create_first_list_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "أنشئ أول قائمة لتجمع مؤثريك المفضلين"),
        "favorites_create_list":
            MessageLookupByLibrary.simpleMessage("إنشاء قائمة جديدة"),
        "favorites_create_list_description":
            MessageLookupByLibrary.simpleMessage(
                "أنشئ قائمة شخصية لتنظيم المؤثرين المفضلين لديك"),
        "favorites_create_list_title":
            MessageLookupByLibrary.simpleMessage("إنشاء قائمة"),
        "favorites_create_new_list":
            MessageLookupByLibrary.simpleMessage("إنشاء قائمة جديدة"),
        "favorites_create_new_list_button":
            MessageLookupByLibrary.simpleMessage("إنشاء قائمة جديدة"),
        "favorites_delete_list_error":
            MessageLookupByLibrary.simpleMessage("حدث خطأ أثناء حذف القائمة"),
        "favorites_delete_list_message":
            MessageLookupByLibrary.simpleMessage("هل أنت متأكد من حذف قائمة"),
        "favorites_delete_list_title":
            MessageLookupByLibrary.simpleMessage("حذف القائمة"),
        "favorites_edit_lists_title":
            MessageLookupByLibrary.simpleMessage("تعديل"),
        "favorites_empty_list":
            MessageLookupByLibrary.simpleMessage("قائمة فارغة"),
        "favorites_list_deleted_successfully":
            MessageLookupByLibrary.simpleMessage("تم حذف القائمة بنجاح"),
        "favorites_list_name":
            MessageLookupByLibrary.simpleMessage("اسم القائمة"),
        "favorites_list_name_hint":
            MessageLookupByLibrary.simpleMessage("أدخل اسم القائمة"),
        "favorites_list_restored_successfully":
            MessageLookupByLibrary.simpleMessage("تم استعادة القائمة بنجاح"),
        "favorites_lists_reordered_successfully":
            MessageLookupByLibrary.simpleMessage(
                "تم إعادة ترتيب القوائم بنجاح"),
        "favorites_lists_updated_successfully":
            MessageLookupByLibrary.simpleMessage("تم تحديث القوائم بنجاح"),
        "favorites_manage_description": MessageLookupByLibrary.simpleMessage(
            "اختر أو ألغ اختيار القوائم لإدارة مكان ظهور هذا المؤثر"),
        "favorites_manage_favorites_title":
            MessageLookupByLibrary.simpleMessage("إدارة المفضلة"),
        "favorites_max_30_chars":
            MessageLookupByLibrary.simpleMessage("بحد أقصى 30 حرف"),
        "favorites_no_lists_description": MessageLookupByLibrary.simpleMessage(
            "أنشئ قائمتك الأولى لبدء تنظيم المؤثرين المفضلين لديك"),
        "favorites_no_lists_description_add":
            MessageLookupByLibrary.simpleMessage(
                "أنشئ قائمة لإضافة هذا المؤثر إلى مفضلتك"),
        "favorites_no_lists_title":
            MessageLookupByLibrary.simpleMessage("لم تنشئ أي قائمة مفضلة بعد"),
        "favorites_rename_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ أثناء إعادة تسمية القائمة"),
        "favorites_reorder_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ أثناء إعادة ترتيب القوائم"),
        "favorites_select_lists_to_add_influencer":
            MessageLookupByLibrary.simpleMessage(
                "حدد القوائم التي تريد إضافة المؤثر لها"),
        "favorites_some_updates_failed":
            MessageLookupByLibrary.simpleMessage("فشل في تحديث بعض القوائم"),
        "favorites_undo_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ أثناء التراجع عن الحذف"),
        "february": MessageLookupByLibrary.simpleMessage("فبراير"),
        "feedback": MessageLookupByLibrary.simpleMessage("الملاحظات"),
        "feedback_prompt": MessageLookupByLibrary.simpleMessage(
            "اكتب ملاحظاتك عن المؤثر هنا..."),
        "feedback_sent":
            MessageLookupByLibrary.simpleMessage("تم إرسال التعليق"),
        "female": MessageLookupByLibrary.simpleMessage("أنثى"),
        "file": MessageLookupByLibrary.simpleMessage("الملفات"),
        "file_type_not_supported":
            MessageLookupByLibrary.simpleMessage("نوع الملف غير مدعوم"),
        "files": MessageLookupByLibrary.simpleMessage("الملفات"),
        "fillField": MessageLookupByLibrary.simpleMessage("الرجاء ملء الحقل"),
        "fill_names": MessageLookupByLibrary.simpleMessage("يرجى ملء الأسماء"),
        "filter": MessageLookupByLibrary.simpleMessage("التصفية"),
        "final_approval": MessageLookupByLibrary.simpleMessage(
            "بعد الموافقة النهائية، يتم تحرير المبلغ للمؤثر، وتعتبر الحملة مكتملة."),
        "final_score": MessageLookupByLibrary.simpleMessage("النتيجة النهائية"),
        "find_a_star": MessageLookupByLibrary.simpleMessage("ابحث عن مؤثر"),
        "find_and_collaborate":
            MessageLookupByLibrary.simpleMessage("ابحث و تعاون مع "),
        "first_campaign_message": MessageLookupByLibrary.simpleMessage(
            "أنشئ حملتك الاولى بكل سهولة!"),
        "first_month_offer": MessageLookupByLibrary.simpleMessage(
            "وفّر ميزانيتك كاملة، حملاتك في أول شهر من غير 5% رسوم خدمة."),
        "first_name": MessageLookupByLibrary.simpleMessage("الاسم الاول"),
        "follower_category":
            MessageLookupByLibrary.simpleMessage("فئة المتابعين"),
        "follower_growth":
            MessageLookupByLibrary.simpleMessage("نمو المتابعين"),
        "followers": MessageLookupByLibrary.simpleMessage("متابع"),
        "followers_category_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل فئة المتابعين"),
        "followers_count": m5,
        "followers_count_filter":
            MessageLookupByLibrary.simpleMessage("عدد المتابعين"),
        "followers_growth":
            MessageLookupByLibrary.simpleMessage("نمو المتابعين والمتابَعين"),
        "followers_growth_description": MessageLookupByLibrary.simpleMessage(
            "أنماط نمو المتابعين والحسابات التي يتابعها المؤثر."),
        "followers_high_to_low":
            MessageLookupByLibrary.simpleMessage("المتابعين: الأعلى إلى الأقل"),
        "followers_low_to_high":
            MessageLookupByLibrary.simpleMessage("المتابعين: الأقل إلى الأعلى"),
        "following": MessageLookupByLibrary.simpleMessage("متابعة"),
        "for_campaign": MessageLookupByLibrary.simpleMessage("للحملة"),
        "for_every_one":
            MessageLookupByLibrary.simpleMessage("تظهر للشركات فقط"),
        "for_refund": MessageLookupByLibrary.simpleMessage(""),
        "forgot_pass": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور"),
        "forgot_pass_verify": MessageLookupByLibrary.simpleMessage(
            "سنرسل رمز التحقق إلى رقم هاتفك لتتمكن من تغيير كلمة المرور"),
        "forward": MessageLookupByLibrary.simpleMessage("إعادة توجيه"),
        "forward_message":
            MessageLookupByLibrary.simpleMessage("إعادة توجيه الرسالة"),
        "forward_multiple_messages": m6,
        "forwarded": MessageLookupByLibrary.simpleMessage("تم إعادة التوجيه"),
        "forwarded_to_chats": m7,
        "forwarding":
            MessageLookupByLibrary.simpleMessage("جاري الإعادة توجيه..."),
        "founded": MessageLookupByLibrary.simpleMessage("تأسست"),
        "freelance_number_hint": MessageLookupByLibrary.simpleMessage(
            "رقم وثيقة العمل الحُر يتكوّن غالبًا من أرقام وأحرف، ويصدر عن منصة العمل الحُر المعتمدة من وزارة الموارد البشرية."),
        "friend": MessageLookupByLibrary.simpleMessage("الأصدقاء"),
        "friend_completion_reward": MessageLookupByLibrary.simpleMessage(
            "يجب ان يستكمل صديقك حملته ، لكي تتمكن من استحدام ال 10 ريال الخاصة بك."),
        "friend_joins": MessageLookupByLibrary.simpleMessage(
            "في كل مرة ينضم فيها صديق، تحصل على"),
        "friends_campaign":
            MessageLookupByLibrary.simpleMessage("قام صديقك بنشر حملة"),
        "from": MessageLookupByLibrary.simpleMessage("من"),
        "full_refund_if_no_ad": MessageLookupByLibrary.simpleMessage(
            "استرجاع 100% من المبلغ إذا لم يتم الإعلان."),
        "gallery": MessageLookupByLibrary.simpleMessage("معرض الصور"),
        "gender": MessageLookupByLibrary.simpleMessage("ما هو جنسك"),
        "gender_prompt":
            MessageLookupByLibrary.simpleMessage("هل أنت ذكر أم أنثى؟"),
        "general_accounts": MessageLookupByLibrary.simpleMessage("حسابات عامة"),
        "general_analysis":
            MessageLookupByLibrary.simpleMessage("التحليل العام"),
        "general_information":
            MessageLookupByLibrary.simpleMessage("معلومات عامة"),
        "generators": MessageLookupByLibrary.simpleMessage("منشئو المحتوى"),
        "get_100_sar": MessageLookupByLibrary.simpleMessage("اربح 100 ريال"),
        "get_10_sar": MessageLookupByLibrary.simpleMessage("اربح 10 ريال"),
        "get_10_sar_today":
            MessageLookupByLibrary.simpleMessage("احصل على 10 ريال اليوم"),
        "get_200_sar": MessageLookupByLibrary.simpleMessage("اربح 200 ريال"),
        "get_discount": MessageLookupByLibrary.simpleMessage("الحصول على خصم"),
        "get_paid": MessageLookupByLibrary.simpleMessage(
            "احصل على أموالك عند إكمال الحملة"),
        "get_up_to_200_sar":
            MessageLookupByLibrary.simpleMessage("اربح حتى 200 ريال"),
        "get_up_to_200_sar_describe": MessageLookupByLibrary.simpleMessage(
            "امنح اصدقائك خصم 10% على اول حملة لهم واحصل على أكثر من 20% من حملاتهم التى تزيد عن 200 ريال لكل صديق يقوم بنشر حمله باستخدام كود الخصم او الرابط الخاص بك "),
        "getting_location":
            MessageLookupByLibrary.simpleMessage("جاري الحصول على الموقع..."),
        "gif_not_available":
            MessageLookupByLibrary.simpleMessage("الصورة المتحركة غير متوفرة"),
        "go_to_payment": MessageLookupByLibrary.simpleMessage("اذهب للدفع"),
        "go_to_payment_1": MessageLookupByLibrary.simpleMessage("اذهب للدفع"),
        "go_to_portfolio":
            MessageLookupByLibrary.simpleMessage("الذهاب الى سابقة الاعمال"),
        "go_to_profile":
            MessageLookupByLibrary.simpleMessage("الذهاب إلى الملف الشخصي"),
        "gold": MessageLookupByLibrary.simpleMessage("الذهبي"),
        "gold_level_reward": MessageLookupByLibrary.simpleMessage(
            "12000 نقطة للوصول الى المستوى الذهبي"),
        "good": MessageLookupByLibrary.simpleMessage("جيد"),
        "good_match": MessageLookupByLibrary.simpleMessage("توافق جيد"),
        "google": MessageLookupByLibrary.simpleMessage("جوجل"),
        "google_play": MessageLookupByLibrary.simpleMessage("جوجل بلاي"),
        "google_play_store":
            MessageLookupByLibrary.simpleMessage("متجر جوجل بلاي"),
        "google_search": MessageLookupByLibrary.simpleMessage("بحث جوجل"),
        "harmful_illegal":
            MessageLookupByLibrary.simpleMessage("ضار أو غير قانوني"),
        "hashtags": MessageLookupByLibrary.simpleMessage("الوسوم"),
        "have_account":
            MessageLookupByLibrary.simpleMessage("لديك حساب بالفعل؟"),
        "have_contract": MessageLookupByLibrary.simpleMessage("يوجد عقد"),
        "help_and_privacy":
            MessageLookupByLibrary.simpleMessage("المساعدة والخصوصية"),
        "help_brands_in_filter": MessageLookupByLibrary.simpleMessage(
            "هذا يساعد العلامات التجارية على التصفية والعثور عليك"),
        "hi": MessageLookupByLibrary.simpleMessage("مرحبا,"),
        "hide": MessageLookupByLibrary.simpleMessage("اخفاء"),
        "hide_audience_segment_details":
            MessageLookupByLibrary.simpleMessage("إخفاء تفاصيل فئة المتابعين"),
        "hide_details": MessageLookupByLibrary.simpleMessage("إخفاء التفاصيل"),
        "high": MessageLookupByLibrary.simpleMessage("مرتفع"),
        "high_to_low": MessageLookupByLibrary.simpleMessage("من الأعلى للأقل"),
        "higher_trust_score":
            MessageLookupByLibrary.simpleMessage("أعلى درجة ثقة"),
        "hire": MessageLookupByLibrary.simpleMessage("توظيف"),
        "hire_details": MessageLookupByLibrary.simpleMessage(
            "ستتلقى عروضًا مجانية من نجومنا الموهوبين خلال ساعات. يمكنك الدردشة المباشرة معهم ومقارنة العروض والتعاون معهم للعثور على أفضل العروض."),
        "hired": MessageLookupByLibrary.simpleMessage("استأجرت"),
        "hold_amount": MessageLookupByLibrary.simpleMessage("مبلغ محتجز"),
        "hold_to_record":
            MessageLookupByLibrary.simpleMessage("اضغط مع الاستمرار للتسجيل"),
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "home_acc": MessageLookupByLibrary.simpleMessage("الاعدادات"),
        "home_campaigns": MessageLookupByLibrary.simpleMessage("الحملات"),
        "hours": MessageLookupByLibrary.simpleMessage("ساعة"),
        "how_aqs_is_calculated":
            MessageLookupByLibrary.simpleMessage("كيف يتم حساب AQS؟"),
        "how_camp_work": MessageLookupByLibrary.simpleMessage(
            "بإمكانك الدردشة المباشرة مع نجومك للحصول على تحديثات مستمرة حول تقدم حملتك."),
        "how_can_see_this_item": MessageLookupByLibrary.simpleMessage(
            "من يمكمنه الاطلاع على هذه المعلومة"),
        "how_can_we_help_you":
            MessageLookupByLibrary.simpleMessage("كيف يمكننا مساعدتك"),
        "how_cqs_is_calculated":
            MessageLookupByLibrary.simpleMessage("كيف يتم حساب CQS؟"),
        "how_it_work":
            MessageLookupByLibrary.simpleMessage("كيف يعمل التطبيق ؟"),
        "how_it_works": MessageLookupByLibrary.simpleMessage("كيف يعمل"),
        "how_know_about_us":
            MessageLookupByLibrary.simpleMessage("كيف عرفت عنا ؟"),
        "how_much_top_up":
            MessageLookupByLibrary.simpleMessage("كم تريد أن تشحن"),
        "how_score_calculated":
            MessageLookupByLibrary.simpleMessage("كيفية حساب هذه الدرجة"),
        "how_to_calculate_score":
            MessageLookupByLibrary.simpleMessage("كيفية حساب هذه الدرجة"),
        "how_to_pay": MessageLookupByLibrary.simpleMessage("كيف تريد أن تدفع"),
        "how_was": MessageLookupByLibrary.simpleMessage("كيف كان"),
        "how_would_you_like_to_pay":
            MessageLookupByLibrary.simpleMessage("كيف تود الشحن؟"),
        "iban":
            MessageLookupByLibrary.simpleMessage("رقم الحساب المصرفي الدولي"),
        "idea_issue_feedback": MessageLookupByLibrary.simpleMessage(
            "المقترحات الخاصة بك، المشكلات، التعليقات، او الشكر"),
        "im_here": MessageLookupByLibrary.simpleMessage("أنا هنا"),
        "image_editor_activities":
            MessageLookupByLibrary.simpleMessage("الأنشطة"),
        "image_editor_align_center":
            MessageLookupByLibrary.simpleMessage("محاذاة وسط"),
        "image_editor_align_left":
            MessageLookupByLibrary.simpleMessage("محاذاة يسار"),
        "image_editor_align_right":
            MessageLookupByLibrary.simpleMessage("محاذاة يمين"),
        "image_editor_align_text":
            MessageLookupByLibrary.simpleMessage("محاذاة النص"),
        "image_editor_animals":
            MessageLookupByLibrary.simpleMessage("الحيوانات والطبيعة"),
        "image_editor_apply": MessageLookupByLibrary.simpleMessage("تطبيق"),
        "image_editor_arrow": MessageLookupByLibrary.simpleMessage("سهم"),
        "image_editor_back": MessageLookupByLibrary.simpleMessage("رجوع"),
        "image_editor_background_color":
            MessageLookupByLibrary.simpleMessage("لون الخلفية"),
        "image_editor_background_mode":
            MessageLookupByLibrary.simpleMessage("وضع الخلفية"),
        "image_editor_blur": MessageLookupByLibrary.simpleMessage("تشويش"),
        "image_editor_blur_factor":
            MessageLookupByLibrary.simpleMessage("عامل التشويش"),
        "image_editor_bold": MessageLookupByLibrary.simpleMessage("عريض"),
        "image_editor_brightness":
            MessageLookupByLibrary.simpleMessage("السطوع"),
        "image_editor_brush_size":
            MessageLookupByLibrary.simpleMessage("حجم الفرشاة"),
        "image_editor_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "image_editor_circle": MessageLookupByLibrary.simpleMessage("دائرة"),
        "image_editor_close": MessageLookupByLibrary.simpleMessage("إغلاق"),
        "image_editor_contrast":
            MessageLookupByLibrary.simpleMessage("التباين"),
        "image_editor_crop": MessageLookupByLibrary.simpleMessage("قص"),
        "image_editor_crop_rotate":
            MessageLookupByLibrary.simpleMessage("قص ودوران"),
        "image_editor_custom": MessageLookupByLibrary.simpleMessage("مخصص"),
        "image_editor_dash_line":
            MessageLookupByLibrary.simpleMessage("خط متقطع"),
        "image_editor_done": MessageLookupByLibrary.simpleMessage("تم"),
        "image_editor_dont_save":
            MessageLookupByLibrary.simpleMessage("عدم الحفظ"),
        "image_editor_duplicate": MessageLookupByLibrary.simpleMessage("تكرار"),
        "image_editor_emoji": MessageLookupByLibrary.simpleMessage("إيموجي"),
        "image_editor_eraser": MessageLookupByLibrary.simpleMessage("ممحاة"),
        "image_editor_exposure": MessageLookupByLibrary.simpleMessage("التعرض"),
        "image_editor_fade": MessageLookupByLibrary.simpleMessage("الباهتة"),
        "image_editor_filter": MessageLookupByLibrary.simpleMessage("فلتر"),
        "image_editor_flags": MessageLookupByLibrary.simpleMessage("الأعلام"),
        "image_editor_flip": MessageLookupByLibrary.simpleMessage("قلب"),
        "image_editor_font_color":
            MessageLookupByLibrary.simpleMessage("لون الخط"),
        "image_editor_font_family":
            MessageLookupByLibrary.simpleMessage("نوع الخط"),
        "image_editor_font_scale":
            MessageLookupByLibrary.simpleMessage("حجم الخط"),
        "image_editor_food":
            MessageLookupByLibrary.simpleMessage("الطعام والشراب"),
        "image_editor_free": MessageLookupByLibrary.simpleMessage("حر"),
        "image_editor_freestyle":
            MessageLookupByLibrary.simpleMessage("رسم حر"),
        "image_editor_hue": MessageLookupByLibrary.simpleMessage("اللون"),
        "image_editor_import_sticker":
            MessageLookupByLibrary.simpleMessage("استيراد ملصق"),
        "image_editor_input_hint":
            MessageLookupByLibrary.simpleMessage("أدخل النص"),
        "image_editor_italic": MessageLookupByLibrary.simpleMessage("مائل"),
        "image_editor_layer": MessageLookupByLibrary.simpleMessage("طبقة"),
        "image_editor_line": MessageLookupByLibrary.simpleMessage("خط"),
        "image_editor_loading": MessageLookupByLibrary.simpleMessage("تحميل"),
        "image_editor_luminance":
            MessageLookupByLibrary.simpleMessage("الإضاءة"),
        "image_editor_more": MessageLookupByLibrary.simpleMessage("المزيد"),
        "image_editor_move_down":
            MessageLookupByLibrary.simpleMessage("تحريك لأسفل"),
        "image_editor_move_up":
            MessageLookupByLibrary.simpleMessage("تحريك لأعلى"),
        "image_editor_move_zoom": MessageLookupByLibrary.simpleMessage("تكبير"),
        "image_editor_no_changes_detected":
            MessageLookupByLibrary.simpleMessage("لم يتم اكتشاف تغييرات"),
        "image_editor_no_emoji":
            MessageLookupByLibrary.simpleMessage("لا يوجد إيموجي"),
        "image_editor_none": MessageLookupByLibrary.simpleMessage("بلا"),
        "image_editor_objects": MessageLookupByLibrary.simpleMessage("الأشياء"),
        "image_editor_opacity":
            MessageLookupByLibrary.simpleMessage("الشفافية"),
        "image_editor_original": MessageLookupByLibrary.simpleMessage("الأصلي"),
        "image_editor_paint": MessageLookupByLibrary.simpleMessage("رسم"),
        "image_editor_pixelate": MessageLookupByLibrary.simpleMessage("بكسل"),
        "image_editor_polygon": MessageLookupByLibrary.simpleMessage("مضلع"),
        "image_editor_preparing": MessageLookupByLibrary.simpleMessage("تحضير"),
        "image_editor_ratio": MessageLookupByLibrary.simpleMessage("النسبة"),
        "image_editor_recent": MessageLookupByLibrary.simpleMessage("الأحدث"),
        "image_editor_rectangle":
            MessageLookupByLibrary.simpleMessage("مستطيل"),
        "image_editor_redo": MessageLookupByLibrary.simpleMessage("إعادة"),
        "image_editor_remove": MessageLookupByLibrary.simpleMessage("إزالة"),
        "image_editor_remove_layer":
            MessageLookupByLibrary.simpleMessage("إزالة الطبقة"),
        "image_editor_reset":
            MessageLookupByLibrary.simpleMessage("إعادة تعيين"),
        "image_editor_rotate": MessageLookupByLibrary.simpleMessage("دوران"),
        "image_editor_saturation":
            MessageLookupByLibrary.simpleMessage("التشبع"),
        "image_editor_save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "image_editor_search": MessageLookupByLibrary.simpleMessage("بحث"),
        "image_editor_sharpness": MessageLookupByLibrary.simpleMessage("الحدة"),
        "image_editor_smallcaps":
            MessageLookupByLibrary.simpleMessage("أحرف صغيرة"),
        "image_editor_smileys":
            MessageLookupByLibrary.simpleMessage("الوجوه التعبيرية والأشخاص"),
        "image_editor_square": MessageLookupByLibrary.simpleMessage("مربع"),
        "image_editor_square_shape":
            MessageLookupByLibrary.simpleMessage("مربع"),
        "image_editor_sticker": MessageLookupByLibrary.simpleMessage("ملصق"),
        "image_editor_stroke_width":
            MessageLookupByLibrary.simpleMessage("عرض الحد"),
        "image_editor_symbols": MessageLookupByLibrary.simpleMessage("الرموز"),
        "image_editor_temperature":
            MessageLookupByLibrary.simpleMessage("درجة الحرارة"),
        "image_editor_text": MessageLookupByLibrary.simpleMessage("نص"),
        "image_editor_text_style":
            MessageLookupByLibrary.simpleMessage("نمط النص"),
        "image_editor_to_background":
            MessageLookupByLibrary.simpleMessage("إلى الخلفية"),
        "image_editor_to_foreground":
            MessageLookupByLibrary.simpleMessage("إلى المقدمة"),
        "image_editor_toggle_fill":
            MessageLookupByLibrary.simpleMessage("تبديل التعبئة"),
        "image_editor_travel":
            MessageLookupByLibrary.simpleMessage("السفر والأماكن"),
        "image_editor_tune": MessageLookupByLibrary.simpleMessage("ضبط"),
        "image_editor_underline":
            MessageLookupByLibrary.simpleMessage("تحته خط"),
        "image_editor_undo": MessageLookupByLibrary.simpleMessage("تراجع"),
        "image_editor_unsaved_changes":
            MessageLookupByLibrary.simpleMessage("تغييرات غير محفوظة"),
        "image_editor_unsaved_changes_body":
            MessageLookupByLibrary.simpleMessage(
                "هل أنت متأكد أنك تريد المغادرة دون حفظ التغييرات؟"),
        "images": MessageLookupByLibrary.simpleMessage("الصور"),
        "images_edited_successfully":
            MessageLookupByLibrary.simpleMessage("تم تحرير الصور بنجاح"),
        "implementation_review": MessageLookupByLibrary.simpleMessage(
            "بعد اكتمال التنفيذ، يمكنك مراجعة المحتوى المقدم والتأكد من مطابقته للمتطلبات."),
        "important_notes": MessageLookupByLibrary.simpleMessage("ملاحظات هامة"),
        "improvement_prompt":
            MessageLookupByLibrary.simpleMessage("كيف يمكننا تحسين خدمتنا؟"),
        "in_mints": MessageLookupByLibrary.simpleMessage("خلال دقائق"),
        "in_progress": MessageLookupByLibrary.simpleMessage("قيد التنفيذ"),
        "in_progress_campaign_status_desc": MessageLookupByLibrary.simpleMessage(
            "لقد قمت بالفعل بإيداع الدفع، بمجرد أن يكمل النجم الحملة ويقدمها، يمكنك التحقق منها وإصدار الدفع."),
        "include_screenshot":
            MessageLookupByLibrary.simpleMessage("ارفق لقطة شاشة لتقييمك"),
        "income": MessageLookupByLibrary.simpleMessage("الدخل"),
        "increase_credibility": MessageLookupByLibrary.simpleMessage(
            "قم بزيادة مصداقيتك من خلال عرض قائمة عملائك من العلامات التجارية"),
        "increase_sales": MessageLookupByLibrary.simpleMessage(
            "زد من مبيعاتك عن طريق تةسعة مدى انتشار منتجاتك لجمهور اكبر"),
        "industry": MessageLookupByLibrary.simpleMessage("المجال"),
        "influencerServices":
            MessageLookupByLibrary.simpleMessage("خدمات المؤثر"),
        "influencer_access_notice": MessageLookupByLibrary.simpleMessage(
            "سيتمكن جميع المؤثرين الذين تمت إضافتهم إلى هذه الحملة من الوصول إلى هذه التفاصيل ، بما في ذلك المرفقات. ومع ذلك ، لن يتمكنوا من رؤية الميزانية المقترحة أو فئة المؤثرين المستهدفين أو المنصات المناسبة للحملة.."),
        "influencer_added_to":
            MessageLookupByLibrary.simpleMessage("تم إضافة المؤثر إلى"),
        "influencer_added_to_campaign": m8,
        "influencer_classification":
            MessageLookupByLibrary.simpleMessage("تصنيف مجال المؤثرين"),
        "influencer_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل للمؤثر"),
        "influencer_discounts":
            MessageLookupByLibrary.simpleMessage("خصومات المؤثرين"),
        "influencer_domain_classification":
            MessageLookupByLibrary.simpleMessage("تصنيف مجال المؤثرين"),
        "influencer_draft":
            MessageLookupByLibrary.simpleMessage("مسودة المؤثرين"),
        "influencer_gets_paid_after_approval":
            MessageLookupByLibrary.simpleMessage(
                "المؤثر يستلم المبلغ بعد تسليم الإعلان وموافقتك."),
        "influencer_has_not_added_ad_prices":
            MessageLookupByLibrary.simpleMessage(
                "المؤثر لم يضف أسعار الإعلانات"),
        "influencer_is_added_to":
            MessageLookupByLibrary.simpleMessage("تمت إضافة المؤثر إلى "),
        "influencer_notes":
            MessageLookupByLibrary.simpleMessage("ملاحظات عامة لإعلاناتي"),
        "influencer_removed_from_draft": m9,
        "influencer_removed_from_favorites":
            MessageLookupByLibrary.simpleMessage("تم إزالة المؤثر من المفضلة"),
        "influencer_services":
            MessageLookupByLibrary.simpleMessage("خدمات المؤثرين"),
        "influencer_stars": MessageLookupByLibrary.simpleMessage("المؤثرين"),
        "influencer_suggestion":
            MessageLookupByLibrary.simpleMessage("مقترح المؤثرين"),
        "influencers": MessageLookupByLibrary.simpleMessage("مؤثرين"),
        "influencers1": MessageLookupByLibrary.simpleMessage("مؤثرون"),
        "influencers_access_notice": MessageLookupByLibrary.simpleMessage(
            "جميع المؤثرين المضافين لهذه الحملة سيتمكنون من الاطلاع على جميع هذه التفاصيل، بما في ذلك المرفقات، ولكن لن يتمكنوا من رؤية الميزانية المقترحة للحملة, فئة المؤثرين المستهدفة والمنصات المناسبة للحملة.."),
        "influencers_description": MessageLookupByLibrary.simpleMessage(
            "هي الحسابات التي لديها أكثر من 5000 متابع."),
        "influencers_in": MessageLookupByLibrary.simpleMessage("المؤثرين في "),
        "information_saved":
            MessageLookupByLibrary.simpleMessage("تم حفظ التعديلات"),
        "input_text": MessageLookupByLibrary.simpleMessage("إدخال النص"),
        "instagram": MessageLookupByLibrary.simpleMessage("الانستغرام"),
        "instagram_aqs":
            MessageLookupByLibrary.simpleMessage("درجة جودة الحساب"),
        "instagram_authenticity":
            MessageLookupByLibrary.simpleMessage("المصداقية"),
        "instagram_er": MessageLookupByLibrary.simpleMessage("معدل التفاعل"),
        "instagram_reachability":
            MessageLookupByLibrary.simpleMessage("قابلية الوصول"),
        "interaction_credibility":
            MessageLookupByLibrary.simpleMessage("مصداقية التفاعل"),
        "interaction_credibility_description": MessageLookupByLibrary.simpleMessage(
            "نسبة الإعجابات والتعليقات الأخيرة من أشخاص حقيقيين، بدون تضخيم عبر مجموعات التفاعل أو مسابقات الجوائز."),
        "interest_registered":
            MessageLookupByLibrary.simpleMessage("سجّلنا اهتمامك"),
        "internet_connected":
            MessageLookupByLibrary.simpleMessage("تم الاتصال بالانترنت"),
        "invalid_phone_number":
            MessageLookupByLibrary.simpleMessage("رقم الهاتف غير صالح"),
        "invalid_website_link":
            MessageLookupByLibrary.simpleMessage("رابط الموقع غير صالح"),
        "invite_brand": MessageLookupByLibrary.simpleMessage("دعوة شركة"),
        "invite_friends": MessageLookupByLibrary.simpleMessage("دعوة اصدقاء"),
        "invite_reward": MessageLookupByLibrary.simpleMessage(
            "قم بدعوة أصدقائك وستحصلون على 50 ريال سعودي"),
        "january": MessageLookupByLibrary.simpleMessage("يناير"),
        "join_as_brand": MessageLookupByLibrary.simpleMessage("انضم كا شركة"),
        "join_as_star": MessageLookupByLibrary.simpleMessage("انضم ك نجم"),
        "join_now": MessageLookupByLibrary.simpleMessage("انضم الان"),
        "join_platform": MessageLookupByLibrary.simpleMessage(
            "انضم إلى منصتنا لتكون جزءًا من مجتمع حصري من المشاهير والمؤثرين."),
        "join_star": MessageLookupByLibrary.simpleMessage("انضم كـ نجم"),
        "join_us": MessageLookupByLibrary.simpleMessage(
            "انضم إلينا واكتشف فرص تعاون مع العلامات التجارية المرموقة و الشركات العالمية."),
        "july": MessageLookupByLibrary.simpleMessage("يوليو"),
        "june": MessageLookupByLibrary.simpleMessage("يونيو"),
        "just_me": MessageLookupByLibrary.simpleMessage("أنا فقط"),
        "keep_card_for_checkout": MessageLookupByLibrary.simpleMessage(
            "احتفظ بهذه البطاقة بشكل امن لتتمكن من الدفع بشكل أسرع في المستقبل"),
        "keep_going": MessageLookupByLibrary.simpleMessage("استمرار"),
        "keep_it": MessageLookupByLibrary.simpleMessage("لا، احتفظ به"),
        "keywords": MessageLookupByLibrary.simpleMessage("الكلمات المفتاحية"),
        "kilo_byte": MessageLookupByLibrary.simpleMessage("كيلوبايت"),
        "label_Login": MessageLookupByLibrary.simpleMessage("تسجيل دخول"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("اختيار اللغة"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "label_email": MessageLookupByLibrary.simpleMessage("البريد الاكتروني"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage(" هل نسيت كلمة المرور؟"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
        "label_logout": MessageLookupByLibrary.simpleMessage("تسجيل خروج"),
        "label_password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "label_phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "label_register":
            MessageLookupByLibrary.simpleMessage("تسجيل حساب جديد"),
        "lang": MessageLookupByLibrary.simpleMessage("English"),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "last": MessageLookupByLibrary.simpleMessage("آخر"),
        "last_180_days": MessageLookupByLibrary.simpleMessage("آخر 180 يوم"),
        "last_30_days": MessageLookupByLibrary.simpleMessage("آخر 30 يوم"),
        "last_365_days": MessageLookupByLibrary.simpleMessage("آخر 365 يوم"),
        "last_7_days": MessageLookupByLibrary.simpleMessage("آخر 7 أيام"),
        "last_90_days": MessageLookupByLibrary.simpleMessage("آخر 90 يوم"),
        "last_name": MessageLookupByLibrary.simpleMessage("اسم العائلة"),
        "launch_date": MessageLookupByLibrary.simpleMessage("تاريخ الإطلاق"),
        "leave_message_warning":
            MessageLookupByLibrary.simpleMessage("أوه لا! أنت ستغادر..."),
        "leave_review": MessageLookupByLibrary.simpleMessage("ترك تعليق"),
        "let_us_know_reason": MessageLookupByLibrary.simpleMessage(
            "أخبرنا لماذا تقوم بحذف هذا الحساب؟"),
        "letter": MessageLookupByLibrary.simpleMessage("حرف"),
        "level": MessageLookupByLibrary.simpleMessage("مستوى"),
        "library": MessageLookupByLibrary.simpleMessage("المكتبة"),
        "license_val": MessageLookupByLibrary.simpleMessage("فال"),
        "lifestyle": MessageLookupByLibrary.simpleMessage("نمط الحياة"),
        "lift_to_record": MessageLookupByLibrary.simpleMessage("ارفع للتسجيل"),
        "likes_avg_per_post":
            MessageLookupByLibrary.simpleMessage("معدل الإعجابات لكل منشور"),
        "likes_growth": MessageLookupByLibrary.simpleMessage("نمو الإعجابات"),
        "link": MessageLookupByLibrary.simpleMessage("رابط"),
        "link_validate": MessageLookupByLibrary.simpleMessage(
            "عفواً! يبدو أن الرابط الذي أدخلته غير صحيح.يرجى التحقق من عنوان URL والمحاولة مرة أخرى.إذا كنت بحاجة إلى مساعدة، فلا تتردد في الاتصال بفريق الدعم لدينا"),
        "links": MessageLookupByLibrary.simpleMessage("الروابط"),
        "lists": MessageLookupByLibrary.simpleMessage("قوائم"),
        "live_location_active": m10,
        "live_location_duration_15":
            MessageLookupByLibrary.simpleMessage("15 دقيقة"),
        "live_location_duration_480":
            MessageLookupByLibrary.simpleMessage("8 ساعات"),
        "live_location_duration_60":
            MessageLookupByLibrary.simpleMessage("ساعة واحدة"),
        "live_location_message":
            MessageLookupByLibrary.simpleMessage("الموقع المباشر"),
        "live_location_started":
            MessageLookupByLibrary.simpleMessage("بدء مشاركة الموقع المباشر"),
        "live_location_stop_failed":
            MessageLookupByLibrary.simpleMessage("فشل في إيقاف الموقع المباشر"),
        "live_location_stopped_success": MessageLookupByLibrary.simpleMessage(
            "تم إيقاف مشاركة الموقع المباشر"),
        "live_location_with_duration": m11,
        "loadingText": MessageLookupByLibrary.simpleMessage("تحميل…"),
        "loading_gif": MessageLookupByLibrary.simpleMessage(
            "جاري تحميل الصورة المتحركة..."),
        "loading_video":
            MessageLookupByLibrary.simpleMessage("جاري تحميل الفيديو..."),
        "locating":
            MessageLookupByLibrary.simpleMessage("جاري تحديد الموقع..."),
        "location": MessageLookupByLibrary.simpleMessage("الموقع"),
        "location_accuracy": m12,
        "location_error_general":
            MessageLookupByLibrary.simpleMessage("فشل في الحصول على الموقع"),
        "location_expired":
            MessageLookupByLibrary.simpleMessage("انتهت الصلاحية"),
        "location_message_title":
            MessageLookupByLibrary.simpleMessage("الموقع"),
        "location_permissions_denied":
            MessageLookupByLibrary.simpleMessage("تم رفض أذونات الموقع"),
        "location_prompt": MessageLookupByLibrary.simpleMessage("أين تعيش؟"),
        "location_sharing_stopped":
            MessageLookupByLibrary.simpleMessage("تم إيقاف مشاركة الموقع"),
        "location_unavailable":
            MessageLookupByLibrary.simpleMessage("الموقع غير متوفر"),
        "locations": MessageLookupByLibrary.simpleMessage("الموقع"),
        "lock": MessageLookupByLibrary.simpleMessage("قفل"),
        "locked": MessageLookupByLibrary.simpleMessage("مقفل"),
        "log_out": MessageLookupByLibrary.simpleMessage("تسجيل الخروج؟"),
        "log_out_label": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "login_for_current_or_new_campaigns": MessageLookupByLibrary.simpleMessage(
            "للوصول إلى حملاتك الحالية أو إنشاء حملات جديدة، يرجى تسجيل الدخول إلى حسابك."),
        "login_for_current_or_new_chats": MessageLookupByLibrary.simpleMessage(
            "للاطلاع على محادثاتك الحالية أو بدء محادثات جديدة مع المؤثرين، يرجى تسجيل الدخول إلى حسابك."),
        "login_for_viewing_services": MessageLookupByLibrary.simpleMessage(
            "لمشاهدة جميع خدمات المؤثرين المتاحة واختيار الأنسب لحملاتك الإعلانية، قم بتسجيل الدخول إلى حسابك."),
        "login_message": MessageLookupByLibrary.simpleMessage("تسجيل الدخول "),
        "login_or_create_account":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول أو إنشاء حساب"),
        "login_or_register": MessageLookupByLibrary.simpleMessage(
            "سجل الدخول أو أنشئ حسابًا الآن لإنشاء وإدارة الحملات، طلب الخدمات، والتواصل مع المؤثرين والمزيد..."),
        "login_subtitle":
            MessageLookupByLibrary.simpleMessage("أدخل رقم هاتفك للمتابعة"),
        "login_to_access_campaigns": MessageLookupByLibrary.simpleMessage(
            "سجّل الدخول للوصول الى حملاتك"),
        "login_to_access_chats": MessageLookupByLibrary.simpleMessage(
            "سجّل الدخول للوصول إلى محادثاتك"),
        "login_to_access_influencer_services":
            MessageLookupByLibrary.simpleMessage(
                "سجّل الدخول للوصول إلى خدمات المؤثرين"),
        "login_to_view_all_influencers": MessageLookupByLibrary.simpleMessage(
            "سجّل الدخول للوصول إلى جميع المؤثرين"),
        "login_to_view_all_influencers_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "لمشاهدة جميع المؤثرين واختيار الأنسب لحملاتك الإعلانية، قم بتسجيل الدخول إلى حسابك."),
        "login_to_view_favorites":
            MessageLookupByLibrary.simpleMessage("سجّل الدخول لعرض مفضلتك"),
        "login_to_view_favorites_subtitle": MessageLookupByLibrary.simpleMessage(
            "يمكنك إضافة المؤثرين إلى المفضلة، ومشاهدتهم أو إدارتهم بعد تسجيل الدخول."),
        "login_to_view_influencers_services":
            MessageLookupByLibrary.simpleMessage(
                "سجّل الدخول للوصول إلى خدمات المؤثرين"),
        "login_to_view_influencers_services_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "لمشاهدة جميع خدمات المؤثرين المتاحة واختيار الأنسب لحملاتك الإعلانية، قم بتسجيل الدخول إلى حسابك."),
        "login_verify": MessageLookupByLibrary.simpleMessage(
            "سنرسل رمز التحقق إلى رقمك حتى تتمكن من تسجيل الدخول"),
        "login_with_apple":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول عبر أبل"),
        "login_with_google":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول عبر جوجل"),
        "logo": MessageLookupByLibrary.simpleMessage("الشعار"),
        "logo_image_size": MessageLookupByLibrary.simpleMessage(
            "استخدم صورة بهذا الحجم هلى الاقل (440x440) بكسل"),
        "looking_for_partners": MessageLookupByLibrary.simpleMessage(
            "نحن نبحث عن شركاء و مستثمرين و مديرين مستوى -C:لتنميهnojom. "),
        "low": MessageLookupByLibrary.simpleMessage("منخفض"),
        "low_match": MessageLookupByLibrary.simpleMessage("توافق ضعيف"),
        "low_to_high": MessageLookupByLibrary.simpleMessage("من الأقل للأعلى"),
        "macro":
            MessageLookupByLibrary.simpleMessage("ماكرو (100 الف - مليون)"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل البريد صحيحا"),
        "make_finance": MessageLookupByLibrary.simpleMessage(
            "اجعل التمويل أكثر سهولة وشارك التصغير مع النجوم/المؤثرين وستحصل على 50 ريال سعودي للتعبير عن الشكر"),
        "male": MessageLookupByLibrary.simpleMessage("ذكر"),
        "manage_lists_subtitle": MessageLookupByLibrary.simpleMessage(
            "حدد القوائم لإضافة أو إزالة المؤثر"),
        "manage_my_business":
            MessageLookupByLibrary.simpleMessage("إدارة أعمالي"),
        "march": MessageLookupByLibrary.simpleMessage("مارس"),
        "mark_location": MessageLookupByLibrary.simpleMessage("اين موقعك؟"),
        "mass_following":
            MessageLookupByLibrary.simpleMessage("كثيرة المتابعات"),
        "mass_following1":
            MessageLookupByLibrary.simpleMessage("الحسابات كثيرة المتابعات"),
        "mass_following_description": MessageLookupByLibrary.simpleMessage(
            "الحسابات التي تتابع أكثر من 1500 حساب.\nالأشخاص الذين لديهم عدد كبير من المتابَعين تقل احتمالية مشاهدتهم لمنشورات المؤثر، حيث تعطي المنصات أولوية لعرض منشورات الحسابات التي يتفاعلون معها أكثر.\nكما أن بعض هذه الحسابات قد تستخدم طرقًا آلية مثل متابعة/إلغاء متابعة المؤثر لإجباره على متابعتهم."),
        "mawthooq": MessageLookupByLibrary.simpleMessage("موثوق"),
        "mawthooq_new_number":
            MessageLookupByLibrary.simpleMessage("رقم موثوق الجديد"),
        "mawthooq_number": MessageLookupByLibrary.simpleMessage("رقم موثوق"),
        "max": MessageLookupByLibrary.simpleMessage("الحد الأقصى"),
        "maxSize":
            MessageLookupByLibrary.simpleMessage("اقصى حجم هو 20 ميجابايت"),
        "max_categories":
            MessageLookupByLibrary.simpleMessage("أقصى عدد من الفئات هو 3"),
        "max_partners_number": MessageLookupByLibrary.simpleMessage(
            "يمكنك إضافة ما يصل إلى 20 شريك"),
        "max_price": MessageLookupByLibrary.simpleMessage("الحد الأقصى"),
        "max_size": MessageLookupByLibrary.simpleMessage("الحجم الأقصى"),
        "max_videos_and_images_number": MessageLookupByLibrary.simpleMessage(
            "يمكنك أضافة حتى 20 فيديو وصور"),
        "max_videos_number": MessageLookupByLibrary.simpleMessage(
            "يمكنك إضافة ما يصل إلى 20 مقطع"),
        "maximum": MessageLookupByLibrary.simpleMessage("الحد الاقصى"),
        "may": MessageLookupByLibrary.simpleMessage("مايو"),
        "mega_byte": MessageLookupByLibrary.simpleMessage("ميجابايت"),
        "members": MessageLookupByLibrary.simpleMessage("أعضاء"),
        "message": MessageLookupByLibrary.simpleMessage("رسالة"),
        "message_deleted_successfully":
            MessageLookupByLibrary.simpleMessage("تم حذف الرسالة بنجاح"),
        "message_forwarded_successfully": MessageLookupByLibrary.simpleMessage(
            "تم إعادة توجيه الرسالة بنجاح"),
        "message_pinned_successfully":
            MessageLookupByLibrary.simpleMessage("تم تثبيت الرسالة بنجاح"),
        "message_received":
            MessageLookupByLibrary.simpleMessage("استلام الرسائل"),
        "message_text": MessageLookupByLibrary.simpleMessage("رسالة"),
        "message_unpinned_successfully": MessageLookupByLibrary.simpleMessage(
            "تم إلغاء تثبيت الرسالة بنجاح"),
        "messages": MessageLookupByLibrary.simpleMessage("الرسائل"),
        "messages_deleted_successfully": m13,
        "messages_forwarded_successfully": m14,
        "messages_forwarded_to_chats": m15,
        "micro":
            MessageLookupByLibrary.simpleMessage("مايكرو (1,000 - 100 الف)"),
        "microphone_permission_required": MessageLookupByLibrary.simpleMessage(
            "إذن الميكروفون مطلوب لتسجيل الرسائل الصوتية"),
        "migrate_to_nogom_button":
            MessageLookupByLibrary.simpleMessage("انتقل إلى تطبيق نجوم"),
        "migrate_to_nogom_description": MessageLookupByLibrary.simpleMessage(
            "تم دمج تطبيق البراند مع تطبيق نجوم لتجربة موحّدة تجمع الشركات والمؤثرين في مكان واحد.\nيمكنك متابعة استخدام حسابك الحالي وجميع بياناتك من خلال تطبيق نجوم."),
        "migrate_to_nogom_subtitle": MessageLookupByLibrary.simpleMessage(
            "بياناتك محفوظة، تابع في تطبيق نجوم بنفس حسابك."),
        "migrate_to_nogom_title": MessageLookupByLibrary.simpleMessage(
            "انتقلنا إلى تطبيق نجوم الجديد!"),
        "million": MessageLookupByLibrary.simpleMessage("مليون"),
        "million_symbol": MessageLookupByLibrary.simpleMessage(" مليون "),
        "min": MessageLookupByLibrary.simpleMessage("الحد الأدنى"),
        "min_amount":
            MessageLookupByLibrary.simpleMessage("الحد الأدنى للمبلغ هو 100"),
        "min_price": MessageLookupByLibrary.simpleMessage("الحد الأدنى"),
        "minimum": MessageLookupByLibrary.simpleMessage("الحد الادنى"),
        "minimum_size":
            MessageLookupByLibrary.simpleMessage("استخدم صورة بحجم لايقل عن"),
        "mints": MessageLookupByLibrary.simpleMessage("دقائق"),
        "mobil": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "modern": MessageLookupByLibrary.simpleMessage("جديد"),
        "modify_sections_order":
            MessageLookupByLibrary.simpleMessage("تعديل ترتيب الاقسام"),
        "money_back_guarantee":
            MessageLookupByLibrary.simpleMessage("ضمان استرجاع 100%"),
        "month": MessageLookupByLibrary.simpleMessage("شهر"),
        "more": MessageLookupByLibrary.simpleMessage("المزيد"),
        "more_brand_info": MessageLookupByLibrary.simpleMessage(
            "كلما حصلت العلامات التجارية على مزيد من المعلومات حول حسابك، كلما زادت عدد التعاونات التي يمكنهم تقديمها لك."),
        "more_terms_of_use":
            MessageLookupByLibrary.simpleMessage("المزيد من شروط الاستخدام."),
        "mosoque_exist": MessageLookupByLibrary.simpleMessage("يوجد موثوق"),
        "music": MessageLookupByLibrary.simpleMessage("الموسيقي"),
        "mute": MessageLookupByLibrary.simpleMessage("صامت"),
        "myAdPrices": MessageLookupByLibrary.simpleMessage("أسعار إعلاناتي"),
        "myCampaigns": MessageLookupByLibrary.simpleMessage("حملتي"),
        "myClient": MessageLookupByLibrary.simpleMessage("موكلي"),
        "myProfile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "myRates": MessageLookupByLibrary.simpleMessage("تقييماتي"),
        "my_account": MessageLookupByLibrary.simpleMessage("حسابي"),
        "my_ads": MessageLookupByLibrary.simpleMessage("إعلاناتي"),
        "my_available_balance":
            MessageLookupByLibrary.simpleMessage("رصيدي المتوفر"),
        "my_campaign": MessageLookupByLibrary.simpleMessage("حملتي"),
        "my_hired": MessageLookupByLibrary.simpleMessage("نجومي"),
        "my_invoices": MessageLookupByLibrary.simpleMessage("فواتيري"),
        "my_product": MessageLookupByLibrary.simpleMessage("منتجاتي"),
        "my_profile": MessageLookupByLibrary.simpleMessage("حسابي"),
        "my_public_profile": MessageLookupByLibrary.simpleMessage("ملفي العام"),
        "my_settings": MessageLookupByLibrary.simpleMessage("حسابي"),
        "my_store": MessageLookupByLibrary.simpleMessage("متجري"),
        "my_stores": MessageLookupByLibrary.simpleMessage("متاجري"),
        "my_wallet": MessageLookupByLibrary.simpleMessage("المحفظه"),
        "my_wallet_and_account":
            MessageLookupByLibrary.simpleMessage("محفظتي وحسابي"),
        "my_work_and_ads":
            MessageLookupByLibrary.simpleMessage("عملائي وإعلاناتي"),
        "name": MessageLookupByLibrary.simpleMessage("الاسم"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون أكثر من ٢ احرف واقل من ٣٠"),
        "name_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("الاسم لا يمكن فارغا"),
        "nano": MessageLookupByLibrary.simpleMessage("نانو (0 - 1,000)"),
        "nearby_places":
            MessageLookupByLibrary.simpleMessage("الأماكن المجاورة"),
        "need_help_contact_support": MessageLookupByLibrary.simpleMessage(
            "هل تحتاج مساعدة؟ تواصل مع فريق الدعم"),
        "need_more_than":
            MessageLookupByLibrary.simpleMessage("تحتاج إلى أكثر من"),
        "negative": MessageLookupByLibrary.simpleMessage("سلبي"),
        "neutral": MessageLookupByLibrary.simpleMessage("محايد"),
        "new_account": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد؟"),
        "new_campaign_will_be_created": MessageLookupByLibrary.simpleMessage(
            "سيتم إنشاء حملة جديدة وإضافة المؤثر إليها"),
        "new_email":
            MessageLookupByLibrary.simpleMessage("البريد الالكتروني الجديد"),
        "new_job_post":
            MessageLookupByLibrary.simpleMessage("حملات جديدة - خدمة عملاء"),
        "new_opportunities": MessageLookupByLibrary.simpleMessage("فرص جديدة"),
        "new_pass_message": MessageLookupByLibrary.simpleMessage(
            "يجب أن تكون كلمة المرور الجديدة مختلفة عن كلمات المرور التى تم استخدامها من قبل"),
        "new_password":
            MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
        "new_phone_number":
            MessageLookupByLibrary.simpleMessage("رقم الهاتف الجديد"),
        "new_sign_up": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
        "newest": MessageLookupByLibrary.simpleMessage("الأحدث"),
        "news_accounts": MessageLookupByLibrary.simpleMessage("حسابات إخبارية"),
        "next": MessageLookupByLibrary.simpleMessage("التالي"),
        "no": MessageLookupByLibrary.simpleMessage("لا"),
        "noData": MessageLookupByLibrary.simpleMessage("لا توجد بيانات"),
        "noDepositYet": MessageLookupByLibrary.simpleMessage(
            "لم يتم إجراء أي إيداع حتى الآن."),
        "noFiles": MessageLookupByLibrary.simpleMessage("لا توجد ملفات"),
        "noFilesDescription": MessageLookupByLibrary.simpleMessage(
            "سيتم عرض جميع الملفات المرفقة بهذه الحملة هنا"),
        "noResults": MessageLookupByLibrary.simpleMessage("لا يوجد نتائج"),
        "no_account": MessageLookupByLibrary.simpleMessage("لا يوجد حساب؟"),
        "no_account_text":
            MessageLookupByLibrary.simpleMessage("سيتم عرض جميع الحسابات هنا"),
        "no_accounts": MessageLookupByLibrary.simpleMessage("لا توجد حسابات"),
        "no_address_available":
            MessageLookupByLibrary.simpleMessage("لا يوجد عنوان متاح"),
        "no_attachments_to_share":
            MessageLookupByLibrary.simpleMessage("لا توجد مرفقات للمشاركة"),
        "no_bidding_campaign": MessageLookupByLibrary.simpleMessage(
            "سيتم عرض كافة حملات المزايدة\n هنا"),
        "no_bids": MessageLookupByLibrary.simpleMessage("لا يوجد مزايدات"),
        "no_campaign_in_progress":
            MessageLookupByLibrary.simpleMessage("\nلا توجد حملات قيد التقدم"),
        "no_campaigns":
            MessageLookupByLibrary.simpleMessage("لا توجد حملات هنا"),
        "no_campaigns_message":
            MessageLookupByLibrary.simpleMessage("لا توجد حملات هنا"),
        "no_chats_here":
            MessageLookupByLibrary.simpleMessage("لا توجد محادثات"),
        "no_cities_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على مدن"),
        "no_clients_yet":
            MessageLookupByLibrary.simpleMessage("لا يوجد عملاء بعد"),
        "no_closed_campaign":
            MessageLookupByLibrary.simpleMessage("لا توجد حملات سابقة"),
        "no_closed_campaign_message": MessageLookupByLibrary.simpleMessage(
            "سيتم عرض كافة الحملات السابقة\n هنا."),
        "no_conversations":
            MessageLookupByLibrary.simpleMessage("لا يوجد محادثات"),
        "no_countries_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على دول"),
        "no_data_has_been_changed":
            MessageLookupByLibrary.simpleMessage("لم يتم تغيير البيانات"),
        "no_filter_cities_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على مُدن"),
        "no_filter_data_subtitle": MessageLookupByLibrary.simpleMessage(
            "جرّب تعديل خيارات التصفية للحصول على نتائج أكثر"),
        "no_filter_data_title": MessageLookupByLibrary.simpleMessage(
            "لا يوجد مؤثرين يطابقون التصفية الحالية"),
        "no_income": MessageLookupByLibrary.simpleMessage("لا يوجد رصيد دخل"),
        "no_income_text": MessageLookupByLibrary.simpleMessage(
            "سيتم عرض جميع الأرصدة الواردة هنا"),
        "no_industry":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على مجالات"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالانترنت"),
        "no_invoices": MessageLookupByLibrary.simpleMessage("لا توجد فواتير"),
        "no_links": MessageLookupByLibrary.simpleMessage("لا توجد روابط."),
        "no_messages": MessageLookupByLibrary.simpleMessage("لا توجد محادثات"),
        "no_messages_yet":
            MessageLookupByLibrary.simpleMessage("لا توجد رسائل بعد"),
        "no_offer": MessageLookupByLibrary.simpleMessage("لا توجد عروض"),
        "no_offer_campaign":
            MessageLookupByLibrary.simpleMessage("سيتم عرض جميع العروض هنا."),
        "no_orders_available":
            MessageLookupByLibrary.simpleMessage("لا توجد طلبات متاحة"),
        "no_payment_have_made": MessageLookupByLibrary.simpleMessage(
            "لم يتم إجراء أي عملية دفع حتى الآن."),
        "no_photo_albums_found": MessageLookupByLibrary.simpleMessage(
            "لم يتم العثور على ألبومات صور"),
        "no_places_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على أماكن"),
        "no_platforms":
            MessageLookupByLibrary.simpleMessage("لا توجد منصات متاحة"),
        "no_previous_ads":
            MessageLookupByLibrary.simpleMessage("لا توجد إعلانات سابقة"),
        "no_prices_added": MessageLookupByLibrary.simpleMessage(
            "المؤثر لم يضف أسعار إعلاناته"),
        "no_reason_at_all": MessageLookupByLibrary.simpleMessage(
            "أريد فقط حذف حسابي بدون أي سبب على الإطلاق"),
        "no_recent_searches":
            MessageLookupByLibrary.simpleMessage("لا توجد عمليات بحث حديثة"),
        "no_response_meaning": MessageLookupByLibrary.simpleMessage(
            "إذا لم تكن قد سمعت منا خلال تلك الفترة، فيرجى افتراض أننا غير راضين عن العلومات التى قدمتها إلينا أو نعتبر أن درجات ملفك الشخصى منخفضة، لا سيما مع عمليات التحقق."),
        "no_results_match_search": MessageLookupByLibrary.simpleMessage(
            "لم يتم العثور على نتائج تطابق بحثك."),
        "no_reviews": MessageLookupByLibrary.simpleMessage("لا يوجد تقييمات"),
        "no_reviews_message":
            MessageLookupByLibrary.simpleMessage("سيتم عرض جميع التقييمات هنا"),
        "no_services": MessageLookupByLibrary.simpleMessage("لا توجد خدمات"),
        "no_services_available":
            MessageLookupByLibrary.simpleMessage("لا توجد خدمات متاحة"),
        "no_services_here":
            MessageLookupByLibrary.simpleMessage("لا توجد خدمات"),
        "no_stars_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نجوم"),
        "no_tags_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على اقسام"),
        "no_title": MessageLookupByLibrary.simpleMessage("لا يوجد وصف"),
        "no_transactions":
            MessageLookupByLibrary.simpleMessage("لا توجد معاملات"),
        "no_verified_method":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على توثيقات"),
        "no_video_albums_found": MessageLookupByLibrary.simpleMessage(
            "لم يتم العثور على ألبومات فيديو"),
        "no_withdraw": MessageLookupByLibrary.simpleMessage("لا يوجد رصيد سحب"),
        "no_withdraw_text": MessageLookupByLibrary.simpleMessage(
            "سيتم عرض جميع الأرصدة المسحوبة هنا"),
        "nojom_ceo":
            MessageLookupByLibrary.simpleMessage("Nojomالمدير التنفيذى ل"),
        "nojom_get": MessageLookupByLibrary.simpleMessage("سيحصل نجوم على "),
        "not_Available": MessageLookupByLibrary.simpleMessage("لا يوجد"),
        "not_determined": MessageLookupByLibrary.simpleMessage("غير محدد"),
        "not_found": MessageLookupByLibrary.simpleMessage("لا يوجد"),
        "not_started": MessageLookupByLibrary.simpleMessage("اضغط هنا للتقييم"),
        "not_title": MessageLookupByLibrary.simpleMessage("لا يوجد وصف"),
        "not_verified":
            MessageLookupByLibrary.simpleMessage("لم يتم التحقق منه"),
        "note": MessageLookupByLibrary.simpleMessage("ملاحظة"),
        "notes": MessageLookupByLibrary.simpleMessage("ملاحظات"),
        "notes_for_client":
            MessageLookupByLibrary.simpleMessage("ملاحظات للعميل"),
        "notes_optional": MessageLookupByLibrary.simpleMessage("(اختياري)"),
        "notification": MessageLookupByLibrary.simpleMessage("الاشعارات"),
        "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "november": MessageLookupByLibrary.simpleMessage("نوفمبر"),
        "num_of_followers":
            MessageLookupByLibrary.simpleMessage("عدد المتابعين(اختيارى)"),
        "number_of_followers":
            MessageLookupByLibrary.simpleMessage("عدد المتابعين"),
        "number_of_times":
            MessageLookupByLibrary.simpleMessage("عدد المرات(اختيارى)"),
        "october": MessageLookupByLibrary.simpleMessage("أكتوبر"),
        "offer": MessageLookupByLibrary.simpleMessage("عرض"),
        "offers": MessageLookupByLibrary.simpleMessage("العروض"),
        "offline": MessageLookupByLibrary.simpleMessage("غير متصل"),
        "ok": MessageLookupByLibrary.simpleMessage("حسنا"),
        "ok_txt": MessageLookupByLibrary.simpleMessage("حسنا"),
        "on_update_email": MessageLookupByLibrary.simpleMessage(
            "  عند \nتحديث بريدك الإلكتروني!"),
        "on_update_phone":
            MessageLookupByLibrary.simpleMessage("عند تحديث هاتفك!"),
        "onceYuoSubmitCampaign": MessageLookupByLibrary.simpleMessage(
            "بمجرد إرسال حملتك، سيقوم العميل بتحرير الإيداع"),
        "one_contract": MessageLookupByLibrary.simpleMessage("عقد"),
        "only_me": MessageLookupByLibrary.simpleMessage("أنا فقط"),
        "open": MessageLookupByLibrary.simpleMessage("فتح"),
        "open_in_maps": MessageLookupByLibrary.simpleMessage("فتح في الخرائط"),
        "opening_file": m16,
        "option": MessageLookupByLibrary.simpleMessage("اختيارى"),
        "optional": MessageLookupByLibrary.simpleMessage("اختياري"),
        "options_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "or": MessageLookupByLibrary.simpleMessage("أو"),
        "orderAndPay": MessageLookupByLibrary.simpleMessage("اطلب وادفع"),
        "order_canceled":
            MessageLookupByLibrary.simpleMessage("المؤثر رفض الطلب (ملغي)"),
        "order_completed":
            MessageLookupByLibrary.simpleMessage("تمت موافقتك (مكتمل)"),
        "order_created":
            MessageLookupByLibrary.simpleMessage("أضف موثرين لحملتك"),
        "order_delivered":
            MessageLookupByLibrary.simpleMessage("تم التسليم (قيد موافقتك)"),
        "order_delivery_date":
            MessageLookupByLibrary.simpleMessage("تاريخ تسليم الطلب"),
        "order_id": MessageLookupByLibrary.simpleMessage("رقم الطلب"),
        "order_in_progress": MessageLookupByLibrary.simpleMessage(
            "تمت موافقة المؤثر (قيد التفيذ)"),
        "order_now": MessageLookupByLibrary.simpleMessage("اطلب الآن"),
        "order_requested": MessageLookupByLibrary.simpleMessage(
            "تم الطلب (بانتظار موافقة المؤثرين)"),
        "order_title": MessageLookupByLibrary.simpleMessage("عنوان الطلب"),
        "order_total": MessageLookupByLibrary.simpleMessage("الإجمالي"),
        "order_total_price":
            MessageLookupByLibrary.simpleMessage("المبلغ الإجمالي"),
        "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "orders_details": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
        "other": MessageLookupByLibrary.simpleMessage("أخرى"),
        "otp_send": MessageLookupByLibrary.simpleMessage("تم إرسال رمز OTP "),
        "overview": MessageLookupByLibrary.simpleMessage("نظرة عامة"),
        "package": MessageLookupByLibrary.simpleMessage("باكج"),
        "page": MessageLookupByLibrary.simpleMessage("صفحة."),
        "paid": MessageLookupByLibrary.simpleMessage("مدفوع"),
        "paid_for_campaign":
            MessageLookupByLibrary.simpleMessage("معرف الحملة المدفوعة"),
        "paid_to_you": MessageLookupByLibrary.simpleMessage("مدفوع لك"),
        "partner_with_us":
            MessageLookupByLibrary.simpleMessage("كن شريكا معنا"),
        "partners": MessageLookupByLibrary.simpleMessage("شركائي"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "من فضلك ادخل على الاقل 6 حروف او ارقام"),
        "pass_reset_success": MessageLookupByLibrary.simpleMessage(
            "تم إعادة تعيين كلمة المرور بنجاح"),
        "password_strength":
            MessageLookupByLibrary.simpleMessage("قوة كلمة المرور:"),
        "password_strength_description": MessageLookupByLibrary.simpleMessage(
            "استخدم 8 أحرف على الأقل. لا تستخدم كلمة مرور من موقع آخر، أو أي شيء شديد الوضوح مثل اسم حيوانك الأليف."),
        "password_validation_message": MessageLookupByLibrary.simpleMessage(
            "استخدم 8 أحرف على الأقل. لا تستخدم كلمة مرور من موقع آخر، أو شيئًا واضحًا جدًا."),
        "pastCampaigns":
            MessageLookupByLibrary.simpleMessage("الحملات السابقة"),
        "past_campaigns":
            MessageLookupByLibrary.simpleMessage("الحملات السابقة"),
        "pay": MessageLookupByLibrary.simpleMessage("ادفع"),
        "pay_description": MessageLookupByLibrary.simpleMessage(
            "لن يتعين عليك دفع ثمن الحملة إلا عند اكتمالها وعندما تكون راضيًا عنها بنسبة 100%."),
        "pay_using": MessageLookupByLibrary.simpleMessage("ادفع باستخدام"),
        "pay_with": MessageLookupByLibrary.simpleMessage("الدفع عبر"),
        "pay_with_card":
            MessageLookupByLibrary.simpleMessage("الدفع عبر البطاقة"),
        "payment": MessageLookupByLibrary.simpleMessage("الدفع"),
        "paymentDetails": MessageLookupByLibrary.simpleMessage("تفاصيل الدفع"),
        "paymentRemindText": MessageLookupByLibrary.simpleMessage(
            "يرجى تذكير عميلك بإيداع الدفع حتى تتمكن من بدء العمل"),
        "paymentTermsText": MessageLookupByLibrary.simpleMessage(
            "جميع الودائع والرسوم قابلة للاسترداد وفقًا لشروطنا"),
        "payment_card_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل بطاقة الدفع"),
        "payment_failed": MessageLookupByLibrary.simpleMessage("فشل في الدفع"),
        "payment_success_desc": MessageLookupByLibrary.simpleMessage(
            "تم تأكيد الدفع وإضافة المؤثر إلى حملتك بنجاح. في انتظار رد المؤثر على الحملة، يمكنك الآن متابعة تنفيذ الحملة وإدارة تفاصيلها.!"),
        "payment_success_title": MessageLookupByLibrary.simpleMessage(
            "تم الدفع وإضافة المؤثر بنجاح!"),
        "payments": MessageLookupByLibrary.simpleMessage("المدفوعات"),
        "pending": MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
        "pending_balance":
            MessageLookupByLibrary.simpleMessage("المبلغ المحجوز"),
        "per_friend_reward": MessageLookupByLibrary.simpleMessage(
            "احصل على 10 ريال عن كل صديق."),
        "permission_denied_photos": MessageLookupByLibrary.simpleMessage(
            "تم رفض الإذن للوصول إلى الصور"),
        "permission_denied_videos": MessageLookupByLibrary.simpleMessage(
            "تم رفض الإذن للوصول إلى الفيديوهات"),
        "phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "phoneValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل الجوال صحيحا"),
        "phone_already_verified": MessageLookupByLibrary.simpleMessage(
            "لقد قمت بالتحقق من رقم الهاتف بالفعل"),
        "phone_number": MessageLookupByLibrary.simpleMessage("رقم الجوال"),
        "phone_verification":
            MessageLookupByLibrary.simpleMessage("التحقق من رقم الهاتف"),
        "photo_and_video_library":
            MessageLookupByLibrary.simpleMessage("مكتبة الصور والفيديو"),
        "photos": MessageLookupByLibrary.simpleMessage("الصور"),
        "pick": MessageLookupByLibrary.simpleMessage("اختيار"),
        "pin": MessageLookupByLibrary.simpleMessage("تثبيت"),
        "pin_limit":
            MessageLookupByLibrary.simpleMessage("يمكنك تثبيت 3 محادثات فقط"),
        "pin_limit_reached": MessageLookupByLibrary.simpleMessage(
            "قم بإزالة محادثة مثبتة حالياً لتثبيت هذه المحادثة بدلاً منها"),
        "pin_message": MessageLookupByLibrary.simpleMessage("تثبيت الرسالة"),
        "pin_message_description": MessageLookupByLibrary.simpleMessage(
            "سيتم تثبيت هذه الرسالة في أعلى الدردشة للجميع."),
        "pixels": MessageLookupByLibrary.simpleMessage("بكسل "),
        "placeBid": MessageLookupByLibrary.simpleMessage("اضافة مزايدة"),
        "placeBidOn": MessageLookupByLibrary.simpleMessage("وضع مزايدة على"),
        "place_location_shared":
            MessageLookupByLibrary.simpleMessage("تم مشاركة الموقع"),
        "platform": MessageLookupByLibrary.simpleMessage("المنصة"),
        "platform_name": MessageLookupByLibrary.simpleMessage("اسم المنصة"),
        "platforms": MessageLookupByLibrary.simpleMessage("المنصات"),
        "please": MessageLookupByLibrary.simpleMessage("الرجاء"),
        "please_add_profile_photo": MessageLookupByLibrary.simpleMessage(
            "يرجى إضافة صورة الملف الشخصي"),
        "please_complete_info":
            MessageLookupByLibrary.simpleMessage("يرجى إكمال المعلومات"),
        "please_enter": MessageLookupByLibrary.simpleMessage("الرجاء إدخال"),
        "please_enter_code": MessageLookupByLibrary.simpleMessage(
            "أدخل كود التحقق الذي أرسلناه إلى هاتفك"),
        "please_enter_valid_phone_number":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال رقم جوال صحيح."),
        "please_login": MessageLookupByLibrary.simpleMessage(
            "برجاء تسجيل الدخول أو إنشاء حساب للتعاون، عرض الملفات الشخصية، التواصل، المزيد...."),
        "please_select_attachment":
            MessageLookupByLibrary.simpleMessage("الرجاء اختيار ملف"),
        "please_select_country_first":
            MessageLookupByLibrary.simpleMessage("يرجى اختيار الدولة أولاً"),
        "please_select_referral":
            MessageLookupByLibrary.simpleMessage("يرجى تحديد كيف سمعت عنا"),
        "please_select_service": MessageLookupByLibrary.simpleMessage(
            "يرجى تحديد ما هي اهم خدمة بالنسبة لك"),
        "plus_1m": MessageLookupByLibrary.simpleMessage("+1 مليون"),
        "plus_five_million": MessageLookupByLibrary.simpleMessage("+5 مليون"),
        "points": MessageLookupByLibrary.simpleMessage("نقطة"),
        "points_per_sar":
            MessageLookupByLibrary.simpleMessage("4 نقاط مقابل كل ريال تنفقه"),
        "policy_pages": MessageLookupByLibrary.simpleMessage("صفحات السياسة"),
        "poor": MessageLookupByLibrary.simpleMessage("ضعيف"),
        "poor_match": MessageLookupByLibrary.simpleMessage("توافق منخفض"),
        "popular_countries":
            MessageLookupByLibrary.simpleMessage("الدول المشهورة"),
        "popular_location":
            MessageLookupByLibrary.simpleMessage("المواقع المشهورة"),
        "portfolio": MessageLookupByLibrary.simpleMessage("الأعمال السابقة"),
        "portfolio_empty": MessageLookupByLibrary.simpleMessage(
            "عزز فرص التعاون لديك من خلال إضافة أحد مقاطع الفيديو الخاصة بحملاتك الناجحة إلى محفظتك"),
        "portfolio_limit": MessageLookupByLibrary.simpleMessage(
            "يمكنك إضافة ما يصل إلى 50 مقطع فيديو وصورة"),
        "positive": MessageLookupByLibrary.simpleMessage("إيجابي"),
        "post": MessageLookupByLibrary.simpleMessage("منشور"),
        "post_camp": MessageLookupByLibrary.simpleMessage("نشر الحملة"),
        "post_camp_free":
            MessageLookupByLibrary.simpleMessage("انشر حملتك (مجانًا)"),
        "post_frequency": MessageLookupByLibrary.simpleMessage("معدل النشر"),
        "posts": MessageLookupByLibrary.simpleMessage("منشورات"),
        "prepareCampaignTitle":
            MessageLookupByLibrary.simpleMessage("نجهز بيانات حملتك"),
        "preparingYourCampaignData":
            MessageLookupByLibrary.simpleMessage("نجهز بيانات حملتك"),
        "press_again_to_exit":
            MessageLookupByLibrary.simpleMessage("اضغط مرة أخرى للخروج"),
        "preview": MessageLookupByLibrary.simpleMessage("عرض"),
        "previous": MessageLookupByLibrary.simpleMessage("السابقة"),
        "previous_ads_will_appear_here": MessageLookupByLibrary.simpleMessage(
            "ستظهر إعلاناتك السابقة هنا عند إضافتها"),
        "previous_clients":
            MessageLookupByLibrary.simpleMessage("العملاء السابقين"),
        "previous_work":
            MessageLookupByLibrary.simpleMessage("الأعمال السابقة"),
        "previous_work_description": MessageLookupByLibrary.simpleMessage(
            "يقيّم مدى تعاون المؤثر سابقًا مع علامات تجارية في نفس مجال الحملة."),
        "price": MessageLookupByLibrary.simpleMessage("السعر"),
        "price_range": MessageLookupByLibrary.simpleMessage("نطاق السعر"),
        "price_required": MessageLookupByLibrary.simpleMessage("السعر مطلوب"),
        "price_will_be_unified_when_sending_offer":
            MessageLookupByLibrary.simpleMessage(
                "يُعرض السعر للعميل كسعر واحد لكل المنصات."),
        "primary": MessageLookupByLibrary.simpleMessage("رئيسى"),
        "primary_account":
            MessageLookupByLibrary.simpleMessage("الحساب الأساسي"),
        "primary_bank_account":
            MessageLookupByLibrary.simpleMessage("حساب البنك الرئيسى"),
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
        "private_info":
            MessageLookupByLibrary.simpleMessage("المعلومات الشخصية"),
        "private_information":
            MessageLookupByLibrary.simpleMessage("المعلومات الشخصية"),
        "private_to_me":
            MessageLookupByLibrary.simpleMessage("خاص، يظهر لي فقط"),
        "product": MessageLookupByLibrary.simpleMessage("منتج"),
        "product_url": MessageLookupByLibrary.simpleMessage("رابط URL للمنج"),
        "products": MessageLookupByLibrary.simpleMessage("المنتجات"),
        "products_max_number":
            MessageLookupByLibrary.simpleMessage("يمكنك أضافة حتى 20 منتج"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصى"),
        "profile_info":
            MessageLookupByLibrary.simpleMessage("معلومات الملف الشخصي"),
        "profile_username": MessageLookupByLibrary.simpleMessage(
            "هذا الاسم سيظهر على حسابك الشخصي"),
        "profit_100_percent": MessageLookupByLibrary.simpleMessage("الربح"),
        "project": MessageLookupByLibrary.simpleMessage("المشروع"),
        "project_closed": MessageLookupByLibrary.simpleMessage("إغلاق الحملة"),
        "project_or_store_name":
            MessageLookupByLibrary.simpleMessage("اسم مشروعك أو متجرك"),
        "proof_updated":
            MessageLookupByLibrary.simpleMessage("تم تحديث الدليل بنجاح"),
        "proposed_campaign_budget":
            MessageLookupByLibrary.simpleMessage("الميزانية المقترحة للحملة"),
        "provide_your_crNumber": MessageLookupByLibrary.simpleMessage(
            "يرجى ادخال رقم السجل التجارى لنتمكن من التحقق من حسابك. سيتم الاحتفاظ بهذه المعلومات بسرية تامه و سيتم استخدامها لاغراض التحقق فقط"),
        "provide_your_vat_number": MessageLookupByLibrary.simpleMessage(
            "يرجى ادخال رقم ضريبة القيمة المضافة لنتمكن من التحقق من حسابك. سيتم الاحتفاظ بهذه المعلومات بسرية تامه وسيتم استخدامها لاغراض التحقق فقط"),
        "public": MessageLookupByLibrary.simpleMessage("الجميع"),
        "public_profile":
            MessageLookupByLibrary.simpleMessage("الملف الشخصي العام"),
        "public_profile_desc": MessageLookupByLibrary.simpleMessage(
            "الصفحة الشخصية مرئية لأى شخص، حتى خارج منصة نجوم. استخدم هذا الرابط كرابط لسيرتك الذاتية على جميع المنصات"),
        "public_profile_pic": MessageLookupByLibrary.simpleMessage(
            "اضف صورة الملف الشخصى التى تظهر للجميع"),
        "purchase_price": MessageLookupByLibrary.simpleMessage("سعر الشراء"),
        "quantity": MessageLookupByLibrary.simpleMessage("عدد"),
        "rate": MessageLookupByLibrary.simpleMessage("تقييم"),
        "rateTheClient": MessageLookupByLibrary.simpleMessage("تقييم العميل"),
        "rate_app": MessageLookupByLibrary.simpleMessage("تقييم التطبيق"),
        "rate_order": MessageLookupByLibrary.simpleMessage("تقييم الطلب"),
        "rating_prompt":
            MessageLookupByLibrary.simpleMessage("ماهو تقييمك لهذا المؤثر؟"),
        "re_send_code": MessageLookupByLibrary.simpleMessage("إعادة الإرسال"),
        "reaction_angry": MessageLookupByLibrary.simpleMessage("غضب"),
        "reaction_haha": MessageLookupByLibrary.simpleMessage("ضحك"),
        "reaction_like": MessageLookupByLibrary.simpleMessage("إعجاب"),
        "reaction_love": MessageLookupByLibrary.simpleMessage("حب"),
        "reaction_sad": MessageLookupByLibrary.simpleMessage("حزن"),
        "reaction_wow": MessageLookupByLibrary.simpleMessage("مذهل"),
        "read": MessageLookupByLibrary.simpleMessage("مقروءة"),
        "read_less": MessageLookupByLibrary.simpleMessage("  اقرأ أقل"),
        "read_more": MessageLookupByLibrary.simpleMessage("  اقرأ المزيد"),
        "ready_service_exists": MessageLookupByLibrary.simpleMessage(
            "يوجد خدمة جاهزة مضافة لنفس هذه الخدمة"),
        "real_people": MessageLookupByLibrary.simpleMessage("أشخاص حقيقيون"),
        "receiveTheCampaign":
            MessageLookupByLibrary.simpleMessage("استلم الحملة"),
        "received": MessageLookupByLibrary.simpleMessage("تلقى"),
        "recent_searches":
            MessageLookupByLibrary.simpleMessage("عمليات البحث الأخيرة"),
        "recent_transactions": MessageLookupByLibrary.simpleMessage("العمليات"),
        "recording": MessageLookupByLibrary.simpleMessage("تسجيل"),
        "recording_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "recording_in_progress":
            MessageLookupByLibrary.simpleMessage("جارٍ التسجيل..."),
        "recording_send": MessageLookupByLibrary.simpleMessage("إرسال"),
        "referral_benefits": MessageLookupByLibrary.simpleMessage(
            "شارك كود الخصم او رابط الدعوة الخاص بك مع اصدقائك. بمجرد استخدام هذا الكود او الرابط لنشر خملاتهم الأولى في نچوم، سيحصلون على خصم 10 ريال من السعر، وستحصل على 10 ريالات اقرأ"),
        "referral_prompt":
            MessageLookupByLibrary.simpleMessage("كيف سمعت عنا؟"),
        "referral_reward": MessageLookupByLibrary.simpleMessage(
            "اى شخص يستخدم كود الخصم او يتبع الرابط الخاص بك ، يحصل على الخصم 10 ريال من الحملة الأولى."),
        "refund": MessageLookupByLibrary.simpleMessage("استرداد"),
        "register_interest_button":
            MessageLookupByLibrary.simpleMessage("سجّل اهتمامك بالأسعار"),
        "register_interest_message": MessageLookupByLibrary.simpleMessage(
            "سجّل اهتمامك ليصلك إشعار بعد إضافة المؤثر لأسعاره."),
        "register_now": MessageLookupByLibrary.simpleMessage(
            "سجّل الآن أو قم بتسجيل الدخول"),
        "reject": MessageLookupByLibrary.simpleMessage("مرفوض"),
        "rejected": MessageLookupByLibrary.simpleMessage("موعد التسليم"),
        "release_amount": MessageLookupByLibrary.simpleMessage("مبلغ مفرج عنه"),
        "released": MessageLookupByLibrary.simpleMessage("قام بالدفع"),
        "released_done": MessageLookupByLibrary.simpleMessage("تم تحرير"),
        "released_money": MessageLookupByLibrary.simpleMessage(
            "الموافقة على الطلب لتحرير المبلغ"),
        "remain_balance":
            MessageLookupByLibrary.simpleMessage("الرصيد المتبقي"),
        "remaining": MessageLookupByLibrary.simpleMessage("متبقية"),
        "remove": MessageLookupByLibrary.simpleMessage("إزالة"),
        "remove_1": MessageLookupByLibrary.simpleMessage("قم بإزالت"),
        "remove_2": MessageLookupByLibrary.simpleMessage(
            "من الدردشة وحذف جميع الدردشة والبيانات بيننا"),
        "removed_from_draft_prefix":
            MessageLookupByLibrary.simpleMessage("تمت إزالة"),
        "removed_from_draft_suffix":
            MessageLookupByLibrary.simpleMessage("من المسودة"),
        "rename": MessageLookupByLibrary.simpleMessage("إعادة تسمية"),
        "rename_list":
            MessageLookupByLibrary.simpleMessage("إعادة تسمية القائمة"),
        "reply": MessageLookupByLibrary.simpleMessage("رد"),
        "report": MessageLookupByLibrary.simpleMessage("التقرير"),
        "report_access": MessageLookupByLibrary.simpleMessage(
            "هل تحتاج إلى الإبلاغ عن الوصول إلى هذا الملف الشخصي؟ قم بزيارة"),
        "report_block": MessageLookupByLibrary.simpleMessage("الإبلاغ والحظر"),
        "report_campaign":
            MessageLookupByLibrary.simpleMessage("ابلاغ عن الحملة"),
        "report_profile":
            MessageLookupByLibrary.simpleMessage("الإبلاغ عن الملف الشخصي"),
        "represent_user_name": MessageLookupByLibrary.simpleMessage(
            "رابط نجوم الخاص بك جاهز. اختر اسم مستخدم مميزًا لتمثيلك"),
        "requestAd": MessageLookupByLibrary.simpleMessage("اطلب إعلان"),
        "request_ad": MessageLookupByLibrary.simpleMessage("اطلب إعلان"),
        "request_ad_description": MessageLookupByLibrary.simpleMessage(
            "استمتع بتجربة سلسة في طلب خدمات المؤثرين، مما يضمن عملية آمنة واحترافية لتعاون ناجح."),
        "request_an_ad_in_minutes":
            MessageLookupByLibrary.simpleMessage("اطلب إعلان في دقائق"),
        "request_approved":
            MessageLookupByLibrary.simpleMessage("تمت الموافقة على طلبك"),
        "request_approved_message": MessageLookupByLibrary.simpleMessage(
            "تمت الموافقة على الطلب، وتم تحرير المبلغ ليصبح متاحًا للمؤثر للسحب، شكرًا لاستخدامك منصة نجوم! لأي استفسارات، تواصل مع خدمة العملاء."),
        "request_pending":
            MessageLookupByLibrary.simpleMessage("طلبك قيد الانتظار"),
        "request_rejected": MessageLookupByLibrary.simpleMessage("تم رفض طلبك"),
        "request_submitted": MessageLookupByLibrary.simpleMessage(
            "تم تقديم طلبك بنجاح. ننتظر موافقة المؤثر على الحملة."),
        "requested": MessageLookupByLibrary.simpleMessage("موعد التسليم"),
        "requested_request":
            MessageLookupByLibrary.simpleMessage("إرسال الطلب"),
        "resend_code":
            MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
        "resend_code_via_whatsapp": MessageLookupByLibrary.simpleMessage(
            "إعادة ارسال الرمز بواسطة WhatsApp"),
        "resend_email": MessageLookupByLibrary.simpleMessage(
            "اعادة ارسال البريد الالكتروني"),
        "resend_in": MessageLookupByLibrary.simpleMessage("اعادة الارسال خلال"),
        "resend_submit_verification":
            MessageLookupByLibrary.simpleMessage("اعادة إرسال للتحقق"),
        "reset": MessageLookupByLibrary.simpleMessage("إعادة تعيين"),
        "reset_pass":
            MessageLookupByLibrary.simpleMessage("إعادة ضبط كلمة المرور"),
        "respond_within": MessageLookupByLibrary.simpleMessage("سنرد خلال"),
        "restricted_members":
            MessageLookupByLibrary.simpleMessage("علامات تجارية محددة"),
        "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "review_our": MessageLookupByLibrary.simpleMessage("يرجى مراجعة"),
        "review_reward_desc": MessageLookupByLibrary.simpleMessage(
            "بعد الانتهاء من المراجعات فى جميع مواقع المراجعة،احصل على 10 ريال."),
        "review_reward_title":
            MessageLookupByLibrary.simpleMessage("احصل على 2 ريال لكل تقييم"),
        "reviews": MessageLookupByLibrary.simpleMessage("التقييمات"),
        "rewards": MessageLookupByLibrary.simpleMessage("المكافات"),
        "reword": MessageLookupByLibrary.simpleMessage("إعادة الصياغة"),
        "riyadh_influencers":
            MessageLookupByLibrary.simpleMessage("مؤثرين في الرياض"),
        "ryal": MessageLookupByLibrary.simpleMessage("ريال"),
        "sar": MessageLookupByLibrary.simpleMessage("﷼"),
        "sar_currency": MessageLookupByLibrary.simpleMessage("ر.س"),
        "saudi_riyal": MessageLookupByLibrary.simpleMessage("ريال سعودي(ر.س)"),
        "saudi_vat": MessageLookupByLibrary.simpleMessage("رسوم الضريبة"),
        "save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "save_changes": MessageLookupByLibrary.simpleMessage("حفظ التعديلات"),
        "save_draft": MessageLookupByLibrary.simpleMessage("حفظ المسودة"),
        "save_selected": MessageLookupByLibrary.simpleMessage("حفظ المحدد"),
        "saved": MessageLookupByLibrary.simpleMessage("المفضلة"),
        "saved_story_views_by_country": MessageLookupByLibrary.simpleMessage(
            "مشاهدات القصة المحفوظة حسب الدولة"),
        "saved_story_views_by_gender": MessageLookupByLibrary.simpleMessage(
            "مشاهدات القصة المحفوظة حسب النوع"),
        "scammer": MessageLookupByLibrary.simpleMessage("محتال"),
        "search": MessageLookupByLibrary.simpleMessage("بحث"),
        "search_address":
            MessageLookupByLibrary.simpleMessage("البحث أو إدخال عنوان"),
        "search_and_collaborate_with_stars":
            MessageLookupByLibrary.simpleMessage("ابحث وتعاون مع النجوم"),
        "search_failed": MessageLookupByLibrary.simpleMessage("فشل البحث"),
        "search_for_a_star": MessageLookupByLibrary.simpleMessage(
            "ابحث وتعاون مع النجوم خلال دقائق"),
        "search_influencer_classification":
            MessageLookupByLibrary.simpleMessage("ابحث عن تصنيف"),
        "second": MessageLookupByLibrary.simpleMessage("ثوانى"),
        "seconds": MessageLookupByLibrary.simpleMessage("ثانية"),
        "security_code": MessageLookupByLibrary.simpleMessage("رمز الأمان"),
        "security_code_verify": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال رمز التحقق المرسل إلى بريدك الإلكتروني وكلمة المرور الجديدة"),
        "see_account":
            MessageLookupByLibrary.simpleMessage("للتمكن من رؤية الحساب"),
        "see_all_files":
            MessageLookupByLibrary.simpleMessage("رؤية كل الملفات"),
        "see_details":
            MessageLookupByLibrary.simpleMessage("اطلع على خطوات الطلب"),
        "see_how_it_work":
            MessageLookupByLibrary.simpleMessage("خطوات الحصول على خصم"),
        "select": MessageLookupByLibrary.simpleMessage("اختر"),
        "select_about_us":
            MessageLookupByLibrary.simpleMessage("برجاء اختيار كيف سمعت عننا"),
        "select_at_least_one_channel":
            MessageLookupByLibrary.simpleMessage("اختر قناة واحدة على الأقل"),
        "select_bank": MessageLookupByLibrary.simpleMessage("اختر البنك"),
        "select_category": MessageLookupByLibrary.simpleMessage("اختر المجال"),
        "select_city": MessageLookupByLibrary.simpleMessage("اختر المدينة"),
        "select_contact":
            MessageLookupByLibrary.simpleMessage("اختر جهة الاتصال"),
        "select_country": MessageLookupByLibrary.simpleMessage("اختر الدولة"),
        "select_currency": MessageLookupByLibrary.simpleMessage("ختر العملة"),
        "select_date": MessageLookupByLibrary.simpleMessage("اختر التاريخ"),
        "select_image": MessageLookupByLibrary.simpleMessage("اختر صورة"),
        "select_option": MessageLookupByLibrary.simpleMessage(
            "اختر خيارًا لاختيار صورة هويتك"),
        "select_orders": MessageLookupByLibrary.simpleMessage("اختر الطلبات"),
        "select_orders_to_add": MessageLookupByLibrary.simpleMessage(
            "اختر الطلبات لإضافتها للحملة"),
        "select_paid_account": MessageLookupByLibrary.simpleMessage(
            "يرجى تحديد حساب واحد للحصول على الدفعة"),
        "select_reason":
            MessageLookupByLibrary.simpleMessage("الرجاء تحديد السبب"),
        "select_refund_reason":
            MessageLookupByLibrary.simpleMessage("Please select single reason"),
        "select_services": MessageLookupByLibrary.simpleMessage("حدد الخدمات"),
        "select_tags": MessageLookupByLibrary.simpleMessage("اختر الفئات"),
        "select_time": MessageLookupByLibrary.simpleMessage("اختر الوقت"),
        "select_upload_file_option":
            MessageLookupByLibrary.simpleMessage("حدد خيارك!"),
        "selected": MessageLookupByLibrary.simpleMessage("محدد"),
        "selected_messages_count": m17,
        "selling_price": MessageLookupByLibrary.simpleMessage("سعر البيع"),
        "selling_price_validation": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون سعر البيع مساويًا أو أكبر من سعر الشراء."),
        "send": MessageLookupByLibrary.simpleMessage("إرسال"),
        "sendOffer": MessageLookupByLibrary.simpleMessage("إرسال العرض"),
        "send_again":
            MessageLookupByLibrary.simpleMessage("أعد الإرسال مرة أخرى بعد"),
        "send_an_email":
            MessageLookupByLibrary.simpleMessage("إرسال بريد إلكتروني"),
        "send_code": MessageLookupByLibrary.simpleMessage("إرسال الرمز"),
        "send_current_location":
            MessageLookupByLibrary.simpleMessage("إرسال موقعك الحالي"),
        "send_custom_offer":
            MessageLookupByLibrary.simpleMessage("أرسل عرض مخصص"),
        "send_location": MessageLookupByLibrary.simpleMessage("إرسال الموقع"),
        "send_offer": MessageLookupByLibrary.simpleMessage("إرسال عرض"),
        "send_offers": MessageLookupByLibrary.simpleMessage("ارسال عروض"),
        "send_report": MessageLookupByLibrary.simpleMessage("إرسال تقرير"),
        "send_to": MessageLookupByLibrary.simpleMessage("تم إرسال الرمز إلى"),
        "send_verification_email":
            MessageLookupByLibrary.simpleMessage("إرسال رسالة التحقق"),
        "send_verify_code":
            MessageLookupByLibrary.simpleMessage("إرسال رمز التحقق"),
        "send_verify_email":
            MessageLookupByLibrary.simpleMessage("إرسال بريد إلكتروني للتحقق"),
        "sent_successfully":
            MessageLookupByLibrary.simpleMessage("تم الإرسال بنجاح"),
        "september": MessageLookupByLibrary.simpleMessage("سبتمبر"),
        "service": MessageLookupByLibrary.simpleMessage("خدمة"),
        "serviceFree": MessageLookupByLibrary.simpleMessage("الخدمة مجانية"),
        "service_fee": MessageLookupByLibrary.simpleMessage("رسوم الخدمة "),
        "service_fee_on_client":
            MessageLookupByLibrary.simpleMessage("رسوم الخدمة على العميل"),
        "service_name": MessageLookupByLibrary.simpleMessage("اسم الخدمة"),
        "service_name_duplicate":
            MessageLookupByLibrary.simpleMessage("اسم الخدمة مكرر"),
        "service_name_required":
            MessageLookupByLibrary.simpleMessage("اسم الخدمة مطلوب"),
        "services": MessageLookupByLibrary.simpleMessage("الخدمات"),
        "set": MessageLookupByLibrary.simpleMessage("تحديد"),
        "set_amount": MessageLookupByLibrary.simpleMessage("حدد المبلغ"),
        "set_amount_title":
            MessageLookupByLibrary.simpleMessage("حدد المبلغ الذي تود إضافته"),
        "set_as_primary":
            MessageLookupByLibrary.simpleMessage("تعين كا حساب رئيسى"),
        "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
        "share": MessageLookupByLibrary.simpleMessage("مشاركة"),
        "share_app": MessageLookupByLibrary.simpleMessage("مشاركة التطبيق"),
        "share_campaign": MessageLookupByLibrary.simpleMessage("مشاركة الحملة"),
        "share_link": MessageLookupByLibrary.simpleMessage("مشاركة الرابط"),
        "share_live_location":
            MessageLookupByLibrary.simpleMessage("مشاركة الموقع المباشر"),
        "share_personal_files":
            MessageLookupByLibrary.simpleMessage("مشاركة الملفات الشخصية"),
        "share_video_link": MessageLookupByLibrary.simpleMessage(
            "شارك الرابط الخاص بأحدث مقطع فيديو لديك لتوسيع نطاق جمهورك وتعزيز نسبة المشاهدة"),
        "shine_with_stars":
            MessageLookupByLibrary.simpleMessage("المع مع النجوم"),
        "short_description": MessageLookupByLibrary.simpleMessage("وصف مختصر"),
        "show": MessageLookupByLibrary.simpleMessage("اظهار"),
        "show_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
        "show_all_section":
            MessageLookupByLibrary.simpleMessage("عرض كل الأقسام"),
        "show_audience_segment_details":
            MessageLookupByLibrary.simpleMessage("عرض تفاصيل فئة المتابعين"),
        "show_details": MessageLookupByLibrary.simpleMessage("عرض التفاصيل"),
        "show_followers": MessageLookupByLibrary.simpleMessage(
            "اظهار المتابعين لجميع المستخدمين"),
        "show_less": MessageLookupByLibrary.simpleMessage("عرض اقل"),
        "show_results": MessageLookupByLibrary.simpleMessage("عرض النتائج"),
        "show_socials_links": MessageLookupByLibrary.simpleMessage(
            "إظهار جميع روابط حساباتك الاجتماعية."),
        "signUpErrorMessage": MessageLookupByLibrary.simpleMessage(
            "This email or phone number used by another user"),
        "sign_in": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "sign_in_or_create_account_now": MessageLookupByLibrary.simpleMessage(
            "سجل الدخول أو أنشئ حسابك تلقائيًا الآن لإنشاء وإدارة الحملات، طلب الخدمات، والتواصل مع المؤثرين والمزيد..."),
        "sign_in_or_create_account_now_to_create_and_manage_campaigns_request_services_communicate_with_stars_and_more":
            MessageLookupByLibrary.simpleMessage(
                "سجل الدخول أو أنشئ حسابك تلقائيًا الآن لإنشاء وإدارة الحملات، طلب الخدمات، والتواصل مع المؤثرين والمزيد..."),
        "sign_in_to_view_orders": MessageLookupByLibrary.simpleMessage(
            "يرجى تسجيل الدخول لعرض طلباتك"),
        "sign_out": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "sign_up": MessageLookupByLibrary.simpleMessage("تسجيل"),
        "sign_up_with_apple":
            MessageLookupByLibrary.simpleMessage("الاشتراك عبر أبل"),
        "sign_up_with_google":
            MessageLookupByLibrary.simpleMessage("الاشتراك عبر جوجل"),
        "sign_up_with_phone_number":
            MessageLookupByLibrary.simpleMessage("ادخل برقم جوالك"),
        "silver": MessageLookupByLibrary.simpleMessage("الفضي"),
        "silver_level_reward": MessageLookupByLibrary.simpleMessage(
            "4000 نقطة للوصول الى المستوى الفضي"),
        "sitejabber": MessageLookupByLibrary.simpleMessage("سايتجابر"),
        "size_more_than_mg_error": m18,
        "skip": MessageLookupByLibrary.simpleMessage("تخطى"),
        "slide_to_cancel": MessageLookupByLibrary.simpleMessage("اسحب للإلغاء"),
        "snap_chat_validate": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال رابط اسم مستخدم صالح"),
        "social_media": MessageLookupByLibrary.simpleMessage("حساباتي"),
        "social_more_information": MessageLookupByLibrary.simpleMessage(
            "كلما زادت المعلومات التى تحصل عليها العلامات التجارية حول حسابك ، كلما زادت التعاونات التى ستتمكن من عرضها عليك "),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
        "sort_by": MessageLookupByLibrary.simpleMessage("فرز حسب"),
        "speed_up_your_application":
            MessageLookupByLibrary.simpleMessage("وصول استمارتك أسرع"),
        "spend_1000_sar":
            MessageLookupByLibrary.simpleMessage("انفق 1000 ريال واحصل على:"),
        "spend_3000_sar":
            MessageLookupByLibrary.simpleMessage("انفق 300 ريال واحصل على:"),
        "spend_300_sar":
            MessageLookupByLibrary.simpleMessage("انفق 30 ريال واحصل على:"),
        "spend_6000_sar":
            MessageLookupByLibrary.simpleMessage("انفق 6000 ريال واحصل على:"),
        "sponsorship_score": MessageLookupByLibrary.simpleMessage("اعلانات"),
        "sr": MessageLookupByLibrary.simpleMessage("ر.س"),
        "star": MessageLookupByLibrary.simpleMessage("النجم"),
        "star_attachments":
            MessageLookupByLibrary.simpleMessage("المرفقات للمؤثر"),
        "star_brief": MessageLookupByLibrary.simpleMessage("وصف مختصر"),
        "star_camp_details_hint": MessageLookupByLibrary.simpleMessage(
            "جميع المؤثرين المضافين لهذه الحملة سيتمكنون من الاطلاع على جميع هذه التفاصيل، بما في ذلك المرفقات، ولكن لن يتمكنوا من رؤية الميزانية المقترحة للحملة, فئة المؤثرين المستهدفة والمنصات المناسبة للحملة."),
        "star_description_hint": MessageLookupByLibrary.simpleMessage(
            "هذا الوصف لن يطلع عليه الا هذا المؤثر فقط."),
        "star_details": MessageLookupByLibrary.simpleMessage("تفاصيل المؤثر"),
        "star_id_not_found":
            MessageLookupByLibrary.simpleMessage("معرف المؤثر غير موجود"),
        "star_location": MessageLookupByLibrary.simpleMessage("موقع النجم"),
        "star_notes": MessageLookupByLibrary.simpleMessage("ملاحظات المؤثر"),
        "star_rated": MessageLookupByLibrary.simpleMessage("تم تقييم المؤثر"),
        "star_release_date":
            MessageLookupByLibrary.simpleMessage("تاريخ نشر الحملة"),
        "star_review": MessageLookupByLibrary.simpleMessage("تقييم النجم"),
        "star_working": MessageLookupByLibrary.simpleMessage(
            "المؤثر يعمل على إنشاء المحتوى وتسليمه حسب تفاصيل الحملة المتفق عليها."),
        "stars": MessageLookupByLibrary.simpleMessage("النجوم"),
        "start": MessageLookupByLibrary.simpleMessage("ابدأ"),
        "start_by_filling_out": MessageLookupByLibrary.simpleMessage(
            "ابدأ بملء النموذج. جميع معلوماتك و إجاباتك سرية بنسبة 100% ولا يتم الكشف عنها لأطراف ثالثة."),
        "start_campaign_now":
            MessageLookupByLibrary.simpleMessage("ابدأ حملتك الآن"),
        "start_from": MessageLookupByLibrary.simpleMessage("ابتداءً من"),
        "start_verification":
            MessageLookupByLibrary.simpleMessage("ابدا التوثيق"),
        "start_work_on_campaign": MessageLookupByLibrary.simpleMessage(
            "يمكنك البدء في العمل على الحملة، بعد أن يقوم العميل بالإيداع والحصول على المكافأة"),
        "start_your_campaign_now":
            MessageLookupByLibrary.simpleMessage("ابدأ حملتك الآن"),
        "start_your_first_favorite":
            MessageLookupByLibrary.simpleMessage("ابدأ أول مفضلة لك"),
        "start_your_first_favorite_subtitle":
            MessageLookupByLibrary.simpleMessage(
                "اجمع مؤثريك المفضلين في قوائم خاصة بك."),
        "state": MessageLookupByLibrary.simpleMessage("المنطقة"),
        "status": MessageLookupByLibrary.simpleMessage("الحالة"),
        "status_completed":
            MessageLookupByLibrary.simpleMessage("تمت موافقتك (مكتمل)"),
        "status_delivered":
            MessageLookupByLibrary.simpleMessage("تم التسليم (قيد موافقتك)"),
        "status_in_progress": MessageLookupByLibrary.simpleMessage(
            "تمت موافقة المؤثر (قيد التنفيذ)"),
        "status_requested": MessageLookupByLibrary.simpleMessage(
            "تم إرسال الطلب (قيد موافقة المؤثر)"),
        "steps_details": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
        "stop_live_location": MessageLookupByLibrary.simpleMessage("إيقاف"),
        "store": MessageLookupByLibrary.simpleMessage("متجر"),
        "store_image_size": MessageLookupByLibrary.simpleMessage(
            "استخدم صورة بهذا الحجم هلى الاقل (720x440) بكسل"),
        "stores": MessageLookupByLibrary.simpleMessage("المتاجر"),
        "stores_and_products": MessageLookupByLibrary.simpleMessage("متاجري"),
        "stories": MessageLookupByLibrary.simpleMessage("متاجرى"),
        "story_views_by_country":
            MessageLookupByLibrary.simpleMessage("مشاهدات القصة حسب الدولة"),
        "story_views_by_gender":
            MessageLookupByLibrary.simpleMessage("مشاهدات القصة حسب النوع"),
        "submit": MessageLookupByLibrary.simpleMessage("تم"),
        "submit_campaign": MessageLookupByLibrary.simpleMessage("إرسال الحملة"),
        "submit_files": MessageLookupByLibrary.simpleMessage("الملفات"),
        "submit_screenshot":
            MessageLookupByLibrary.simpleMessage("إرسال لقطة الشاشة"),
        "submit_survey":
            MessageLookupByLibrary.simpleMessage("إرسال الاستبيان"),
        "submit_verification":
            MessageLookupByLibrary.simpleMessage("إرسال للتحقق"),
        "submitted_file":
            MessageLookupByLibrary.simpleMessage("الملفات المرفقة"),
        "suggestedStarsBy":
            MessageLookupByLibrary.simpleMessage("مؤثرين مقترحين من"),
        "suitable_platforms":
            MessageLookupByLibrary.simpleMessage("المنصات المناسبة"),
        "supported_formats": MessageLookupByLibrary.simpleMessage(
            "الملفات المدعومة: الصور، الفيديوهات، وملفات PDF"),
        "supported_proofs": MessageLookupByLibrary.simpleMessage(
            "التنسيقات المدعومة: صورة أو ملف pdf"),
        "survey": MessageLookupByLibrary.simpleMessage("استبيان"),
        "survey_inserted": MessageLookupByLibrary.simpleMessage(
            "تم إدخال استبيان العميل بنجاح"),
        "survey_review_message": MessageLookupByLibrary.simpleMessage(
            "سوف نقوم بمراحعة استبيانك خلال ساعات وإيداع 5 ريالات\nفى رصيدك اليوم\nسنقوم أيضا باختيار فائز ب 100 ريال."),
        "suspicious": MessageLookupByLibrary.simpleMessage("مزيفين"),
        "suspicious_accounts":
            MessageLookupByLibrary.simpleMessage("حسابات مشبوهة"),
        "suspicious_accounts1":
            MessageLookupByLibrary.simpleMessage("حسابات مشبوهة"),
        "suspicious_accounts_description": MessageLookupByLibrary.simpleMessage(
            "بوتات أو أشخاص يستخدمون أدوات آلية لزيادة الإعجابات والتعليقات أو شراء المتابعين يُعتبرون حسابات مشبوهة.\nيتم الكشف عنها عبر نموذج تعلم آلي مدرَّب على أكثر من 53 نمط، ويستطيع تحديد 95٪ من الأنشطة الاحتيالية المعروفة."),
        "tags": MessageLookupByLibrary.simpleMessage("الكلمات المفتاحية"),
        "target_audience":
            MessageLookupByLibrary.simpleMessage("الفئة المستهدفة"),
        "target_influencer_category":
            MessageLookupByLibrary.simpleMessage("فئة المؤثرين المستهدفة"),
        "tech": MessageLookupByLibrary.simpleMessage("التقنية والأجهزة"),
        "tell_your_friends":
            MessageLookupByLibrary.simpleMessage("اخبر أصدقائك عنا"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("الشروط والأحكام"),
        "terms_and_conditions_and_privacy_policy":
            MessageLookupByLibrary.simpleMessage(
                "الشروط والأحكام وسياسة الخصوصية"),
        "terms_of_use": MessageLookupByLibrary.simpleMessage("شروط الاستخدام"),
        "thank_for_completing_account_information":
            MessageLookupByLibrary.simpleMessage(
                "شكرًا لإكمال معلومات حسابك فريقنا يعمل على مراجعتها، وسيتم إبلاغك فور اكتمال التوثيق."),
        "thank_you": MessageLookupByLibrary.simpleMessage("شكرًا لك"),
        "the_client_is_yet_to_make_a_deposit": MessageLookupByLibrary.simpleMessage(
            "لا يزال يتعين على العميل إجراء إيداع.\nيُرجى تذكير عميلك بإيداع الدفع حتى تتمكن من البدء بالحملة."),
        "the_search": MessageLookupByLibrary.simpleMessage("البحث"),
        "there_are_no_analysis_here":
            MessageLookupByLibrary.simpleMessage("لا يوجد تحليل هنا"),
        "there_are_no_platform_added_in_social_media":
            MessageLookupByLibrary.simpleMessage(
                "لا توجد منصة مضافة في وسائل التواصل الاجتماعي"),
        "this_action_cannot_be_undone": MessageLookupByLibrary.simpleMessage(
            "لا يمكن التراجع عن هذا الإجراء"),
        "thousand": MessageLookupByLibrary.simpleMessage("ألف"),
        "thousand_symbol": MessageLookupByLibrary.simpleMessage(" الف "),
        "tiktok": MessageLookupByLibrary.simpleMessage("التيك توك"),
        "time": MessageLookupByLibrary.simpleMessage("الوقت"),
        "timeLeft": MessageLookupByLibrary.simpleMessage("الوقت المتبقى"),
        "time_day": MessageLookupByLibrary.simpleMessage("يوم"),
        "time_days": MessageLookupByLibrary.simpleMessage("أيام"),
        "time_hour": MessageLookupByLibrary.simpleMessage("ساعة"),
        "time_hours": MessageLookupByLibrary.simpleMessage("ساعات"),
        "time_just_now": MessageLookupByLibrary.simpleMessage("الآن"),
        "time_minute": MessageLookupByLibrary.simpleMessage("دقيقة"),
        "time_minutes": MessageLookupByLibrary.simpleMessage("دقائق"),
        "title": MessageLookupByLibrary.simpleMessage("العنوان"),
        "to": MessageLookupByLibrary.simpleMessage("الى"),
        "to_be_a_trusted":
            MessageLookupByLibrary.simpleMessage("لكى يتم توثيقك من قبل  "),
        "to_be_accepted": MessageLookupByLibrary.simpleMessage("أن يتم قبولك"),
        "toast_favorites_updated":
            MessageLookupByLibrary.simpleMessage("تم تحديث المفضلة بنجاح"),
        "toast_influencer_added_to_favorites":
            MessageLookupByLibrary.simpleMessage("تمت إضافة المؤثر للمفضلة"),
        "toast_influencer_removed_all": MessageLookupByLibrary.simpleMessage(
            "تمت إزالة المؤثر من جميع القوائم"),
        "toast_influencer_removed_from":
            MessageLookupByLibrary.simpleMessage("تمت إزالة المؤثر من "),
        "toast_influencer_removed_from_favorites":
            MessageLookupByLibrary.simpleMessage("تم تحديث المفضلة"),
        "today": MessageLookupByLibrary.simpleMessage("اليوم"),
        "tool_tip_message": MessageLookupByLibrary.simpleMessage(
            "تحكم فى من يمكنه ارسال عروض التعاون اليك. اختر \'الجميع\' لقبول العروض من اى شخص. او \'الشركات\' للحد من العروض للشركات فقط، أو \'أنا فقط\' حيث لا يمكن لأي جهة ارسال عروض التعاون لك"),
        "top_age_group":
            MessageLookupByLibrary.simpleMessage("الفئة العمرية الأكثر"),
        "top_city": MessageLookupByLibrary.simpleMessage("المدينة الأبرز"),
        "top_gender": MessageLookupByLibrary.simpleMessage("الجنس الأكثر"),
        "total": MessageLookupByLibrary.simpleMessage("الإجمالي"),
        "total_amount_for_drafts_influencers":
            MessageLookupByLibrary.simpleMessage("إجمالي المبلغ للمسودة"),
        "total_amount_for_influencers_draft":
            MessageLookupByLibrary.simpleMessage(
                "إجمالي المبلغ لمسودة المؤثرين"),
        "total_amount_for_platforms":
            MessageLookupByLibrary.simpleMessage("إجمالي المبلغ للمنصات"),
        "total_balance":
            MessageLookupByLibrary.simpleMessage("المبلغ الاجمالي"),
        "total_income": MessageLookupByLibrary.simpleMessage("الدخل الكلي"),
        "total_paid":
            MessageLookupByLibrary.simpleMessage("إجمالي المبلغ المدفوع"),
        "total_price": MessageLookupByLibrary.simpleMessage("المبلغ الإجمالي"),
        "trackTheCampaign": MessageLookupByLibrary.simpleMessage("تابع الحملة"),
        "transaction_addMoney":
            MessageLookupByLibrary.simpleMessage("اضافة رصيد"),
        "transaction_canceled": MessageLookupByLibrary.simpleMessage("الغاء"),
        "transaction_completed": MessageLookupByLibrary.simpleMessage("تحرير"),
        "transaction_inProgress":
            MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
        "transaction_pending":
            MessageLookupByLibrary.simpleMessage("قيد الانتظار"),
        "transfer_business_days": MessageLookupByLibrary.simpleMessage(
            "سيتم إكمال التحويل الخاص بك في غضون 10 أيام عمل"),
        "transfer_days": MessageLookupByLibrary.simpleMessage(
            "سيتم إكمال التحويل الخاص بك في غضون 3-7 أيام عمل"),
        "transfer_text": MessageLookupByLibrary.simpleMessage(
            "بمجرد إجراء عملية سحب، يمكنك إلغاؤها لمدة تصل إلى بضع ساعات. لإلغاء عملية سحب معلقة، انقر فوق السحب المعلق وانقر فوق إلغاء"),
        "trust_and_verification":
            MessageLookupByLibrary.simpleMessage("الثقة والتحقق"),
        "trust_score":
            MessageLookupByLibrary.simpleMessage("ما هي درجة الثقة؟"),
        "trust_score_description": MessageLookupByLibrary.simpleMessage(
            "يعتبر الحصول على درجة ثقة عالية امرا مهما للعملاء حيث قد يقرر النجوم عدم تقديم عروض على حملتك إذا لم تكن مستخدما موثوقا به هذا ينطبق بشكل خاص على النجوم الاكثر خبر لدينا ، والذين يحرصون على التأكد من حماية أى مدفوعات يتلقونها. "),
        "trusted_advantage": MessageLookupByLibrary.simpleMessage(
            " التحقق يتيح الوصول الى فرصة حصرية، اعلانات مميزة،وشراكات مربحة،مما يعزز تجربة المستخدم"),
        "trusted_benefit": MessageLookupByLibrary.simpleMessage(
            "يتيح التحقق فرص\n حصرية، وإعلانات متميزة، وشراكات\n مربحة، مما يؤدي إلى الارتقاء بتجربة المستخدم"),
        "trustpilot": MessageLookupByLibrary.simpleMessage("تراست بيلوت "),
        "tryAgain": MessageLookupByLibrary.simpleMessage("حاول مجددا"),
        "twenty_four_hours": MessageLookupByLibrary.simpleMessage("24 ساعة"),
        "twitter": MessageLookupByLibrary.simpleMessage("تويتر"),
        "txt": MessageLookupByLibrary.simpleMessage("رسالة"),
        "type": MessageLookupByLibrary.simpleMessage("الجنس"),
        "typeHere": MessageLookupByLibrary.simpleMessage("اكتب هنا..."),
        "type_email": MessageLookupByLibrary.simpleMessage(
            "اكتب بريدك الإلكتروني لإعادة ضبط كلمة المرور"),
        "type_your_comment":
            MessageLookupByLibrary.simpleMessage("اكتب تعليقك "),
        "typing": MessageLookupByLibrary.simpleMessage("يكتب..."),
        "unArchive": MessageLookupByLibrary.simpleMessage("إلغاء الأرشفة"),
        "unBlock": MessageLookupByLibrary.simpleMessage("الغاء الحظر"),
        "unBlockedSuccessfully":
            MessageLookupByLibrary.simpleMessage("تم إلغاء الحظر بنجاح"),
        "unblockConfirm": MessageLookupByLibrary.simpleMessage(
            "هل تريد الغاء حظر هذا المستخدم؟"),
        "under_review": MessageLookupByLibrary.simpleMessage("تحت المراجعة"),
        "undo": MessageLookupByLibrary.simpleMessage("تراجع"),
        "unified_price": MessageLookupByLibrary.simpleMessage("السعر الموحّد"),
        "unified_price_description": MessageLookupByLibrary.simpleMessage(
            "يُعرض السعر للعميل كسعر واحد لكل المنصات."),
        "unit_social_media": MessageLookupByLibrary.simpleMessage(
            "وحد جميع قنوات التواصل الاجتماعي الخاصة بك فى رابط واحد بخطوتين"),
        "unknown": MessageLookupByLibrary.simpleMessage("غير معروف"),
        "unknown_contact": MessageLookupByLibrary.simpleMessage("غير معروف"),
        "unknown_place": MessageLookupByLibrary.simpleMessage("مكان غير معروف"),
        "unmute": MessageLookupByLibrary.simpleMessage("الغاء الكتم"),
        "unpin": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "unpin_message":
            MessageLookupByLibrary.simpleMessage("إلغاء تثبيت الرسالة"),
        "unpin_message_description": MessageLookupByLibrary.simpleMessage(
            "سيتم إلغاء تثبيت هذه الرسالة من أعلى الدردشة."),
        "unread": MessageLookupByLibrary.simpleMessage("غير مقروءة"),
        "unsaved_changes":
            MessageLookupByLibrary.simpleMessage("تغييرات غير محفوظة"),
        "unsaved_changes_message": MessageLookupByLibrary.simpleMessage(
            "لديك تغييرات غير محفوظة. هل أنت متأكد أنك تريد المغادرة بدون حفظ؟"),
        "unsaved_changes_subtitle": MessageLookupByLibrary.simpleMessage(
            "اذا تراجعت الان، سوف تفقد تعديلاتك."),
        "unsaved_changes_title":
            MessageLookupByLibrary.simpleMessage("هل تريد تجاهل التغييرات؟"),
        "up_to_twenty_store":
            MessageLookupByLibrary.simpleMessage("مكنكك اضافة حتى 20 متجر"),
        "update": MessageLookupByLibrary.simpleMessage("تحديث"),
        "update_account": MessageLookupByLibrary.simpleMessage(
            "لقد تم تحديث حسابك بنجاح. لإكمال العملية، يرجى التحقق من بريدك الإلكتروني\n"),
        "update_bid": MessageLookupByLibrary.simpleMessage(
            "تم تحديث تفاصيل المزايدة بنجاح"),
        "update_location": MessageLookupByLibrary.simpleMessage("تحديث الموقع"),
        "update_now": MessageLookupByLibrary.simpleMessage("حدث الآن"),
        "update_password":
            MessageLookupByLibrary.simpleMessage("تحديث كلمة المرور"),
        "update_phone_to":
            MessageLookupByLibrary.simpleMessage("تم تحديث رقم الهاتف إلى\n"),
        "update_required_message": MessageLookupByLibrary.simpleMessage(
            "لقد أطلقنا تحديثًا جديدًا ومحسّنًا. يرجى تحديث التطبيق للاستمرار في استخدامه."),
        "update_required_title":
            MessageLookupByLibrary.simpleMessage("تحديث مطلوب"),
        "updated_success":
            MessageLookupByLibrary.simpleMessage("تم تحديث المستخدم بنجاح."),
        "upload_cr": MessageLookupByLibrary.simpleMessage(
            "قم بتحميل السجل التجارى الخاص بك"),
        "upload_file": MessageLookupByLibrary.simpleMessage("تحميل ملف"),
        "upload_files": MessageLookupByLibrary.simpleMessage("تحميل الملفات"),
        "upload_image": MessageLookupByLibrary.simpleMessage("تحميل صورة"),
        "upload_logo":
            MessageLookupByLibrary.simpleMessage("رفع شعار (اختياري)"),
        "upload_video_image":
            MessageLookupByLibrary.simpleMessage("تحميل فيديو أو صورة"),
        "user_busy": MessageLookupByLibrary.simpleMessage("المستخدم مشغول"),
        "user_login_success": MessageLookupByLibrary.simpleMessage(
            "تم تسجيل دخول المستخدم بنجاح"),
        "user_name": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
        "validate_request":
            MessageLookupByLibrary.simpleMessage("لطلب التحقق من الصحة."),
        "vat": MessageLookupByLibrary.simpleMessage("ضريبة القيمة المضافة"),
        "vatNumber":
            MessageLookupByLibrary.simpleMessage("رقم ضريبة القيمة المضافة"),
        "vat_number": MessageLookupByLibrary.simpleMessage("القيمة المضافة"),
        "vat_number_hint": MessageLookupByLibrary.simpleMessage(
            "رقم ضريبة القيمة المضافة يتكون من 15 رقم، ويبدأ دائمًا بـ 3، ويُصدر من هيئة الزكاة والضريبة والجمارك."),
        "vat_registered": MessageLookupByLibrary.simpleMessage(
            "هل أنت مسجل في ضريبة القيمة المضافة ؟"),
        "verifications": MessageLookupByLibrary.simpleMessage("التوثيقات"),
        "verified": MessageLookupByLibrary.simpleMessage("تم التحقق منه"),
        "verified_account": MessageLookupByLibrary.simpleMessage("موثوق"),
        "verifyWith": MessageLookupByLibrary.simpleMessage("التوثيقات"),
        "verify_account": MessageLookupByLibrary.simpleMessage(
            "للتحقق من حسابك، يجب أن يكون لديك درجة ثقة لا تقل عن 50% في ملفك الشخصي"),
        "verify_email":
            MessageLookupByLibrary.simpleMessage("التحقق من البريد الإلكتروني"),
        "verify_email_send": MessageLookupByLibrary.simpleMessage(
            "يتم إرسال التحقق إلى بريدك الإلكتروني."),
        "verify_email_text": MessageLookupByLibrary.simpleMessage(
            "للاستمرار في استخدام nojom، يرجى النقر فوق الرابط الموجود في بريد التحقق المرسل إلى بريدك الإلكتروني. سيؤكد هذا أن بريدك الإلكتروني هو عنوان الاتصال الخاص بك."),
        "verify_phone_text": MessageLookupByLibrary.simpleMessage(
            "يرجى تقديم رقم هاتفك حتى نتمكن من التحقق من حسابك. سيتم الاحتفاظ بهذا الرقم سريًا وسيتم استخدامه لغرض التحقق."),
        "verify_with": MessageLookupByLibrary.simpleMessage("تم التحقق"),
        "verify_your_account_by_completing_your_profile_information_to_access_all_the_features_on_the_nojoom_platform":
            MessageLookupByLibrary.simpleMessage(
                "قم بتوثيق حسابك عن طريق اكمال معلومات حسابك للوصول الى جميع المميزات في منصة نجوم."),
        "verify_your_account_now":
            MessageLookupByLibrary.simpleMessage("وثق حسابك الآن"),
        "very_good": MessageLookupByLibrary.simpleMessage("جيد جدًا"),
        "very_good_match":
            MessageLookupByLibrary.simpleMessage("توافق جيد جدًا"),
        "very_high": MessageLookupByLibrary.simpleMessage("مرتفع جدًا"),
        "very_low": MessageLookupByLibrary.simpleMessage("منخفض جدًا"),
        "very_poor": MessageLookupByLibrary.simpleMessage("ضعيف جدًا"),
        "video": MessageLookupByLibrary.simpleMessage("فيديو"),
        "video_not_available":
            MessageLookupByLibrary.simpleMessage("مصدر الفيديو غير متوفر"),
        "view": MessageLookupByLibrary.simpleMessage("الخصوصية"),
        "view_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
        "view_all_analytics":
            MessageLookupByLibrary.simpleMessage("عرض جميع التحليلات"),
        "view_all_services":
            MessageLookupByLibrary.simpleMessage("عرض جميع الخدمات"),
        "view_all_stores_with_count":
            MessageLookupByLibrary.simpleMessage("عرض جميع المتاجر"),
        "view_bidding": MessageLookupByLibrary.simpleMessage("عرض العطاءات"),
        "view_campaign": MessageLookupByLibrary.simpleMessage("عرض الحملة"),
        "view_less": MessageLookupByLibrary.simpleMessage("عرض أقل"),
        "view_our_stars": MessageLookupByLibrary.simpleMessage("عرض النجوم"),
        "view_profile":
            MessageLookupByLibrary.simpleMessage("عرض الملف الشخصي"),
        "view_public_profile":
            MessageLookupByLibrary.simpleMessage("عرض ملفى كما يظهر للاخرين"),
        "viewed_before":
            MessageLookupByLibrary.simpleMessage("استعرضتهم سابقًا"),
        "vip": MessageLookupByLibrary.simpleMessage("المميز"),
        "vip_level_reward": MessageLookupByLibrary.simpleMessage(
            "24000 نقطة للوصول الى المستوى المميز"),
        "vip_support":
            MessageLookupByLibrary.simpleMessage("دعم العملاء المميزين"),
        "visible": MessageLookupByLibrary.simpleMessage("مرئية للجميع"),
        "visible_to": MessageLookupByLibrary.simpleMessage("ظاهر لى"),
        "visible_to_owner":
            MessageLookupByLibrary.simpleMessage("خاص، يمكن للمالك فقط رؤيته"),
        "visible_to_you": MessageLookupByLibrary.simpleMessage("تظهر لك فقط"),
        "visit_web": MessageLookupByLibrary.simpleMessage("زيارة الموقع"),
        "wallet": MessageLookupByLibrary.simpleMessage("المحفظة"),
        "wallet_amount_to_add":
            MessageLookupByLibrary.simpleMessage("المبلغ الذي تود إضافته"),
        "wallet_available_balance":
            MessageLookupByLibrary.simpleMessage("المبلغ المتاح بالمحفظة"),
        "wallet_balance": MessageLookupByLibrary.simpleMessage("رصيد المحفظة"),
        "wallet_total_balance":
            MessageLookupByLibrary.simpleMessage("المبلغ الإجمالي بالمحفظة"),
        "weak_match": MessageLookupByLibrary.simpleMessage("توافق ضعيف"),
        "website": MessageLookupByLibrary.simpleMessage("الموقع الإلكتروني"),
        "website_link": MessageLookupByLibrary.simpleMessage("رابط الموقع"),
        "website_or_social_media_link": MessageLookupByLibrary.simpleMessage(
            "رابط الموقع او حساب وسائل التواصل الاجتماعي"),
        "website_or_social_media_link_with_ai":
            MessageLookupByLibrary.simpleMessage(
                "رابط موقعك أو حسابك على وسائل التواصل الاجتماعي. بعد تغيير الرابط، يمكنك تحديث جميع تفاصيل الحملة بناءً على الرابط الجديد بمساعدة الذكاء الاصطناعي."),
        "week": MessageLookupByLibrary.simpleMessage("أسبوع"),
        "welcome": MessageLookupByLibrary.simpleMessage("مرحباً"),
        "welcome_back": MessageLookupByLibrary.simpleMessage("مرحبًا بعودتك"),
        "whats_app": MessageLookupByLibrary.simpleMessage("واتساب"),
        "when_add_influencer_it_will_appear_here":
            MessageLookupByLibrary.simpleMessage(
                "عند إضافة مؤثرين لهذه القائمة، سيظهرون هنا."),
        "who_can_see": MessageLookupByLibrary.simpleMessage(
            "من يمكنه الاطلاع على هذه المعلومة"),
        "with_draw_now":
            MessageLookupByLibrary.simpleMessage("\nويمكنك سحب الأموال من"),
        "withdraw": MessageLookupByLibrary.simpleMessage("السحب"),
        "withdraw_from_available_balance":
            MessageLookupByLibrary.simpleMessage("السحب من الرصيد المتاح فقط"),
        "withdraw_label": MessageLookupByLibrary.simpleMessage("سحب"),
        "withdraw_money": MessageLookupByLibrary.simpleMessage("سحب الأموال"),
        "withdraw_now": MessageLookupByLibrary.simpleMessage("السحب الان"),
        "withdraw_offer": MessageLookupByLibrary.simpleMessage("سحب العرض"),
        "withdraw_offer_description":
            MessageLookupByLibrary.simpleMessage("سحب العرض"),
        "withdraw_summary": MessageLookupByLibrary.simpleMessage("ملخص السحب"),
        "withdraw_text": MessageLookupByLibrary.simpleMessage(
            "سيتم إكمال التحويل الخاص بك خلال 3-7 أيام عمل بعد إجراء السحب. بمجرد إجراء السحب، يمكنك إلغاؤه خلال بضع ساعات."),
        "withdraw_to": MessageLookupByLibrary.simpleMessage("السحب الى"),
        "within_this_month":
            MessageLookupByLibrary.simpleMessage("خلال هذا الشهر"),
        "work_in_progress_campaign":
            MessageLookupByLibrary.simpleMessage("Work In Progress"),
        "work_with": MessageLookupByLibrary.simpleMessage("عملائي"),
        "write_here": MessageLookupByLibrary.simpleMessage("اكتب هنا"),
        "write_review": MessageLookupByLibrary.simpleMessage(
            "اكتب تقييم و ارسل لقطة الشاشة له لكل أو أى من المواقع المدرجة\nواحصل على رصيد لكل تقييم."),
        "write_review_desc": MessageLookupByLibrary.simpleMessage(
            "بعد اضافة التقييم، قم بمشاركة لقطة الشاشة"),
        "write_review_title":
            MessageLookupByLibrary.simpleMessage("اضافة تقييم"),
        "write_star_description": MessageLookupByLibrary.simpleMessage(
            "اكتب تفاصيل تخص الحملة للمؤثر هنا (مثال كود خاص او رابط خاص بالمؤثر)"),
        "write_your_feedback":
            MessageLookupByLibrary.simpleMessage("اكتب ملاحظاتك"),
        "write_your_message":
            MessageLookupByLibrary.simpleMessage("اكتب رسالتك"),
        "write_your_report":
            MessageLookupByLibrary.simpleMessage("اكتب تقريرك"),
        "wrong_code": MessageLookupByLibrary.simpleMessage(
            "معذرة! الرمز الذي أدخلته غير صحيح. يرجى التحقق من الرمز والمحاولة مرة أخرى. "),
        "wrong_url_video": MessageLookupByLibrary.simpleMessage(
            " 🚫 يبدو أن الرابط الذي أدخلته غير صحيح. الرجاء إدخال رابط يوتيوب صالح. إذا كنت بحاجة إلى المساعدة، فلا تتردد في الاتصال بفريق الدعم لدينا."),
        "year": MessageLookupByLibrary.simpleMessage("سنة"),
        "year_age": MessageLookupByLibrary.simpleMessage("سنة"),
        "yes": MessageLookupByLibrary.simpleMessage("نعم"),
        "yes_have": MessageLookupByLibrary.simpleMessage("نعم"),
        "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
        "you": MessageLookupByLibrary.simpleMessage("أنت"),
        "youReceive": MessageLookupByLibrary.simpleMessage("سوف تتلقى"),
        "youWillGetTotal": MessageLookupByLibrary.simpleMessage(
            "سوف تحصل على المبلغ الإجمالي"),
        "you_are": MessageLookupByLibrary.simpleMessage("أنت"),
        "you_are_blocked_by_user":
            MessageLookupByLibrary.simpleMessage("تم حظرك من قبل هذا المستخدم"),
        "you_are_vip":
            MessageLookupByLibrary.simpleMessage("انت فى المستوى المميز"),
        "you_can_send_offer": MessageLookupByLibrary.simpleMessage(
            "يمكنك إرسال عرضك المخصص للمؤثر."),
        "you_have_blocked_this_user":
            MessageLookupByLibrary.simpleMessage("لقد قمت بحظر هذا المستخدم"),
        "you_have_earned": MessageLookupByLibrary.simpleMessage(
            "لقد حصلت على هذا القدر حتى الآن"),
        "you_need": MessageLookupByLibrary.simpleMessage("انت بحاجة الى"),
        "you_receive": MessageLookupByLibrary.simpleMessage("سوف تستلم"),
        "you_tube": MessageLookupByLibrary.simpleMessage("اليوتيوب"),
        "your_information_in_review":
            MessageLookupByLibrary.simpleMessage("معلوماتك قيد المراجعة."),
        "your_information_in_review_desc": MessageLookupByLibrary.simpleMessage(
            "شكرًا لإكمال معلومات حسابك! فريقنا يعمل على مراجعتها حاليًا، ويمكنك تعديل أي معلومة أثناء فترة المراجعة. سيتم إبلاغك فور اكتمال التوثيق."),
        "your_name": MessageLookupByLibrary.simpleMessage("اسمك"),
        "your_profile": MessageLookupByLibrary.simpleMessage("ملفك الشخصي"),
        "your_review": MessageLookupByLibrary.simpleMessage("لتقييمك"),
        "youtube": MessageLookupByLibrary.simpleMessage("يوتيوب"),
        "zero_service_fee":
            MessageLookupByLibrary.simpleMessage("0% رسوم الخدمة"),
        "zip_code": MessageLookupByLibrary.simpleMessage("الرمز البريدي")
      };
}
