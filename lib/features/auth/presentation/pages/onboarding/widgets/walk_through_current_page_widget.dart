part of 'onboarding_widgets_imports.dart';

class WalkThroughCurrentPageWidget extends StatelessWidget {
  final String text;
  final String description;
  final String imagePath;
  final double topPosition;
final double width;

  const WalkThroughCurrentPageWidget({
    super.key,
    required this.text,
    required this.description,
    required this.imagePath,
    required this.topPosition,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: topPosition,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
            width: width,

          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.colors.background1,
                blurRadius: 9,
                spreadRadius: 9,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: AppTextStyle.s28_w700(color: context.colors.textColor),
              ),
              Gaps.vGap15,
              Padding(
                padding: Dimens.paddingH20PX,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s16_w400(
                    color: context.colors.textGrayOpacity,
                  ).copyWith(height: 1.3),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
