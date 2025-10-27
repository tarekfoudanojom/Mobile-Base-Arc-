import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/base/data/models/delegation_token_model/delegation_token_model.dart';
import 'package:flutter_tdd/features/base/data/models/draft_stars_response_model/draft_stars_response_model.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/domain/enities/add_feedback_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/attachment_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/delete_profile_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/draft_stars_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/services_campaign_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/update_star_details_params.dart';


import '../../../auth/data/models/generic_response_model/generic_response_model.dart';
import '../../domain/enities/agent_id_params.dart';
import '../models/stars_list_model/stars_list_response_model.dart';

abstract class BaseDataSource {
  Future<MyResult<UserModel>> getUser(bool param);

  Future<MyResult<bool>> setDeleteProfile(DeleteProfileParams params);

  Future<MyResult<bool>> setAddFeedback(AddFeedbackParams params);

  Future<MyResult<GenericResponseModel>> getInfluencerInfo(
      AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentStores(AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentProducts(AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentYoutube(AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentWorkWith(
      AgentIdParams params, int? campaignID);

  Future<MyResult<GenericResponseModel>> getAgentCollaborations(
      AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentPartners(AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentPortfolio(
      AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentAgency(AgentIdParams params);

  Future<MyResult<GenericResponseModel>> getAgentServices(AgentIdParams params);


  Future<MyResult<StarsListResponseModel>> getStarListBasedOnFilter(
      String params);

  Future<MyResult<String>> uploadAttachment(AttachmentParams params);

  Future<MyResult<String>> createCampaign(ServicesCampaignParams params);

  Future<MyResult<String>> addStarsToCamp(
      int campaignId, ServicesCampaignParams params);


  // Future<MyResult<bool>> removeFromFavorites(AgentIdParams params);

  Future<MyResult<bool>> updateStarDetails(UpdateStarDetailsParams params);
  Future<MyResult<GenericResponseModel>> getAudienceInsights(
      AgentIdParams params);

  Future<MyResult<bool>> agentPricingRequest(int starId);

  Future<MyResult<List<MemberClientDelegationModel>>> getProfileDelegations(
      {String? userId});

  Future<MyResult<DelegationTokenModel>> getProfileDelegationToken(
      int delegationId);

  Future<MyResult<DraftStarsResponseModel>> draftStars(DraftStarsParams params);
  Future<MyResult<bool>> viewAgentProfile(int id);
}
