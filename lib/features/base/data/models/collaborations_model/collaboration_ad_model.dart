
import '../../../../../core/bloc/value_state_manager/value_state_manager_import.dart';
import '../../../domain/enums/profile_status_enum.dart';

class CollaborationAdModel {
  final int? id;
  final String? fileUrl;
  final int? publicStatus;
  final int? displayOrder;
  final String? createdAt;
  final String? updatedAt;
  final AdCompanyModel? company;

  CollaborationAdModel({
    this.id,
    this.fileUrl,
    this.publicStatus,
    this.displayOrder,
    this.createdAt,
    this.updatedAt,
    this.company,
  });

  factory CollaborationAdModel.fromJson(Map<String, dynamic> json) {
    return CollaborationAdModel(
      id: json['id'],
      fileUrl: json['file_url'],
      publicStatus: json['public_status'],
      displayOrder: json['display_order'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      company: json['company'] != null
          ? AdCompanyModel.fromJson(json['company'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'file_url': fileUrl,
      'public_status': publicStatus,
      'display_order': displayOrder,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'company': company?.toJson(),
    };
  }

  AdItemModel toAdItemModel(AdCompanyModel? company) {
    return AdItemModel(
      id: id,
      fileUrl: fileUrl,
      publicStatus: publicStatus,
      createdAt: createdAt,
      updatedAt: updatedAt,
      companyName: company?.name?.en,
      companyNameAr: company?.name?.ar,
      companyFilename: fileUrl,
      companyId: company?.id,
      displayOrder: displayOrder,
      statusObs: ObsValue<ProfileStatusEnum>.withInit(
          ProfileStatusEnum.getProfileEnum(publicStatus ?? 1)),
    );
  }
}

class AdCompanyModel {
  final int? id;
  final AdCompanyNameModel? name;
  final String? logo;

  AdCompanyModel({
    this.id,
    this.name,
    this.logo,
  });

  factory AdCompanyModel.fromJson(Map<String, dynamic> json) {
    return AdCompanyModel(
      id: json['id'],
      logo: json['logo'],
      name: json['name'] != null
          ? AdCompanyNameModel.fromJson(json['name'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'logo': logo,
      'name': name?.toJson(),
    };
  }
}

class AdCompanyNameModel {
  final String? en;
  final String? ar;

  AdCompanyNameModel({
    this.en,
    this.ar,
  });

  factory AdCompanyNameModel.fromJson(Map<String, dynamic> json) {
    return AdCompanyNameModel(
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


class AdItemModel {
  final int? id;
  final int? profileId;
  final String? fileUrl;
  final int? companyId;
  final int? displayOrder;
  final int? publicStatus;
  final String? createdAt;
  final String? updatedAt;
  final String? companyName;
  final String? companyNameAr;
  final String? companyFilename;
  ObsValue<ProfileStatusEnum> statusObs =
      ObsValue<ProfileStatusEnum>.withInit(ProfileStatusEnum.public);

  AdItemModel({
    this.id,
    this.profileId,
    this.fileUrl,
    this.companyId,
    this.displayOrder,
    this.publicStatus,
    this.createdAt,
    this.updatedAt,
    this.companyName,
    this.companyNameAr,
    this.companyFilename,
    required this.statusObs,
  });

  factory AdItemModel.fromJson(Map<String, dynamic> json) {
    return AdItemModel(
      id: json['id'],
      profileId: json['profile_id'],
      fileUrl: json['file_url'],
      companyId: json['company_id'],
      displayOrder: json['display_order'],
      publicStatus: json['public_status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      companyName: json['company_name'],
      companyNameAr: json['company_name_ar'],
      companyFilename: json['company_filename'],
      statusObs: ObsValue<ProfileStatusEnum>.withInit(
          ProfileStatusEnum.getProfileEnum(json['public_status'] ?? "1")),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'profile_id': profileId,
      'file_url': fileUrl,
      'company_id': companyId,
      'display_order': displayOrder,
      'public_status': publicStatus,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'company_name': companyName,
      'company_name_ar': companyNameAr,
      'company_filename': companyFilename,
    };
  }
}
