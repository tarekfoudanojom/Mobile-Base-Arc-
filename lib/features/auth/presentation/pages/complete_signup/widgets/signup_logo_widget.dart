part of 'complete_signup_widgets_imports.dart';

class SignupLogoWidget extends StatelessWidget {
  final CompleteSignUpController controller;

  const SignupLogoWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    ProfileModel? userData = context.read<ProfileCubit>().state.model;
    return Column(
      children: [
        ObsValueConsumer(
          observable: controller.profileObs,
          builder: (context, value) {
            return GestureDetector(
              onTap: () => controller.pickProfileImage(context),
              child: SizedBox(
                height: 80,
                width: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(3),
                      child: Visibility(
                        visible: value == null,
                        replacement: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: FileImage(value ?? File('')),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        child: ObsValueConsumer(
                          observable: controller.profileUrlObs,
                          builder: (context, value) {
                            return Visibility(
                              visible: value.isEmpty,
                              replacement: Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CachedImage(
                                  url: controller.profileUrlObs.getValue(),
                                  alignment: Alignment.center,
                                  fit: BoxFit.fill,
                                  boxShape: BoxShape.circle,
                                  haveRadius: false,
                                  bgColor: context.colors.greyWhite,
                                  placeHolder: SvgPicture.asset(
                                    Res.profileIcon,
                                    color: context.colors.white,
                                  ),
                                ),
                              ),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: context.colors.whiteSmoke,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.08),
                                    width: 0.83,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(Res.userPRofileIcon),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    // Camera Icon Button (bottom-right)
                    Positioned(
                      bottom: -2,
                      right: -2,
                      child: Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                          color: context.colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.08),
                            width: 0.83,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(5),
                        child: SvgPicture.asset(
                          Res.cameraIcon,
                          fit: BoxFit.contain,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Gaps.vGap12,
        // GestureDetector(
        //   onTap: () => controller.pickProfileImage(context),
        //   child: Padding(
        //     padding: const EdgeInsets.only(bottom: 20, top: 5),
        //     child: Text(
        //       Translate.s.change_logo,
        //       style: AppTextStyle.s17_w500(color: context.colors.black),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
