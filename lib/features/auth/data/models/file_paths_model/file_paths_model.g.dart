// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_paths_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilePathsModelImpl _$$FilePathsModelImplFromJson(Map<String, dynamic> json) =>
    _$FilePathsModelImpl(
      clientAttachments: json['client_attachments'] as String,
      agentAttachments: json['agnet_attachments'] as String,
      resume: json['resume'] as String,
      submittedFiles: json['submitted_files'] as String,
      portfoliosFiles: json['portfolios_files'] as String,
      img: json['img'] as String,
      imgId: json['img_id'] as String,
      mawthooqId: json['mawthooq_id'] as String,
      clientImg: json['client_img'] as String,
      bankCertificate: json['bank_certificate'] as String,
      portfolio: json['portfolio'] as String,
      company: json['company'] as String,
      store: json['store'] as String,
      agency: json['agency'] as String,
    );

Map<String, dynamic> _$$FilePathsModelImplToJson(
        _$FilePathsModelImpl instance) =>
    <String, dynamic>{
      'client_attachments': instance.clientAttachments,
      'agnet_attachments': instance.agentAttachments,
      'resume': instance.resume,
      'submitted_files': instance.submittedFiles,
      'portfolios_files': instance.portfoliosFiles,
      'img': instance.img,
      'img_id': instance.imgId,
      'mawthooq_id': instance.mawthooqId,
      'client_img': instance.clientImg,
      'bank_certificate': instance.bankCertificate,
      'portfolio': instance.portfolio,
      'company': instance.company,
      'store': instance.store,
      'agency': instance.agency,
    };
