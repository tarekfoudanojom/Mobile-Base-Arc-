import 'package:flutter_tdd/features/base/data/models/agent_store_model/agent_store_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'star_stores_model.freezed.dart';
part 'star_stores_model.g.dart';

@freezed
class StarStoresModel with _$StarStoresModel {
  const StarStoresModel._();
  @JsonSerializable(explicitToJson: true)
  factory StarStoresModel({
    @JsonKey(name: 'data') required List<AgentStoreModel> data,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'pages_count') int? pagesCount,
    @JsonKey(name: 'path') String? path,
  }) = _StarStoresModel;

  factory StarStoresModel.fromJson(Map<String, dynamic> json) =>
      _$StarStoresModelFromJson(json);
}
