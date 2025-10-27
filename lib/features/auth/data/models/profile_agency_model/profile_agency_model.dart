import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_agency_model.freezed.dart';

part 'profile_agency_model.g.dart';

@freezed
class ProfileAgencyModel with _$ProfileAgencyModel {
  const ProfileAgencyModel._();

  @JsonSerializable(explicitToJson: true)
  factory ProfileAgencyModel({
  @JsonKey(name: "id")  required int id,
    @JsonKey(name: "profile_id") int? profileId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "name_public") int? namePublic,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "email_public") int? emailPublic,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "phone_public") int? phonePublic,
    @JsonKey(name: "website") String? website,
    @JsonKey(name: "website_public") int? websitePublic,
    @JsonKey(name: "about") String? about,
    @JsonKey(name: "about_public") int? aboutPublic,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "note") dynamic note,
    @JsonKey(name: "note_public") int? notePublic,
    @JsonKey(name: "filename") String? filename,
    @JsonKey(name: "path") String? path,
  }) = _ProfileAgencyModel;

  factory ProfileAgencyModel.fromJson(Map<String, dynamic> json) => _$ProfileAgencyModelFromJson(json);
}
