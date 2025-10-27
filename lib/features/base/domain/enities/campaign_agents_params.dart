class CampaignAgentsParams {
  final String? agentName;
  final int? limit;
  final int? pageNo;

  CampaignAgentsParams({
    this.agentName,
    this.limit,
    this.pageNo,
  });

  Map<String, dynamic> toJson() => {
        if (agentName != null) 'agentName': agentName,
        if (limit != null) 'limit': limit,
        if (pageNo != null) 'page_no': pageNo,
      };
}
