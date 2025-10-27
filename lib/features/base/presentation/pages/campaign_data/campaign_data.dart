part of 'campaign_data_imports.dart';

@RoutePage(name: "CampaignDataPageRoute")
class CampaignData extends StatefulWidget {
  final List<CampaignAgentModel> agents;
  final String amount;
  final int? campaignId;
  final CampaignProfileModel? campaignProfileModel;
  final bool? isActiveDraftCampaign;
  const CampaignData(
      {super.key,
      required this.agents,
      required this.amount,
      this.campaignId,
      this.campaignProfileModel,
      this.isActiveDraftCampaign});

  @override
  State<CampaignData> createState() => _CampaignDataState();
}

class _CampaignDataState extends State<CampaignData> {
  late CampaignDataController controller;

  @override
  void initState() {
    controller = CampaignDataController();
    controller.agents = widget.agents;
    controller.isActiveDraftCampaign = widget.isActiveDraftCampaign;
    controller.campaignProfileModel = widget.campaignProfileModel;
    controller.checkDraftCampaign();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: context.colors.background1,
      resizeToAvoidBottomInset: false,
      navigationBar: CupertinoAppBar(
        title: Translate.s.campaign_details,
        previousPageTitle: Translate.s.back,
        backgroundColor: context.colors.background1,
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // CampaignDetailsWidget(
                  //   controller: controller,
                  // )
                ],
              ),
            ),
            CampPaymentButton1(
              controller: controller,
              amount: widget.amount,
              campaignId: widget.campaignId,
            ),
            // Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
