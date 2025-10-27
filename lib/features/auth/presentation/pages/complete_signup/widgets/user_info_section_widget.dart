part of 'complete_signup_widgets_imports.dart';

class UserInfoSectionWidget extends StatelessWidget {
  final CompleteSignUpController controller;

  const UserInfoSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.userInfoObs,
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
                  onTap: () => _buildShowInfoBottomSheet(context, value, index),
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

  void _buildShowInfoBottomSheet(
      BuildContext context, List<SignupInfoEntity> value, int index) {
    return controller.showInfoBottomSheet(
      context,
      value[index],
      onSubmit: () => controller.onSubmitInfoChange(
          context, value[index], controller.userInfoObs),
    );
  }
}
