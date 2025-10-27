import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel with _$ImageModel{
  const ImageModel._();
  @JsonSerializable(explicitToJson: true)
  factory ImageModel({
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "file_name") String? fileName,
  }) = _ImageModel;


  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);


  String get starImage => path + (fileName??"");
}