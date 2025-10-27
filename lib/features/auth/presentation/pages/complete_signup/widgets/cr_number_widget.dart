part of 'complete_signup_widgets_imports.dart';

class CRNumberWidget extends StatelessWidget {
  final CompleteSignUpController controller;
  final SignupInfoEntity infoEntity;

  const CRNumberWidget(
      {super.key, required this.controller, required this.infoEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: Dimens.paddingH15V24PX,
      // margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.background1,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GenericTextField(
            controller: controller.textEditingController,
            fieldTypes: FieldTypes.normal,
            fillColor: context.colors.white,
            action: TextInputAction.next,
            hint: infoEntity.pleaseHolder ?? "",
            type: TextInputType.text,
            autoFocus: true,
            margin: Dimens.paddingH16V5PX,
            validate: (value) => value?.noValidate(),
            contentPadding: Dimens.paddingAll16PX,
            prefixIcon: null,
            focusBorderColor: Colors.transparent,
            enableBorderColor: context.colors.mistyGray,
            hintTextStyle: AppTextStyle.s16_w400(color: context.colors.grey)
                .copyWith(height: 1.5),
            inputStyle: AppTextStyle.s16_w400(color: context.colors.black)
                .copyWith(height: 1.5),
            radius: BorderRadius.circular(16),
            cursorColor: context.colors.appColorBlue,
            onChange: (value) {
              controller.isSubmitButtonEnabled(infoEntity);
            },
          ),
          // ObsValueConsumer(
          //   observable: controller.crFileObs,
          //   builder: (context, value) {
          //     if (value == null) {
          //       return GestureDetector(
          //         onTap: () => controller.pickCRFile(context),
          //         child: Container(
          //           padding: Dimens.paddingAll16PX,
          //           alignment: Alignment.center,
          //           child: DottedBorder(
          //             color: context.colors.grey,
          //             strokeWidth: 1,
          //             borderType: BorderType.RRect,
          //             dashPattern: const [10, 10],
          //             radius: const Radius.circular(10),
          //             child: Container(
          //               padding: Dimens.paddingH16V40PX,
          //               width: double.infinity,
          //               decoration: BoxDecoration(
          //                 color: context.colors.white,
          //                 borderRadius: BorderRadius.circular(10),
          //               ),
          //               child: Column(
          //                 children: [
          //                   Icon(Icons.drive_folder_upload,
          //                       color: context.colors.greyOpacity, size: 50),
          //                   Gaps.vGap10,
          //                   Text(
          //                     Translate.s.upload_cr,
          //                     style: AppTextStyle.s15_w400(
          //                         color: context.colors.greyOpacity),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       );
          //     } else {
          //       return Container(
          //         padding: Dimens.paddingAll16PX,
          //         alignment: Alignment.center,
          //         child: GestureDetector(
          //           onTap: () => controller.pickCRFile(context),
          //           child: Container(
          //             padding: Dimens.paddingH16V18PX,
          //             decoration: BoxDecoration(
          //               color: context.colors.white,
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //             child: Row(
          //               children: [
          //                 Icon(
          //                   Icons.drive_folder_upload,
          //                   color: context.colors.greyOpacity,
          //                   size: 30,
          //                 ),
          //                 Gaps.hGap10,
          //                 Expanded(
          //                   child: Text(
          //                     path.basename(value.path),
          //                     style: AppTextStyle.s15_w400(
          //                         color: context.colors.textColor),
          //                     overflow: TextOverflow.ellipsis,
          //                     maxLines: 1,
          //                   ),
          //                 ),
          //                 GestureDetector(
          //                   onTap: () => controller.removeCRFile(),
          //                   child: Icon(Icons.delete_forever_outlined,
          //                       color: context.colors.red, size: 20),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     }
          //   },
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: [
                Text(
                  Translate.s.cr_number_hint,
                  style:
                      AppTextStyle.s14_w400(color: context.colors.textTertiary)
                          .copyWith(height: 1.2),
                ),
                Gaps.vGap10,
                Text(
                  Translate.s.freelance_number_hint,
                  style:
                      AppTextStyle.s14_w400(color: context.colors.textTertiary)
                          .copyWith(height: 1.2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
