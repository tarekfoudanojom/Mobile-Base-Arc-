part of 'complete_signup_widgets_imports.dart';

class VatNumberWidget extends StatelessWidget {
  final CompleteSignUpController controller;
  final SignupInfoEntity infoEntity;
  final void Function()? onSubmit;

  const VatNumberWidget({
    super.key,
    required this.controller,
    required this.infoEntity,
    required this.onSubmit,
  });

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
            autoFocus: true,
            hint: infoEntity.pleaseHolder ?? "",
            type: TextInputType.text,
            margin: Dimens.paddingH16V5PX,
            validate: (value) => value?.noValidate(),
            contentPadding: Dimens.paddingAll16PX,
            prefixIcon: null,
            focusBorderColor: Colors.transparent,
            enableBorderColor: context.colors.mistyGray,
            hintTextStyle: AppTextStyle.s16_w400(color: context.colors.grey),
            inputStyle: AppTextStyle.s16_w400(
              color: context.colors.black,
            ).copyWith(height: 1.5),
            radius: BorderRadius.circular(16),
            cursorColor: context.colors.appColorBlue,
            onChange: (value) {
              controller.isSubmitButtonEnabled(infoEntity);
            },
          ),
          Gaps.vGap5,
          // ObsValueConsumer(
          //   observable: controller.vatFileObs,
          //   builder: (context, value) {
          //     if (value == null) {
          //       return GestureDetector(
          //         onTap: () => controller.pickVATFile(context),
          //         child: Container(
          //           padding: Dimens.paddingH16PX,
          //           child: Row(
          //             children: [
          //               Container(
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(8),
          //                   border: Border.all(
          //                     color: context.colors.black,
          //                     width: 1.5,
          //                   ),
          //                 ),
          //                 child: Icon(
          //                   Icons.add,
          //                   color: context.colors.black,
          //                   size: 18,
          //                 ),
          //               ),
          //               Gaps.hGap10,
          //               Text(
          //                 Translate.s.add_attachment,
          //                 style: AppTextStyle.s15_w400(
          //                   color: context.colors.textColor,
          //                 ),
          //               ),
          //             ],
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
          //                       color: context.colors.textColor,
          //                     ),
          //                     overflow: TextOverflow.ellipsis,
          //                     maxLines: 1,
          //                   ),
          //                 ),
          //                 GestureDetector(
          //                   onTap: () => controller.removeVATFile(),
          //                   child: Icon(
          //                     Icons.delete_forever_outlined,
          //                     color: context.colors.red,
          //                     size: 20,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     }
          //   },
          // ),
          // Gaps.vGap10,
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 16, 0),
            child: Text(
              Translate.s.vat_number_hint,
              style: AppTextStyle.s14_w400(
                color: context.colors.textTertiary,
              ).copyWith(height: 1.2),
            ),
          ),
        ],
      ),
    );
  }
}
