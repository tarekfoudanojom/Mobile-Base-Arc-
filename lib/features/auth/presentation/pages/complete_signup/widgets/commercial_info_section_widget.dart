part of 'complete_signup_widgets_imports.dart';

class CommercialInfoSectionWidget extends StatelessWidget {
  final CompleteSignUpController controller;

  const CommercialInfoSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.commercialInfoObs,
      builder: (context, value) {
        return Container(
          margin: Dimens.paddingH16V16PX,
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: List.generate(
              value.length,
              (index) {
                return InfoItemWidget(
                  onTap: () => _onTap(index, context, value),
                  infoEntity: value[index],
                  isLast: (value.length - 1) == index,
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _onTap(int index, BuildContext context, List<SignupInfoEntity> value) {
    if (index != 2) {
      controller.showInfoBottomSheet(context, value[index], onSubmit: () {
        if (index == 0) {
          controller.onSubmitInfoChange(
              context, value[index], controller.commercialInfoObs);
        } else {
          controller.onAddVAT(context, value[index]);
        }
      });
    } else {
      controller.updateAboutUs(context);
    }
  }
}
