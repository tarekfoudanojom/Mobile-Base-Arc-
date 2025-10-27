import 'package:flutter_tdd/features/base/data/models/portfolio_item_model/portfolio_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';
part 'portfolio_model.g.dart';

@freezed
class PortfolioModel with _$PortfolioModel{
  const PortfolioModel._();
  @JsonSerializable(explicitToJson: true)
  factory PortfolioModel({
    @JsonKey(name: "portfolio") List<PortfolioItemModel>? portfolio,
    @JsonKey(name: "count") dynamic count,
    @JsonKey(name: "pages_count") int? pagesCount,
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "company_path") String? companyPath,
  }) = _PortfolioModel;


  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}