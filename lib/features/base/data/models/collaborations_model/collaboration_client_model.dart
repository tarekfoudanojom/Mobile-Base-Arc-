class CollaborationClientModel {
  final int? id;
  final ClientNameModel? name;
  final String? link;
  final String? companyLogo;
  final int? profileId;
  final int? companyId;
  final int? times;
  final int? timesPublicStatus;
  final int? displayOrder;
  final int? publicStatus;
  final int? status;
  final String? campaignDate;
  final int? campaignDatePublicStatus;
  final String? contractStartDate;
  final String? contractEndDate;
  final int? contractPublicStatus;
  final String? createdAt;
  final String? updatedAt;
  final int? exclusiveContract;
  final int? adsCount;

  CollaborationClientModel({
    this.id,
    this.name,
    this.link,
    this.companyLogo,
    this.profileId,
    this.companyId,
    this.times,
    this.timesPublicStatus,
    this.displayOrder,
    this.publicStatus,
    this.status,
    this.campaignDate,
    this.campaignDatePublicStatus,
    this.contractStartDate,
    this.contractEndDate,
    this.contractPublicStatus,
    this.createdAt,
    this.updatedAt,
    this.exclusiveContract,
    this.adsCount,
  });

  factory CollaborationClientModel.fromJson(Map<String, dynamic> json) {
    return CollaborationClientModel(
      id: json['id'],
      name:
          json['name'] != null ? ClientNameModel.fromJson(json['name']) : null,
      link: json['link'],
      companyLogo: json['company_logo'],
      profileId: json['profile_id'],
      companyId: json['company_id'],
      times: json['times'],
      timesPublicStatus: json['times_public_status'],
      displayOrder: json['display_order'],
      publicStatus: json['public_status'],
      status: json['status'],
      campaignDate: json['campaign_date'],
      campaignDatePublicStatus: json['campaign_date_public_status'],
      contractStartDate: json['contract_start_date'],
      contractEndDate: json['contract_end_date'],
      contractPublicStatus: json['contract_public_status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      exclusiveContract: json['exclusive_contract'],
      adsCount: json['ads_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name?.toJson(),
      'link': link,
      'company_logo': companyLogo,
      'profile_id': profileId,
      'company_id': companyId,
      'times': times,
      'times_public_status': timesPublicStatus,
      'display_order': displayOrder,
      'public_status': publicStatus,
      'status': status,
      'campaign_date': campaignDate,
      'campaign_date_public_status': campaignDatePublicStatus,
      'contract_start_date': contractStartDate,
      'contract_end_date': contractEndDate,
      'contract_public_status': contractPublicStatus,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'exclusive_contract': exclusiveContract,
      'ads_count': adsCount,
    };
  }
}

class ClientNameModel {
  final String? en;
  final String? ar;

  ClientNameModel({
    this.en,
    this.ar,
  });

  factory ClientNameModel.fromJson(Map<String, dynamic> json) {
    return ClientNameModel(
      en: json['en'],
      ar: json['ar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'en': en,
      'ar': ar,
    };
  }
}
