part of 'more_widgets_imports.dart';

class CampaignsItemWidget extends StatelessWidget {
  final String iconPath;
 final String title;
 final String subTitle;
 final Color? bgColor;
 final Color? txtColor;
  const CampaignsItemWidget({super.key, required this.iconPath, required this.title, this.bgColor, required this.subTitle, this.txtColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 10,top: 11,bottom:11),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bgColor??context.colors.slightBlueGray.withValues(alpha:0.5)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgIconWrapper(size: 26, iconPath: iconPath),
            Gaps.vGap8,
            Text(title,
            style: AppTextStyle.s17_w600(color:txtColor ?? context.colors.textColor),
            ),
            Gaps.vGap8,
            Text(subTitle,
              style: AppTextStyle.s15_w450(color: txtColor ?? context.colors.textGrayOpacity),
            ),
          ],
        ),
      ),
    );
  }
}
