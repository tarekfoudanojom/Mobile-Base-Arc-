import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:stream_chat_localizations/stream_chat_localizations.dart';

class _ArStreamChatLocalizationsDelegate
    extends LocalizationsDelegate<StreamChatLocalizations> {
  const _ArStreamChatLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ar';

  @override
  Future<StreamChatLocalizations> load(Locale locale) =>
      SynchronousFuture(const ArStreamChatLocalizations());

  @override
  bool shouldReload(_ArStreamChatLocalizationsDelegate old) => false;
}

/// A custom set of localizations for the 'nn' locale. In this example, only
/// the value for launchUrlError was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class ArStreamChatLocalizations extends GlobalStreamChatLocalizations {
  /// Create an instance of the translation bundle for English.
  const ArStreamChatLocalizations({super.localeName = 'ar'});

  /// A [LocalizationsDelegate] for [NnStreamChatLocalizations].
  static const delegate = _ArStreamChatLocalizationsDelegate();

  @override
  String get launchUrlError => 'حدث خطأ أثناء فتح الرابط';

  @override
  String get loadingUsersError => 'حدث خطأ أثناء تحميل المستخدمين.';

  @override
  String get noUsersLabel => 'لا يوجد مستخدمون';

  @override
  String get noPhotoOrVideoLabel => 'لا يوجد صور أو مقاطع فيديو';

  @override
  String get retryLabel => 'إعادة المحاولة';

  @override
  String get userLastOnlineText => 'آخر ظهور';

  @override
  String get userOnlineText => 'متصل الآن';

  @override
  String userTypingText(Iterable<User> users) {
    if (users.isEmpty) return '';
    final first = users.first;
    if (users.length == 1) {
      return '${first.name} يكتب...';
    }
    return '${first.name} و ${users.length - 1} آخرين يكتبون...';
  }

  @override
  String get threadReplyLabel => 'رد في سلسلة';

  @override
  String get onlyVisibleToYouText => 'هذا الرد مرئي لك فقط';

  @override
  String threadReplyCountText(int count) => '$count ردود في السلسلة';

  @override
  String attachmentsUploadProgressText({
    required int remaining,
    required int total,
  }) =>
      'تحميل $remaining/$total';

  @override
  String pinnedByUserText({
    required User pinnedBy,
    required User currentUser,
  }) {
    final pinnedByCurrentUser = currentUser.id == pinnedBy.id;
    if (pinnedByCurrentUser) return 'تم تثبيته بواسطتك';
    return 'تم التثبيط عن طريق ${pinnedBy.name}';
  }

  @override
  String get sendMessagePermissionError =>
      "لا يمكنك إرسال الرسائل في هذه المحادثة";

  @override
  String get emptyMessagesText => 'لا توجد رسائل هنا حتى الآن';

  @override
  String get genericErrorText => 'حدث خطأ ما. يرجى المحاولة مرة أخرى لاحقًا';

  @override
  String get loadingMessagesError => 'حدث خطأ أثناء تحميل الرسائل';

  @override
  String resultCountText(int count) => '$count نتائج';

  @override
  String get messageDeletedText => 'تم حذف الرسالة';

  @override
  String get messageDeletedLabel => 'حذف الرسالة';

  @override
  String get editedMessageLabel => 'تم تعديل الرسالة';

  @override
  String get messageReactionsLabel => 'ردود الفعل على الرسالة';

  @override
  String get emptyChatMessagesText => 'لا توجد رسائل في هذه الدردشة حتى الآن';

  @override
  String threadSeparatorText(int replyCount) {
    if (replyCount == 1) return '١ رد';
    return '$replyCount ردود';
  }

  @override
  String get connectedLabel => 'متصل';

  @override
  String get disconnectedLabel => 'غير متصل';

  @override
  String get reconnectingLabel => 'إعادة الاتصال...';

  @override
  String get alsoSendAsDirectMessageLabel => 'أرسل أيضًا كرسالة مباشرة';

  @override
  String get addACommentOrSendLabel => 'أضف تعليقًا أو أرسل';

  @override
  String get searchGifLabel => 'ابحث عن GIF';

  @override
  String get writeAMessageLabel => 'اكتب رسالة...';

  @override
  String get instantCommandsLabel => 'أوامر فورية';

  @override
  String fileTooLargeAfterCompressionError(double limitInMB) =>
      'الملف كبير جدًا بحيث لا يمكن تحميله.'
          'الحد الأقصى لحجم الملف هو $limitInMB ميجا بيت. '
          'لقد حاولنا ضغطه، لكن ذلك لم يكن كافيا.';

  @override
  String fileTooLargeError(double limitInMB) =>
      'الملف كبير جدًا بحيث لا يمكن تحميله. الحد الأقصى لحجم الملف هو $limitInMB ميجا بيت.';

  @override
  String get couldNotReadBytesFromFileError =>
      'لم يتمكن من قراءة البايتات من الملف.';

  @override
  String get addAFileLabel => 'إضافة ملف';

  @override
  String get photoFromCameraLabel => 'صورة من الكاميرا';

  @override
  String get uploadAFileLabel => 'تحميل ملف';

  @override
  String get uploadAPhotoLabel => 'Upload a photo';

  @override
  String get uploadAVideoLabel => 'Upload a video';

  @override
  String get videoFromCameraLabel => 'Video from camera';

  @override
  String get okLabel => 'تم';

  @override
  String get somethingWentWrongError => 'حدث خطأ ما.';

  @override
  String get addMoreFilesLabel => 'إضافة المزيد من الملفات';

  @override
  String get enablePhotoAndVideoAccessMessage =>
      'يرجى تمكين الوصول إلى صورك'
          '\nومقاطع الفيديو حتى تتمكن من مشاركتها مع الأصدقاء.';

  @override
  String get allowGalleryAccessMessage => 'السماح بالوصول إلى المعرض';

  @override
  String get flagMessageLabel => 'تحديد رسالة';

  @override
  String get flagMessageQuestion =>
      'هل تريد الإبلاغ عن هذه الرسالة'
          '\nمشرف لمزيد من التحقيق?';

  @override
  String get flagLabel => 'تحديد';

  @override
  String get cancelLabel => 'إلغاء';

  @override
  String get flagMessageSuccessfulLabel => 'تم الإبلاغ عن الرسالة';

  @override
  String get flagMessageSuccessfulText =>
      'تم الإبلاغ عن الرسالة بنجاح. شكرا لك على مساعدتك في الحفاظ على مجتمعنا آمنًا وصحيًا.';

  @override
  String get deleteLabel => 'حذف';

  @override
  String get deleteMessageLabel => 'حذف الرسالة';

  @override
  String get deleteMessageQuestion =>
      'هل أنت متأكد أنك تريد حذف هذه الرسالة?';

  @override
  String get operationCouldNotBeCompletedText =>
      "تعذر إكمال العملية. يرجى المحاولة مرة أخرى لاحقًا.";

  @override
  String get replyLabel => 'رد';

  @override
  String togglePinUnpinText({required bool pinned}) {
    if (pinned) return 'إلغاء التثبيت من المحادثة';
    return 'تثبيت في المحادثة';
  }

  @override
  String toggleDeleteRetryDeleteMessageText({required bool isDeleteFailed}) {
    if (isDeleteFailed) return 'إعادة محاولة حذف الرسالة';
    return 'حذف الرسالة';
  }

  @override
  String get copyMessageLabel => 'نسخ الرسالة';

  @override
  String get editMessageLabel => 'تعديل الرسالة';

  @override
  String toggleResendOrResendEditedMessage({required bool isUpdateFailed}) {
    if (isUpdateFailed) return 'إعادة محاولة إرسال';
    return 'إرسال الرسالة المعدلة';
  }

  @override
  String get photosLabel => 'الصور';

  String _getDay(DateTime dateTime) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);

    final date = DateTime(dateTime.year, dateTime.month, dateTime.day);

    if (date == today) {
      return 'اليوم';
    } else if (date == yesterday) {
      return 'أمس';
    } else {
      return 'في ${Jiffy.parseFromDateTime(date).MMMd}';
    }
  }

  @override
  String sentAtText({required DateTime date, required DateTime time}) {
    final atTime = Jiffy.parseFromDateTime(time.toLocal());
    return 'تم الارسال ${_getDay(date)} في ${atTime.jm}';
  }

  @override
  String get todayLabel => 'اليوم';

  @override
  String get yesterdayLabel => 'أمس';

  @override
  String get channelIsMutedText => 'هذه القناة مكتومة';

  @override
  String get noTitleText => 'لا يوجد عنوان';

  @override
  String get letsStartChattingLabel => 'لنبدأ الدردشة!';

  @override
  String get sendingFirstMessageLabel =>
      'أرسل أول رسالة لك في هذه القناة';

  @override
  String get startAChatLabel => 'ابدأ دردشة';

  @override
  String get loadingChannelsError => 'حدث خطأ أثناء تحميل القنوات.';

  @override
  String get deleteConversationLabel => 'حذف المحادثة';

  @override
  String get deleteConversationQuestion =>
      'هل أنت متأكد أنك تريد حذف هذه المحادثة?';

  @override
  String get streamChatLabel => 'دردشة ستريم';

  @override
  String get searchingForNetworkText => 'جار البحث عن الشبكة...';

  @override
  String get offlineLabel => 'غير متصل';

  @override
  String get tryAgainLabel => 'إعادة المحاولة';

  @override
  String membersCountText(int count) {
    if (count == 1) return '1 عضو';
    return '$count أعضاء';
  }

  @override
  String watchersCountText(int count) {
    if (count == 1) return '1 متابع';
    return '$count متابعين';
  }

  @override
  String get viewInfoLabel => 'عرض المعلومات';

  @override
  String get leaveGroupLabel => 'مغادرة المجموعة';

  @override
  String get leaveLabel => 'يترك';

  @override
  String get leaveConversationLabel => 'مغادرة المحادثة';

  @override
  String get leaveConversationQuestion =>
      'هل أنت متأكد أنك تريد مغادرة هذه المحادثة?';

  @override
  String get showInChatLabel => 'عرض في الدردشة';

  @override
  String get saveImageLabel => 'حفظ الصورة';

  @override
  String get saveVideoLabel => 'حفظ الفيديو';

  @override
  String get uploadErrorLabel => 'خطأ في التحميل';

  @override
  String get giphyLabel => 'Giphy';

  @override
  String get shuffleLabel => 'خلط';

  @override
  String get sendLabel => 'إرسال';

  @override
  String get withText => 'مع';

  @override
  String get inText => 'في';

  @override
  String get youText => 'أنت';

  @override
  String galleryPaginationText({
    required int currentPage,
    required int totalPages,
  }) =>
      '$currentPage من $totalPages';

  @override
  String get fileText => 'ملف';

  @override
  String get replyToMessageLabel => 'رد على الرسالة';

  @override
  String attachmentLimitExceedError(int limit) =>
      'تم تجاوز حد المرفقات، الحد: $limit';

  @override
  String get slowModeOnLabel => 'وضع التباطؤ قيد التشغيل';

  @override
  String get downloadLabel => 'تنزيل';

  @override
  String toggleMuteUnmuteUserText({required bool isMuted}) {
    if (isMuted) {
      return 'إلغاء كتم صوت المستخدم';
    } else {
      return 'كتم صوت المستخدم';
    }
  }

  @override
  String toggleMuteUnmuteGroupQuestion({required bool isMuted}) {
    if (isMuted) {
      return 'هل أنت متأكد أنك تريد إلغاء كتم صوت هذه المجموعة؟';
    } else {
      return 'هل أنت متأكد أنك تريد كتم صوت هذه المجموعة؟';
    }
  }

  @override
  String toggleMuteUnmuteUserQuestion({required bool isMuted}) {
    if (isMuted) {
      return 'هل أنت متأكد أنك تريد إلغاء كتم صوت هذا المستخدم؟';
    } else {
      return 'هل أنت متأكد أنك تريد كتم صوت هذا المستخدم؟';
    }
  }

  @override
  String toggleMuteUnmuteAction({required bool isMuted}) {
    if (isMuted) {
      return 'الغاء كتم الصوت';
    } else {
      return 'كتم الصوت';
    }
  }

  @override
  String toggleMuteUnmuteGroupText({required bool isMuted}) {
    if (isMuted) {
      return 'إلغاء كتم صوت المجموعة';
    } else {
      return 'كتم صوت المجموعة';
    }
  }

  @override
  String get linkDisabledDetails =>
      'إرسال الروابط غير مسموح به في هذه المحادثة.';

  @override
  String get linkDisabledError => 'تم تعطيل الروابط';

  @override
  String get viewLibrary => 'عرض المكتبة';

  @override
  String unreadMessagesSeparatorText() => 'رسائل جديدة';

  @override
  String get enableFileAccessMessage => 'قم بتمكين الوصول إلى الملفات للمتابعة';

  @override
  String get allowFileAccessMessage => 'السماح بالوصول إلى الملفات';

  @override
  String get markAsUnreadLabel => 'تحديد كغير مقروء';

  @override
  String unreadCountIndicatorLabel({required int unreadCount}) {
    return '$unreadCount غير مقروء';
  }

  @override
  String get markUnreadError =>
      'حدث خطأ أثناء تحديد الرسالة كغير مقروءة. لا يمكن تحديد رسائل كغير مقروءة إذا كانت أقدم من أحدث 100 رسالة في القناة.';

  @override
  String createPollLabel({bool isNew = false}) {
    if (isNew) return 'إنشاء استطلاع جديد';
    return 'إنشاء استطلاع';
  }

  @override
  String get questionsLabel => 'الأسئلة';

  @override
  String get askAQuestionLabel => 'اطرح سؤالاً';

  @override
  String? pollQuestionValidationError(int length, Range<int> range) {
    final (:min, :max) = range;

    if (min != null && length < min) {
      return 'يجب أن يكون طول السؤال على الأقل $min حرفاً';
    }

    if (max != null && length > max) {
      return 'يجب ألا يتجاوز طول السؤال $max حرفاً';
    }

    return null;
  }

  @override
  String optionLabel({bool isPlural = false}) {
    if (isPlural) return 'خيارات';
    return 'خيار';
  }

  @override
  String get pollOptionEmptyError => 'لا يمكن أن يكون الخيار فارغاً';

  @override
  String get pollOptionDuplicateError => 'هذا الخيار موجود بالفعل';

  @override
  String get addAnOptionLabel => 'أضف خياراً';

  @override
  String get multipleAnswersLabel => 'إجابات متعددة';

  @override
  String get maximumVotesPerPersonLabel => 'أقصى عدد من الأصوات لكل شخص';

  @override
  String? maxVotesPerPersonValidationError(int votes, Range<int> range) {
    final (:min, :max) = range;

    if (min != null && votes < min) {
      return 'يجب أن يكون عدد الأصوات على الأقل $min';
    }

    if (max != null && votes > max) {
      return 'يجب ألا يتجاوز عدد الأصوات $max';
    }

    return null;
  }

  @override
  String get anonymousPollLabel => 'استطلاع مجهول';

  @override
  String get pollOptionsLabel => 'خيارات الاستطلاع';

  @override
  String get suggestAnOptionLabel => 'اقترح خياراً';

  @override
  String get enterANewOptionLabel => 'أدخل خياراً جديداً';

  @override
  String get addACommentLabel => 'أضف تعليقاً';

  @override
  String get pollCommentsLabel => 'تعليقات الاستطلاع';

  @override
  String get updateYourCommentLabel => 'تحديث تعليقك';

  @override
  String get enterYourCommentLabel => 'أدخل تعليقك';


  @override
  String get createLabel => 'إنشاء';


  @override
  String pollVotingModeLabel(PollVotingMode votingMode) {
    return votingMode.when(
      disabled: () => 'تم إنهاء التصويت',
      unique: () => 'اختر واحداً',
      limited: (count) => 'اختر حتى $count',
      all: () => 'اختر واحداً أو أكثر',
    );
  }

  @override
  String seeAllOptionsLabel({int? count}) {
    if (count == null) return 'انظر جميع الخيارات';
    return 'انظر جميع $count الخيارات';
  }

  @override
  String get viewCommentsLabel => 'عرض التعليقات';

  @override
  String get viewResultsLabel => 'عرض النتائج';

  @override
  String get endVoteLabel => 'إنهاء التصويت';

  @override
  String get pollResultsLabel => 'نتائج الاستطلاع';

  @override
  String showAllVotesLabel({int? count}) {
    if (count == null) return 'إظهار جميع الأصوات';
    return 'إظهار جميع $count الأصوات';
  }

  @override
  String voteCountLabel({int? count}) => switch (count) {
    null || < 1 => '0 votes',
    1 => '1 vote',
    _ => '$count votes',
  };

  @override
  String get noPollVotesLabel => 'لا توجد تصويتات استطلاعية حاليًا';

  @override
  String get loadingPollVotesError => 'خطأ في تحميل أصوات الاستطلاع';

  @override
  String get repliedToLabel => 'رد على';

  @override
  String newThreadsLabel({required int count}) {
    if (count == 1) return 'موضوع جديد';
    return '$count مواضيع جديدة';
  }

  @override
  String get slideToCancelLabel => 'اسحب للإلغاء';

  @override
  String get holdToRecordLabel => 'استمر في الضغط للتسجيل، ثم حرره للإرسال.';

  @override
  String get audioAttachmentText => "تسجيل صوتي";

  @override
  String get draftLabel => "مسودة";

  @override
  String get emptyMessagePreviewText => "لا توجد معاينة للرسالة";

  @override
  String get endLabel => "إنهاء";

  @override
  String get endVoteConfirmationText => "هل أنت متأكد أنك تريد إنهاء التصويت؟";

  @override
  String get imageAttachmentText => "صورة مرفقة";

  @override
  String get moderatedMessageBlockedText => "تم حظر الرسالة";

  @override
  String get moderationReviewModalDescription => "تم حظر هذه الرسالة من قبل مشرف. يرجى مراجعة المحتوى قبل إعادة إرساله.";

  @override
  String get moderationReviewModalTitle => "مراجعة الرسالة";

  @override
  String pollSomeoneCreatedText(String username) {
    return '$username أنشأ استطلاعًا جديدًا';
  }

  @override
  String pollSomeoneVotedText(String username) {
    return '$username صوت في استطلاع';
  }

  @override
  String get pollYouCreatedText => "لقد أنشأت استطلاعًا جديدًا";

  @override
  String get pollYouVotedText => "لقد صوتت في استطلاع";

  @override
  String get sendAnywayLabel => "إرسال على أي حال";

  @override
  String get systemMessageLabel => "نظام الرسالة";

  @override
  String get videoAttachmentText => "فيديو مرفق";

  @override
  String get voiceRecordingText => "تسجيل صوتي";


}