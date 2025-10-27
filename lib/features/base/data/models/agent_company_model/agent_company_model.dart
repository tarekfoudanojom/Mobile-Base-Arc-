import 'package:flutter_tdd/features/base/data/models/agent_model/agent_model.dart';

class AgentCompanyModel {
  List<AgentModel>? agents;

  String? path;

  AgentCompanyModel({this.agents, this.path});

  AgentCompanyModel.fromJson(Map<String, dynamic> json) {
    agents = ((json['data']??[]) as List<dynamic>).map((e) => AgentModel.fromJson(e as Map<String, dynamic>)).toList();
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = agents?.map((e) => e.toJson()).toList();
    data['path'] = path;
    return data;
  }
}
