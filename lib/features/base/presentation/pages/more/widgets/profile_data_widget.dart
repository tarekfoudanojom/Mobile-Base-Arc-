part of 'more_widgets_imports.dart';

class ProfileDataWidget extends StatelessWidget {
  const ProfileDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var model = context.watch<ProfileCubit>().state.model;
    bool auth = context.read<DeviceCubit>().state.model.auth;
    var currentLang =
        context.watch<DeviceCubit>().state.model.locale.languageCode;
    var phone = model?.phone?.replaceAll('.', '');
    return GestureDetector(
      onTap: () {
        if (auth) {
          // AutoRouter.of(context).push(CompleteSignUpPageRoute());
          AutoRouter.of(context).push(const PrivateInfoRoute()).then((value) {
            MemberClientService.instance.loadMemberClients();
          },);
        } else {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            useRootNavigator: true,
            builder: (context) {
              return const SignInBottomSheet();
            },
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Visibility(
              visible: auth,
              replacement:
                  SvgPicture.asset(Res.profileIcon, width: 50, height: 50),
              child: CachedImage(
                url:
                    "${model?.filePath?.pathProfilePicClient}${model?.profileImage}",
                boxShape: BoxShape.circle,
                haveRadius: false,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                placeHolder: SvgPicture.asset(Res.profileIcon),
              ),
            ),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: auth,
                    replacement: Text(
                      Translate.s.register_now,
                      style: AppTextStyle.s17_w500(color: context.colors.black),
                    ),
                    child: Visibility(
                      visible:
                          model?.firstName != null && model?.lastName != null,
                      child: Text(
                        "${model?.firstName ?? ""} ${model?.lastName}",
                        style:
                            AppTextStyle.s14_w600(color: context.colors.black),
                      ),
                    ),
                  ),
                  Gaps.vGap8,
                  Text(
                    auth
                        ? _checkNullableValue(phone)
                        : Translate.s.access_all_features,
                    style: AppTextStyle.s14_w400(
                        color: CupertinoColors.systemGrey),
                    textDirection: TextDirection.ltr,
                  ),
                ],
              ),
            ),
            Transform.rotate(
              angle: currentLang == "en" ? 0 : 3.1416,
              child: const SvgIconWrapper(size: 14, iconPath: Res.arrowIcon),
            ),
          ],
        ),
      ),
    );
  }

  String _checkNullableValue(String? value) {
    if (value == null || value.contains('null')) {
      return '';
    } else {
      return value;
    }
  }
}
