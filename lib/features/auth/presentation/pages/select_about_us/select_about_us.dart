part of 'select_about_us_imports.dart';

@RoutePage<int>(name: "SelectAboutUsPage")
class SelectAboutUs extends StatefulWidget {
  final List<AboutUsItemModel> aboutUsList;

  const SelectAboutUs({super.key, required this.aboutUsList});

  @override
  State<SelectAboutUs> createState() => _SelectAboutUsState();
}

class _SelectAboutUsState extends State<SelectAboutUs> {
  SelectAboutUsController controller = SelectAboutUsController();

  @override
  void initState() {
    controller.aboutUsObs.setValue(widget.aboutUsList);
    // controller.aboutUsObs.refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Scaffold(
      appBar: AuthAppBarWidget(
        showSkipButton: true,
        onBack: () => AutoRouter.of(context).maybePop(),
        skipWidget: GestureDetector(
          onTap: () => controller.onSave(context),
          child: Container(
            margin: Dimens.paddingAll5PX,
            padding: Dimens.paddingH15V10PX,
            decoration: BoxDecoration(
              color: context.colors.appColorBlue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              Translate.s.save,
              style: AppTextStyle.s15_w600(color: context.colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: Dimens.paddingAll20PX,
            child: Text(
              Translate.s.how_know_about_us,
              style: AppTextStyle.s28_w700(color: context.colors.black),
            ),
          ),
          Gaps.vGap15,
          Flexible(
            child: ObsValueConsumer(
              observable: controller.aboutUsObs,
              builder: (context, value) {
                return GridView.builder(
                  itemCount: value.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    childAspectRatio: 4,
                  ),
                  padding: Dimens.paddingH15PX,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        controller.selectAboutUs(value[index]);
                      },
                      child: Container(
                        padding: Dimens.paddingAll5PX,
                        decoration: BoxDecoration(
                          color: value[index].isSelected == true
                              ? context.colors.black
                              : context.colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: context.colors.grey.withValues(alpha: .2),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            lang == 'ar'
                                ? value[index].description
                                : value[index].title,
                            style: AppTextStyle.s14_w500(
                              color: value[index].isSelected == true
                                  ? context.colors.white
                                  : context.colors.black,
                            ).copyWith(
                              fontSize: lang == 'ar' ? 15.5 : 15,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
