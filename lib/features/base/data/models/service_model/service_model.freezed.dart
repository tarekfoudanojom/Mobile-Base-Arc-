// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceDetailsModel _$ServiceDetailsModelFromJson(Map<String, dynamic> json) {
  return _ServiceDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceDetailsModel {
  @JsonKey(name: "service_description")
  String? get serviceDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "service_description")
  set serviceDescription(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_requested")
  bool? get pricingRequested => throw _privateConstructorUsedError;
  @JsonKey(name: "pricing_requested")
  set pricingRequested(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<BrandServiceModel>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  set services(List<BrandServiceModel>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "star_participation")
  StarParticipation? get starParticipation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "star_participation")
  set starParticipation(StarParticipation? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDetailsModelCopyWith<ServiceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailsModelCopyWith<$Res> {
  factory $ServiceDetailsModelCopyWith(
          ServiceDetailsModel value, $Res Function(ServiceDetailsModel) then) =
      _$ServiceDetailsModelCopyWithImpl<$Res, ServiceDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "service_description") String? serviceDescription,
      @JsonKey(name: "pricing_requested") bool? pricingRequested,
      @JsonKey(name: "services") List<BrandServiceModel>? services,
      @JsonKey(name: "star_participation")
      StarParticipation? starParticipation});

  $StarParticipationCopyWith<$Res>? get starParticipation;
}

/// @nodoc
class _$ServiceDetailsModelCopyWithImpl<$Res, $Val extends ServiceDetailsModel>
    implements $ServiceDetailsModelCopyWith<$Res> {
  _$ServiceDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceDescription = freezed,
    Object? pricingRequested = freezed,
    Object? services = freezed,
    Object? starParticipation = freezed,
  }) {
    return _then(_value.copyWith(
      serviceDescription: freezed == serviceDescription
          ? _value.serviceDescription
          : serviceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingRequested: freezed == pricingRequested
          ? _value.pricingRequested
          : pricingRequested // ignore: cast_nullable_to_non_nullable
              as bool?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BrandServiceModel>?,
      starParticipation: freezed == starParticipation
          ? _value.starParticipation
          : starParticipation // ignore: cast_nullable_to_non_nullable
              as StarParticipation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StarParticipationCopyWith<$Res>? get starParticipation {
    if (_value.starParticipation == null) {
      return null;
    }

    return $StarParticipationCopyWith<$Res>(_value.starParticipation!, (value) {
      return _then(_value.copyWith(starParticipation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceDetailsModelImplCopyWith<$Res>
    implements $ServiceDetailsModelCopyWith<$Res> {
  factory _$$ServiceDetailsModelImplCopyWith(_$ServiceDetailsModelImpl value,
          $Res Function(_$ServiceDetailsModelImpl) then) =
      __$$ServiceDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "service_description") String? serviceDescription,
      @JsonKey(name: "pricing_requested") bool? pricingRequested,
      @JsonKey(name: "services") List<BrandServiceModel>? services,
      @JsonKey(name: "star_participation")
      StarParticipation? starParticipation});

  @override
  $StarParticipationCopyWith<$Res>? get starParticipation;
}

/// @nodoc
class __$$ServiceDetailsModelImplCopyWithImpl<$Res>
    extends _$ServiceDetailsModelCopyWithImpl<$Res, _$ServiceDetailsModelImpl>
    implements _$$ServiceDetailsModelImplCopyWith<$Res> {
  __$$ServiceDetailsModelImplCopyWithImpl(_$ServiceDetailsModelImpl _value,
      $Res Function(_$ServiceDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceDescription = freezed,
    Object? pricingRequested = freezed,
    Object? services = freezed,
    Object? starParticipation = freezed,
  }) {
    return _then(_$ServiceDetailsModelImpl(
      serviceDescription: freezed == serviceDescription
          ? _value.serviceDescription
          : serviceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pricingRequested: freezed == pricingRequested
          ? _value.pricingRequested
          : pricingRequested // ignore: cast_nullable_to_non_nullable
              as bool?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<BrandServiceModel>?,
      starParticipation: freezed == starParticipation
          ? _value.starParticipation
          : starParticipation // ignore: cast_nullable_to_non_nullable
              as StarParticipation?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ServiceDetailsModelImpl extends _ServiceDetailsModel {
  _$ServiceDetailsModelImpl(
      {@JsonKey(name: "service_description") this.serviceDescription,
      @JsonKey(name: "pricing_requested") this.pricingRequested,
      @JsonKey(name: "services") this.services,
      @JsonKey(name: "star_participation") this.starParticipation})
      : super._();

  factory _$ServiceDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "service_description")
  String? serviceDescription;
  @override
  @JsonKey(name: "pricing_requested")
  bool? pricingRequested;
  @override
  @JsonKey(name: "services")
  List<BrandServiceModel>? services;
  @override
  @JsonKey(name: "star_participation")
  StarParticipation? starParticipation;

  @override
  String toString() {
    return 'ServiceDetailsModel(serviceDescription: $serviceDescription, pricingRequested: $pricingRequested, services: $services, starParticipation: $starParticipation)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailsModelImplCopyWith<_$ServiceDetailsModelImpl> get copyWith =>
      __$$ServiceDetailsModelImplCopyWithImpl<_$ServiceDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceDetailsModel extends ServiceDetailsModel {
  factory _ServiceDetailsModel(
      {@JsonKey(name: "service_description") String? serviceDescription,
      @JsonKey(name: "pricing_requested") bool? pricingRequested,
      @JsonKey(name: "services") List<BrandServiceModel>? services,
      @JsonKey(name: "star_participation")
      StarParticipation? starParticipation}) = _$ServiceDetailsModelImpl;
  _ServiceDetailsModel._() : super._();

  factory _ServiceDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ServiceDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "service_description")
  String? get serviceDescription;
  @JsonKey(name: "service_description")
  set serviceDescription(String? value);
  @override
  @JsonKey(name: "pricing_requested")
  bool? get pricingRequested;
  @JsonKey(name: "pricing_requested")
  set pricingRequested(bool? value);
  @override
  @JsonKey(name: "services")
  List<BrandServiceModel>? get services;
  @JsonKey(name: "services")
  set services(List<BrandServiceModel>? value);
  @override
  @JsonKey(name: "star_participation")
  StarParticipation? get starParticipation;
  @JsonKey(name: "star_participation")
  set starParticipation(StarParticipation? value);
  @override
  @JsonKey(ignore: true)
  _$$ServiceDetailsModelImplCopyWith<_$ServiceDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StarParticipation _$StarParticipationFromJson(Map<String, dynamic> json) {
  return _StarParticipation.fromJson(json);
}

/// @nodoc
mixin _$StarParticipation {
  @JsonKey(name: "summary")
  ParticipationSummary? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: "summary")
  set summary(ParticipationSummary? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "campaigns")
  ParticipationCampaigns? get campaigns => throw _privateConstructorUsedError;
  @JsonKey(name: "campaigns")
  set campaigns(ParticipationCampaigns? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarParticipationCopyWith<StarParticipation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarParticipationCopyWith<$Res> {
  factory $StarParticipationCopyWith(
          StarParticipation value, $Res Function(StarParticipation) then) =
      _$StarParticipationCopyWithImpl<$Res, StarParticipation>;
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ParticipationSummary? summary,
      @JsonKey(name: "campaigns") ParticipationCampaigns? campaigns});

  $ParticipationSummaryCopyWith<$Res>? get summary;
  $ParticipationCampaignsCopyWith<$Res>? get campaigns;
}

/// @nodoc
class _$StarParticipationCopyWithImpl<$Res, $Val extends StarParticipation>
    implements $StarParticipationCopyWith<$Res> {
  _$StarParticipationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? campaigns = freezed,
  }) {
    return _then(_value.copyWith(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ParticipationSummary?,
      campaigns: freezed == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as ParticipationCampaigns?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipationSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $ParticipationSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipationCampaignsCopyWith<$Res>? get campaigns {
    if (_value.campaigns == null) {
      return null;
    }

    return $ParticipationCampaignsCopyWith<$Res>(_value.campaigns!, (value) {
      return _then(_value.copyWith(campaigns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StarParticipationImplCopyWith<$Res>
    implements $StarParticipationCopyWith<$Res> {
  factory _$$StarParticipationImplCopyWith(_$StarParticipationImpl value,
          $Res Function(_$StarParticipationImpl) then) =
      __$$StarParticipationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "summary") ParticipationSummary? summary,
      @JsonKey(name: "campaigns") ParticipationCampaigns? campaigns});

  @override
  $ParticipationSummaryCopyWith<$Res>? get summary;
  @override
  $ParticipationCampaignsCopyWith<$Res>? get campaigns;
}

/// @nodoc
class __$$StarParticipationImplCopyWithImpl<$Res>
    extends _$StarParticipationCopyWithImpl<$Res, _$StarParticipationImpl>
    implements _$$StarParticipationImplCopyWith<$Res> {
  __$$StarParticipationImplCopyWithImpl(_$StarParticipationImpl _value,
      $Res Function(_$StarParticipationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? campaigns = freezed,
  }) {
    return _then(_$StarParticipationImpl(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ParticipationSummary?,
      campaigns: freezed == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as ParticipationCampaigns?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StarParticipationImpl extends _StarParticipation {
  _$StarParticipationImpl(
      {@JsonKey(name: "summary") this.summary,
      @JsonKey(name: "campaigns") this.campaigns})
      : super._();

  factory _$StarParticipationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarParticipationImplFromJson(json);

  @override
  @JsonKey(name: "summary")
  ParticipationSummary? summary;
  @override
  @JsonKey(name: "campaigns")
  ParticipationCampaigns? campaigns;

  @override
  String toString() {
    return 'StarParticipation(summary: $summary, campaigns: $campaigns)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StarParticipationImplCopyWith<_$StarParticipationImpl> get copyWith =>
      __$$StarParticipationImplCopyWithImpl<_$StarParticipationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarParticipationImplToJson(
      this,
    );
  }
}

abstract class _StarParticipation extends StarParticipation {
  factory _StarParticipation(
          {@JsonKey(name: "summary") ParticipationSummary? summary,
          @JsonKey(name: "campaigns") ParticipationCampaigns? campaigns}) =
      _$StarParticipationImpl;
  _StarParticipation._() : super._();

  factory _StarParticipation.fromJson(Map<String, dynamic> json) =
      _$StarParticipationImpl.fromJson;

  @override
  @JsonKey(name: "summary")
  ParticipationSummary? get summary;
  @JsonKey(name: "summary")
  set summary(ParticipationSummary? value);
  @override
  @JsonKey(name: "campaigns")
  ParticipationCampaigns? get campaigns;
  @JsonKey(name: "campaigns")
  set campaigns(ParticipationCampaigns? value);
  @override
  @JsonKey(ignore: true)
  _$$StarParticipationImplCopyWith<_$StarParticipationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParticipationSummary _$ParticipationSummaryFromJson(Map<String, dynamic> json) {
  return _ParticipationSummary.fromJson(json);
}

/// @nodoc
mixin _$ParticipationSummary {
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  set total(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "paid")
  int? get paid => throw _privateConstructorUsedError;
  @JsonKey(name: "paid")
  set paid(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "drafted")
  int? get drafted => throw _privateConstructorUsedError;
  @JsonKey(name: "drafted")
  set drafted(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipationSummaryCopyWith<ParticipationSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationSummaryCopyWith<$Res> {
  factory $ParticipationSummaryCopyWith(ParticipationSummary value,
          $Res Function(ParticipationSummary) then) =
      _$ParticipationSummaryCopyWithImpl<$Res, ParticipationSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "paid") int? paid,
      @JsonKey(name: "drafted") int? drafted});
}

/// @nodoc
class _$ParticipationSummaryCopyWithImpl<$Res,
        $Val extends ParticipationSummary>
    implements $ParticipationSummaryCopyWith<$Res> {
  _$ParticipationSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? paid = freezed,
    Object? drafted = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      drafted: freezed == drafted
          ? _value.drafted
          : drafted // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipationSummaryImplCopyWith<$Res>
    implements $ParticipationSummaryCopyWith<$Res> {
  factory _$$ParticipationSummaryImplCopyWith(_$ParticipationSummaryImpl value,
          $Res Function(_$ParticipationSummaryImpl) then) =
      __$$ParticipationSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "paid") int? paid,
      @JsonKey(name: "drafted") int? drafted});
}

/// @nodoc
class __$$ParticipationSummaryImplCopyWithImpl<$Res>
    extends _$ParticipationSummaryCopyWithImpl<$Res, _$ParticipationSummaryImpl>
    implements _$$ParticipationSummaryImplCopyWith<$Res> {
  __$$ParticipationSummaryImplCopyWithImpl(_$ParticipationSummaryImpl _value,
      $Res Function(_$ParticipationSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? paid = freezed,
    Object? drafted = freezed,
  }) {
    return _then(_$ParticipationSummaryImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as int?,
      drafted: freezed == drafted
          ? _value.drafted
          : drafted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ParticipationSummaryImpl extends _ParticipationSummary {
  _$ParticipationSummaryImpl(
      {@JsonKey(name: "total") this.total,
      @JsonKey(name: "paid") this.paid,
      @JsonKey(name: "drafted") this.drafted})
      : super._();

  factory _$ParticipationSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipationSummaryImplFromJson(json);

  @override
  @JsonKey(name: "total")
  int? total;
  @override
  @JsonKey(name: "paid")
  int? paid;
  @override
  @JsonKey(name: "drafted")
  int? drafted;

  @override
  String toString() {
    return 'ParticipationSummary(total: $total, paid: $paid, drafted: $drafted)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipationSummaryImplCopyWith<_$ParticipationSummaryImpl>
      get copyWith =>
          __$$ParticipationSummaryImplCopyWithImpl<_$ParticipationSummaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipationSummaryImplToJson(
      this,
    );
  }
}

abstract class _ParticipationSummary extends ParticipationSummary {
  factory _ParticipationSummary(
      {@JsonKey(name: "total") int? total,
      @JsonKey(name: "paid") int? paid,
      @JsonKey(name: "drafted") int? drafted}) = _$ParticipationSummaryImpl;
  _ParticipationSummary._() : super._();

  factory _ParticipationSummary.fromJson(Map<String, dynamic> json) =
      _$ParticipationSummaryImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int? get total;
  @JsonKey(name: "total")
  set total(int? value);
  @override
  @JsonKey(name: "paid")
  int? get paid;
  @JsonKey(name: "paid")
  set paid(int? value);
  @override
  @JsonKey(name: "drafted")
  int? get drafted;
  @JsonKey(name: "drafted")
  set drafted(int? value);
  @override
  @JsonKey(ignore: true)
  _$$ParticipationSummaryImplCopyWith<_$ParticipationSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ParticipationCampaigns _$ParticipationCampaignsFromJson(
    Map<String, dynamic> json) {
  return _ParticipationCampaigns.fromJson(json);
}

/// @nodoc
mixin _$ParticipationCampaigns {
  @JsonKey(name: "paid")
  List<int>? get paid => throw _privateConstructorUsedError;
  @JsonKey(name: "paid")
  set paid(List<int>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "drafted")
  List<int>? get drafted => throw _privateConstructorUsedError;
  @JsonKey(name: "drafted")
  set drafted(List<int>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipationCampaignsCopyWith<ParticipationCampaigns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationCampaignsCopyWith<$Res> {
  factory $ParticipationCampaignsCopyWith(ParticipationCampaigns value,
          $Res Function(ParticipationCampaigns) then) =
      _$ParticipationCampaignsCopyWithImpl<$Res, ParticipationCampaigns>;
  @useResult
  $Res call(
      {@JsonKey(name: "paid") List<int>? paid,
      @JsonKey(name: "drafted") List<int>? drafted});
}

/// @nodoc
class _$ParticipationCampaignsCopyWithImpl<$Res,
        $Val extends ParticipationCampaigns>
    implements $ParticipationCampaignsCopyWith<$Res> {
  _$ParticipationCampaignsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paid = freezed,
    Object? drafted = freezed,
  }) {
    return _then(_value.copyWith(
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      drafted: freezed == drafted
          ? _value.drafted
          : drafted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipationCampaignsImplCopyWith<$Res>
    implements $ParticipationCampaignsCopyWith<$Res> {
  factory _$$ParticipationCampaignsImplCopyWith(
          _$ParticipationCampaignsImpl value,
          $Res Function(_$ParticipationCampaignsImpl) then) =
      __$$ParticipationCampaignsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "paid") List<int>? paid,
      @JsonKey(name: "drafted") List<int>? drafted});
}

/// @nodoc
class __$$ParticipationCampaignsImplCopyWithImpl<$Res>
    extends _$ParticipationCampaignsCopyWithImpl<$Res,
        _$ParticipationCampaignsImpl>
    implements _$$ParticipationCampaignsImplCopyWith<$Res> {
  __$$ParticipationCampaignsImplCopyWithImpl(
      _$ParticipationCampaignsImpl _value,
      $Res Function(_$ParticipationCampaignsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paid = freezed,
    Object? drafted = freezed,
  }) {
    return _then(_$ParticipationCampaignsImpl(
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      drafted: freezed == drafted
          ? _value.drafted
          : drafted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ParticipationCampaignsImpl extends _ParticipationCampaigns {
  _$ParticipationCampaignsImpl(
      {@JsonKey(name: "paid") this.paid,
      @JsonKey(name: "drafted") this.drafted})
      : super._();

  factory _$ParticipationCampaignsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipationCampaignsImplFromJson(json);

  @override
  @JsonKey(name: "paid")
  List<int>? paid;
  @override
  @JsonKey(name: "drafted")
  List<int>? drafted;

  @override
  String toString() {
    return 'ParticipationCampaigns(paid: $paid, drafted: $drafted)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipationCampaignsImplCopyWith<_$ParticipationCampaignsImpl>
      get copyWith => __$$ParticipationCampaignsImplCopyWithImpl<
          _$ParticipationCampaignsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipationCampaignsImplToJson(
      this,
    );
  }
}

abstract class _ParticipationCampaigns extends ParticipationCampaigns {
  factory _ParticipationCampaigns(
          {@JsonKey(name: "paid") List<int>? paid,
          @JsonKey(name: "drafted") List<int>? drafted}) =
      _$ParticipationCampaignsImpl;
  _ParticipationCampaigns._() : super._();

  factory _ParticipationCampaigns.fromJson(Map<String, dynamic> json) =
      _$ParticipationCampaignsImpl.fromJson;

  @override
  @JsonKey(name: "paid")
  List<int>? get paid;
  @JsonKey(name: "paid")
  set paid(List<int>? value);
  @override
  @JsonKey(name: "drafted")
  List<int>? get drafted;
  @JsonKey(name: "drafted")
  set drafted(List<int>? value);
  @override
  @JsonKey(ignore: true)
  _$$ParticipationCampaignsImplCopyWith<_$ParticipationCampaignsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandServiceModel _$BrandServiceModelFromJson(Map<String, dynamic> json) {
  return Brand_ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$BrandServiceModel {
  int? get platformId => throw _privateConstructorUsedError;
  set platformId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_type_id")
  int? get socialPlatformTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_type_id")
  set socialPlatformTypeId(int? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  set filename(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "filename_gray")
  String? get filenameGray => throw _privateConstructorUsedError;
  @JsonKey(name: "filename_gray")
  set filenameGray(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "web_url")
  String? get webUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "web_url")
  set webUrl(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  set nameAr(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  set price(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "service_id")
  int? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "service_id")
  set serviceId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_id")
  int? get servicePlatformId => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_id")
  set servicePlatformId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  num? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  set followers(num? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get platformUserName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  set platformUserName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "ar_option_name")
  String? get arOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "ar_option_name")
  set arOptionName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "en_option_name")
  String? get enOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: "en_option_name")
  set enOptionName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_rate")
  double? get discountRate => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_rate")
  set discountRate(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_option_id")
  int? get socialPlatformOptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "social_platform_option_id")
  set socialPlatformOptionId(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "public_status", defaultValue: 1)
  num? get publicStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "public_status", defaultValue: 1)
  set publicStatus(num? value) => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  set selected(bool value) => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  set quantity(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandServiceModelCopyWith<BrandServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandServiceModelCopyWith<$Res> {
  factory $BrandServiceModelCopyWith(
          BrandServiceModel value, $Res Function(BrandServiceModel) then) =
      _$BrandServiceModelCopyWithImpl<$Res, BrandServiceModel>;
  @useResult
  $Res call(
      {int? platformId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "social_platform_type_id") int? socialPlatformTypeId,
      String name,
      String? filename,
      @JsonKey(name: "filename_gray") String? filenameGray,
      @JsonKey(name: "web_url") String? webUrl,
      String? status,
      @JsonKey(name: "name_ar") String nameAr,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "service_id") int? serviceId,
      @JsonKey(name: "social_platform_id") int? servicePlatformId,
      @JsonKey(name: "followers") num? followers,
      @JsonKey(name: "username") String? platformUserName,
      @JsonKey(name: "ar_option_name") String? arOptionName,
      @JsonKey(name: "en_option_name") String? enOptionName,
      @JsonKey(name: "discount_rate") double? discountRate,
      @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
      @JsonKey(name: "public_status", defaultValue: 1) num? publicStatus,
      bool selected,
      int quantity});
}

/// @nodoc
class _$BrandServiceModelCopyWithImpl<$Res, $Val extends BrandServiceModel>
    implements $BrandServiceModelCopyWith<$Res> {
  _$BrandServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platformId = freezed,
    Object? id = freezed,
    Object? socialPlatformTypeId = freezed,
    Object? name = null,
    Object? filename = freezed,
    Object? filenameGray = freezed,
    Object? webUrl = freezed,
    Object? status = freezed,
    Object? nameAr = null,
    Object? price = null,
    Object? serviceId = freezed,
    Object? servicePlatformId = freezed,
    Object? followers = freezed,
    Object? platformUserName = freezed,
    Object? arOptionName = freezed,
    Object? enOptionName = freezed,
    Object? discountRate = freezed,
    Object? socialPlatformOptionId = freezed,
    Object? publicStatus = freezed,
    Object? selected = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      platformId: freezed == platformId
          ? _value.platformId
          : platformId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      socialPlatformTypeId: freezed == socialPlatformTypeId
          ? _value.socialPlatformTypeId
          : socialPlatformTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filenameGray: freezed == filenameGray
          ? _value.filenameGray
          : filenameGray // ignore: cast_nullable_to_non_nullable
              as String?,
      webUrl: freezed == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePlatformId: freezed == servicePlatformId
          ? _value.servicePlatformId
          : servicePlatformId // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as num?,
      platformUserName: freezed == platformUserName
          ? _value.platformUserName
          : platformUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      arOptionName: freezed == arOptionName
          ? _value.arOptionName
          : arOptionName // ignore: cast_nullable_to_non_nullable
              as String?,
      enOptionName: freezed == enOptionName
          ? _value.enOptionName
          : enOptionName // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double?,
      socialPlatformOptionId: freezed == socialPlatformOptionId
          ? _value.socialPlatformOptionId
          : socialPlatformOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as num?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Brand_ServiceModelImplCopyWith<$Res>
    implements $BrandServiceModelCopyWith<$Res> {
  factory _$$Brand_ServiceModelImplCopyWith(_$Brand_ServiceModelImpl value,
          $Res Function(_$Brand_ServiceModelImpl) then) =
      __$$Brand_ServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? platformId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "social_platform_type_id") int? socialPlatformTypeId,
      String name,
      String? filename,
      @JsonKey(name: "filename_gray") String? filenameGray,
      @JsonKey(name: "web_url") String? webUrl,
      String? status,
      @JsonKey(name: "name_ar") String nameAr,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "service_id") int? serviceId,
      @JsonKey(name: "social_platform_id") int? servicePlatformId,
      @JsonKey(name: "followers") num? followers,
      @JsonKey(name: "username") String? platformUserName,
      @JsonKey(name: "ar_option_name") String? arOptionName,
      @JsonKey(name: "en_option_name") String? enOptionName,
      @JsonKey(name: "discount_rate") double? discountRate,
      @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
      @JsonKey(name: "public_status", defaultValue: 1) num? publicStatus,
      bool selected,
      int quantity});
}

/// @nodoc
class __$$Brand_ServiceModelImplCopyWithImpl<$Res>
    extends _$BrandServiceModelCopyWithImpl<$Res, _$Brand_ServiceModelImpl>
    implements _$$Brand_ServiceModelImplCopyWith<$Res> {
  __$$Brand_ServiceModelImplCopyWithImpl(_$Brand_ServiceModelImpl _value,
      $Res Function(_$Brand_ServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platformId = freezed,
    Object? id = freezed,
    Object? socialPlatformTypeId = freezed,
    Object? name = null,
    Object? filename = freezed,
    Object? filenameGray = freezed,
    Object? webUrl = freezed,
    Object? status = freezed,
    Object? nameAr = null,
    Object? price = null,
    Object? serviceId = freezed,
    Object? servicePlatformId = freezed,
    Object? followers = freezed,
    Object? platformUserName = freezed,
    Object? arOptionName = freezed,
    Object? enOptionName = freezed,
    Object? discountRate = freezed,
    Object? socialPlatformOptionId = freezed,
    Object? publicStatus = freezed,
    Object? selected = null,
    Object? quantity = null,
  }) {
    return _then(_$Brand_ServiceModelImpl(
      platformId: freezed == platformId
          ? _value.platformId
          : platformId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      socialPlatformTypeId: freezed == socialPlatformTypeId
          ? _value.socialPlatformTypeId
          : socialPlatformTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      filenameGray: freezed == filenameGray
          ? _value.filenameGray
          : filenameGray // ignore: cast_nullable_to_non_nullable
              as String?,
      webUrl: freezed == webUrl
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePlatformId: freezed == servicePlatformId
          ? _value.servicePlatformId
          : servicePlatformId // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as num?,
      platformUserName: freezed == platformUserName
          ? _value.platformUserName
          : platformUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      arOptionName: freezed == arOptionName
          ? _value.arOptionName
          : arOptionName // ignore: cast_nullable_to_non_nullable
              as String?,
      enOptionName: freezed == enOptionName
          ? _value.enOptionName
          : enOptionName // ignore: cast_nullable_to_non_nullable
              as String?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as double?,
      socialPlatformOptionId: freezed == socialPlatformOptionId
          ? _value.socialPlatformOptionId
          : socialPlatformOptionId // ignore: cast_nullable_to_non_nullable
              as int?,
      publicStatus: freezed == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as num?,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$Brand_ServiceModelImpl extends Brand_ServiceModel {
  _$Brand_ServiceModelImpl(
      {this.platformId,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "social_platform_type_id") this.socialPlatformTypeId,
      required this.name,
      this.filename,
      @JsonKey(name: "filename_gray") this.filenameGray,
      @JsonKey(name: "web_url") this.webUrl,
      this.status,
      @JsonKey(name: "name_ar") required this.nameAr,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "service_id") this.serviceId,
      @JsonKey(name: "social_platform_id") this.servicePlatformId,
      @JsonKey(name: "followers") this.followers,
      @JsonKey(name: "username") this.platformUserName,
      @JsonKey(name: "ar_option_name") this.arOptionName,
      @JsonKey(name: "en_option_name") this.enOptionName,
      @JsonKey(name: "discount_rate") this.discountRate,
      @JsonKey(name: "social_platform_option_id") this.socialPlatformOptionId,
      @JsonKey(name: "public_status", defaultValue: 1) this.publicStatus,
      this.selected = false,
      this.quantity = 0})
      : super._();

  factory _$Brand_ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Brand_ServiceModelImplFromJson(json);

  @override
  int? platformId;
  @override
  @JsonKey(name: "id")
  int? id;
  @override
  @JsonKey(name: "social_platform_type_id")
  int? socialPlatformTypeId;
  @override
  String name;
  @override
  String? filename;
  @override
  @JsonKey(name: "filename_gray")
  String? filenameGray;
  @override
  @JsonKey(name: "web_url")
  String? webUrl;
  @override
  String? status;
  @override
  @JsonKey(name: "name_ar")
  String nameAr;
  @override
  @JsonKey(name: "price")
  double price;
  @override
  @JsonKey(name: "service_id")
  int? serviceId;
  @override
  @JsonKey(name: "social_platform_id")
  int? servicePlatformId;
  @override
  @JsonKey(name: "followers")
  num? followers;
  @override
  @JsonKey(name: "username")
  String? platformUserName;
  @override
  @JsonKey(name: "ar_option_name")
  String? arOptionName;
  @override
  @JsonKey(name: "en_option_name")
  String? enOptionName;
  @override
  @JsonKey(name: "discount_rate")
  double? discountRate;
  @override
  @JsonKey(name: "social_platform_option_id")
  int? socialPlatformOptionId;
  @override
  @JsonKey(name: "public_status", defaultValue: 1)
  num? publicStatus;
  @override
  @JsonKey()
  bool selected;
  @override
  @JsonKey()
  int quantity;

  @override
  String toString() {
    return 'BrandServiceModel(platformId: $platformId, id: $id, socialPlatformTypeId: $socialPlatformTypeId, name: $name, filename: $filename, filenameGray: $filenameGray, webUrl: $webUrl, status: $status, nameAr: $nameAr, price: $price, serviceId: $serviceId, servicePlatformId: $servicePlatformId, followers: $followers, platformUserName: $platformUserName, arOptionName: $arOptionName, enOptionName: $enOptionName, discountRate: $discountRate, socialPlatformOptionId: $socialPlatformOptionId, publicStatus: $publicStatus, selected: $selected, quantity: $quantity)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Brand_ServiceModelImplCopyWith<_$Brand_ServiceModelImpl> get copyWith =>
      __$$Brand_ServiceModelImplCopyWithImpl<_$Brand_ServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Brand_ServiceModelImplToJson(
      this,
    );
  }
}

abstract class Brand_ServiceModel extends BrandServiceModel {
  factory Brand_ServiceModel(
      {int? platformId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "social_platform_type_id") int? socialPlatformTypeId,
      required String name,
      String? filename,
      @JsonKey(name: "filename_gray") String? filenameGray,
      @JsonKey(name: "web_url") String? webUrl,
      String? status,
      @JsonKey(name: "name_ar") required String nameAr,
      @JsonKey(name: "price") required double price,
      @JsonKey(name: "service_id") int? serviceId,
      @JsonKey(name: "social_platform_id") int? servicePlatformId,
      @JsonKey(name: "followers") num? followers,
      @JsonKey(name: "username") String? platformUserName,
      @JsonKey(name: "ar_option_name") String? arOptionName,
      @JsonKey(name: "en_option_name") String? enOptionName,
      @JsonKey(name: "discount_rate") double? discountRate,
      @JsonKey(name: "social_platform_option_id") int? socialPlatformOptionId,
      @JsonKey(name: "public_status", defaultValue: 1) num? publicStatus,
      bool selected,
      int quantity}) = _$Brand_ServiceModelImpl;
  Brand_ServiceModel._() : super._();

  factory Brand_ServiceModel.fromJson(Map<String, dynamic> json) =
      _$Brand_ServiceModelImpl.fromJson;

  @override
  int? get platformId;
  set platformId(int? value);
  @override
  @JsonKey(name: "id")
  int? get id;
  @JsonKey(name: "id")
  set id(int? value);
  @override
  @JsonKey(name: "social_platform_type_id")
  int? get socialPlatformTypeId;
  @JsonKey(name: "social_platform_type_id")
  set socialPlatformTypeId(int? value);
  @override
  String get name;
  set name(String value);
  @override
  String? get filename;
  set filename(String? value);
  @override
  @JsonKey(name: "filename_gray")
  String? get filenameGray;
  @JsonKey(name: "filename_gray")
  set filenameGray(String? value);
  @override
  @JsonKey(name: "web_url")
  String? get webUrl;
  @JsonKey(name: "web_url")
  set webUrl(String? value);
  @override
  String? get status;
  set status(String? value);
  @override
  @JsonKey(name: "name_ar")
  String get nameAr;
  @JsonKey(name: "name_ar")
  set nameAr(String value);
  @override
  @JsonKey(name: "price")
  double get price;
  @JsonKey(name: "price")
  set price(double value);
  @override
  @JsonKey(name: "service_id")
  int? get serviceId;
  @JsonKey(name: "service_id")
  set serviceId(int? value);
  @override
  @JsonKey(name: "social_platform_id")
  int? get servicePlatformId;
  @JsonKey(name: "social_platform_id")
  set servicePlatformId(int? value);
  @override
  @JsonKey(name: "followers")
  num? get followers;
  @JsonKey(name: "followers")
  set followers(num? value);
  @override
  @JsonKey(name: "username")
  String? get platformUserName;
  @JsonKey(name: "username")
  set platformUserName(String? value);
  @override
  @JsonKey(name: "ar_option_name")
  String? get arOptionName;
  @JsonKey(name: "ar_option_name")
  set arOptionName(String? value);
  @override
  @JsonKey(name: "en_option_name")
  String? get enOptionName;
  @JsonKey(name: "en_option_name")
  set enOptionName(String? value);
  @override
  @JsonKey(name: "discount_rate")
  double? get discountRate;
  @JsonKey(name: "discount_rate")
  set discountRate(double? value);
  @override
  @JsonKey(name: "social_platform_option_id")
  int? get socialPlatformOptionId;
  @JsonKey(name: "social_platform_option_id")
  set socialPlatformOptionId(int? value);
  @override
  @JsonKey(name: "public_status", defaultValue: 1)
  num? get publicStatus;
  @JsonKey(name: "public_status", defaultValue: 1)
  set publicStatus(num? value);
  @override
  bool get selected;
  set selected(bool value);
  @override
  int get quantity;
  set quantity(int value);
  @override
  @JsonKey(ignore: true)
  _$$Brand_ServiceModelImplCopyWith<_$Brand_ServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
