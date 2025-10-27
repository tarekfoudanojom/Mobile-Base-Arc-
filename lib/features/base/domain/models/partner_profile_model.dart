
import '../enums/partner_status_enum.dart';

class PartnerProfileModel {
  CompleteStatusEnum applicationAnswers;

  CompleteStatusEnum aboutMeAnswers;

  CompleteStatusEnum allDataAnswers;

  PartnerProfileModel({
    required this.applicationAnswers,
    required this.aboutMeAnswers,
    required this.allDataAnswers,
  });
}
