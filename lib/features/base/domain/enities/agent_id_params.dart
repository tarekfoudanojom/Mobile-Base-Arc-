class AgentIdParams {
  final int agentId;
  final bool refresh;
  final int? platformId;
  // Optional filtering fields used by specific endpoints like collaborations
  final int? categoryId;
  final String? filterType; // expected: 'clients', 'ads', or 'all'

  AgentIdParams({
    required this.agentId,
    this.refresh = true,
    this.categoryId,
    this.filterType,
    this.platformId,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'agent_profile_id': agentId,
    };

    if (categoryId != null) {
      data['category_id'] = categoryId;
    }
    if (filterType != null && filterType!.isNotEmpty) {
      data['filter_type'] = filterType;
    }

    return data;
  }
}
