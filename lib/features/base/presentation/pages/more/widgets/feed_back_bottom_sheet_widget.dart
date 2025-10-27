part of 'more_widgets_imports.dart';

class FeedBackBottomSheetWidget extends StatelessWidget {
  final MorePageController controller;

  const FeedBackBottomSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    controller.enableButton();
    return Container(
      padding: Dimens.paddingTop10PX,
      margin: const EdgeInsets.only(top: kTextTabBarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextButton(onPressed: () => controller.seeData(), child: Icon(Icons.abc,color: context.colors.textColor,)),
            // BottomSheetHeaderWidget(
            //   title: Translate.of(context).feedback,
            //   style: AppTextStyle.s24_w700(color: context.colors.black),
            //   showCancel: false,
            // ),
            // Gaps.vGap12,
            // Padding(
            //   padding: Dimens.paddingH16PX,
            //   child: Text(
            //     Translate.s.idea_issue_feedback,
            //     style: AppTextStyle.s17_w400(color: context.colors.grey),
            //   ),
            // ),
            Gaps.vGap8,
            GenericTextField(
              controller: controller.feedBackController,
              enableBorderColor: context.colors.white,
              hint: Translate.s.idea_issue_feedback,
              fieldTypes: FieldTypes.rich,
              fillColor: context.colors.white,
              action: TextInputAction.done,
              type: TextInputType.text,
              maxLines: 7,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              margin: Dimens.paddingH16V10PX,
              validate: (value) => value?.noValidate(),
              onChange: (value) => controller.enableButton(),
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextButton.maxCustom(
                    text: Translate.s.cancel,
                    margin: Dimens.paddingH10PX,
                    textStyle: AppTextStyle.s14_w600(color: context.colors.appColorBlue,),
                    bgColor: context.colors.white,
                    borderColor: context.colors.appColorBlue,
                    onPressed: () => Navigator.pop(context),
                    borderRadius: 5,
                    maxHeight: 37,
                  ),
                ),
                Expanded(
                  child: NavButtonWidget(
                    elevation: 0,
                    title: Translate.s.send,
                    activeButtonObs: controller.activeButtonObs,
                    btnKey: controller.sendBtnKey,
                    onTap: () => controller.addFeedback(context),
                    radius: 5,
                    horizontalMargin: 10,
                    topMargin: 20,
                    height: 37,
                  ),
                ),
              ],
            ),
            Gaps.vGap24,
          ],
        ),
      ),
    );
  }
}
