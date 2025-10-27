import 'package:freezed_annotation/freezed_annotation.dart';

part 'path_model.freezed.dart';
part 'path_model.g.dart';

@freezed
class PathModel with _$PathModel{
  const PathModel._();
  @JsonSerializable(explicitToJson: true)
  factory PathModel({
    @JsonKey(name: "PATH_PROFILE_PIC_AGENT") String? pathProfilePicAgent,
    @JsonKey(name: "PATH_AGENT_RESUME") String? pathAgentResume,
    @JsonKey(name: "PATH_SOCIAL_SURVEY_SCREENSHOT") String? pathSocialSurveyScreenshot,
    @JsonKey(name: "PATH_PROFILE_PIC_CLIENT") String? pathProfilePicClient,
    @JsonKey(name: "PATH_PROFILE_VERIFICATION_PROOF_SCREENSHOT") String? pathProfileVerificationProofScreenshot,
    @JsonKey(name: "PATH_AGENT_FILE") String? pathAgentFile,
    @JsonKey(name: "PATH_AGENT_PORTFOLIO") String? pathAgentPortfolio,
    @JsonKey(name: "PATH_GIGS_ATTACHMENT") String? pathGigsAttachment,
    @JsonKey(name: "PATH_CLIENT_GIGS_ATTACHMENT") String? pathClientGigsAttachment,
    @JsonKey(name: "PATH_AGENT_SUBMITTED_ATTACHMENT") String? pathAgentSubmittedAttachment,
    @JsonKey(name: "PATH_COMMERCIAL_ATTECHMENT") String? pathCommercialAttachment,
    @JsonKey(name: "PATH_VAT_ATTECHMENT") String? pathVatAttachment,
  }) = _PathModel;


  factory PathModel.fromJson(Map<String, dynamic> json) =>
      _$PathModelFromJson(json);
}