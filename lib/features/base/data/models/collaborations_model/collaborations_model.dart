
import 'package:flutter_tdd/features/base/data/models/collaborations_model/applied_filter_model.dart';
import 'package:flutter_tdd/features/base/data/models/collaborations_model/category_filter_model.dart';
import 'package:flutter_tdd/features/base/data/models/collaborations_model/collaboration_ad_model.dart';
import 'package:flutter_tdd/features/base/data/models/collaborations_model/collaboration_client_model.dart';

class CollaborationsModel {
  final bool? status;
  final String? message;
  final CollaborationsDataModel? data;

  CollaborationsModel({
    this.status,
    this.message,
    this.data,
  });

  factory CollaborationsModel.fromJson(Map<String, dynamic> json) {
    return CollaborationsModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null
          ? CollaborationsDataModel.fromJson(json['data'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data?.toJson(),
    };
  }
}

class CollaborationsDataModel {
  final List<CategoryFilterModel>? categoryFilters;
  final List<CollaborationClientModel>? clients;
  final List<CollaborationAdModel>? ads;
  final AppliedFilterModel? appliedFilter;

  CollaborationsDataModel({
    this.categoryFilters,
    this.clients,
    this.ads,
    this.appliedFilter,
  });

  factory CollaborationsDataModel.fromJson(Map<String, dynamic> json) {
    return CollaborationsDataModel(
      categoryFilters: json['category_filters'] != null
          ? List<CategoryFilterModel>.from(json['category_filters']
              .map((x) => CategoryFilterModel.fromJson(x)))
          : null,
      clients: json['clients'] != null
          ? List<CollaborationClientModel>.from(
              json['clients'].map((x) => CollaborationClientModel.fromJson(x)))
          : null,
      ads: json['ads'] != null
          ? List<CollaborationAdModel>.from(
              json['ads'].map((x) => CollaborationAdModel.fromJson(x)))
          : null,
      appliedFilter: json['applied_filter'] != null
          ? AppliedFilterModel.fromJson(json['applied_filter'])
          : null,
    );

  }

  Map<String, dynamic> toJson() {
    return {
      'category_filters': categoryFilters?.map((x) => x.toJson()).toList(),
      'clients': clients?.map((x) => x.toJson()).toList(),
      'ads': ads?.map((x) => x.toJson()).toList(),
      'applied_filter': appliedFilter?.toJson(),
    };
  }
}

