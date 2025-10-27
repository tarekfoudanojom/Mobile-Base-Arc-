part of 'campaign_data_widgets_imports.dart';

class CampaignAttachFileButtonWidget extends StatelessWidget {
  final CampaignDataController controller;
  const CampaignAttachFileButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => controller.showPickFilesBottomSheet(context),
            child: Row(
              children: [
                Icon(Icons.add, color: context.colors.appColorBlue, size: 23),
                Gaps.hGap5,
                Text(
                  Translate.s.add_file,
                  style: AppTextStyle.s14_w600(
                    color: context.colors.appColorBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Gaps.vGap10,
        // Text(
        //   Translate.s.supported_formats,
        //   style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
        // ),
      ],
    );
  }
}
