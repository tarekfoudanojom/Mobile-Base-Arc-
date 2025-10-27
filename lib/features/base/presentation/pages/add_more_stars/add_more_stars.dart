part of 'add_more_stars_imports.dart';

@RoutePage(name: "AddMoreStarsPageRoute")
class AddMoreStars extends StatefulWidget {
  final CampaignAgentModel agentModel;
  const AddMoreStars({super.key, required this.agentModel});

  @override
  State<AddMoreStars> createState() => _AddMoreStarsState();
}

class _AddMoreStarsState extends State<AddMoreStars> {
  late AddMoreStarsController controller;

  @override
  void initState() {
    controller = AddMoreStarsController();
    controller.fetchData(widget.agentModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      appBar: DefaultAppBar(title: Translate.s.add_more_stars, bgColor: context.colors.background1),
      body: Column(
        children: [
          AddStarsSearchWidget(controller: controller),
          Flexible(
            child: BaseBlocBuilder(
              bloc: controller.starsBloc,
              onSuccessWidget: (data) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    controller.initNote(data[index]);
                    return AddStarItemWidget(controller: controller, model: data[index]);
                  },
                );
              },
            ),
          ),
          ObsValueConsumer(
            observable: controller.serviceButtonObs,
            builder: (context, value) {
              return Container(
                padding: Dimens.paddingH15V10PX,
                margin: Dimens.paddingV10PX,
                alignment: Alignment.center,
                // child: Visibility(
                //   visible: value != 0.0,
                //   replacement: SendOfferTabsButton(
                //     title: Translate.s.keep_going,
                //     showArrow: false,
                //     color: context.colors.grey,
                //     onTap: () {},
                //   ),
                //   child: SendOfferTabsButton(
                //     title: "${Translate.s.keep_going} ($value ${Translate.s.sar})",
                //     showArrow: false,
                //     onTap: () => controller.navigateToCampaignData(context),
                //   ),
                // ),
              );
            },
          ),
        ],
      ),
    );
  }
}
