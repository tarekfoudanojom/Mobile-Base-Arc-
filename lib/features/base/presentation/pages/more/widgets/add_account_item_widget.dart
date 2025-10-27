part of 'more_widgets_imports.dart';

class AddAccountItemWidget extends StatelessWidget {
  final MorePageController controller;

  const AddAccountItemWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.addAccount(context),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.background1,
            ),
            child: const SvgIconWrapper(size: 17, iconPath: Res.addIcon,),
          ),
          Gaps.hGap8,
          Expanded(
            child: Text(
              Translate.s.add_account,
              style: AppTextStyle.s17_w600(color: context.colors.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
