import 'package:flutter_tdd/core/constants/app_config.dart';

class ApiNames {
  static String baseUrl = AppConfig.instance.baseUrl;
  static String socketUrl = AppConfig.instance.socketUrl;
  static String gigBaseUrl = AppConfig.instance.gigBaseUrl;

  // auth routes
  static const String login = "login";
  static const String loginOrSignupByPhone = "loginOrSignupByPhone";
  static const String profileInfo = "get_profile_info";
  static const String refreshToken = "auth";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";
  static const String register = "auth/create_account";
  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "forgetPassword";
  static const String resetPassword = "resetPassword";
  static const String verifyPasswordCode = "verifyOtpPhone";

  static const String verifyPasswordByPhone = "verify_otp_phone";
  static const String checkUniqueness = "checkContactsUniqueness";
  static const String sendOtpPhone = "sendOtpPhone";
  static const String signup = "signup";
  static const String getProfileInfo = "getClientProfileInfo";
  static const String profileVerification = "addProfileVerification";
  static const String updateProfile = "updateProfile";
  static const String updateProfilePicture = "updateProfilePicture";
  static const String addCRNumber = "addCommercialRegistration";
  static const String addVatNumber = "addVatRegistration";
  static const String getSocial = "getSocialPlatform";
  static const String getCountries = "getAllCountries";
  static const String getCities = "get_cities";
  static const String getStates = "get_states";
  static const String addAddress = "add_addresses";
  static const String setCoordinates = "setCoordinates";
  static const String addSocial = "connect_social_platforms";
  static const String addSocialPlatform = "add_social_platforms_request";
  static const String logout = "logout";

  // Favorite routes
  static const String favoriteLists = "favorite/lists";
  static const String favoriteListsInfluencers = "favorite/lists/influencers";
  static const String favoriteListsReorder = "favorite/lists/reorder";
  static String favoriteListById(int listId) => "favorite/lists/$listId";

  ///profileUrls
  static const String getConnectedSocial = "get_connected_social_platform";
  // static const String getAgentCompanies = "get_agent_companies";
  static const String getCompanies = "get_companies";
  static const String getYoutube = "get_youtube";
  static const String getPartners = "get_partners";
  static const String getStores = "get_store";
  static const String getProducts = "get_product";
  static const String getPortfolio = "get_portfolio";
  static const String addProfileAgency = "add_profile_agencies";
  static const String getTags = "fetch_tags";
  static const String updateService = "services";
  static const String getClientBalance = "getClientBalance";
  static const String getHistory = "getHistory";
  static const String getPartnerApplicationQuestions =
      "getPartnerApplicationQuestions";
  static const String getAllCountries = "getAllCountries";
  static const String addPartnerApplicationAnswers =
      "addPartnerApplicationAnswers";
  static const String partnerAboutAnswers = "addPartnerAboutAnswers";
  static const String getUserLevel = "getUserLevel";
  static const String getSocialSurvey = "getSocialSurvey";
  static const String addClientSurvey = "addClientSurveys";
  static const String updatePass = "updatePassword";
  static const String getUserClientsReviews = "getFeedbackOfClientReviews";
  static const String getProfileDelegations = "profile-delegations";
  static String getProfileDelegationToken(int delegationId) =>
      "profile-delegations/$delegationId/token";

  static const String addYoutube = "add_youtube";
  static const String updateYoutube = "update_youtube";
  static const String deleteYoutube = "delete_youtube";
  static const String reorderYoutube = "reorder_youtube";
  static const String youtubeDetails = "https://www.youtube.com/oembed";

  static const String addSkills = "add_skills";
  static const String addProfileTags = "manage_profile_tags";
  static const String addHeadline = "add_headline";
  static const String addExpertises = "add_expertises";
  static const String verificationMawthooqSubmit =
      "verification/mawthooq/submit";
  static const String viewProfileMawthooq =
      "verification/mawthooq/request-status";
  static const String updateMawthooqStatus = "update_mawthooq_status";

  static const String addPartners = "add_partners";
  static const String updatePartner = "update_partners";
  static const String deletePartner = "delete_partners";
  static const String reorderPartners = "reorder_partners";

  static const String addStore = "add_store";
  static const String updateStore = "update_store";
  static const String deleteStore = "delete_store";
  static const String reorderStore = "reorder_store";

  static const String addProduct = "add_product";
  static const String updateProduct = "update_product";
  static const String deleteProduct = "delete_product";
  static const String reorderProduct = "reorder_product";

  static const String addPortfolio = "add_portfolio";
  static const String updatePortfolio = "edit_portfolio";
  static const String deletePortfolio = "delete_portfolio";
  static const String reorderPortfolio = "reorder_portfolio";

  static const String addWorkWith = "add_companies";
  static const String updateWorkWith = "update_companies";
  static const String deleteWorkWith = "delete_companies";
  static const String reorderWorkWith = "reorder_agent_companies";

  static const String updateSocialMedia = "update_social_platforms";
  static const String deleteSocialMedia = "delete_social_platforms";
  static const String reorderSocialMedia = "reorder_social_platforms";

  ///notificationUrls
  static const String getNotificationSetting = "get_notification_setting";
  static const String updateNotificationSetting = "add_notification_setting";
  static const String updateNotificationsEnabled = "updateNotificationsEnabled";

  /// moreApi
  static const String deleteProfile = "deleteProfile";
  static const String addFeedback = "sendFeedback";

  ///accountUrls
  static const String verifyEmail = "sendEmailVerification";
  static const String viewVerifyMawthooq = "view_profile_verification_mawthooq";
  static const String getAgentReview = "get_agent_review";
  static const String getSocialPlatformGigLists = "getSocialPlatformGigLists";

  ///walletUrls
  static const String getWalletIncome = "get_income";
  static const String getWalletWithdraw = "get_withdrawal";
  static const String getWalletBank = "get_bank";
  static const String getWalletDetails = "get_job_detail";
  static const String cancelWithdraw = "cancel_withdrawal_request";
  static const String requestWithdraw = "add_withdrawal_request";
  static const String addBank = "add_bank";
  static const String addCard = "addCard";
  static const String updateBank = "update_bank";
  static const String deleteBank = "delete_bank";
  static const String userWalletLists = "userWalletLists";
  static const String getPaymentMethod = "getPaymentMethod";
  static const String editPrimaryAccount = "editPrimaryAccount";
  static const String editCard = "editCard";
  static const String wallet = "wallet";
  static const String transactions = "transactions";
  static const String chargeWallet = "charge-wallet";

  /// campaign
  static String getOrders = "campaigns";
  // static  String getHistoryCampaigns(int params,String statusParams) => "campaigns";
  static String getInvoices(int params) => "invoices?limit=10&page=$params";
  static String getCampaignById(int params) => "campaign/$params";
  static String addRate = "rates";
  static String getRatesQuestion = "rate/criteria";
  static String rateStar = "campaign";
  static String updateStarData = "campaign";
  static String starAssets = "campaign";
  static String aiRecommendedStars(int param) => "ai-campaign-agents/$param";
  static String addRecommendedAiStarToFav = "favorite/influencer";
  static String getCampFavStars(bool param) =>
      "campaign/agents?isFavoriteOnly=$param";
  static String sysSettingRates = "sys/settings/rates";
  static String publishPaymentDraft(int campaignId, int userId) =>
      "/campaign/$campaignId/draft-star/$userId/publish";
  static String updateAgencyFeeRate(int campaignId) =>
      "/campaign/$campaignId/agency-fee-rate";
  static String addCampaignDraftStars(int campaignId) =>
      "/campaign/$campaignId/draft-stars";
  static String socialPlatformsWithOptions = "social-platforms-with-options";
  static String deleteDraftStar(int campaignId, int userId) =>
      "/campaign/$campaignId/draft-star/$userId";
  static String bulkDeleteDraftStars = "/campaigns/draft-star/bulk-delete";
  static String deleteDraftPlatformStar(
          int campaignId, int userId, int platformId) =>
      "/campaign/$campaignId/draft-star/$userId/platform/$platformId";
  static String getAgentServices(int param) => "services/$param";
  static String updateCampaign(int param) => "campaign/$param/details";
  static String campaignAsset(int param) => "/campaign/$param/assets";
  static String starAssetsEndpoint(int campaignId, int starId) =>
      "/campaign/$campaignId/star/$starId/assets";
  static String campaignProposal(int campaignId) =>
      "/campaign/$campaignId/proposal";
  static String getCampaignOffers = "jobPostBidsList";
  static const String getAllCampaigns = "campaign/all";
  static const String getJopDetails = "JobDetailsById";
  static String releaseCampaign(int param) => "campaign/$param/payment/release";
  static const String deleteCampaign = "deleteJobpost";
  static const String uploadCampaignFiles = "uploadAttachmentForJobPost";
  static const String refundCampaign = "addJobRefunds";
  static const String closeCampaign = "/closeProject";
  static const String addJobReport = "add_job_report";
  static const String unBlockUser = "unblock_user";
  static const String blockUser = "block_user";
  static const String addBid = "add_bid";
  static const String editBid = "edit_bid";
  static const String cancelContracts = "delete_bid";
  static const String getReviewsQuestions = "getQuestionsReviewList";
  static const String leaveFeedBack = "rates";
  static const String viewClientProfile = "view_client_profile";
  static const String getClientReview = "get_client_review";
  static const String sendFileMail = "send_file_mail";
  static const String deleteFiles = "delete_files";
  static String submitJob = "add_files";
  static String aiCampaign = "ai-campaign-recommendation";
  static const String campaignImageUrl =
      "https://s3.me-central-1.amazonaws.com/cdn.influencebird.com/agentApi/webroot/img/";
  static String getInvoiceReport(int invoiceId, int clientId) =>
      "campaign/$invoiceId/invoice";

  ///chatUrl
  static String getAllUsers = "${socketUrl}api/users/getAllUsers";
  static String getStreamChatToken = 'chat/tokens?target_id=';

  /// brand
  static String getListInfluenceProfilesWithParam(String param) =>
      "getListInfluenceProfiles?$param";
  static const String getInfluencers = "getListInfluenceProfiles?v=2";

  static const String getAgentProfileInfo = "getAgentProfileInfo?v=2";
  static const String getAgentStore = "getAgentStore";
  static const String getAgentProducts = "getAgentProducts";
  static const String getAgentYoutube = "getAgentYoutube";
  static String getAgentCompanies(int? param) => param == null
      ? "getAgentCompanies"
      : "getAgentCompanies?campaign_id=$param";
  static const String getAgentCollaborations = "agent";
  static const String getAgentPartners = "getAgentPartners";
  static const String getAgentPortfolio = "getPortfolio";
  static const String getAgentAgency = "getAgentProfileAgency";
  static const String getServices = "services";
  static const String getCampaignAgents = "campaign/agents";
  static String getCampaignAgentsWithParams(String param) =>
      "campaign/agents?$param";
  static const String uploadAttachment = "campaign/attachment";
  static const String createCampaign = "campaign";
  static const String draftStars = "draft-stars";
  static const String getSocialPlatforms = "getSocialPlatforms";
  static const String getServiceCategories = "getServiceCategories";
  static const String addJobPost = "addJobPost";
  static const String clientSaveFavAgent = "clientSaveFavAgent";
  static const String clientRemoveFavAgent = "clientRemoveFavAgent";
  static const String getSkills = "getSkills";
  static const String detailedTimeline = "detailed-timeline";
  static String getFilterCities(int param) => "getCityByCountry/$param";
  static String agentAudienceInsights(int param, int? platformId) =>
      "agent/${param}/audience-insights-v2${(platformId != 0 && platformId != null) ? "?platform_id=$platformId" : ""}";
  static String agentPricingRequest(int param) =>
      "agent/${param}/pricing-request";
  static String viewAgentProfile(int id) => "agent/$id/view";

  /// settings
  static const String getNotificationSettings = "getNotificationSettings";
  static const String updateNotificationStatus = "updateNotificationStatus";

  static String searchHistory(String param) =>
      param.isEmpty ? "search/history" : "search/history?$param";

  static String getAnalyticsByPlatformName(int starId, String platform) =>
      "agent/$starId/insights?platform=$platform";
}
