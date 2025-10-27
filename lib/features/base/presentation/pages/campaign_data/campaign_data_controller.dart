part of 'campaign_data_imports.dart';

class CampaignDataController {
  /// keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  /// controllers
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController briefController = TextEditingController();

  /// observables
  final ObsValue<File?> attachmentObs = ObsValue<File?>.withInit(null);
  final ObsValue<bool> buttonObs = ObsValue<bool>.withInit(true);
  final ObsValue<SmartButtonState> paymentBtnObs =
      ObsValue<SmartButtonState>.withInit(SmartButtonState.active);
  final ObsValue<bool> loadingObs = ObsValue<bool>.withInit(false);
  final ObsValue<double> fileSizeObs = ObsValue<double>.withInit(0.0);
  final ObsValue<String> attachedDateAndTimeObs = ObsValue<String>.withInit("");
  final ObsValue<CampaignAttachFileModel?> campaignAttachmentModelObs =
      ObsValue<CampaignAttachFileModel?>.withInit(
          CampaignAttachFileModel(attachedFile: [], attachedDate: DateTime.now(), size: ''));
  final ObsValue<bool> showHintObs = ObsValue<bool>.withInit(true);
  final ObsValue<bool> enableSaveButtonObs = ObsValue<bool>.withInit(true);
  final ObsValue<List<File>?> attachmentsFilesListObs = ObsValue<List<File>?>.withInit(null);

  /// variables
  late List<CampaignAgentModel> agents;
  CampaignProfileModel? campaignProfileModel;
  List<SendCustomOfferModel> customOfferService = [];
  List<CustomOfferModel> customOfferOther = [];
  OfferConfig? offerConfig;

  late bool? isActiveDraftCampaign;
  int? campaignId; // Add campaign ID for API calls
  String fileSize = "";
  DateTime attachedDateAndTime = DateTime.now();
  AppFileService fileService = AppFileService();
  String selectedDate = '';
  String selectedTime = '';

  /// methods
  // Future<void> pickFile(BuildContext context, {FileType? fileType}) async {
  //   var file = await getIt<Utilities>().getFile(
  //     context,
  //     allowedExtensions: _allowedExtensions,
  //     type: fileType ?? FileType.custom,
  //   );
  //   if (file != null) {
  //     attachmentObs.setValue(file);
  //     await getFileSize(file);
  //     attachmentObs.refresh();
  //     campaignAttachmentModelObs
  //         .setValue(CampaignAttachFileModel(
  //         attachedFile: file,
  //         attachedDate: DateTime.now(),
  //         size: fileSize));
  //     campaignAttachmentModelObs.refresh();
  //   }
  // }

  final List<String> _allowedExtensions = ['jpg', 'jpeg', 'png', 'mp4', 'pdf'];

  void checkDraftCampaign() {
    if (isActiveDraftCampaign ?? false) {
      if ((campaignProfileModel?.draftServices ?? []).isNotEmpty) {
        paymentBtnObs.setValue(SmartButtonState.active);
        briefController.text = campaignProfileModel?.clientNote ?? "";
      } else {
        paymentBtnObs.setValue(SmartButtonState.disabled);
      }
    }
    // Initialize fields from campaignProfileModel if available
    if (campaignProfileModel != null) {
      initializeFromCampaignProfile(campaignProfileModel!);
    }
  }

  /// Initialize campaign data fields from CampaignProfileModel
  void initializeFromCampaignProfile(CampaignProfileModel campaignProfile) {
    // Initialize launch date and time from campaignLaunchDate
    if (campaignProfile.campaignLaunchDate != null) {
      final launchDateTime = campaignProfile.campaignLaunchDate!;

      // Format date (YYYY-MM-DD)
      final formattedDate =
          "${launchDateTime.year.toString().padLeft(4, '0')}-${launchDateTime.month.toString().padLeft(2, '0')}-${launchDateTime.day.toString().padLeft(2, '0')}";
      selectedDate = formattedDate;
      dateController.text = formattedDate;

      // Format time (HH:MM)
      final formattedTime =
          "${launchDateTime.hour.toString().padLeft(2, '0')}:${launchDateTime.minute.toString().padLeft(2, '0')}";
      selectedTime = formattedTime;
      timeController.text = formattedTime;
    }

    // Initialize description/brief
    if (campaignProfile.clientNote != null && campaignProfile.clientNote!.isNotEmpty) {
      briefController.text = campaignProfile.clientNote!;
    }

    // Initialize assets from attachments
    // if (campaignProfile.submissions != null && campaignProfile.submissions!.isNotEmpty) {
    //   final assets = campaignProfile.submissions!.map((submission) {
    //     return CampaignAsset(
    //       id: submission.id,
    //       url: submission.url,
    //       type: _getFileTypeFromUrl(submission.url),
    //       createdAt: DateTime.tryParse(submission.createdAt) ?? DateTime.now(),
    //     );
    //   }).toList();
    //
    //   // Set the assets in the assets observable
    //   assetsObs.setValue(assets);
    //
    //   // Set the attachment date and time
    //   attachedDateAndTime = campaignProfile.campaignLaunchDate ?? DateTime.now();
    //   attachedDateAndTimeObs.setValue(attachedDateAndTime.toString());
    // }

    // Enable button if we have data
    enableButton();
  }

  /// Helper method to determine file type from URL
  String _getFileTypeFromUrl(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return 'unknown';

    final path = uri.path.toLowerCase();

    if (path.endsWith('.pdf')) return 'pdf';
    if (path.endsWith('.jpg') || path.endsWith('.jpeg')) return 'jpg';
    if (path.endsWith('.png')) return 'png';
    if (path.endsWith('.gif')) return 'gif';
    if (path.endsWith('.mp4')) return 'mp4';
    if (path.endsWith('.mov')) return 'mov';
    if (path.endsWith('.avi')) return 'avi';

    return 'unknown';
  }

  void removeFile(File file) {
    attachmentsFilesListObs.getValue()?.remove(file);
    attachmentsFilesListObs.refresh();
    final CampaignAttachFileModel data = campaignAttachmentModelObs.getValue()!;
    if (data.attachedFile.isNotEmpty) {
      data.attachedFile.remove(file);
      campaignAttachmentModelObs.setValue(data);
      campaignAttachmentModelObs.refresh();
    }
  }

  void onSelectDate(BuildContext context) {
    AdaptivePicker.datePicker(
      context: context,
      title: Translate.s.select_date,
      initial: DateTime.now().add(const Duration(days: 1)),
      maxDate: DateTime(2100),
      minDate: DateTime.now(),
      showHeaderAndButton: false,
      onConfirm: (date) {
        if (date != null) {
          formatDate(date);
          enableButton();
        }
      },
    );
  }

  void formatDate(DateTime date) {
    String dateStr = DateFormat("yyyy-MM-dd").format(date);
    selectedDate = getIt<Utilities>().convertDigitsToLatin(dateStr);
    dateController.text = formatDateToArabic(date);
  }

  void onSelectTime(BuildContext context) {
    AdaptivePicker.timePicker(
      context: context,
      title: Translate.s.select_time,
      showHeaderAndButton: false,
      onConfirm: (date) {
        // bool isNotCurrentHoursAndMinutes = date != null &&
        //     date.hour != DateTime.now().hour &&
        //     date.minute != DateTime.now().minute;
        // if (isNotCurrentHoursAndMinutes || dateController.text.isNotEmpty) {
        String dateStr = DateFormat("HH:mm").format(date!);
        selectedTime = getIt<Utilities>().convertDigitsToLatin(dateStr);
        timeController.text = formatDateToArabic(date, format: "hh:mm a");
        enableButton();
        // }
      },
    );
  }

  void enableButton() {
    buttonObs.setValue(true);
    buttonObs.refresh();
  }

  // void uploadAttachment(BuildContext context) async{
  //   if (attachmentObs.getValue() == null) {
  //     AppSnackBar.showErrorSnackBar(error: CustomError(msg: Translate.s.please_select_attachment));
  //     return;
  //   } else {
  //     // loadingObs.setValue(true);
  //     var result = await getIt<BaseRepository>().uploadAttachment(getAttachmentParams());
  //     result.when(
  //       isSuccess: (data) {
  //         if (result.isSuccess) {
  //           // campaignAttachmentModelObs.getValue()?.attachedFile.add(attachmentObs.getValue()!);
  //           // campaignAttachmentModelObs.refresh();
  //           attachmentsUrls.add(data!);
  //         } else {
  //           AppSnackBar.showErrorSnackBar(error: CustomError(msg: result.error?.message ?? ""));
  //         }
  //     }, isError: (error) {
  //
  //     },);
  //   }
  // }

  void createCampaign(
      BuildContext context, String amount, int? campaignId, double? delegationFeeRate) {
    if (isActiveDraftCampaign ?? false) {
      AutoRouter.of(context).push(ChoosePaymentPageRoute(
          params: getServicesCampaignParams(''),
          amount: amount,
          agents: agents,
          campaignId: campaignId,
          delegationFeeRate: delegationFeeRate,
          isActiveDraftCampaign: isActiveDraftCampaign,
          campaignProfileModel: campaignProfileModel,
          offerConfig: offerConfig,
          customOfferDataList: customOfferOther,
          customServiceDataList: customOfferService,));
    } else {
      AutoRouter.of(context).push(ChoosePaymentPageRoute(
        params: getServicesCampaignParams(''),
        amount: amount,
        agents: agents,
        campaignId: campaignId,
        delegationFeeRate: delegationFeeRate,
        customOfferDataList: customOfferOther,
        offerConfig: offerConfig,
        customServiceDataList: customOfferService,
        campaignProfileModel: campaignProfileModel,
      ));
    }

    // if (campaignAttachmentModelObs.getValue()?.attachedFile == null) {
    //   AppSnackBar.showErrorSnackBar(error: CustomError(msg: Translate.s.please_select_attachment));
    //   loadingObs.setValue(false);
    //   AutoRouter.of(context).push(ChoosePaymentPageRoute(
    //     params: getServicesCampaignParams(''),
    //     amount: amount,
    //     agents: agents,
    //     campaignId: campaignId,
    //   ));
    //   return;
    // }
    // else {
    //   loadingObs.setValue(true);
    //   getIt<BaseRepository>().uploadAttachment(getAttachmentParams()).then((value) {
    //     if (value.isSuccess) {
    //       loadingObs.setValue(false);
    //       AutoRouter.of(context).push(ChoosePaymentPageRoute(
    //         params: getServicesCampaignParams(value.data ?? ''),
    //         amount: amount,
    //         agents: agents,
    //         campaignId: campaignId,
    //       ));
    //     } else {
    //       AppSnackBar.showErrorSnackBar(error: CustomError(msg: value.error!.message));
    //     }
    //   });
    // }
  }

  /// params
  AttachmentParams getAttachmentParams() {
    return AttachmentParams(
      attachment: attachmentObs.getValue()!,
    );
  }

  ServicesCampaignParams getServicesCampaignParams(String attachmentUrl) {
    agents.first.note = briefController.text;

    return ServicesCampaignParams(
      title: titleController.text,
      assets: [],
      attachedFilesFromCampData: attachmentsFilesListObs.getValue(),
      paymentMethod: '',
      stars: agents.map((agentModel) {
        var allServices = agentModel.services?.where((element) => element.selected).toList();
        return _serviceParams(agentModel, allServices ?? []);
      }).toList(),
    );
  }

  ServiceParams _serviceParams(CampaignAgentModel agentModel, List<BrandServiceModel> allServices) {
    return ServiceParams(
      id: agentModel.id,
      note: agents.first.note,
      customOffer: CustomOfferParams(
        customOfferOther: customOfferOther,
        customOfferService: customOfferService,
        offerConfig: offerConfig!,
      ),
      assets: [],
      launchDate:
          selectedDate.isEmpty || selectedTime.isEmpty ? null : "$selectedDate $selectedTime:00",
      services: agentModel.services?.length == allServices.length &&
              allServices.any((element) => element.socialPlatformTypeId == -1)
          ? _sendAllPlatForms(agentModel)
          : _sendSelectedServices(agentModel),
    );
  }

  List<ServiceParams> _sendSelectedServices(CampaignAgentModel agentModel) {
    return (agentModel.services ?? []).where((element) => element.selected).map((service) {
      return ServiceParams(
        id: service.serviceId ?? 0,
        description: service.name,
        quantity: service.quantity,
      );
    }).toList();
  }

  List<ServiceParams> _sendAllPlatForms(CampaignAgentModel agentModel) {
    return (agentModel.services ?? [])
        .where((element) => element.socialPlatformTypeId == -1)
        .map((service) {
      return ServiceParams(
        id: service.serviceId ?? 0,
        description: service.name,
        quantity: service.quantity,
      );
    }).toList();
  }

  void showPickFilesBottomSheet(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    var files = await getIt<AppFileService>().pickImagesFiles(context,
        allowMulti: false,
        sheetTitle: Translate.s.upload_file,
        allowedExtensions: _allowedExtensions);

    if (files != null) {
      // attachmentObs.setValue();
      await getFileSize(files.last);
      // attachmentObs.refresh();

      var pickedFilesList = attachmentsFilesListObs.getValue() ?? [];
      attachmentsFilesListObs.setValue([...pickedFilesList, ...files]);

      attachmentsFilesListObs.refresh();
      var attachedFile = campaignAttachmentModelObs.getValue()?.attachedFile ?? [];
      attachedFile.add(files.last);
      campaignAttachmentModelObs.setValue(campaignAttachmentModelObs.getValue());
      // uploadAttachment(context);
    }

    // AppBottomSheets.showScrollableBody(
    //   context: context,
    //   builder: (ctx) {
    //     return PickFileBottomSheetWidget(
    //       onCamera: () => getCameraFiles(context),
    //       onGallery: () => getProofFiles(context, fileType: FileType.image),
    //       onFile: () => getProofFiles(context, fileType: FileType.custom),
    //     );
    //   },
    // );
  }

  // Future<void> getProofFiles(BuildContext context, {FileType? fileType}) async {
  //   Navigator.of(context).pop();
  //   FocusScope.of(context).requestFocus(FocusNode());
  //   pickFile(context,fileType: fileType);
  // }

  // Future<void> getCameraFiles(BuildContext context) async {
  //   Navigator.of(context).maybePop();
  //   await getIt<Utilities>().getCameraImage(context).then((value) {
  //     if (value != null) {
  //       attachmentObs.setValue(value);
  //       attachmentObs.refresh();
  //     }
  //   });
  // }

  String getFileName(File file) => path.basename(file.path);

  // void checkFileType(File file) {
  //   String fileExtension = path.extension(file.path).toLowerCase();
  //   if (fileExtension == '.pdf' ||
  //       fileExtension == '.jpg' ||
  //       fileExtension == '.jpeg' ||
  //       fileExtension == '.png' ||
  //       fileExtension == '.gif') {
  //   } else {
  //     AppSnackBar.showSimpleToast(msg: '${getFileName(file)} ${Translate.s.file_type_not_supported}');
  //   }
  // }

  bool isImageFile(String path) {
    final List<String> imageExtensions = [
      ".jpg",
      ".jpeg",
      ".png",
      ".gif",
      ".bmp",
      ".webp",
      ".heic",
      ".heif",
      ".tiff",
      ".tif",
    ];

    String extension = path.toLowerCase().split('.').last;
    return imageExtensions.contains(".$extension");
  }

  Future<void> getFileSize(File file) async {
    int sizeInBytes = await file.length();
    double sizeInKB = sizeInBytes / 1024;
    fileSize = getIt<Utilities>().handleDecimalFormat(sizeInKB);
  }

  String getFileExtension(String fileName) {
    return ".${fileName.split('.').last}";
  }

  String formatAttachDate(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    DateFormat formatter = DateFormat("MMM dd, yyyy, hh:mm a", lang);
    attachedDateAndTimeObs.setValue(formatter.format(attachedDateAndTime));
    return attachedDateAndTimeObs.getValue();
  }

  void enableSaveButton() {
    if (isActiveDraftCampaign ?? false) {
      if ((campaignProfileModel?.draftServices ?? []).isNotEmpty) {
        paymentBtnObs.setValue(SmartButtonState.active);
      } else {
        paymentBtnObs.setValue(SmartButtonState.disabled);
        return;
      }
    }

    String date = dateController.text;
    String time = timeController.text;
    String brief = briefController.text;
    if (dateController.text != date ||
        timeController.text != time ||
        briefController.text == brief) {
      buttonObs.setValue(true);
      paymentBtnObs.setValue(SmartButtonState.active);
    } else {
      paymentBtnObs.setValue(SmartButtonState.disabled);
      buttonObs.setValue(false);
    }
  }

  Future<void> updateStarDetails(
    BuildContext context,
    VoidCallback callBack,
    int campId,
    int starId,
  ) async {
    var result = await getIt<BaseRepository>().updateStarDetails(_updateParams(campId, starId));
    result.when(
      isSuccess: (value) {
        callBack.call();
        Navigator.pop(context);
      },
      isError: (error) {},
    );
  }

  UpdateStarDetailsParams _updateParams(int campId, int starId) {
    return UpdateStarDetailsParams(
        campaignId: campId, starId: starId, date: convertSendingDate(), note: briefController.text);
  }

  String convertSendingDate() {
    String date = dateController.text;
    String time = timeController.text;

    String cleanedDate = date.replaceAll(" ", "");

    DateTime parsedDate = DateFormat("yyyy-MM-dd").parse(cleanedDate);
    DateTime parsedTime = DateFormat("hh:mm a").parse(time);

    DateTime finalDateTime = DateTime(
      parsedDate.year,
      parsedDate.month,
      parsedDate.day,
      parsedTime.hour,
      parsedTime.minute,
    );
    String formattedDateTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(finalDateTime);
    return formattedDateTime;
  }
}
