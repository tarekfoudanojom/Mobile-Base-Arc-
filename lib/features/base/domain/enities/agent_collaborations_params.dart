// class AgentCollaborationsParams {
//   final int agentId;
//   final bool refresh;
//   final int? categoryId;
//   final String? filterType;

//   AgentCollaborationsParams({
//     required this.agentId,
//     this.refresh = true,
//     this.categoryId,
//     this.filterType,
//   });

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {'agent_profile_id': agentId};
    
//     if (categoryId != null) {
//       data['category_id'] = categoryId;
//     }
    
//     if (filterType != null) {
//       data['filter_type'] = filterType;
//     }
    
//     return data;
//   }

//   Map<String, dynamic> toQueryParams() {
//     final Map<String, dynamic> params = {};
    
//     if (categoryId != null) {
//       params['category_id'] = categoryId.toString();
//     }
    
//     if (filterType != null) {
//       params['filter_type'] = filterType;
//     }
    
//     return params;
//   }
// }