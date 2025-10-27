import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/global_imports.dart';
import '../../../../../core/helpers/global_context.dart';

part 'audience_insight_model.freezed.dart';
part 'audience_insight_model.g.dart';

@freezed
class AudienceInsightModel with _$AudienceInsightModel {
  const factory AudienceInsightModel({
    // Metadata? metadata,
    AudienceModel? demographics,
    String? platform,
    // Map<String, PlatformBreakdown>? platformBreakdown,
  }) = _AudienceInsightModel;

  factory AudienceInsightModel.fromJson(Map<String, dynamic> json) =>
      _$AudienceInsightModelFromJson(json);
}

// @freezed
// class Metadata with _$Metadata {
//   const factory Metadata({
//     int? agentId,
//     String? generatedAt,
//     int? totalPlatforms,
//     List<String>? availablePlatforms,
//     DataQuality? dataQuality,
//   }) = _Metadata;
//
//   factory Metadata.fromJson(Map<String, dynamic> json) =>
//       _$MetadataFromJson(json);
// }
//
// @freezed
// class DataQuality with _$DataQuality {
//   const factory DataQuality({
//     int? score,
//     List<String>? issues,
//     Completeness? completeness,
//   }) = _DataQuality;
//
//   factory DataQuality.fromJson(Map<String, dynamic> json) =>
//       _$DataQualityFromJson(json);
// }
//
// @freezed
// class Completeness with _$Completeness {
//   const factory Completeness({
//     bool? gender,
//     bool? age,
//     bool? countries,
//     bool? cities,
//   }) = _Completeness;
//
//   factory Completeness.fromJson(Map<String, dynamic> json) =>
//       _$CompletenessFromJson(json);
// }

// @freezed
// class Demographics with _$Demographics {
//   const factory Demographics({
//     Gender? gender,
//     Age? age,
//   }) = _Demographics;
//
//   factory Demographics.fromJson(Map<String, dynamic> json) =>
//       _$DemographicsFromJson(json);
// }
//
// @freezed
// class Gender with _$Gender {
//   const factory Gender({
//     double? male,
//     double? female,
//   }) = _Gender;
//
//   factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);
// }
//
// @freezed
// class GenderValue with _$GenderValue {
//   const factory GenderValue({
//     String? gender,
//     double? percentage,
//   }) = _GenderValue;
//
//   factory GenderValue.fromJson(Map<String, dynamic> json) =>
//       _$GenderValueFromJson(json);
// }
//
// @freezed
// class Age with _$Age {
//   const factory Age({
//     List<AgeDistribution>? distribution,
//     AgeDistribution? topAgeGroup,
//   }) = _Age;
//
//   factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);
// }
//
// @freezed
// class AgeDistribution with _$AgeDistribution {
//   const factory AgeDistribution({
//     String? ageGroup,
//     double? percentage,
//   }) = _AgeDistribution;
//
//   factory AgeDistribution.fromJson(Map<String, dynamic> json) =>
//       _$AgeDistributionFromJson(json);
//
//
//
// }
//
// @freezed
// class Geography with _$Geography {
//   const factory Geography({
//     CountryDataModel? countries,
//     CityDataModel? cities,
//   }) = _Geography;
//
//   factory Geography.fromJson(Map<String, dynamic> json) =>
//       _$GeographyFromJson(json);
// }
//
// @freezed
// class CountryDataModel with _$CountryDataModel {
//   const factory CountryDataModel({
//     List<CountryCityModel>? data,
//     CountryCityModel? topCountry,
//     int? totalCountries,
//   }) = _CountryDataModel;
//
//   factory CountryDataModel.fromJson(Map<String, dynamic> json) =>
//       _$CountryDataModelFromJson(json);
// }
//
// @freezed
// class CountryCityModel with _$CountryCityModel {
//   const factory CountryCityModel({
//     @JsonKey(name: 'iso_code') String? isoCode,
//     LocalizedName? name,
//     String? city,
//     double? percentage,
//   }) = _CountryCityModel;
//
//   factory CountryCityModel.fromJson(Map<String, dynamic> json) =>
//       _$CountryCityModelFromJson(json);
// }
//
// @freezed
// class CityDataModel with _$CityDataModel {
//   const factory CityDataModel({
//     List<CountryCityModel>? data,
//     CountryCityModel? topCity,
//     int? totalCities,
//   }) = _CityDataModel;
//
//   factory CityDataModel.fromJson(Map<String, dynamic> json) =>
//       _$CityDataModelFromJson(json);
// }
//
// @freezed
// class LocalizedName with _$LocalizedName {
//   LocalizedName._();
//   @JsonSerializable(explicitToJson: true)
//   factory LocalizedName({
//     String? en,
//     String? ar,
//   }) = _LocalizedName;
//
//   factory LocalizedName.fromJson(Map<String, dynamic> json) =>
//       _$LocalizedNameFromJson(json);
//
//   String get getName {
//     BuildContext context = getIt<GlobalContext>().context();
//     String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
//     return context.isArabic ? (ar ?? en ?? "") : (en ?? "");
//   }
// }
//
// @freezed
// class PlatformBreakdown with _$PlatformBreakdown {
//   const factory PlatformBreakdown({
//     String? status,
//     // String? followerCount,
//     bool? hasData,
//     List<String>? dataTypes,
//   }) = _PlatformBreakdown;
//
//   factory PlatformBreakdown.fromJson(Map<String, dynamic> json) =>
//       _$PlatformBreakdownFromJson(json);
// }
