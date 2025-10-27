// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/helpers/aes_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/base/data/data_sources/base_data_source.dart';
import 'package:flutter_tdd/features/base/data/models/delegation_token_model/delegation_token_model.dart';
import 'package:flutter_tdd/features/base/data/models/draft_stars_response_model/draft_stars_response_model.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/data/models/portfolio_model/portfolio_model.dart';
import 'package:flutter_tdd/features/base/domain/enities/add_feedback_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/attachment_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/delete_profile_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/draft_stars_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/services_campaign_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/update_star_details_params.dart';
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart';

import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../auth/data/models/profile_agency_model/profile_agency_model.dart';
import '../../../base/data/models/agent_company_model/agent_company_model.dart';

import '../../domain/enities/agent_id_params.dart';
import '../../domain/enities/get_influencers_params.dart';
import '../models/agent_with_services_model/agent_with_services_model.dart';
import '../models/audience_insight_model/audience_insight_model.dart';
import '../models/collaborations_model/collaborations_model.dart';
import '../models/star_home_model/star_home_model.dart';
import '../models/star_info_model/star_info_model.dart';
import '../models/star_stores_model/star_stores_model.dart';
import '../models/stars_list_model/stars_list_response_model.dart';
import '../models/store_product_model/store_product_model.dart';

@Injectable(as: BaseRepository)
class ImplBaseRepository extends BaseRepository with ModelToDomainResult {
  final dataSource = getIt.get<BaseDataSource>();

  @override
  Future<MyResult<UserModel>> getUser(bool param) async {
    var result = await dataSource.getUser(param);
    var dec = await AesService.instance.decrypt(result.data.toString());
    return MyResult.isSuccess(UserModel.fromJson(dec));
  }

  @override
  Future<MyResult<bool>> setDeleteProfile(DeleteProfileParams params) async {
    return await dataSource.setDeleteProfile(params);
  }

  @override
  Future<MyResult<bool>> setAddFeedback(AddFeedbackParams params) async {
    return await dataSource.setAddFeedback(params);
  }

  @override
  Future<MyResult<StarHomeModel>> getInfluencers(
      GetInfluencersParams params) async {
    var result = await dataSource.getInfluencers(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      log("===============> ${jsonEncode(dec)}");
      return MyResult.isSuccess(StarHomeModel.fromJson(dec));
    } else {
      return MyResult.isSuccess(
        StarHomeModel(
          agents: [],
          path: '',
          userCount: 0,
        ),
      );
    }
  }

  @override
  Future<MyResult<StarInfoModel>> getInfluencerInfo(
      AgentIdParams params) async {
    var result = await dataSource.getInfluencerInfo(params);
    var dec = JwtDecoder.decode(result.data.toString());
    log("===============> $dec");
    return MyResult.isSuccess(StarInfoModel.fromJson(dec));
  }

  @override
  Future<MyResult<StarStoresModel>> getAgentStores(AgentIdParams params) async {
    var result = await dataSource.getAgentStores(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      return MyResult.isSuccess(StarStoresModel.fromJson(dec));
    } else {
      // return MyResult.isError(BaseError.unknown(msg: result.data.toString()));
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<StoreProductModel>> getAgentProducts(
      AgentIdParams params) async {
    var result = await dataSource.getAgentProducts(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      return MyResult.isSuccess(StoreProductModel.fromJson(dec));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<StarStoresModel>> getAgentYoutube(
      AgentIdParams params) async {
    var result = await dataSource.getAgentYoutube(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      return MyResult.isSuccess(StarStoresModel.fromJson(dec));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<AgentCompanyModel>> getAgentWorkWith(
      AgentIdParams params, int? campaignID) async {
    var result = await dataSource.getAgentWorkWith(params, campaignID);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      return MyResult.isSuccess(AgentCompanyModel.fromJson(dec));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<CollaborationsModel>> getAgentCollaborations(
      AgentIdParams params) async {
    var result = await dataSource.getAgentCollaborations(params);

    // Debug logging
    print('🔍 Repository Debug - getAgentCollaborations:');
    print('📊 DataSource result: ${result.data?.status}');
    print('📋 Raw data: ${result.data?.data}');
    print('🔍 Raw data TYPE: ${result.data?.data.runtimeType}');
    print('🔍 Full JSON structure: ${jsonEncode(result.data?.data)}');

    if (result.data?.status == true) {
      try {
        // The issue: We need to parse the inner data, not the full response
        // Create the CollaborationsModel manually from the API response structure
        var collaborationsModel = CollaborationsModel(
          status: result.data!.status,
          message: result.data!.message,
          data: result.data!.data != null
              ? CollaborationsDataModel.fromJson(result.data!.data)
              : null,
        );

        print(
            '✅ Successfully created CollaborationsModel: $collaborationsModel');

        // Check if the parsed model has actual data
        if (collaborationsModel.data == null) {
          print(
              '⚠️ Warning: API returned success but CollaborationsModel.data is null');
          print(
              '📋 This might indicate no collaborations available for this agent');
        } else {
          print(
              '🎉 CollaborationsModel.data is NOT null - has collaboration data!');
        }

        return MyResult.isSuccess(collaborationsModel);
      } catch (e) {
        print('❌ Error parsing CollaborationsModel: $e');
        print('🔍 Raw data structure: ${result.data!.data.runtimeType}');
        return MyResult.isError(BaseError.unknown());
      }
    } else {
      print('❌ API status is not true: ${result.data?.status}');
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<AgentCompanyModel>> getAgentPartners(
      AgentIdParams params) async {
    var result = await dataSource.getAgentPartners(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      return MyResult.isSuccess(AgentCompanyModel.fromJson(dec));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<PortfolioModel>> getAgentPortfolio(
      AgentIdParams params) async {
    var result = await dataSource.getAgentPortfolio(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data!.data.toString());
      return MyResult.isSuccess(PortfolioModel.fromJson(dec));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<List<ProfileAgencyModel>>> getAgentAgency(
      AgentIdParams params) async {
    var result = await dataSource.getAgentAgency(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data?.data ?? '');
      log("==> ${dec['data']}");
      if (dec['data'] == null) {
        return MyResult.isError(BaseError.unknown());
      } else {
        var data = List<ProfileAgencyModel>.from(dec['data']
            .map((e) => ProfileAgencyModel.fromJson(e as Map<String, dynamic>))
            .toList());
        return MyResult.isSuccess(data);
      }
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }


  /// no Jwt decode
  @override
  Future<MyResult<AgentWithServicesModel>> getInfServicesStars(
      GetInfluencersParams params) async {
    var result = await dataSource.getInfServicesStars(params);
    if (result.data?.status == true) {
      return MyResult.isSuccess(
          AgentWithServicesModel.fromJson(result.data!.data));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  @override
  Future<MyResult<AudienceInsightModel>> getAudienceInsights(
      AgentIdParams params) async {
    var result = await dataSource.getAudienceInsights(params);
    if (result.data?.status == true) {
      return MyResult.isSuccess(
          AudienceInsightModel.fromJson(result.data!.data));
    } else {
      return MyResult.isError(BaseError.unknown());
    }
  }

  /// no Jwt decode
  @override
  Future<MyResult<String>> uploadAttachment(AttachmentParams params) async {
    return await dataSource.uploadAttachment(params);
  }

  /// no Jwt decode
  @override
  Future<MyResult<String>> createCampaign(ServicesCampaignParams params) async {
    return await dataSource.createCampaign(params);
  }

  /// no Jwt decode
  @override
  Future<MyResult<String>> addStarsToCamp(
      int campaignId, ServicesCampaignParams params) async {
    return await dataSource.addStarsToCamp(campaignId, params);
  }


  /// no Jwt decode
  // @override
  // Future<MyResult<bool>> removeFromFavorites(AgentIdParams params) async {
  //   return await dataSource.removeFromFavorites(params);
  // }

  /// no Jwt decode
  @override
  Future<MyResult<bool>> updateStarDetails(
      UpdateStarDetailsParams params) async {
    return await dataSource.updateStarDetails(params);
  }

  @override
  Future<MyResult<bool>> agentPricingRequest(int starId) async {
    return await dataSource.agentPricingRequest(starId);
  }

  @override
  Future<MyResult<List<MemberClientDelegationModel>>> getProfileDelegations(
      {String? userId}) async {
    return await dataSource.getProfileDelegations(userId: userId);
  }

  @override
  Future<MyResult<DelegationTokenModel>> getProfileDelegationToken(
      int delegationId) async {
    return await dataSource.getProfileDelegationToken(delegationId);
  }

  /// no Jwt decode
  @override
  Future<MyResult<DraftStarsResponseModel>> draftStars(
      DraftStarsParams params) async {
    return await dataSource.draftStars(params);
  }

  @override
  Future<MyResult<StarsListResponseModel>> getStarListBasedOnFilter(
      String params) async {
    return await dataSource.getStarListBasedOnFilter(params);
  }

  @override
  Future<MyResult<bool>> viewAgentProfile(int id) async {
    return await dataSource.viewAgentProfile(id);
  }

  @override
  Future<MyResult<StarHomeModel>> getViewedInfluencers(
      GetInfluencersParams params) async {
    var result = await dataSource.getViewedInfluencers(params);
    if (result.data?.status == true) {
      var dec = JwtDecoder.decode(result.data.toString());
      log("===============> ${jsonEncode(dec)}");
      return MyResult.isSuccess(StarHomeModel.fromJson(dec));
    } else {
      return MyResult.isSuccess(
        StarHomeModel(
          agents: [],
          path: '',
          userCount: 0,
        ),
      );
    }
  }
}
