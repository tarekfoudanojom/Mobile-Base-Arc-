// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i107;

import 'package:auto_route/auto_route.dart' as _i90;
import 'package:flutter/cupertino.dart' as _i94;
import 'package:flutter/material.dart' as _i96;
import 'package:flutter_tdd/core/constants/global_imports.dart' as _i106;
import 'package:flutter_tdd/features/auth/data/models/about_us_item_model/about_us_item_model.dart'
    as _i115;
import 'package:flutter_tdd/features/auth/domain/entity/active_account_entity.dart'
    as _i97;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/auth_page/auth_page_imports.dart'
    as _i45;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password_confirm/change_password_confirm_imports.dart'
    as _i19;
import 'package:flutter_tdd/features/auth/presentation/pages/complete_signup/complete_signup_imports.dart'
    as _i26;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_page/confirm_page_imports.dart'
    as _i27;
import 'package:flutter_tdd/features/auth/presentation/pages/onboarding/onboarding_imports.dart'
    as _i50;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i64;
import 'package:flutter_tdd/features/auth/presentation/pages/select_about_us/select_about_us_imports.dart'
    as _i67;
import 'package:flutter_tdd/features/auth/presentation/pages/sign_up/sign_up_imports.dart'
    as _i72;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i73;
import 'package:flutter_tdd/features/auth/presentation/pages/trusted_page/trusted_page_imports.dart'
    as _i79;
import 'package:flutter_tdd/features/base/data/models/agent_store_model/agent_store_model.dart'
    as _i113;
import 'package:flutter_tdd/features/base/data/models/campaign_agent_model/campaign_agent_model.dart'
    as _i95;
import 'package:flutter_tdd/features/base/data/models/collaborations_model/collaborations_model.dart'
    as _i110;
import 'package:flutter_tdd/features/base/data/models/influencer_model/influencer_model.dart'
    as _i92;
import 'package:flutter_tdd/features/base/data/models/star_info_model/star_info_model.dart'
    as _i108;
import 'package:flutter_tdd/features/base/data/models/store_product_model/store_product_model.dart'
    as _i112;
import 'package:flutter_tdd/features/base/domain/enities/custom_offer_params.dart'
    as _i104;
import 'package:flutter_tdd/features/base/domain/enities/get_influencers_params.dart'
    as _i93;
import 'package:flutter_tdd/features/base/domain/enities/services_campaign_params.dart'
    as _i102;
import 'package:flutter_tdd/features/base/domain/enums/header_enum.dart'
    as _i114;
import 'package:flutter_tdd/features/base/domain/models/partner_profile_model.dart'
    as _i111;
import 'package:flutter_tdd/features/base/domain/models/partner_question.dart'
    as _i105;
import 'package:flutter_tdd/features/base/domain/models/send_custom_offer.dart'
    as _i103;
import 'package:flutter_tdd/features/base/presentation/pages/add_more_stars/add_more_stars_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/base/presentation/pages/campaign_data/campaign_data_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/base/presentation/pages/download_nogom/download_nogom_imports.dart'
    as _i33;
import 'package:flutter_tdd/features/base/presentation/pages/filter/filter_imports.dart'
    as _i34;
import 'package:flutter_tdd/features/base/presentation/pages/force_update/force_update_imports.dart'
    as _i35;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i37;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i101;

abstract class $AppRouter extends _i90.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i90.PageFactory> pagesMap = {
    AIAddStarsPageRoute.name: (routeData) {
      final args = routeData.argsAs<AIAddStarsPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AIAddStars(
          key: args.key,
          campaignId: args.campaignId,
          delegationFeeRate: args.delegationFeeRate,
          favAgents: args.favAgents,
        ),
      );
    },
    AccountDetailsRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountDetails(),
      );
    },
    AccountSettingRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AccountSetting(),
      );
    },
    ActiveAccount.name: (routeData) {
      final args = routeData.argsAs<ActiveAccountArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ActiveAccount(
          key: args.key,
          activeAccountEntity: args.activeAccountEntity,
        ),
      );
    },
    AddBalanceRoute.name: (routeData) {
      final args = routeData.argsAs<AddBalanceRouteArgs>();
      return _i90.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i5.AddBalance(
          key: args.key,
          balance: args.balance,
        ),
      );
    },
    AddMoreStarsPageRoute.name: (routeData) {
      final args = routeData.argsAs<AddMoreStarsPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.AddMoreStars(
          key: args.key,
          agentModel: args.agentModel,
        ),
      );
    },
    AddNewCardRoute.name: (routeData) {
      final args = routeData.argsAs<AddNewCardRouteArgs>(
          orElse: () => const AddNewCardRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.AddNewCard(
          key: args.key,
          model: args.model,
        ),
      );
    },
    AgentPlatformsRoute.name: (routeData) {
      final args = routeData.argsAs<AgentPlatformsRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.AgentPlatforms(
          key: args.key,
          agents: args.agents,
          agent: args.agent,
          campId: args.campId,
          delegationFeeRate: args.delegationFeeRate,
        ),
      );
    },
    AiCampaignDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<AiCampaignDetailsPageRouteArgs>();
      return _i90.AutoRoutePage<_i91.CampaignModel?>(
        routeData: routeData,
        child: _i9.AiCampaignDetails(
          key: args.key,
          aiDataModel: args.aiDataModel,
          fromEdit: args.fromEdit,
          brandWebsite: args.brandWebsite,
          campId: args.campId,
          starId: args.starId,
        ),
      );
    },
    AiCreateCampaignPageRoute.name: (routeData) {
      final args = routeData.argsAs<AiCreateCampaignPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.AiCreateCampaign(
          key: args.key,
          fromEdit: args.fromEdit,
          campId: args.campId,
          starId: args.starId,
        ),
      );
    },
    AnalysisPageRoute.name: (routeData) {
      final args = routeData.argsAs<AnalysisPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.AnalysisPage(
          key: args.key,
          starDetailsController: args.starDetailsController,
        ),
      );
    },
    CampPaymentPageRoute.name: (routeData) {
      final args = routeData.argsAs<CampPaymentPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.CampPayment(
          key: args.key,
          intentId: args.intentId,
          fromWallet: args.fromWallet,
          heightPercent: args.heightPercent,
        ),
      );
    },
    CampaignDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<CampaignDataPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.CampaignData(
          key: args.key,
          agents: args.agents,
          amount: args.amount,
          campaignId: args.campaignId,
          campaignProfileModel: args.campaignProfileModel,
          isActiveDraftCampaign: args.isActiveDraftCampaign,
          campaignModel: args.campaignModel,
        ),
      );
    },
    CampaignDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<CampaignDetailsPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.CampaignDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    CampaignOfflineWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<CampaignOfflineWidgetRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.CampaignOfflineWidget(
          key: args.key,
          campaignId: args.campaignId,
          selectedList: args.selectedList,
          allSocialPlatformsWithOptionsModel:
              args.allSocialPlatformsWithOptionsModel,
          campaignProfileModel: args.campaignProfileModel,
        ),
      );
    },
    CampaignStarDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CampaignStarDetailsRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.CampaignStarDetails(
          key: args.key,
          model: args.model,
          profileModel: args.profileModel,
        ),
      );
    },
    CampaignStarsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<_i92.InfluencerModel>(
        routeData: routeData,
        child: const _i17.CampaignStars(),
      );
    },
    ChangePasswordPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ChangePassword(),
      );
    },
    ChangePasswordConfirmPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ChangePasswordConfirm(),
      );
    },
    ChatProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ChatProfileRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.ChatProfile(
          key: args.key,
          channel: args.channel,
        ),
      );
    },
    ChatRoomRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRoomRouteArgs>(
          orElse: () => const ChatRoomRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.ChatRoom(
          key: args.key,
          fromProfile: args.fromProfile,
        ),
      );
    },
    ChatRoomLayoutRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ChatRoomLayout(),
      );
    },
    ChatWithUsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ChatWithUs(),
      );
    },
    ChoosePaymentPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChoosePaymentPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i24.ChoosePayment(
          key: args.key,
          params: args.params,
          amount: args.amount,
          agents: args.agents,
          campaignId: args.campaignId,
          delegationFeeRate: args.delegationFeeRate,
          isActiveDraftCampaign: args.isActiveDraftCampaign,
          campaignProfileModel: args.campaignProfileModel,
          customOfferDataList: args.customOfferDataList,
          customServiceDataList: args.customServiceDataList,
          offerConfig: args.offerConfig,
          campaignModel: args.campaignModel,
        ),
      );
    },
    CompletePartnerWithUsRoute.name: (routeData) {
      final args = routeData.argsAs<CompletePartnerWithUsRouteArgs>();
      return _i90.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i25.CompletePartnerWithUs(
          key: args.key,
          questions: args.questions,
        ),
      );
    },
    CompleteSignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteSignUpPageRouteArgs>(
          orElse: () => const CompleteSignUpPageRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.CompleteSignUp(
          key: args.key,
          isBackLogin: args.isBackLogin,
          popOnBack: args.popOnBack,
        ),
      );
    },
    ConfirmPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.ConfirmPage(),
      );
    },
    ConfirmPaymentPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ConfirmPayment(),
      );
    },
    CongratulationsUpdatePhoneRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i29.CongratulationsUpdatePhone(),
      );
    },
    DataPrivacyPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i30.DataPrivacy(),
      );
    },
    DeleteAccountPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i31.DeleteAccount(),
      );
    },
    DiscountRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i32.Discount(),
      );
    },
    DownloadNogomDialogRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i33.DownloadNogomDialog(),
      );
    },
    FilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<FilterPageRouteArgs>();
      return _i90.AutoRoutePage<_i93.GetInfluencersParams>(
        routeData: routeData,
        child: _i34.Filter(
          key: args.key,
          filterType: args.filterType,
          onFilter: args.onFilter,
          initialParams: args.initialParams,
        ),
      );
    },
    ForceUpdateWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<ForceUpdateWidgetRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i35.ForceUpdateWidget(
          key: args.key,
          storeUrl: args.storeUrl,
        ),
      );
    },
    HelpAndPrivacyPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i36.HelpAndPrivacy(),
      );
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i37.Home(
          key: args.key,
          index: args.index,
          initialChannelId: args.initialChannelId,
        ),
      );
    },
    HowItWorksPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i38.HowItWorks(),
      );
    },
    ImagePreviewPageRoute.name: (routeData) {
      final args = routeData.argsAs<ImagePreviewPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i39.ImagePreviewPage(
          key: args.key,
          listImages: args.listImages,
          initialImage: args.initialImage,
        ),
      );
    },
    ImageZoomRoute.name: (routeData) {
      final args = routeData.argsAs<ImageZoomRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i40.ImageZoom(
          key: args.key,
          image: args.image,
        ),
      );
    },
    InfluencerServicesPageRoute.name: (routeData) {
      final args = routeData.argsAs<InfluencerServicesPageRouteArgs>(
          orElse: () => const InfluencerServicesPageRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i41.InfluencerServices(
          key: args.key,
          starInfoModel: args.starInfoModel,
          serviceDetailsModel: args.serviceDetailsModel,
          customOfferDataList: args.customOfferDataList,
          sendCustomOfferModelList: args.sendCustomOfferModelList,
          campaignId: args.campaignId,
          delegationFeeRate: args.delegationFeeRate,
          influencerNotes: args.influencerNotes,
          starProfileDetailsController: args.starProfileDetailsController,
          offerConfig: args.offerConfig,
          campaignProfileModel: args.campaignProfileModel,
        ),
      );
    },
    InviteFriendsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i42.InviteFriends(),
      );
    },
    InvoicesPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i43.Invoices(),
      );
    },
    LeaveReviewPageRoute.name: (routeData) {
      final args = routeData.argsAs<LeaveReviewPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i44.LeaveReview(
          key: args.key,
          profileModel: args.profileModel,
          campaignId: args.campaignId,
        ),
      );
    },
    AuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<AuthPageRouteArgs>(
          orElse: () => const AuthPageRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i45.Login(
          key: args.key,
          fromMore: args.fromMore,
          initialTab: args.initialTab,
        ),
      );
    },
    MyPrevAdsAndMyClientsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyPrevAdsAndMyClientsPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i46.MyPrevAdsAndMyClientsPage(
          key: args.key,
          collaborationsModel: args.collaborationsModel,
          initialTabIndex: args.initialTabIndex,
        ),
      );
    },
    MyPublicProfileRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i47.MyPublicProfile(),
      );
    },
    MyWalletRoute.name: (routeData) {
      final args = routeData.argsAs<MyWalletRouteArgs>(
          orElse: () => const MyWalletRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i48.MyWallet(
          key: args.key,
          index: args.index,
        ),
      );
    },
    NotifySettingsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i49.NotifySettings(),
      );
    },
    OnboardingPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i50.Onboarding(),
      );
    },
    OneHDiscountQuestionsRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i51.OneHDiscountQuestions(),
      );
    },
    OrderDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsPageRouteArgs>(
          orElse: () => const OrderDetailsPageRouteArgs());
      return _i90.AutoRoutePage<_i91.CampaignModel?>(
        routeData: routeData,
        child: _i52.OrderDetails(
          key: args.key,
          campaignModel: args.campaignModel,
          campId: args.campId,
          aiCampaignDataModel: args.aiCampaignDataModel,
          isFromWallet: args.isFromWallet,
        ),
      );
    },
    OrderStarDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderStarDetailsPageRouteArgs>();
      return _i90.AutoRoutePage<_i91.CampaignModel>(
        routeData: routeData,
        child: _i53.OrderStarDetails(
          key: args.key,
          campaignProfileModel: args.campaignProfileModel,
          campaignModel: args.campaignModel,
          starInfoModel: args.starInfoModel,
        ),
      );
    },
    OtpEmailRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i54.OtpEmail(),
      );
    },
    OtpPhoneRoute.name: (routeData) {
      final args = routeData.argsAs<OtpPhoneRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i55.OtpPhone(
          key: args.key,
          phone: args.phone,
        ),
      );
    },
    PartnerProfileRoute.name: (routeData) {
      final args = routeData.argsAs<PartnerProfileRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i56.PartnerProfile(
          key: args.key,
          profileCompletePercent: args.profileCompletePercent,
        ),
      );
    },
    PartnersPageRoute.name: (routeData) {
      final args = routeData.argsAs<PartnersPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i57.Partners(
          key: args.key,
          profileModel: args.profileModel,
          newPartner: args.newPartner,
        ),
      );
    },
    PasswordRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i58.Password(),
      );
    },
    PaymentPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i59.PaymentPage(),
      );
    },
    PdfViewerPageRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewerPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i60.PdfViewerScreen(
          key: args.key,
          pdfUrl: args.pdfUrl,
        ),
      );
    },
    PreparingAiCampPageRoute.name: (routeData) {
      final args = routeData.argsAs<PreparingAiCampPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i61.PreparingAiCampPage(
          key: args.key,
          fromEdit: args.fromEdit,
          campId: args.campId,
          urlLink: args.urlLink,
          starId: args.starId,
        ),
      );
    },
    PrivateInfoRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i62.PrivateInfo(),
      );
    },
    ProductViewWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<ProductViewWidgetRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i63.ProductViewWidget(
          key: args.key,
          arrProduct: args.arrProduct,
          storeModel: args.storeModel,
          path: args.path,
          storePath: args.storePath,
        ),
      );
    },
    ResetPasswordPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i64.ResetPassword(),
      );
    },
    ReviewSocialSurveyRoute.name: (routeData) {
      final args = routeData.argsAs<ReviewSocialSurveyRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i65.ReviewSocialSurvey(
          key: args.key,
          url: args.url,
        ),
      );
    },
    SearchPageScreeRoute.name: (routeData) {
      final args = routeData.argsAs<SearchPageScreeRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i66.SearchScreenWidget(
          key: args.key,
          type: args.type,
          filterController: args.filterController,
          aiAddStarsController: args.aiAddStarsController,
        ),
      );
    },
    SelectAboutUsPage.name: (routeData) {
      final args = routeData.argsAs<SelectAboutUsPageArgs>();
      return _i90.AutoRoutePage<int>(
        routeData: routeData,
        child: _i67.SelectAboutUs(
          key: args.key,
          aboutUsList: args.aboutUsList,
        ),
      );
    },
    SelectPayMethod.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i68.SelectPayMethod(),
      );
    },
    SendOfferPageRoute.name: (routeData) {
      final args = routeData.argsAs<SendOfferPageRouteArgs>(
          orElse: () => const SendOfferPageRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i69.SendOffer(
          key: args.key,
          starInfoModel: args.starInfoModel,
          fromHome: args.fromHome,
        ),
      );
    },
    SettingsLocationsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i70.SettingsLocations(),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i71.SettingsPage(),
      );
    },
    SignUpPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i72.SignUp(),
      );
    },
    Splash.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i73.Splash(),
      );
    },
    StarListPageScreenWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<StarListPageScreenWidgetRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i66.StarListPageScreenWidget(
          key: args.key,
          type: args.type,
        ),
      );
    },
    StarProfileDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<StarProfileDetailsPageRouteArgs>();
      return _i90.AutoRoutePage<int>(
        routeData: routeData,
        child: _i74.StarProfileDetails(
          key: args.key,
          starModel: args.starModel,
          campaignAgentModel: args.campaignAgentModel,
          campaignId: args.campaignId,
          delegationFeeRate: args.delegationFeeRate,
          fromServices: args.fromServices,
        ),
      );
    },
    StarsPageRoute.name: (routeData) {
      final args = routeData.argsAs<StarsPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i75.Stars(
          key: args.key,
          homeController: args.homeController,
          starsController: args.starsController,
        ),
      );
    },
    StoreProductViewWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<StoreProductViewWidgetRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i63.StoreProductViewWidget(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    SurveyQuestionsPageRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i76.SurveyQuestions(),
      );
    },
    Terms.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i77.Terms(),
      );
    },
    TrustAndVerificationRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i78.TrustAndVerification(),
      );
    },
    TrustedPageRoute.name: (routeData) {
      final args = routeData.argsAs<TrustedPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i79.TrustedPage(
          key: args.key,
          statusRequester: args.statusRequester,
        ),
      );
    },
    UpdateEmailRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i80.UpdateEmail(),
      );
    },
    UpdatePhoneRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i81.UpdatePhone(),
      );
    },
    UserNameRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i82.UserName(),
      );
    },
    VerifyEmailRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyEmailRouteArgs>(
          orElse: () => const VerifyEmailRouteArgs());
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i83.VerifyEmail(
          key: args.key,
          showHeader: args.showHeader,
        ),
      );
    },
    VerifyPhoneRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i84.VerifyPhone(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i85.Wallet(),
      );
    },
    WebViewPageRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewPageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i86.WebViewPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
    WithdrawMoneyRoute.name: (routeData) {
      final args = routeData.argsAs<WithdrawMoneyRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i87.WithdrawMoney(
          key: args.key,
          availableBalance: args.availableBalance,
        ),
      );
    },
    WithdrawSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<WithdrawSummaryRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i88.WithdrawSummary(
          key: args.key,
          availableBalance: args.availableBalance,
          withdrawBalance: args.withdrawBalance,
        ),
      );
    },
    YoutubePageRoute.name: (routeData) {
      final args = routeData.argsAs<YoutubePageRouteArgs>();
      return _i90.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i89.YoutubePage(
          key: args.key,
          data: args.data,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AIAddStars]
class AIAddStarsPageRoute extends _i90.PageRouteInfo<AIAddStarsPageRouteArgs> {
  AIAddStarsPageRoute({
    _i94.Key? key,
    required int campaignId,
    required double delegationFeeRate,
    List<_i95.CampaignAgentModel>? favAgents,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AIAddStarsPageRoute.name,
          args: AIAddStarsPageRouteArgs(
            key: key,
            campaignId: campaignId,
            delegationFeeRate: delegationFeeRate,
            favAgents: favAgents,
          ),
          initialChildren: children,
        );

  static const String name = 'AIAddStarsPageRoute';

  static const _i90.PageInfo<AIAddStarsPageRouteArgs> page =
      _i90.PageInfo<AIAddStarsPageRouteArgs>(name);
}

class AIAddStarsPageRouteArgs {
  const AIAddStarsPageRouteArgs({
    this.key,
    required this.campaignId,
    required this.delegationFeeRate,
    this.favAgents,
  });

  final _i94.Key? key;

  final int campaignId;

  final double delegationFeeRate;

  final List<_i95.CampaignAgentModel>? favAgents;

  @override
  String toString() {
    return 'AIAddStarsPageRouteArgs{key: $key, campaignId: $campaignId, delegationFeeRate: $delegationFeeRate, favAgents: $favAgents}';
  }
}

/// generated route for
/// [_i2.AccountDetails]
class AccountDetailsRoute extends _i90.PageRouteInfo<void> {
  const AccountDetailsRoute({List<_i90.PageRouteInfo>? children})
      : super(
          AccountDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountDetailsRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AccountSetting]
class AccountSettingRoute extends _i90.PageRouteInfo<void> {
  const AccountSettingRoute({List<_i90.PageRouteInfo>? children})
      : super(
          AccountSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountSettingRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ActiveAccount]
class ActiveAccount extends _i90.PageRouteInfo<ActiveAccountArgs> {
  ActiveAccount({
    _i96.Key? key,
    required _i97.ActiveAccountEntity activeAccountEntity,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ActiveAccount.name,
          args: ActiveAccountArgs(
            key: key,
            activeAccountEntity: activeAccountEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i90.PageInfo<ActiveAccountArgs> page =
      _i90.PageInfo<ActiveAccountArgs>(name);
}

class ActiveAccountArgs {
  const ActiveAccountArgs({
    this.key,
    required this.activeAccountEntity,
  });

  final _i96.Key? key;

  final _i97.ActiveAccountEntity activeAccountEntity;

  @override
  String toString() {
    return 'ActiveAccountArgs{key: $key, activeAccountEntity: $activeAccountEntity}';
  }
}

/// generated route for
/// [_i5.AddBalance]
class AddBalanceRoute extends _i90.PageRouteInfo<AddBalanceRouteArgs> {
  AddBalanceRoute({
    _i94.Key? key,
    required num balance,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AddBalanceRoute.name,
          args: AddBalanceRouteArgs(
            key: key,
            balance: balance,
          ),
          initialChildren: children,
        );

  static const String name = 'AddBalanceRoute';

  static const _i90.PageInfo<AddBalanceRouteArgs> page =
      _i90.PageInfo<AddBalanceRouteArgs>(name);
}

class AddBalanceRouteArgs {
  const AddBalanceRouteArgs({
    this.key,
    required this.balance,
  });

  final _i94.Key? key;

  final num balance;

  @override
  String toString() {
    return 'AddBalanceRouteArgs{key: $key, balance: $balance}';
  }
}

/// generated route for
/// [_i6.AddMoreStars]
class AddMoreStarsPageRoute
    extends _i90.PageRouteInfo<AddMoreStarsPageRouteArgs> {
  AddMoreStarsPageRoute({
    _i94.Key? key,
    required _i95.CampaignAgentModel agentModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AddMoreStarsPageRoute.name,
          args: AddMoreStarsPageRouteArgs(
            key: key,
            agentModel: agentModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMoreStarsPageRoute';

  static const _i90.PageInfo<AddMoreStarsPageRouteArgs> page =
      _i90.PageInfo<AddMoreStarsPageRouteArgs>(name);
}

class AddMoreStarsPageRouteArgs {
  const AddMoreStarsPageRouteArgs({
    this.key,
    required this.agentModel,
  });

  final _i94.Key? key;

  final _i95.CampaignAgentModel agentModel;

  @override
  String toString() {
    return 'AddMoreStarsPageRouteArgs{key: $key, agentModel: $agentModel}';
  }
}

/// generated route for
/// [_i7.AddNewCard]
class AddNewCardRoute extends _i90.PageRouteInfo<AddNewCardRouteArgs> {
  AddNewCardRoute({
    _i96.Key? key,
    _i98.WalletBankCardModel? model,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AddNewCardRoute.name,
          args: AddNewCardRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'AddNewCardRoute';

  static const _i90.PageInfo<AddNewCardRouteArgs> page =
      _i90.PageInfo<AddNewCardRouteArgs>(name);
}

class AddNewCardRouteArgs {
  const AddNewCardRouteArgs({
    this.key,
    this.model,
  });

  final _i96.Key? key;

  final _i98.WalletBankCardModel? model;

  @override
  String toString() {
    return 'AddNewCardRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i8.AgentPlatforms]
class AgentPlatformsRoute extends _i90.PageRouteInfo<AgentPlatformsRouteArgs> {
  AgentPlatformsRoute({
    _i96.Key? key,
    required List<_i95.CampaignAgentModel> agents,
    required _i95.CampaignAgentModel agent,
    required int campId,
    required double delegationFeeRate,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AgentPlatformsRoute.name,
          args: AgentPlatformsRouteArgs(
            key: key,
            agents: agents,
            agent: agent,
            campId: campId,
            delegationFeeRate: delegationFeeRate,
          ),
          initialChildren: children,
        );

  static const String name = 'AgentPlatformsRoute';

  static const _i90.PageInfo<AgentPlatformsRouteArgs> page =
      _i90.PageInfo<AgentPlatformsRouteArgs>(name);
}

class AgentPlatformsRouteArgs {
  const AgentPlatformsRouteArgs({
    this.key,
    required this.agents,
    required this.agent,
    required this.campId,
    required this.delegationFeeRate,
  });

  final _i96.Key? key;

  final List<_i95.CampaignAgentModel> agents;

  final _i95.CampaignAgentModel agent;

  final int campId;

  final double delegationFeeRate;

  @override
  String toString() {
    return 'AgentPlatformsRouteArgs{key: $key, agents: $agents, agent: $agent, campId: $campId, delegationFeeRate: $delegationFeeRate}';
  }
}

/// generated route for
/// [_i9.AiCampaignDetails]
class AiCampaignDetailsPageRoute
    extends _i90.PageRouteInfo<AiCampaignDetailsPageRouteArgs> {
  AiCampaignDetailsPageRoute({
    _i94.Key? key,
    required _i99.AiCampaignDataModel aiDataModel,
    required bool fromEdit,
    required String brandWebsite,
    int? campId,
    int? starId,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AiCampaignDetailsPageRoute.name,
          args: AiCampaignDetailsPageRouteArgs(
            key: key,
            aiDataModel: aiDataModel,
            fromEdit: fromEdit,
            brandWebsite: brandWebsite,
            campId: campId,
            starId: starId,
          ),
          initialChildren: children,
        );

  static const String name = 'AiCampaignDetailsPageRoute';

  static const _i90.PageInfo<AiCampaignDetailsPageRouteArgs> page =
      _i90.PageInfo<AiCampaignDetailsPageRouteArgs>(name);
}

class AiCampaignDetailsPageRouteArgs {
  const AiCampaignDetailsPageRouteArgs({
    this.key,
    required this.aiDataModel,
    required this.fromEdit,
    required this.brandWebsite,
    this.campId,
    this.starId,
  });

  final _i94.Key? key;

  final _i99.AiCampaignDataModel aiDataModel;

  final bool fromEdit;

  final String brandWebsite;

  final int? campId;

  final int? starId;

  @override
  String toString() {
    return 'AiCampaignDetailsPageRouteArgs{key: $key, aiDataModel: $aiDataModel, fromEdit: $fromEdit, brandWebsite: $brandWebsite, campId: $campId, starId: $starId}';
  }
}

/// generated route for
/// [_i10.AiCreateCampaign]
class AiCreateCampaignPageRoute
    extends _i90.PageRouteInfo<AiCreateCampaignPageRouteArgs> {
  AiCreateCampaignPageRoute({
    _i94.Key? key,
    required bool fromEdit,
    int? campId,
    int? starId,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AiCreateCampaignPageRoute.name,
          args: AiCreateCampaignPageRouteArgs(
            key: key,
            fromEdit: fromEdit,
            campId: campId,
            starId: starId,
          ),
          initialChildren: children,
        );

  static const String name = 'AiCreateCampaignPageRoute';

  static const _i90.PageInfo<AiCreateCampaignPageRouteArgs> page =
      _i90.PageInfo<AiCreateCampaignPageRouteArgs>(name);
}

class AiCreateCampaignPageRouteArgs {
  const AiCreateCampaignPageRouteArgs({
    this.key,
    required this.fromEdit,
    this.campId,
    this.starId,
  });

  final _i94.Key? key;

  final bool fromEdit;

  final int? campId;

  final int? starId;

  @override
  String toString() {
    return 'AiCreateCampaignPageRouteArgs{key: $key, fromEdit: $fromEdit, campId: $campId, starId: $starId}';
  }
}

/// generated route for
/// [_i11.AnalysisPage]
class AnalysisPageRoute extends _i90.PageRouteInfo<AnalysisPageRouteArgs> {
  AnalysisPageRoute({
    _i94.Key? key,
    required _i74.StarProfileDetailsController starDetailsController,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AnalysisPageRoute.name,
          args: AnalysisPageRouteArgs(
            key: key,
            starDetailsController: starDetailsController,
          ),
          initialChildren: children,
        );

  static const String name = 'AnalysisPageRoute';

  static const _i90.PageInfo<AnalysisPageRouteArgs> page =
      _i90.PageInfo<AnalysisPageRouteArgs>(name);
}

class AnalysisPageRouteArgs {
  const AnalysisPageRouteArgs({
    this.key,
    required this.starDetailsController,
  });

  final _i94.Key? key;

  final _i74.StarProfileDetailsController starDetailsController;

  @override
  String toString() {
    return 'AnalysisPageRouteArgs{key: $key, starDetailsController: $starDetailsController}';
  }
}

/// generated route for
/// [_i12.CampPayment]
class CampPaymentPageRoute
    extends _i90.PageRouteInfo<CampPaymentPageRouteArgs> {
  CampPaymentPageRoute({
    _i94.Key? key,
    required String intentId,
    bool fromWallet = false,
    double? heightPercent,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CampPaymentPageRoute.name,
          args: CampPaymentPageRouteArgs(
            key: key,
            intentId: intentId,
            fromWallet: fromWallet,
            heightPercent: heightPercent,
          ),
          initialChildren: children,
        );

  static const String name = 'CampPaymentPageRoute';

  static const _i90.PageInfo<CampPaymentPageRouteArgs> page =
      _i90.PageInfo<CampPaymentPageRouteArgs>(name);
}

class CampPaymentPageRouteArgs {
  const CampPaymentPageRouteArgs({
    this.key,
    required this.intentId,
    this.fromWallet = false,
    this.heightPercent,
  });

  final _i94.Key? key;

  final String intentId;

  final bool fromWallet;

  final double? heightPercent;

  @override
  String toString() {
    return 'CampPaymentPageRouteArgs{key: $key, intentId: $intentId, fromWallet: $fromWallet, heightPercent: $heightPercent}';
  }
}

/// generated route for
/// [_i13.CampaignData]
class CampaignDataPageRoute
    extends _i90.PageRouteInfo<CampaignDataPageRouteArgs> {
  CampaignDataPageRoute({
    _i94.Key? key,
    required List<_i95.CampaignAgentModel> agents,
    required String amount,
    int? campaignId,
    _i91.CampaignProfileModel? campaignProfileModel,
    bool? isActiveDraftCampaign,
    _i91.CampaignModel? campaignModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CampaignDataPageRoute.name,
          args: CampaignDataPageRouteArgs(
            key: key,
            agents: agents,
            amount: amount,
            campaignId: campaignId,
            campaignProfileModel: campaignProfileModel,
            isActiveDraftCampaign: isActiveDraftCampaign,
            campaignModel: campaignModel,
          ),
          initialChildren: children,
        );

  static const String name = 'CampaignDataPageRoute';

  static const _i90.PageInfo<CampaignDataPageRouteArgs> page =
      _i90.PageInfo<CampaignDataPageRouteArgs>(name);
}

class CampaignDataPageRouteArgs {
  const CampaignDataPageRouteArgs({
    this.key,
    required this.agents,
    required this.amount,
    this.campaignId,
    this.campaignProfileModel,
    this.isActiveDraftCampaign,
    this.campaignModel,
  });

  final _i94.Key? key;

  final List<_i95.CampaignAgentModel> agents;

  final String amount;

  final int? campaignId;

  final _i91.CampaignProfileModel? campaignProfileModel;

  final bool? isActiveDraftCampaign;

  final _i91.CampaignModel? campaignModel;

  @override
  String toString() {
    return 'CampaignDataPageRouteArgs{key: $key, agents: $agents, amount: $amount, campaignId: $campaignId, campaignProfileModel: $campaignProfileModel, isActiveDraftCampaign: $isActiveDraftCampaign, campaignModel: $campaignModel}';
  }
}

/// generated route for
/// [_i14.CampaignDetails]
class CampaignDetailsPageRoute
    extends _i90.PageRouteInfo<CampaignDetailsPageRouteArgs> {
  CampaignDetailsPageRoute({
    _i96.Key? key,
    required _i91.CampaignModel model,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CampaignDetailsPageRoute.name,
          args: CampaignDetailsPageRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CampaignDetailsPageRoute';

  static const _i90.PageInfo<CampaignDetailsPageRouteArgs> page =
      _i90.PageInfo<CampaignDetailsPageRouteArgs>(name);
}

class CampaignDetailsPageRouteArgs {
  const CampaignDetailsPageRouteArgs({
    this.key,
    required this.model,
  });

  final _i96.Key? key;

  final _i91.CampaignModel model;

  @override
  String toString() {
    return 'CampaignDetailsPageRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i15.CampaignOfflineWidget]
class CampaignOfflineWidgetRoute
    extends _i90.PageRouteInfo<CampaignOfflineWidgetRouteArgs> {
  CampaignOfflineWidgetRoute({
    _i94.Key? key,
    required int campaignId,
    required List<_i100.SocialPlatformsWithOptionsModel> selectedList,
    required List<_i100.SocialPlatformsWithOptionsModel>
        allSocialPlatformsWithOptionsModel,
    required _i91.CampaignProfileModel campaignProfileModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CampaignOfflineWidgetRoute.name,
          args: CampaignOfflineWidgetRouteArgs(
            key: key,
            campaignId: campaignId,
            selectedList: selectedList,
            allSocialPlatformsWithOptionsModel:
                allSocialPlatformsWithOptionsModel,
            campaignProfileModel: campaignProfileModel,
          ),
          initialChildren: children,
        );

  static const String name = 'CampaignOfflineWidgetRoute';

  static const _i90.PageInfo<CampaignOfflineWidgetRouteArgs> page =
      _i90.PageInfo<CampaignOfflineWidgetRouteArgs>(name);
}

class CampaignOfflineWidgetRouteArgs {
  const CampaignOfflineWidgetRouteArgs({
    this.key,
    required this.campaignId,
    required this.selectedList,
    required this.allSocialPlatformsWithOptionsModel,
    required this.campaignProfileModel,
  });

  final _i94.Key? key;

  final int campaignId;

  final List<_i100.SocialPlatformsWithOptionsModel> selectedList;

  final List<_i100.SocialPlatformsWithOptionsModel>
      allSocialPlatformsWithOptionsModel;

  final _i91.CampaignProfileModel campaignProfileModel;

  @override
  String toString() {
    return 'CampaignOfflineWidgetRouteArgs{key: $key, campaignId: $campaignId, selectedList: $selectedList, allSocialPlatformsWithOptionsModel: $allSocialPlatformsWithOptionsModel, campaignProfileModel: $campaignProfileModel}';
  }
}

/// generated route for
/// [_i16.CampaignStarDetails]
class CampaignStarDetailsRoute
    extends _i90.PageRouteInfo<CampaignStarDetailsRouteArgs> {
  CampaignStarDetailsRoute({
    _i96.Key? key,
    required _i91.CampaignModel model,
    required _i91.CampaignProfileModel profileModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CampaignStarDetailsRoute.name,
          args: CampaignStarDetailsRouteArgs(
            key: key,
            model: model,
            profileModel: profileModel,
          ),
          initialChildren: children,
        );

  static const String name = 'CampaignStarDetailsRoute';

  static const _i90.PageInfo<CampaignStarDetailsRouteArgs> page =
      _i90.PageInfo<CampaignStarDetailsRouteArgs>(name);
}

class CampaignStarDetailsRouteArgs {
  const CampaignStarDetailsRouteArgs({
    this.key,
    required this.model,
    required this.profileModel,
  });

  final _i96.Key? key;

  final _i91.CampaignModel model;

  final _i91.CampaignProfileModel profileModel;

  @override
  String toString() {
    return 'CampaignStarDetailsRouteArgs{key: $key, model: $model, profileModel: $profileModel}';
  }
}

/// generated route for
/// [_i17.CampaignStars]
class CampaignStarsPageRoute extends _i90.PageRouteInfo<void> {
  const CampaignStarsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          CampaignStarsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'CampaignStarsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i18.ChangePassword]
class ChangePasswordPageRoute extends _i90.PageRouteInfo<void> {
  const ChangePasswordPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ChangePasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ChangePasswordConfirm]
class ChangePasswordConfirmPageRoute extends _i90.PageRouteInfo<void> {
  const ChangePasswordConfirmPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ChangePasswordConfirmPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordConfirmPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ChatProfile]
class ChatProfileRoute extends _i90.PageRouteInfo<ChatProfileRouteArgs> {
  ChatProfileRoute({
    _i96.Key? key,
    required _i101.Channel channel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ChatProfileRoute.name,
          args: ChatProfileRouteArgs(
            key: key,
            channel: channel,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatProfileRoute';

  static const _i90.PageInfo<ChatProfileRouteArgs> page =
      _i90.PageInfo<ChatProfileRouteArgs>(name);
}

class ChatProfileRouteArgs {
  const ChatProfileRouteArgs({
    this.key,
    required this.channel,
  });

  final _i96.Key? key;

  final _i101.Channel channel;

  @override
  String toString() {
    return 'ChatProfileRouteArgs{key: $key, channel: $channel}';
  }
}

/// generated route for
/// [_i21.ChatRoom]
class ChatRoomRoute extends _i90.PageRouteInfo<ChatRoomRouteArgs> {
  ChatRoomRoute({
    _i94.Key? key,
    bool fromProfile = false,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ChatRoomRoute.name,
          args: ChatRoomRouteArgs(
            key: key,
            fromProfile: fromProfile,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoomRoute';

  static const _i90.PageInfo<ChatRoomRouteArgs> page =
      _i90.PageInfo<ChatRoomRouteArgs>(name);
}

class ChatRoomRouteArgs {
  const ChatRoomRouteArgs({
    this.key,
    this.fromProfile = false,
  });

  final _i94.Key? key;

  final bool fromProfile;

  @override
  String toString() {
    return 'ChatRoomRouteArgs{key: $key, fromProfile: $fromProfile}';
  }
}

/// generated route for
/// [_i22.ChatRoomLayout]
class ChatRoomLayoutRoute extends _i90.PageRouteInfo<void> {
  const ChatRoomLayoutRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ChatRoomLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoomLayoutRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ChatWithUs]
class ChatWithUsPageRoute extends _i90.PageRouteInfo<void> {
  const ChatWithUsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ChatWithUsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatWithUsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ChoosePayment]
class ChoosePaymentPageRoute
    extends _i90.PageRouteInfo<ChoosePaymentPageRouteArgs> {
  ChoosePaymentPageRoute({
    _i94.Key? key,
    _i102.ServicesCampaignParams? params,
    required String amount,
    List<_i95.CampaignAgentModel>? agents,
    int? campaignId,
    double? delegationFeeRate,
    bool? isActiveDraftCampaign,
    _i91.CampaignProfileModel? campaignProfileModel,
    List<_i103.CustomOfferModel>? customOfferDataList,
    List<_i103.SendCustomOfferModel>? customServiceDataList,
    _i104.OfferConfig? offerConfig,
    _i91.CampaignModel? campaignModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ChoosePaymentPageRoute.name,
          args: ChoosePaymentPageRouteArgs(
            key: key,
            params: params,
            amount: amount,
            agents: agents,
            campaignId: campaignId,
            delegationFeeRate: delegationFeeRate,
            isActiveDraftCampaign: isActiveDraftCampaign,
            campaignProfileModel: campaignProfileModel,
            customOfferDataList: customOfferDataList,
            customServiceDataList: customServiceDataList,
            offerConfig: offerConfig,
            campaignModel: campaignModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ChoosePaymentPageRoute';

  static const _i90.PageInfo<ChoosePaymentPageRouteArgs> page =
      _i90.PageInfo<ChoosePaymentPageRouteArgs>(name);
}

class ChoosePaymentPageRouteArgs {
  const ChoosePaymentPageRouteArgs({
    this.key,
    this.params,
    required this.amount,
    this.agents,
    this.campaignId,
    this.delegationFeeRate,
    this.isActiveDraftCampaign,
    this.campaignProfileModel,
    this.customOfferDataList,
    this.customServiceDataList,
    this.offerConfig,
    this.campaignModel,
  });

  final _i94.Key? key;

  final _i102.ServicesCampaignParams? params;

  final String amount;

  final List<_i95.CampaignAgentModel>? agents;

  final int? campaignId;

  final double? delegationFeeRate;

  final bool? isActiveDraftCampaign;

  final _i91.CampaignProfileModel? campaignProfileModel;

  final List<_i103.CustomOfferModel>? customOfferDataList;

  final List<_i103.SendCustomOfferModel>? customServiceDataList;

  final _i104.OfferConfig? offerConfig;

  final _i91.CampaignModel? campaignModel;

  @override
  String toString() {
    return 'ChoosePaymentPageRouteArgs{key: $key, params: $params, amount: $amount, agents: $agents, campaignId: $campaignId, delegationFeeRate: $delegationFeeRate, isActiveDraftCampaign: $isActiveDraftCampaign, campaignProfileModel: $campaignProfileModel, customOfferDataList: $customOfferDataList, customServiceDataList: $customServiceDataList, offerConfig: $offerConfig, campaignModel: $campaignModel}';
  }
}

/// generated route for
/// [_i25.CompletePartnerWithUs]
class CompletePartnerWithUsRoute
    extends _i90.PageRouteInfo<CompletePartnerWithUsRouteArgs> {
  CompletePartnerWithUsRoute({
    _i96.Key? key,
    required List<_i105.PartnerQuestion> questions,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CompletePartnerWithUsRoute.name,
          args: CompletePartnerWithUsRouteArgs(
            key: key,
            questions: questions,
          ),
          initialChildren: children,
        );

  static const String name = 'CompletePartnerWithUsRoute';

  static const _i90.PageInfo<CompletePartnerWithUsRouteArgs> page =
      _i90.PageInfo<CompletePartnerWithUsRouteArgs>(name);
}

class CompletePartnerWithUsRouteArgs {
  const CompletePartnerWithUsRouteArgs({
    this.key,
    required this.questions,
  });

  final _i96.Key? key;

  final List<_i105.PartnerQuestion> questions;

  @override
  String toString() {
    return 'CompletePartnerWithUsRouteArgs{key: $key, questions: $questions}';
  }
}

/// generated route for
/// [_i26.CompleteSignUp]
class CompleteSignUpPageRoute
    extends _i90.PageRouteInfo<CompleteSignUpPageRouteArgs> {
  CompleteSignUpPageRoute({
    _i94.Key? key,
    bool isBackLogin = false,
    bool popOnBack = false,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          CompleteSignUpPageRoute.name,
          args: CompleteSignUpPageRouteArgs(
            key: key,
            isBackLogin: isBackLogin,
            popOnBack: popOnBack,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteSignUpPageRoute';

  static const _i90.PageInfo<CompleteSignUpPageRouteArgs> page =
      _i90.PageInfo<CompleteSignUpPageRouteArgs>(name);
}

class CompleteSignUpPageRouteArgs {
  const CompleteSignUpPageRouteArgs({
    this.key,
    this.isBackLogin = false,
    this.popOnBack = false,
  });

  final _i94.Key? key;

  final bool isBackLogin;

  final bool popOnBack;

  @override
  String toString() {
    return 'CompleteSignUpPageRouteArgs{key: $key, isBackLogin: $isBackLogin, popOnBack: $popOnBack}';
  }
}

/// generated route for
/// [_i27.ConfirmPage]
class ConfirmPageRoute extends _i90.PageRouteInfo<void> {
  const ConfirmPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ConfirmPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ConfirmPayment]
class ConfirmPaymentPageRoute extends _i90.PageRouteInfo<void> {
  const ConfirmPaymentPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ConfirmPaymentPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmPaymentPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i29.CongratulationsUpdatePhone]
class CongratulationsUpdatePhoneRoute extends _i90.PageRouteInfo<void> {
  const CongratulationsUpdatePhoneRoute({List<_i90.PageRouteInfo>? children})
      : super(
          CongratulationsUpdatePhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'CongratulationsUpdatePhoneRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i30.DataPrivacy]
class DataPrivacyPageRoute extends _i90.PageRouteInfo<void> {
  const DataPrivacyPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          DataPrivacyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DataPrivacyPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i31.DeleteAccount]
class DeleteAccountPageRoute extends _i90.PageRouteInfo<void> {
  const DeleteAccountPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          DeleteAccountPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteAccountPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i32.Discount]
class DiscountRoute extends _i90.PageRouteInfo<void> {
  const DiscountRoute({List<_i90.PageRouteInfo>? children})
      : super(
          DiscountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscountRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i33.DownloadNogomDialog]
class DownloadNogomDialogRoute extends _i90.PageRouteInfo<void> {
  const DownloadNogomDialogRoute({List<_i90.PageRouteInfo>? children})
      : super(
          DownloadNogomDialogRoute.name,
          initialChildren: children,
        );

  static const String name = 'DownloadNogomDialogRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i34.Filter]
class FilterPageRoute extends _i90.PageRouteInfo<FilterPageRouteArgs> {
  FilterPageRoute({
    _i106.Key? key,
    required _i34.FilterType filterType,
    required _i107.Future<void> Function(_i93.GetInfluencersParams) onFilter,
    required _i93.GetInfluencersParams initialParams,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          FilterPageRoute.name,
          args: FilterPageRouteArgs(
            key: key,
            filterType: filterType,
            onFilter: onFilter,
            initialParams: initialParams,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterPageRoute';

  static const _i90.PageInfo<FilterPageRouteArgs> page =
      _i90.PageInfo<FilterPageRouteArgs>(name);
}

class FilterPageRouteArgs {
  const FilterPageRouteArgs({
    this.key,
    required this.filterType,
    required this.onFilter,
    required this.initialParams,
  });

  final _i106.Key? key;

  final _i34.FilterType filterType;

  final _i107.Future<void> Function(_i93.GetInfluencersParams) onFilter;

  final _i93.GetInfluencersParams initialParams;

  @override
  String toString() {
    return 'FilterPageRouteArgs{key: $key, filterType: $filterType, onFilter: $onFilter, initialParams: $initialParams}';
  }
}

/// generated route for
/// [_i35.ForceUpdateWidget]
class ForceUpdateWidgetRoute
    extends _i90.PageRouteInfo<ForceUpdateWidgetRouteArgs> {
  ForceUpdateWidgetRoute({
    _i106.Key? key,
    required String storeUrl,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ForceUpdateWidgetRoute.name,
          args: ForceUpdateWidgetRouteArgs(
            key: key,
            storeUrl: storeUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'ForceUpdateWidgetRoute';

  static const _i90.PageInfo<ForceUpdateWidgetRouteArgs> page =
      _i90.PageInfo<ForceUpdateWidgetRouteArgs>(name);
}

class ForceUpdateWidgetRouteArgs {
  const ForceUpdateWidgetRouteArgs({
    this.key,
    required this.storeUrl,
  });

  final _i106.Key? key;

  final String storeUrl;

  @override
  String toString() {
    return 'ForceUpdateWidgetRouteArgs{key: $key, storeUrl: $storeUrl}';
  }
}

/// generated route for
/// [_i36.HelpAndPrivacy]
class HelpAndPrivacyPageRoute extends _i90.PageRouteInfo<void> {
  const HelpAndPrivacyPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          HelpAndPrivacyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpAndPrivacyPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i37.Home]
class HomePageRoute extends _i90.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({
    _i96.Key? key,
    int index = 0,
    String? initialChannelId,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          HomePageRoute.name,
          args: HomePageRouteArgs(
            key: key,
            index: index,
            initialChannelId: initialChannelId,
          ),
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i90.PageInfo<HomePageRouteArgs> page =
      _i90.PageInfo<HomePageRouteArgs>(name);
}

class HomePageRouteArgs {
  const HomePageRouteArgs({
    this.key,
    this.index = 0,
    this.initialChannelId,
  });

  final _i96.Key? key;

  final int index;

  final String? initialChannelId;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key, index: $index, initialChannelId: $initialChannelId}';
  }
}

/// generated route for
/// [_i38.HowItWorks]
class HowItWorksPageRoute extends _i90.PageRouteInfo<void> {
  const HowItWorksPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          HowItWorksPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HowItWorksPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i39.ImagePreviewPage]
class ImagePreviewPageRoute
    extends _i90.PageRouteInfo<ImagePreviewPageRouteArgs> {
  ImagePreviewPageRoute({
    _i94.Key? key,
    required List<String> listImages,
    String? initialImage,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ImagePreviewPageRoute.name,
          args: ImagePreviewPageRouteArgs(
            key: key,
            listImages: listImages,
            initialImage: initialImage,
          ),
          initialChildren: children,
        );

  static const String name = 'ImagePreviewPageRoute';

  static const _i90.PageInfo<ImagePreviewPageRouteArgs> page =
      _i90.PageInfo<ImagePreviewPageRouteArgs>(name);
}

class ImagePreviewPageRouteArgs {
  const ImagePreviewPageRouteArgs({
    this.key,
    required this.listImages,
    this.initialImage,
  });

  final _i94.Key? key;

  final List<String> listImages;

  final String? initialImage;

  @override
  String toString() {
    return 'ImagePreviewPageRouteArgs{key: $key, listImages: $listImages, initialImage: $initialImage}';
  }
}

/// generated route for
/// [_i40.ImageZoom]
class ImageZoomRoute extends _i90.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({
    _i96.Key? key,
    required String image,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ImageZoomRoute.name,
          args: ImageZoomRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageZoomRoute';

  static const _i90.PageInfo<ImageZoomRouteArgs> page =
      _i90.PageInfo<ImageZoomRouteArgs>(name);
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({
    this.key,
    required this.image,
  });

  final _i96.Key? key;

  final String image;

  @override
  String toString() {
    return 'ImageZoomRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i41.InfluencerServices]
class InfluencerServicesPageRoute
    extends _i90.PageRouteInfo<InfluencerServicesPageRouteArgs> {
  InfluencerServicesPageRoute({
    _i94.Key? key,
    _i108.StarInfoModel? starInfoModel,
    _i109.ServiceDetailsModel? serviceDetailsModel,
    List<_i103.CustomOfferModel>? customOfferDataList,
    List<_i103.SendCustomOfferModel>? sendCustomOfferModelList,
    int? campaignId,
    double? delegationFeeRate,
    String? influencerNotes,
    _i74.StarProfileDetailsController? starProfileDetailsController,
    _i104.OfferConfig? offerConfig,
    _i91.CampaignProfileModel? campaignProfileModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          InfluencerServicesPageRoute.name,
          args: InfluencerServicesPageRouteArgs(
            key: key,
            starInfoModel: starInfoModel,
            serviceDetailsModel: serviceDetailsModel,
            customOfferDataList: customOfferDataList,
            sendCustomOfferModelList: sendCustomOfferModelList,
            campaignId: campaignId,
            delegationFeeRate: delegationFeeRate,
            influencerNotes: influencerNotes,
            starProfileDetailsController: starProfileDetailsController,
            offerConfig: offerConfig,
            campaignProfileModel: campaignProfileModel,
          ),
          initialChildren: children,
        );

  static const String name = 'InfluencerServicesPageRoute';

  static const _i90.PageInfo<InfluencerServicesPageRouteArgs> page =
      _i90.PageInfo<InfluencerServicesPageRouteArgs>(name);
}

class InfluencerServicesPageRouteArgs {
  const InfluencerServicesPageRouteArgs({
    this.key,
    this.starInfoModel,
    this.serviceDetailsModel,
    this.customOfferDataList,
    this.sendCustomOfferModelList,
    this.campaignId,
    this.delegationFeeRate,
    this.influencerNotes,
    this.starProfileDetailsController,
    this.offerConfig,
    this.campaignProfileModel,
  });

  final _i94.Key? key;

  final _i108.StarInfoModel? starInfoModel;

  final _i109.ServiceDetailsModel? serviceDetailsModel;

  final List<_i103.CustomOfferModel>? customOfferDataList;

  final List<_i103.SendCustomOfferModel>? sendCustomOfferModelList;

  final int? campaignId;

  final double? delegationFeeRate;

  final String? influencerNotes;

  final _i74.StarProfileDetailsController? starProfileDetailsController;

  final _i104.OfferConfig? offerConfig;

  final _i91.CampaignProfileModel? campaignProfileModel;

  @override
  String toString() {
    return 'InfluencerServicesPageRouteArgs{key: $key, starInfoModel: $starInfoModel, serviceDetailsModel: $serviceDetailsModel, customOfferDataList: $customOfferDataList, sendCustomOfferModelList: $sendCustomOfferModelList, campaignId: $campaignId, delegationFeeRate: $delegationFeeRate, influencerNotes: $influencerNotes, starProfileDetailsController: $starProfileDetailsController, offerConfig: $offerConfig, campaignProfileModel: $campaignProfileModel}';
  }
}

/// generated route for
/// [_i42.InviteFriends]
class InviteFriendsPageRoute extends _i90.PageRouteInfo<void> {
  const InviteFriendsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          InviteFriendsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteFriendsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i43.Invoices]
class InvoicesPageRoute extends _i90.PageRouteInfo<void> {
  const InvoicesPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          InvoicesPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'InvoicesPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i44.LeaveReview]
class LeaveReviewPageRoute
    extends _i90.PageRouteInfo<LeaveReviewPageRouteArgs> {
  LeaveReviewPageRoute({
    _i96.Key? key,
    required _i91.CampaignProfileModel profileModel,
    required int campaignId,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          LeaveReviewPageRoute.name,
          args: LeaveReviewPageRouteArgs(
            key: key,
            profileModel: profileModel,
            campaignId: campaignId,
          ),
          initialChildren: children,
        );

  static const String name = 'LeaveReviewPageRoute';

  static const _i90.PageInfo<LeaveReviewPageRouteArgs> page =
      _i90.PageInfo<LeaveReviewPageRouteArgs>(name);
}

class LeaveReviewPageRouteArgs {
  const LeaveReviewPageRouteArgs({
    this.key,
    required this.profileModel,
    required this.campaignId,
  });

  final _i96.Key? key;

  final _i91.CampaignProfileModel profileModel;

  final int campaignId;

  @override
  String toString() {
    return 'LeaveReviewPageRouteArgs{key: $key, profileModel: $profileModel, campaignId: $campaignId}';
  }
}

/// generated route for
/// [_i45.Login]
class AuthPageRoute extends _i90.PageRouteInfo<AuthPageRouteArgs> {
  AuthPageRoute({
    _i96.Key? key,
    bool fromMore = false,
    bool initialTab = false,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          AuthPageRoute.name,
          args: AuthPageRouteArgs(
            key: key,
            fromMore: fromMore,
            initialTab: initialTab,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthPageRoute';

  static const _i90.PageInfo<AuthPageRouteArgs> page =
      _i90.PageInfo<AuthPageRouteArgs>(name);
}

class AuthPageRouteArgs {
  const AuthPageRouteArgs({
    this.key,
    this.fromMore = false,
    this.initialTab = false,
  });

  final _i96.Key? key;

  final bool fromMore;

  final bool initialTab;

  @override
  String toString() {
    return 'AuthPageRouteArgs{key: $key, fromMore: $fromMore, initialTab: $initialTab}';
  }
}

/// generated route for
/// [_i46.MyPrevAdsAndMyClientsPage]
class MyPrevAdsAndMyClientsPageRoute
    extends _i90.PageRouteInfo<MyPrevAdsAndMyClientsPageRouteArgs> {
  MyPrevAdsAndMyClientsPageRoute({
    _i106.Key? key,
    required _i110.CollaborationsModel? collaborationsModel,
    int initialTabIndex = 0,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          MyPrevAdsAndMyClientsPageRoute.name,
          args: MyPrevAdsAndMyClientsPageRouteArgs(
            key: key,
            collaborationsModel: collaborationsModel,
            initialTabIndex: initialTabIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'MyPrevAdsAndMyClientsPageRoute';

  static const _i90.PageInfo<MyPrevAdsAndMyClientsPageRouteArgs> page =
      _i90.PageInfo<MyPrevAdsAndMyClientsPageRouteArgs>(name);
}

class MyPrevAdsAndMyClientsPageRouteArgs {
  const MyPrevAdsAndMyClientsPageRouteArgs({
    this.key,
    required this.collaborationsModel,
    this.initialTabIndex = 0,
  });

  final _i106.Key? key;

  final _i110.CollaborationsModel? collaborationsModel;

  final int initialTabIndex;

  @override
  String toString() {
    return 'MyPrevAdsAndMyClientsPageRouteArgs{key: $key, collaborationsModel: $collaborationsModel, initialTabIndex: $initialTabIndex}';
  }
}

/// generated route for
/// [_i47.MyPublicProfile]
class MyPublicProfileRoute extends _i90.PageRouteInfo<void> {
  const MyPublicProfileRoute({List<_i90.PageRouteInfo>? children})
      : super(
          MyPublicProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPublicProfileRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i48.MyWallet]
class MyWalletRoute extends _i90.PageRouteInfo<MyWalletRouteArgs> {
  MyWalletRoute({
    _i94.Key? key,
    int index = 0,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          MyWalletRoute.name,
          args: MyWalletRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static const _i90.PageInfo<MyWalletRouteArgs> page =
      _i90.PageInfo<MyWalletRouteArgs>(name);
}

class MyWalletRouteArgs {
  const MyWalletRouteArgs({
    this.key,
    this.index = 0,
  });

  final _i94.Key? key;

  final int index;

  @override
  String toString() {
    return 'MyWalletRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i49.NotifySettings]
class NotifySettingsPageRoute extends _i90.PageRouteInfo<void> {
  const NotifySettingsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          NotifySettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotifySettingsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i50.Onboarding]
class OnboardingPageRoute extends _i90.PageRouteInfo<void> {
  const OnboardingPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          OnboardingPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i51.OneHDiscountQuestions]
class OneHDiscountQuestionsRoute extends _i90.PageRouteInfo<void> {
  const OneHDiscountQuestionsRoute({List<_i90.PageRouteInfo>? children})
      : super(
          OneHDiscountQuestionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OneHDiscountQuestionsRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i52.OrderDetails]
class OrderDetailsPageRoute
    extends _i90.PageRouteInfo<OrderDetailsPageRouteArgs> {
  OrderDetailsPageRoute({
    _i94.Key? key,
    _i91.CampaignModel? campaignModel,
    int? campId,
    _i99.AiCampaignDataModel? aiCampaignDataModel,
    bool isFromWallet = false,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          OrderDetailsPageRoute.name,
          args: OrderDetailsPageRouteArgs(
            key: key,
            campaignModel: campaignModel,
            campId: campId,
            aiCampaignDataModel: aiCampaignDataModel,
            isFromWallet: isFromWallet,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsPageRoute';

  static const _i90.PageInfo<OrderDetailsPageRouteArgs> page =
      _i90.PageInfo<OrderDetailsPageRouteArgs>(name);
}

class OrderDetailsPageRouteArgs {
  const OrderDetailsPageRouteArgs({
    this.key,
    this.campaignModel,
    this.campId,
    this.aiCampaignDataModel,
    this.isFromWallet = false,
  });

  final _i94.Key? key;

  final _i91.CampaignModel? campaignModel;

  final int? campId;

  final _i99.AiCampaignDataModel? aiCampaignDataModel;

  final bool isFromWallet;

  @override
  String toString() {
    return 'OrderDetailsPageRouteArgs{key: $key, campaignModel: $campaignModel, campId: $campId, aiCampaignDataModel: $aiCampaignDataModel, isFromWallet: $isFromWallet}';
  }
}

/// generated route for
/// [_i53.OrderStarDetails]
class OrderStarDetailsPageRoute
    extends _i90.PageRouteInfo<OrderStarDetailsPageRouteArgs> {
  OrderStarDetailsPageRoute({
    _i94.Key? key,
    required _i91.CampaignProfileModel campaignProfileModel,
    required _i91.CampaignModel campaignModel,
    required _i108.StarInfoModel starInfoModel,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          OrderStarDetailsPageRoute.name,
          args: OrderStarDetailsPageRouteArgs(
            key: key,
            campaignProfileModel: campaignProfileModel,
            campaignModel: campaignModel,
            starInfoModel: starInfoModel,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderStarDetailsPageRoute';

  static const _i90.PageInfo<OrderStarDetailsPageRouteArgs> page =
      _i90.PageInfo<OrderStarDetailsPageRouteArgs>(name);
}

class OrderStarDetailsPageRouteArgs {
  const OrderStarDetailsPageRouteArgs({
    this.key,
    required this.campaignProfileModel,
    required this.campaignModel,
    required this.starInfoModel,
  });

  final _i94.Key? key;

  final _i91.CampaignProfileModel campaignProfileModel;

  final _i91.CampaignModel campaignModel;

  final _i108.StarInfoModel starInfoModel;

  @override
  String toString() {
    return 'OrderStarDetailsPageRouteArgs{key: $key, campaignProfileModel: $campaignProfileModel, campaignModel: $campaignModel, starInfoModel: $starInfoModel}';
  }
}

/// generated route for
/// [_i54.OtpEmail]
class OtpEmailRoute extends _i90.PageRouteInfo<void> {
  const OtpEmailRoute({List<_i90.PageRouteInfo>? children})
      : super(
          OtpEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpEmailRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i55.OtpPhone]
class OtpPhoneRoute extends _i90.PageRouteInfo<OtpPhoneRouteArgs> {
  OtpPhoneRoute({
    _i94.Key? key,
    required String phone,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          OtpPhoneRoute.name,
          args: OtpPhoneRouteArgs(
            key: key,
            phone: phone,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpPhoneRoute';

  static const _i90.PageInfo<OtpPhoneRouteArgs> page =
      _i90.PageInfo<OtpPhoneRouteArgs>(name);
}

class OtpPhoneRouteArgs {
  const OtpPhoneRouteArgs({
    this.key,
    required this.phone,
  });

  final _i94.Key? key;

  final String phone;

  @override
  String toString() {
    return 'OtpPhoneRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [_i56.PartnerProfile]
class PartnerProfileRoute extends _i90.PageRouteInfo<PartnerProfileRouteArgs> {
  PartnerProfileRoute({
    _i96.Key? key,
    required String profileCompletePercent,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          PartnerProfileRoute.name,
          args: PartnerProfileRouteArgs(
            key: key,
            profileCompletePercent: profileCompletePercent,
          ),
          initialChildren: children,
        );

  static const String name = 'PartnerProfileRoute';

  static const _i90.PageInfo<PartnerProfileRouteArgs> page =
      _i90.PageInfo<PartnerProfileRouteArgs>(name);
}

class PartnerProfileRouteArgs {
  const PartnerProfileRouteArgs({
    this.key,
    required this.profileCompletePercent,
  });

  final _i96.Key? key;

  final String profileCompletePercent;

  @override
  String toString() {
    return 'PartnerProfileRouteArgs{key: $key, profileCompletePercent: $profileCompletePercent}';
  }
}

/// generated route for
/// [_i57.Partners]
class PartnersPageRoute extends _i90.PageRouteInfo<PartnersPageRouteArgs> {
  PartnersPageRoute({
    _i96.Key? key,
    required _i111.PartnerProfileModel profileModel,
    required bool newPartner,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          PartnersPageRoute.name,
          args: PartnersPageRouteArgs(
            key: key,
            profileModel: profileModel,
            newPartner: newPartner,
          ),
          initialChildren: children,
        );

  static const String name = 'PartnersPageRoute';

  static const _i90.PageInfo<PartnersPageRouteArgs> page =
      _i90.PageInfo<PartnersPageRouteArgs>(name);
}

class PartnersPageRouteArgs {
  const PartnersPageRouteArgs({
    this.key,
    required this.profileModel,
    required this.newPartner,
  });

  final _i96.Key? key;

  final _i111.PartnerProfileModel profileModel;

  final bool newPartner;

  @override
  String toString() {
    return 'PartnersPageRouteArgs{key: $key, profileModel: $profileModel, newPartner: $newPartner}';
  }
}

/// generated route for
/// [_i58.Password]
class PasswordRoute extends _i90.PageRouteInfo<void> {
  const PasswordRoute({List<_i90.PageRouteInfo>? children})
      : super(
          PasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'PasswordRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i59.PaymentPage]
class PaymentPageRoute extends _i90.PageRouteInfo<void> {
  const PaymentPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          PaymentPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i60.PdfViewerScreen]
class PdfViewerPageRoute extends _i90.PageRouteInfo<PdfViewerPageRouteArgs> {
  PdfViewerPageRoute({
    _i94.Key? key,
    required String pdfUrl,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          PdfViewerPageRoute.name,
          args: PdfViewerPageRouteArgs(
            key: key,
            pdfUrl: pdfUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewerPageRoute';

  static const _i90.PageInfo<PdfViewerPageRouteArgs> page =
      _i90.PageInfo<PdfViewerPageRouteArgs>(name);
}

class PdfViewerPageRouteArgs {
  const PdfViewerPageRouteArgs({
    this.key,
    required this.pdfUrl,
  });

  final _i94.Key? key;

  final String pdfUrl;

  @override
  String toString() {
    return 'PdfViewerPageRouteArgs{key: $key, pdfUrl: $pdfUrl}';
  }
}

/// generated route for
/// [_i61.PreparingAiCampPage]
class PreparingAiCampPageRoute
    extends _i90.PageRouteInfo<PreparingAiCampPageRouteArgs> {
  PreparingAiCampPageRoute({
    _i94.Key? key,
    required bool fromEdit,
    int? campId,
    required String urlLink,
    int? starId,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          PreparingAiCampPageRoute.name,
          args: PreparingAiCampPageRouteArgs(
            key: key,
            fromEdit: fromEdit,
            campId: campId,
            urlLink: urlLink,
            starId: starId,
          ),
          initialChildren: children,
        );

  static const String name = 'PreparingAiCampPageRoute';

  static const _i90.PageInfo<PreparingAiCampPageRouteArgs> page =
      _i90.PageInfo<PreparingAiCampPageRouteArgs>(name);
}

class PreparingAiCampPageRouteArgs {
  const PreparingAiCampPageRouteArgs({
    this.key,
    required this.fromEdit,
    this.campId,
    required this.urlLink,
    this.starId,
  });

  final _i94.Key? key;

  final bool fromEdit;

  final int? campId;

  final String urlLink;

  final int? starId;

  @override
  String toString() {
    return 'PreparingAiCampPageRouteArgs{key: $key, fromEdit: $fromEdit, campId: $campId, urlLink: $urlLink, starId: $starId}';
  }
}

/// generated route for
/// [_i62.PrivateInfo]
class PrivateInfoRoute extends _i90.PageRouteInfo<void> {
  const PrivateInfoRoute({List<_i90.PageRouteInfo>? children})
      : super(
          PrivateInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivateInfoRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i63.ProductViewWidget]
class ProductViewWidgetRoute
    extends _i90.PageRouteInfo<ProductViewWidgetRouteArgs> {
  ProductViewWidgetRoute({
    _i94.Key? key,
    required List<_i112.StoreProductListModel> arrProduct,
    required _i113.AgentStoreModel storeModel,
    required String path,
    required String storePath,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ProductViewWidgetRoute.name,
          args: ProductViewWidgetRouteArgs(
            key: key,
            arrProduct: arrProduct,
            storeModel: storeModel,
            path: path,
            storePath: storePath,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductViewWidgetRoute';

  static const _i90.PageInfo<ProductViewWidgetRouteArgs> page =
      _i90.PageInfo<ProductViewWidgetRouteArgs>(name);
}

class ProductViewWidgetRouteArgs {
  const ProductViewWidgetRouteArgs({
    this.key,
    required this.arrProduct,
    required this.storeModel,
    required this.path,
    required this.storePath,
  });

  final _i94.Key? key;

  final List<_i112.StoreProductListModel> arrProduct;

  final _i113.AgentStoreModel storeModel;

  final String path;

  final String storePath;

  @override
  String toString() {
    return 'ProductViewWidgetRouteArgs{key: $key, arrProduct: $arrProduct, storeModel: $storeModel, path: $path, storePath: $storePath}';
  }
}

/// generated route for
/// [_i64.ResetPassword]
class ResetPasswordPageRoute extends _i90.PageRouteInfo<void> {
  const ResetPasswordPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          ResetPasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i65.ReviewSocialSurvey]
class ReviewSocialSurveyRoute
    extends _i90.PageRouteInfo<ReviewSocialSurveyRouteArgs> {
  ReviewSocialSurveyRoute({
    _i96.Key? key,
    required String url,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          ReviewSocialSurveyRoute.name,
          args: ReviewSocialSurveyRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewSocialSurveyRoute';

  static const _i90.PageInfo<ReviewSocialSurveyRouteArgs> page =
      _i90.PageInfo<ReviewSocialSurveyRouteArgs>(name);
}

class ReviewSocialSurveyRouteArgs {
  const ReviewSocialSurveyRouteArgs({
    this.key,
    required this.url,
  });

  final _i96.Key? key;

  final String url;

  @override
  String toString() {
    return 'ReviewSocialSurveyRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i66.SearchScreenWidget]
class SearchPageScreeRoute
    extends _i90.PageRouteInfo<SearchPageScreeRouteArgs> {
  SearchPageScreeRoute({
    _i94.Key? key,
    required _i114.StarHeaderKeyEnum type,
    required _i34.FilterController filterController,
    _i1.AIAddStarsController? aiAddStarsController,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          SearchPageScreeRoute.name,
          args: SearchPageScreeRouteArgs(
            key: key,
            type: type,
            filterController: filterController,
            aiAddStarsController: aiAddStarsController,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchPageScreeRoute';

  static const _i90.PageInfo<SearchPageScreeRouteArgs> page =
      _i90.PageInfo<SearchPageScreeRouteArgs>(name);
}

class SearchPageScreeRouteArgs {
  const SearchPageScreeRouteArgs({
    this.key,
    required this.type,
    required this.filterController,
    this.aiAddStarsController,
  });

  final _i94.Key? key;

  final _i114.StarHeaderKeyEnum type;

  final _i34.FilterController filterController;

  final _i1.AIAddStarsController? aiAddStarsController;

  @override
  String toString() {
    return 'SearchPageScreeRouteArgs{key: $key, type: $type, filterController: $filterController, aiAddStarsController: $aiAddStarsController}';
  }
}

/// generated route for
/// [_i67.SelectAboutUs]
class SelectAboutUsPage extends _i90.PageRouteInfo<SelectAboutUsPageArgs> {
  SelectAboutUsPage({
    _i96.Key? key,
    required List<_i115.AboutUsItemModel> aboutUsList,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          SelectAboutUsPage.name,
          args: SelectAboutUsPageArgs(
            key: key,
            aboutUsList: aboutUsList,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectAboutUsPage';

  static const _i90.PageInfo<SelectAboutUsPageArgs> page =
      _i90.PageInfo<SelectAboutUsPageArgs>(name);
}

class SelectAboutUsPageArgs {
  const SelectAboutUsPageArgs({
    this.key,
    required this.aboutUsList,
  });

  final _i96.Key? key;

  final List<_i115.AboutUsItemModel> aboutUsList;

  @override
  String toString() {
    return 'SelectAboutUsPageArgs{key: $key, aboutUsList: $aboutUsList}';
  }
}

/// generated route for
/// [_i68.SelectPayMethod]
class SelectPayMethod extends _i90.PageRouteInfo<void> {
  const SelectPayMethod({List<_i90.PageRouteInfo>? children})
      : super(
          SelectPayMethod.name,
          initialChildren: children,
        );

  static const String name = 'SelectPayMethod';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i69.SendOffer]
class SendOfferPageRoute extends _i90.PageRouteInfo<SendOfferPageRouteArgs> {
  SendOfferPageRoute({
    _i96.Key? key,
    _i108.StarInfoModel? starInfoModel,
    bool fromHome = false,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          SendOfferPageRoute.name,
          args: SendOfferPageRouteArgs(
            key: key,
            starInfoModel: starInfoModel,
            fromHome: fromHome,
          ),
          initialChildren: children,
        );

  static const String name = 'SendOfferPageRoute';

  static const _i90.PageInfo<SendOfferPageRouteArgs> page =
      _i90.PageInfo<SendOfferPageRouteArgs>(name);
}

class SendOfferPageRouteArgs {
  const SendOfferPageRouteArgs({
    this.key,
    this.starInfoModel,
    this.fromHome = false,
  });

  final _i96.Key? key;

  final _i108.StarInfoModel? starInfoModel;

  final bool fromHome;

  @override
  String toString() {
    return 'SendOfferPageRouteArgs{key: $key, starInfoModel: $starInfoModel, fromHome: $fromHome}';
  }
}

/// generated route for
/// [_i70.SettingsLocations]
class SettingsLocationsPageRoute extends _i90.PageRouteInfo<void> {
  const SettingsLocationsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          SettingsLocationsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsLocationsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i71.SettingsPage]
class SettingsPageRoute extends _i90.PageRouteInfo<void> {
  const SettingsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          SettingsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i72.SignUp]
class SignUpPageRoute extends _i90.PageRouteInfo<void> {
  const SignUpPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          SignUpPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i73.Splash]
class Splash extends _i90.PageRouteInfo<void> {
  const Splash({List<_i90.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i66.StarListPageScreenWidget]
class StarListPageScreenWidgetRoute
    extends _i90.PageRouteInfo<StarListPageScreenWidgetRouteArgs> {
  StarListPageScreenWidgetRoute({
    _i94.Key? key,
    required _i114.StarHeaderKeyEnum type,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          StarListPageScreenWidgetRoute.name,
          args: StarListPageScreenWidgetRouteArgs(
            key: key,
            type: type,
          ),
          initialChildren: children,
        );

  static const String name = 'StarListPageScreenWidgetRoute';

  static const _i90.PageInfo<StarListPageScreenWidgetRouteArgs> page =
      _i90.PageInfo<StarListPageScreenWidgetRouteArgs>(name);
}

class StarListPageScreenWidgetRouteArgs {
  const StarListPageScreenWidgetRouteArgs({
    this.key,
    required this.type,
  });

  final _i94.Key? key;

  final _i114.StarHeaderKeyEnum type;

  @override
  String toString() {
    return 'StarListPageScreenWidgetRouteArgs{key: $key, type: $type}';
  }
}

/// generated route for
/// [_i74.StarProfileDetails]
class StarProfileDetailsPageRoute
    extends _i90.PageRouteInfo<StarProfileDetailsPageRouteArgs> {
  StarProfileDetailsPageRoute({
    _i94.Key? key,
    required _i108.StarInfoModel starModel,
    _i95.CampaignAgentModel? campaignAgentModel,
    int? campaignId,
    double? delegationFeeRate,
    bool? fromServices,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          StarProfileDetailsPageRoute.name,
          args: StarProfileDetailsPageRouteArgs(
            key: key,
            starModel: starModel,
            campaignAgentModel: campaignAgentModel,
            campaignId: campaignId,
            delegationFeeRate: delegationFeeRate,
            fromServices: fromServices,
          ),
          initialChildren: children,
        );

  static const String name = 'StarProfileDetailsPageRoute';

  static const _i90.PageInfo<StarProfileDetailsPageRouteArgs> page =
      _i90.PageInfo<StarProfileDetailsPageRouteArgs>(name);
}

class StarProfileDetailsPageRouteArgs {
  const StarProfileDetailsPageRouteArgs({
    this.key,
    required this.starModel,
    this.campaignAgentModel,
    this.campaignId,
    this.delegationFeeRate,
    this.fromServices,
  });

  final _i94.Key? key;

  final _i108.StarInfoModel starModel;

  final _i95.CampaignAgentModel? campaignAgentModel;

  final int? campaignId;

  final double? delegationFeeRate;

  final bool? fromServices;

  @override
  String toString() {
    return 'StarProfileDetailsPageRouteArgs{key: $key, starModel: $starModel, campaignAgentModel: $campaignAgentModel, campaignId: $campaignId, delegationFeeRate: $delegationFeeRate, fromServices: $fromServices}';
  }
}

/// generated route for
/// [_i75.Stars]
class StarsPageRoute extends _i90.PageRouteInfo<StarsPageRouteArgs> {
  StarsPageRoute({
    _i94.Key? key,
    required _i37.HomeController homeController,
    required _i75.StarsController starsController,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          StarsPageRoute.name,
          args: StarsPageRouteArgs(
            key: key,
            homeController: homeController,
            starsController: starsController,
          ),
          initialChildren: children,
        );

  static const String name = 'StarsPageRoute';

  static const _i90.PageInfo<StarsPageRouteArgs> page =
      _i90.PageInfo<StarsPageRouteArgs>(name);
}

class StarsPageRouteArgs {
  const StarsPageRouteArgs({
    this.key,
    required this.homeController,
    required this.starsController,
  });

  final _i94.Key? key;

  final _i37.HomeController homeController;

  final _i75.StarsController starsController;

  @override
  String toString() {
    return 'StarsPageRouteArgs{key: $key, homeController: $homeController, starsController: $starsController}';
  }
}

/// generated route for
/// [_i63.StoreProductViewWidget]
class StoreProductViewWidgetRoute
    extends _i90.PageRouteInfo<StoreProductViewWidgetRouteArgs> {
  StoreProductViewWidgetRoute({
    _i94.Key? key,
    required _i74.StarProfileDetailsController controller,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          StoreProductViewWidgetRoute.name,
          args: StoreProductViewWidgetRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'StoreProductViewWidgetRoute';

  static const _i90.PageInfo<StoreProductViewWidgetRouteArgs> page =
      _i90.PageInfo<StoreProductViewWidgetRouteArgs>(name);
}

class StoreProductViewWidgetRouteArgs {
  const StoreProductViewWidgetRouteArgs({
    this.key,
    required this.controller,
  });

  final _i94.Key? key;

  final _i74.StarProfileDetailsController controller;

  @override
  String toString() {
    return 'StoreProductViewWidgetRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i76.SurveyQuestions]
class SurveyQuestionsPageRoute extends _i90.PageRouteInfo<void> {
  const SurveyQuestionsPageRoute({List<_i90.PageRouteInfo>? children})
      : super(
          SurveyQuestionsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SurveyQuestionsPageRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i77.Terms]
class Terms extends _i90.PageRouteInfo<void> {
  const Terms({List<_i90.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i78.TrustAndVerification]
class TrustAndVerificationRoute extends _i90.PageRouteInfo<void> {
  const TrustAndVerificationRoute({List<_i90.PageRouteInfo>? children})
      : super(
          TrustAndVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrustAndVerificationRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i79.TrustedPage]
class TrustedPageRoute extends _i90.PageRouteInfo<TrustedPageRouteArgs> {
  TrustedPageRoute({
    _i96.Key? key,
    required _i116.ViewMawthooqStatusRequester statusRequester,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          TrustedPageRoute.name,
          args: TrustedPageRouteArgs(
            key: key,
            statusRequester: statusRequester,
          ),
          initialChildren: children,
        );

  static const String name = 'TrustedPageRoute';

  static const _i90.PageInfo<TrustedPageRouteArgs> page =
      _i90.PageInfo<TrustedPageRouteArgs>(name);
}

class TrustedPageRouteArgs {
  const TrustedPageRouteArgs({
    this.key,
    required this.statusRequester,
  });

  final _i96.Key? key;

  final _i116.ViewMawthooqStatusRequester statusRequester;

  @override
  String toString() {
    return 'TrustedPageRouteArgs{key: $key, statusRequester: $statusRequester}';
  }
}

/// generated route for
/// [_i80.UpdateEmail]
class UpdateEmailRoute extends _i90.PageRouteInfo<void> {
  const UpdateEmailRoute({List<_i90.PageRouteInfo>? children})
      : super(
          UpdateEmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateEmailRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i81.UpdatePhone]
class UpdatePhoneRoute extends _i90.PageRouteInfo<void> {
  const UpdatePhoneRoute({List<_i90.PageRouteInfo>? children})
      : super(
          UpdatePhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdatePhoneRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i82.UserName]
class UserNameRoute extends _i90.PageRouteInfo<void> {
  const UserNameRoute({List<_i90.PageRouteInfo>? children})
      : super(
          UserNameRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserNameRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i83.VerifyEmail]
class VerifyEmailRoute extends _i90.PageRouteInfo<VerifyEmailRouteArgs> {
  VerifyEmailRoute({
    _i96.Key? key,
    bool showHeader = true,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          VerifyEmailRoute.name,
          args: VerifyEmailRouteArgs(
            key: key,
            showHeader: showHeader,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyEmailRoute';

  static const _i90.PageInfo<VerifyEmailRouteArgs> page =
      _i90.PageInfo<VerifyEmailRouteArgs>(name);
}

class VerifyEmailRouteArgs {
  const VerifyEmailRouteArgs({
    this.key,
    this.showHeader = true,
  });

  final _i96.Key? key;

  final bool showHeader;

  @override
  String toString() {
    return 'VerifyEmailRouteArgs{key: $key, showHeader: $showHeader}';
  }
}

/// generated route for
/// [_i84.VerifyPhone]
class VerifyPhoneRoute extends _i90.PageRouteInfo<void> {
  const VerifyPhoneRoute({List<_i90.PageRouteInfo>? children})
      : super(
          VerifyPhoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyPhoneRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i85.Wallet]
class WalletRoute extends _i90.PageRouteInfo<void> {
  const WalletRoute({List<_i90.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i90.PageInfo<void> page = _i90.PageInfo<void>(name);
}

/// generated route for
/// [_i86.WebViewPage]
class WebViewPageRoute extends _i90.PageRouteInfo<WebViewPageRouteArgs> {
  WebViewPageRoute({
    _i96.Key? key,
    required String url,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          WebViewPageRoute.name,
          args: WebViewPageRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewPageRoute';

  static const _i90.PageInfo<WebViewPageRouteArgs> page =
      _i90.PageInfo<WebViewPageRouteArgs>(name);
}

class WebViewPageRouteArgs {
  const WebViewPageRouteArgs({
    this.key,
    required this.url,
  });

  final _i96.Key? key;

  final String url;

  @override
  String toString() {
    return 'WebViewPageRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i87.WithdrawMoney]
class WithdrawMoneyRoute extends _i90.PageRouteInfo<WithdrawMoneyRouteArgs> {
  WithdrawMoneyRoute({
    _i94.Key? key,
    required double availableBalance,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          WithdrawMoneyRoute.name,
          args: WithdrawMoneyRouteArgs(
            key: key,
            availableBalance: availableBalance,
          ),
          initialChildren: children,
        );

  static const String name = 'WithdrawMoneyRoute';

  static const _i90.PageInfo<WithdrawMoneyRouteArgs> page =
      _i90.PageInfo<WithdrawMoneyRouteArgs>(name);
}

class WithdrawMoneyRouteArgs {
  const WithdrawMoneyRouteArgs({
    this.key,
    required this.availableBalance,
  });

  final _i94.Key? key;

  final double availableBalance;

  @override
  String toString() {
    return 'WithdrawMoneyRouteArgs{key: $key, availableBalance: $availableBalance}';
  }
}

/// generated route for
/// [_i88.WithdrawSummary]
class WithdrawSummaryRoute
    extends _i90.PageRouteInfo<WithdrawSummaryRouteArgs> {
  WithdrawSummaryRoute({
    _i94.Key? key,
    required double availableBalance,
    required double withdrawBalance,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          WithdrawSummaryRoute.name,
          args: WithdrawSummaryRouteArgs(
            key: key,
            availableBalance: availableBalance,
            withdrawBalance: withdrawBalance,
          ),
          initialChildren: children,
        );

  static const String name = 'WithdrawSummaryRoute';

  static const _i90.PageInfo<WithdrawSummaryRouteArgs> page =
      _i90.PageInfo<WithdrawSummaryRouteArgs>(name);
}

class WithdrawSummaryRouteArgs {
  const WithdrawSummaryRouteArgs({
    this.key,
    required this.availableBalance,
    required this.withdrawBalance,
  });

  final _i94.Key? key;

  final double availableBalance;

  final double withdrawBalance;

  @override
  String toString() {
    return 'WithdrawSummaryRouteArgs{key: $key, availableBalance: $availableBalance, withdrawBalance: $withdrawBalance}';
  }
}

/// generated route for
/// [_i89.YoutubePage]
class YoutubePageRoute extends _i90.PageRouteInfo<YoutubePageRouteArgs> {
  YoutubePageRoute({
    _i106.Key? key,
    required List<_i113.AgentStoreModel> data,
    List<_i90.PageRouteInfo>? children,
  }) : super(
          YoutubePageRoute.name,
          args: YoutubePageRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'YoutubePageRoute';

  static const _i90.PageInfo<YoutubePageRouteArgs> page =
      _i90.PageInfo<YoutubePageRouteArgs>(name);
}

class YoutubePageRouteArgs {
  const YoutubePageRouteArgs({
    this.key,
    required this.data,
  });

  final _i106.Key? key;

  final List<_i113.AgentStoreModel> data;

  @override
  String toString() {
    return 'YoutubePageRouteArgs{key: $key, data: $data}';
  }
}
