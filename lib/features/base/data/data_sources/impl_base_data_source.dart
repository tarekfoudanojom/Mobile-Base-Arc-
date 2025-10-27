// ignore_for_file: avoid_dynamic_calls

import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart';
import 'package:flutter_tdd/core/http/models/http_request_model.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/generic_response_model/generic_response_model.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/base/data/models/delegation_token_model/delegation_token_model.dart';
import 'package:flutter_tdd/features/base/data/models/draft_stars_response_model/draft_stars_response_model.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/domain/enities/add_feedback_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/agent_id_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/attachment_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/delete_profile_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/draft_stars_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/services_campaign_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/update_star_details_params.dart';
import 'package:injectable/injectable.dart';

import '../models/stars_list_model/stars_list_response_model.dart';
import 'base_data_source.dart';

@Injectable(as: BaseDataSource)
class ImplBaseDataSource extends BaseDataSource {
  @override
  Future<MyResult<UserModel>> getUser(bool param) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateUser,
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      refresh: param,
      toJsonFunc: (json) => UserModel.fromJson(json),
    );
    return await GenericHttpImpl<UserModel>()(model);
  }

  @override
  Future<MyResult<bool>> setDeleteProfile(DeleteProfileParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.deleteProfile,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: requestBody,
      showLoader: false,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<bool>> setAddFeedback(AddFeedbackParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.addFeedback,
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      requestBody: requestBody,
      showLoader: true,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }


  @override
  Future<MyResult<GenericResponseModel>> getInfluencerInfo(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentProfileInfo,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showLoader: false,
      refresh: params.refresh,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentStores(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentStore,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      refresh: true,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentProducts(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentProducts,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentYoutube(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentYoutube,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentWorkWith(
      AgentIdParams params, int? campaignId) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentCompanies(campaignId),
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentCollaborations(
      AgentIdParams params) async {
    // Build query parameters for GET request
    String url =
        "${ApiNames.getAgentCollaborations}/${params.agentId}/collaborations";
    Map<String, dynamic> queryParams = params.toJson();
    // agent id is in the path; avoid duplicating it in query
    queryParams.remove('agent_profile_id');

    if (queryParams.isNotEmpty) {
      String queryString =
          queryParams.entries.map((e) => "${e.key}=${e.value}").join("&");
      url += "?$queryString";
    }

    HttpRequestModel model = HttpRequestModel(
      url: url,
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentPartners(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentPartners,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentPortfolio(
      AgentIdParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getAgentPortfolio,
      requestBody: requestBody,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentAgency(
      AgentIdParams params) async {
    // Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: "${ApiNames.getAgentAgency}/${params.agentId}",
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAgentServices(
      AgentIdParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: "${ApiNames.getServices}/${params.agentId}",
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
      showLoader: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }


  @override
  Future<MyResult<StarsListResponseModel>> getStarListBasedOnFilter(
      String params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getCampaignAgentsWithParams(params),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => StarsListResponseModel.fromJson(json),
      showErrorMsg: false,
    );
    return await GenericHttpImpl<StarsListResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> viewAgentProfile(int id) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.viewAgentProfile(id),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      showErrorMsg: false,
      showLoader: false,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<String>> uploadAttachment(AttachmentParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.uploadAttachment,
      requestMethod: RequestMethod.post,
      requestBody: requestBody,
      responseType: ResType.type,
      showErrorMsg: false,
      showLoader: true,
      responseKey: (data) => data['data']['url'],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<String>> createCampaign(ServicesCampaignParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.createCampaign,
      requestMethod: RequestMethod.post,
      requestBody: requestBody,
      responseType: ResType.type,
      showErrorMsg: false,
      showLoader: false,
      responseKey: (data) => data['data']['intent_id'],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<String>> addStarsToCamp(
      int campaignId, ServicesCampaignParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: "${ApiNames.createCampaign}/$campaignId/stars",
      requestMethod: RequestMethod.post,
      requestBody: requestBody,
      responseType: ResType.type,
      showErrorMsg: false,
      showLoader: false,
      responseKey: (data) => data['data']['intent_id'],
    );
    return await GenericHttpImpl<String>()(model);
  }

  @override
  Future<MyResult<bool>> updateStarDetails(
      UpdateStarDetailsParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.updateStarData + params.urlHeader,
      requestMethod: RequestMethod.patch,
      requestBody: params.toJson(),
      responseType: ResType.type,
      showErrorMsg: false,
      showLoader: false,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<GenericResponseModel>> getAudienceInsights(
      AgentIdParams params) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.agentAudienceInsights(params.agentId, params.platformId),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showErrorMsg: false,
    );
    return await GenericHttpImpl<GenericResponseModel>()(model);
  }

  @override
  Future<MyResult<bool>> agentPricingRequest(int starId) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.agentPricingRequest(starId),
      requestMethod: RequestMethod.post,
      responseType: ResType.type,
      toJsonFunc: (json) => GenericResponseModel.fromJson(json),
      showLoader: true,
      responseKey: (data) => data['status'],
    );
    return await GenericHttpImpl<bool>()(model);
  }

  @override
  Future<MyResult<List<MemberClientDelegationModel>>> getProfileDelegations(
      {String? userId}) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProfileDelegations +
          (userId != null ? '?user_id=$userId' : ''),
      requestMethod: RequestMethod.get,
      responseType: ResType.list,
      showLoader: false,
      showErrorMsg: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (data) {
        return List<MemberClientDelegationModel>.from(
            data.map((e) => MemberClientDelegationModel.fromJson(e)));
      },
    );
    return await GenericHttpImpl<List<MemberClientDelegationModel>>()(model);
  }

  @override
  Future<MyResult<DelegationTokenModel>> getProfileDelegationToken(
      int delegationId) async {
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.getProfileDelegationToken(delegationId),
      requestMethod: RequestMethod.get,
      responseType: ResType.model,
      showLoader: false,
      showErrorMsg: false,
      responseKey: (data) => data['data'],
      toJsonFunc: (json) => DelegationTokenModel.fromJson(json),
    );
    return await GenericHttpImpl<DelegationTokenModel>()(model);
  }

  @override
  Future<MyResult<DraftStarsResponseModel>> draftStars(
      DraftStarsParams params) async {
    Map<String, dynamic>? requestBody = params.toJson();
    HttpRequestModel model = HttpRequestModel(
      url: ApiNames.draftStars,
      requestMethod: RequestMethod.post,
      responseType: ResType.model,
      requestBody: requestBody,
      showErrorMsg: false,
      showLoader: params.showLoadingDialog,
      toJsonFunc: (json) => DraftStarsResponseModel.fromJson(json),
    );
    return await GenericHttpImpl<DraftStarsResponseModel>()(model);
  }
}
