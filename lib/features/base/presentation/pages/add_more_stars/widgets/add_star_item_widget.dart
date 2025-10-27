part of 'add_more_stars_widgets_imports.dart';

class AddStarItemWidget extends StatelessWidget {
  final AddMoreStarsController controller;
  final CampaignAgentModel model;

  const AddStarItemWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingAll10PX,
      padding: Dimens.paddingAll10PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedImage(
                url: "${model.image?.path}${model.image?.fileName}",
                alignment: Alignment.center,
                height: 55,
                width: 55,
                fit: BoxFit.cover,
                boxShape: BoxShape.circle,
                haveRadius: false,
                bgColor: context.colors.slightBlueGray,
                placeHolder: SvgPicture.asset(Res.userIcon, width: 48, height: 48),
              ),
              Expanded(
                child: Padding(
                  padding: Dimens.paddingH10PX,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${model.firstName} ${model.lastName != null ? '-' : ''} ${model.lastName}",
                        style: AppTextStyle.s14_w600(color: context.colors.textColor),
                      ),
                      Text(
                        controller.getStarCategories(model.categories ?? []),
                        style: AppTextStyle.s14_w500(color: context.colors.grey),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.hGap5,
              GestureDetector(
                onTap: () async {
                  AutoRouter.of(context).push(
                    StarProfileDetailsPageRoute(
                      starModel: StarInfoModel.fromCampaignAgentModel(model),
                    ),
                  );
                },
                child: Container(
                  padding: Dimens.paddingH10V5PX,
                  decoration: BoxDecoration(
                    color: context.colors.appColorBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    Translate.s.profile,
                    style: AppTextStyle.s12_w600(color: context.colors.white),
                  ),
                ),
              ),
            ],
          ),
          Gaps.vGap10,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: List.generate(
              model.services?.length ?? 0,
              (index) {
                model.services?.sort((a, b) => b.name.compareTo(a.name));
                return serviceItem(context, model.services![index], model.id);
              },
            ),
          ),
          Gaps.vGap10,
          GenericTextField(
            controller: model.txtController,
            fieldTypes: FieldTypes.normal,
            fillColor: context.colors.white,
            action: TextInputAction.done,
            hint: Translate.s.add_note,
            onChange: (val) => model.note = val,
            onSubmit: () {
              FocusNode().unfocus();
              model.note = model.txtController.text;
            },
            type: TextInputType.text,
            validate: (val) => ("$val").noValidate(),
            radius: BorderRadius.circular(10),
            enableBorderColor: context.colors.slightGrey.withValues(alpha: .1),
          )
        ],
      ),
    );
  }

  Widget serviceItem(BuildContext context, BrandServiceModel model, int starId) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      padding: Dimens.paddingH10PX,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          Row(
            children: [
              Visibility(
                visible: model.filename != null,
                child: CachedImage(
                  url: "${model.filename}",
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                  bgColor: context.colors.slightBlueGray,
                  borderRadius: BorderRadius.circular(5),
                  placeHolder: SvgPicture.asset(Res.userIcon, width: 48, height: 48),
                ),
              ),
              Gaps.hGap8,
              Text(
                model.getServiceName,
                style: AppTextStyle.s16_w450(color: context.colors.textColor),
              ),
            ],
          ),
          Gaps.vGap5,
          Row(
            children: [
              SizedBox(
                width: 20,
                child: Checkbox(
                  value: model.selected,
                  onChanged: (v) => controller.selectService(context, starId, model),
                  activeColor: context.colors.appColorBlue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  checkColor: context.colors.white,
                  side: BorderSide(color: context.colors.grey),
                  fillColor: WidgetStateProperty.resolveWith((Set<MaterialState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return context.colors.appColorBlue;
                    }
                    return context.colors.white; // Transparent fill when unchecked
                  }),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              Gaps.hGap8,
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: AppTextStyle.s13_w400(color: context.colors.grey),
                    children: <TextSpan>[
                      TextSpan(text: Translate.s.video),
                      TextSpan(
                        text: '  ${model.price.toInt()}  ',
                        style: AppTextStyle.s13_w600(color: context.colors.textColor),
                      ),
                      TextSpan(text: Translate.s.sar),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
