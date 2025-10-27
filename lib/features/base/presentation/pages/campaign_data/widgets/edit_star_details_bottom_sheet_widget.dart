// part of 'campaign_data_widgets_imports.dart';
//
// class EditStarDetailsBottomSheetWidget extends StatefulWidget {
//   final OrderStarDetailsController detailsController;
//   const EditStarDetailsBottomSheetWidget(
//       {super.key, required this.detailsController});
//
//   @override
//   State<EditStarDetailsBottomSheetWidget> createState() =>
//       _EditStarDetailsBottomSheetWidgetState();
// }
//
// class _EditStarDetailsBottomSheetWidgetState
//     extends State<EditStarDetailsBottomSheetWidget> {
//   final CampaignDataController controller = CampaignDataController();
//
//   @override
//   void initState() {
//     super.initState();
//     DateTime? date =
//         widget.detailsController.getCampaignProfileModel().campaignLaunchDate;
//     controller.timeController.text =
//         widget.detailsController.getCampaignProfileModel().campaignTime;
//     controller.briefController.text =
//         widget.detailsController.getCampaignProfileModel().clientNote ?? "";
//     if (date != null) {
//       controller.formatDate(date);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ObsValueConsumer(
//       observable: widget.detailsController.campaignObs,
//       builder: (context, value) {
//         return Container(
//           height: MediaQuery.of(context).size.height * 0.95,
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: context.colors.background1,
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//           ),
//           child: Column(
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 16, vertical: 11),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Gaps.empty,
//                             Padding(
//                               padding:
//                                   const EdgeInsetsDirectional.only(start: 37),
//                               child: Text(
//                                 Translate.s.star_details,
//                                 style: AppTextStyle.s16_w700(
//                                     color: context.colors.black),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () => Navigator.pop(context),
//                               child: Text(
//                                 Translate.s.cancel,
//                                 style: AppTextStyle.s16_w700(
//                                     color: context.colors.appColorBlue,),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       ObsValueConsumer(
//                         observable: controller.showHintObs,
//                         builder: (context, value) {
//                           return Visibility(
//                             visible: value,
//                             replacement: Gaps.vGap10,
//                             child: Column(
//                               children: [
//                                 Container(
//                                   margin: Dimens.paddingV5PX,
//                                   padding: Dimens.paddingAll10PX,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xfff1f7ff),
//                                     border: Border.all(
//                                         color: const Color(0xff93d7ff)),
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Expanded(
//                                         child: Text(
//                                           Translate.s.details_privacy_hint,
//                                           style: AppTextStyle.s15_w500(
//                                               color: context.colors.black),
//                                         ),
//                                       ),
//                                       Gaps.hGap5,
//                                       GestureDetector(
//                                         onTap: () => controller.showHintObs
//                                             .setValue(false),
//                                         child: Icon(Icons.clear,
//                                             size: 20,
//                                             color: context.colors.appColorBlue,),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Gaps.vGap20,
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                       // GenericTextField(
//                       //   controller: controller.titleController,
//                       //   fieldTypes: FieldTypes.normal,
//                       //   fillColor: context.colors.white,
//                       //   enableBorderColor: context.colors.appColorBlue,
//                       //   action: TextInputAction.next,
//                       //   label: Translate.s.campaign_title,
//                       //   contentPadding: Dimens.paddingH16V10PX,
//                       //   type: TextInputType.text,
//                       //   margin: Dimens.paddingV10PX,
//                       //   validate: (value) => value?.noValidate(),
//                       //   onChange: (value) => controller.enableButton(),
//                       //   enableBorder: OutlineInputBorder(
//                       //     borderRadius: BorderRadius.circular(10),
//                       //     borderSide: BorderSide(color: context.colors.greyWhite),
//                       //   ),
//                       // ),
//                       Row(
//                         children: [
//                           Text(
//                             Translate.s.star_release_date,
//                             style: AppTextStyle.s16_w600(
//                                 color: context.colors.black),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: GenericTextField(
//                               controller: controller.dateController,
//                               fieldTypes: FieldTypes.clickable,
//                               onTap: () => controller.onSelectDate(context),
//                               fillColor: context.colors.white,
//                               enableBorderColor: context.colors.appColorBlue,
//                               action: TextInputAction.next,
//                               label: Translate.s.date,
//                               contentPadding: Dimens.paddingH12V8PX,
//                               type: TextInputType.text,
//                               margin: Dimens.paddingV10PX,
//                               validate: (value) => value?.noValidate(),
//                               onChange: (value) =>
//                                   controller.enableSaveButton(),
//                             ),
//                           ),
//                           Gaps.hGap32,
//                           Expanded(
//                             child: GenericTextField(
//                               controller: controller.timeController,
//                               fieldTypes: FieldTypes.clickable,
//                               onTap: () => controller.onSelectTime(context),
//                               fillColor: context.colors.white,
//                               enableBorderColor: context.colors.appColorBlue,
//                               action: TextInputAction.next,
//                               label: Translate.s.time,
//                               contentPadding: Dimens.paddingH16V10PX,
//                               type: TextInputType.text,
//                               margin: Dimens.paddingV10PX,
//                               validate: (value) => value?.noValidate(),
//                               onChange: (value) =>
//                                   controller.enableSaveButton(),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Gaps.vGap20,
//                       Row(
//                         children: [
//                           Text(
//                             Translate.s.star_brief,
//                             style: AppTextStyle.s16_w600(
//                                 color: context.colors.black),
//                           ),
//                           Text(
//                             " (${Translate.s.optional})",
//                             style: AppTextStyle.s16_w500(
//                                 color: context.colors.blackOpacity),
//                           ),
//                         ],
//                       ),
//                       GenericTextField(
//                         controller: controller.briefController,
//                         fieldTypes: FieldTypes.rich,
//                         maxLines: 7,
//                         fillColor: context.colors.white,
//                         enableBorderColor: context.colors.greyWhite,
//                         action: TextInputAction.next,
//                         hint: Translate.s.write_star_description,
//                         contentPadding: Dimens.paddingH16V10PX,
//                         type: TextInputType.text,
//                         margin: Dimens.paddingTop10PX,
//                         validate: (value) => value?.noValidate(),
//                         onChange: (value) => controller.enableSaveButton(),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             top: 5, bottom: 20, right: 5, left: 5),
//                         child: Text(
//                           Translate.s.star_description_hint,
//                           style: AppTextStyle.s16_w500(
//                               color: context.colors.blackOpacity),
//                         ),
//                       ),
//                       Gaps.vGap15,
//                       Row(
//                         children: [
//                           Text(
//                             Translate.s.attachment_for_star,
//                             style: AppTextStyle.s16_w600(
//                                 color: context.colors.black),
//                           ),
//                           Text(
//                             " (${Translate.s.optional})",
//                             style: AppTextStyle.s16_w500(
//                                 color: context.colors.blackOpacity),
//                           ),
//                         ],
//                       ),
//                       Gaps.vGap10,
//                       if (widget.detailsController
//                               .getCampaignProfileModel()
//                               .submissions
//                               ?.isNotEmpty ??
//                           false)
//                         ...List.generate(
//                           (widget.detailsController
//                                       .getCampaignProfileModel()
//                                       .submissions ??
//                                   [])
//                               .length,
//                           (index) {
//                             SubmissionsModel? item = widget.detailsController
//                                 .getCampaignProfileModel()
//                                 .submissions?[index];
//                             return AttachedFileItemWidget(
//                               attachmentUrl: item?.url ?? "",
//                               controller: widget.detailsController,
//                               onPressDelete: () => widget.detailsController
//                                   .showDeleteAssetDialog(
//                                 context,
//                                 item?.id ?? 0,
//                               ),
//                             );
//                           },
//                         ),
//                       // CampaignAttachedFileWidget(controller: controller),
//                     ],
//                   ),
//                 ),
//               ),
//               ObsValueConsumer(
//                 observable: controller.buttonObs,
//                 builder: (context, value) {
//                   return ObsValueConsumer(
//                     observable: controller.loadingObs,
//                     builder: (context, loading) {
//                       return LoadingButton(
//                         margin: Dimens.paddingAll16PX,
//                         title: Translate.s.save,
//                         btnKey: controller.btnKey,
//                         borderRadius: 10,
//                         height: 38.h,
//                         onTap: () {
//                           if (value) {
//                             controller.updateStarDetails(
//                               context,
//                               widget.detailsController.updateData,
//                               widget.detailsController
//                                   .getCampaignModel()
//                                   .campaignId,
//                               widget.detailsController
//                                   .getCampaignProfileModel()
//                                   .id,
//                             );
//                           }
//                         },
//                         fontSize: 16,
//                         color: value
//                             ? context.colors.appColorBlue
//                             : context.colors.greyOpacity,
//                         borderColor: value
//                             ? context.colors.appColorBlue
//                             : context.colors.greyOpacity,
//                         child:
//                             loading ? const CupertinoActivityIndicator() : null,
//                       );
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
