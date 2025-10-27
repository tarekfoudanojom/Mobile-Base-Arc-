// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_agency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileAgencyModelImpl _$$ProfileAgencyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileAgencyModelImpl(
      id: (json['id'] as num).toInt(),
      profileId: (json['profile_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      namePublic: (json['name_public'] as num?)?.toInt(),
      email: json['email'] as String?,
      emailPublic: (json['email_public'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      phonePublic: (json['phone_public'] as num?)?.toInt(),
      website: json['website'] as String?,
      websitePublic: (json['website_public'] as num?)?.toInt(),
      about: json['about'] as String?,
      aboutPublic: (json['about_public'] as num?)?.toInt(),
      address: json['address'] as String?,
      note: json['note'],
      notePublic: (json['note_public'] as num?)?.toInt(),
      filename: json['filename'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$ProfileAgencyModelImplToJson(
        _$ProfileAgencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_id': instance.profileId,
      'name': instance.name,
      'name_public': instance.namePublic,
      'email': instance.email,
      'email_public': instance.emailPublic,
      'phone': instance.phone,
      'phone_public': instance.phonePublic,
      'website': instance.website,
      'website_public': instance.websitePublic,
      'about': instance.about,
      'about_public': instance.aboutPublic,
      'address': instance.address,
      'note': instance.note,
      'note_public': instance.notePublic,
      'filename': instance.filename,
      'path': instance.path,
    };
