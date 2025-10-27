import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_paths_model.freezed.dart';

part 'file_paths_model.g.dart';

@freezed
class FilePathsModel with _$FilePathsModel {
  const FilePathsModel._();

  @JsonSerializable(explicitToJson: true)
  factory FilePathsModel({
    @JsonKey(name: "client_attachments") required String clientAttachments,
    @JsonKey(name: "agnet_attachments") required String agentAttachments,
    @JsonKey(name: "resume") required String resume,
    @JsonKey(name: "submitted_files") required String submittedFiles,
    @JsonKey(name: "portfolios_files") required String portfoliosFiles,
    @JsonKey(name: "img") required String img,
    @JsonKey(name: "img_id") required String imgId,
    @JsonKey(name: "mawthooq_id") required String mawthooqId,
    @JsonKey(name: "client_img") required String clientImg,
    @JsonKey(name: "bank_certificate") required String bankCertificate,
    @JsonKey(name: "portfolio") required String portfolio,
    @JsonKey(name: "company") required String company,
    @JsonKey(name: "store") required String store,
    @JsonKey(name: "agency") required String agency,
  }) = _FilePathsModel;

  factory FilePathsModel.fromJson(Map<String, dynamic> json) =>
      _$FilePathsModelFromJson(json);
}
