import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/base/data/models/delegation_token_model/delegation_token_model.dart';
import 'package:flutter_tdd/features/base/data/models/draft_stars_response_model/draft_stars_response_model.dart';
import 'package:flutter_tdd/features/base/data/models/member_client_delegation_model/member_client_delegation_model.dart';
import 'package:flutter_tdd/features/base/data/models/star_stores_model/star_stores_model.dart';
import 'package:flutter_tdd/features/base/domain/enities/add_feedback_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/attachment_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/delete_profile_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/draft_stars_params.dart';
import 'package:flutter_tdd/features/base/domain/enities/update_star_details_params.dart';

import '../../../auth/data/models/profile_agency_model/profile_agency_model.dart';
import '../../data/models/agent_company_model/agent_company_model.dart';
import '../../data/models/agent_with_services_model/agent_with_services_model.dart';
import '../../data/models/audience_insight_model/audience_insight_model.dart';
import '../../data/models/collaborations_model/collaborations_model.dart';
import '../../data/models/portfolio_model/portfolio_model.dart';
import '../../data/models/star_home_model/star_home_model.dart';
import '../../data/models/star_info_model/star_info_model.dart';
import '../../data/models/stars_list_model/stars_list_response_model.dart';
import '../../data/models/store_product_model/store_product_model.dart';
import '../enities/agent_id_params.dart';
import '../enities/services_campaign_params.dart';

abstract class BaseRepository {
  Future<MyResult<UserModel>> getUser(bool param);

  Future<MyResult<bool>> setDeleteProfile(DeleteProfileParams params);

  Future<MyResult<bool>> setAddFeedback(AddFeedbackParams params);


  Future<MyResult<StarInfoModel>> getInfluencerInfo(AgentIdParams params);

  Future<MyResult<StarStoresModel>> getAgentStores(AgentIdParams params);

  Future<MyResult<StoreProductModel>> getAgentProducts(AgentIdParams params);

  Future<MyResult<StarStoresModel>> getAgentYoutube(AgentIdParams params);

  Future<MyResult<AgentCompanyModel>> getAgentWorkWith(
      AgentIdParams params, int? campaignID);

  Future<MyResult<CollaborationsModel>> getAgentCollaborations(
      AgentIdParams params);

  Future<MyResult<AgentCompanyModel>> getAgentPartners(AgentIdParams params);

  Future<MyResult<PortfolioModel>> getAgentPortfolio(AgentIdParams params);

  Future<MyResult<List<ProfileAgencyModel>>> getAgentAgency(
      AgentIdParams params);



  Future<MyResult<String>> uploadAttachment(AttachmentParams params);

  Future<MyResult<String>> createCampaign(ServicesCampaignParams params);

  Future<MyResult<String>> addStarsToCamp(
      int campaignId, ServicesCampaignParams params);


  // Future<MyResult<bool>> removeFromFavorites(AgentIdParams params);

  Future<MyResult<bool>> updateStarDetails(UpdateStarDetailsParams params);

  Future<MyResult<AudienceInsightModel>> getAudienceInsights(
      AgentIdParams params);

  Future<MyResult<bool>> agentPricingRequest(int starId);

  Future<MyResult<List<MemberClientDelegationModel>>> getProfileDelegations(
      {String? userId});

  Future<MyResult<DelegationTokenModel>> getProfileDelegationToken(
      int delegationId);

  Future<MyResult<DraftStarsResponseModel>> draftStars(DraftStarsParams params);
  Future<MyResult<StarsListResponseModel>> getStarListBasedOnFilter(
      String params);

  Future<MyResult<bool>> viewAgentProfile(int id);

}
