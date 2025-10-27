import '../campaign_agent_model/campaign_agent_model.dart';

class StarHomeModel {
  final int? userCount;
  final List<CampaignAgentModel>? agents;
  final String? path;

  StarHomeModel({
    this.userCount,
    this.agents,
    this.path,
  });

  factory StarHomeModel.fromJson(Map<String, dynamic> json) {
    return StarHomeModel(
      userCount: json["user_count"] as int?,
      agents: (json["agents"] as List<dynamic>?)?.map((e) {
        if (e["image"] == null) {
          e["image"] = {"file_name": e["img"], "path": json["path"]};
        }
        return CampaignAgentModel.fromJson(e as Map<String, dynamic>);
      }).toList(),
      path: json["path"] as String?,
    );
  }
}
