
enum BrandCampaignStatusEnum{
  pending(statusName: "pending") ,
  inProgress(statusName:"in_progress") ,
  completed(statusName:"completed"),
  canceled(statusName:"canceled"),
  released(statusName:"released"),
  created(statusName:"created");
  // pending, in_progress, completed, canceled, created and released.

  final String statusName;
  const BrandCampaignStatusEnum({required this.statusName});
}