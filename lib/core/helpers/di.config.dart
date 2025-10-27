// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/amplitude/amplitude.dart' as _i789;
import 'package:flutter_tdd/core/helpers/file_service.dart' as _i323;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i769;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i443;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i934;
import 'package:flutter_tdd/core/helpers/location_service.dart' as _i320;
import 'package:flutter_tdd/core/helpers/psermission_services.inject.dart'
    as _i1024;
import 'package:flutter_tdd/core/helpers/share_services.dart' as _i940;
import 'package:flutter_tdd/core/helpers/user_services_helper.dart' as _i690;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i652;
import 'package:flutter_tdd/core/helpers/youtube_details_helper.dart' as _i683;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i146;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i687;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i1065;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i20;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i106;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart'
    as _i627;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i466;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i974;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i893;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i45;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i798;
import 'package:flutter_tdd/core/network/network_info.dart' as _i407;
import 'package:flutter_tdd/features/account_settings/data/data_source/account_data_source.dart'
    as _i971;
import 'package:flutter_tdd/features/account_settings/data/data_source/impl_account_data_source.dart'
    as _i122;
import 'package:flutter_tdd/features/account_settings/data/repositories/impl_account_repository.dart'
    as _i846;
import 'package:flutter_tdd/features/account_settings/domain/repositories/account_repository.dart'
    as _i27;
import 'package:flutter_tdd/features/analytics/data/data_source/analytics_data_source.dart'
    as _i718;
import 'package:flutter_tdd/features/analytics/data/data_source/impl_analytics_data_source.dart'
    as _i878;
import 'package:flutter_tdd/features/analytics/data/repositories/impl_analytics_repository.dart'
    as _i33;
import 'package:flutter_tdd/features/analytics/domain/repositories/analytics_repository.dart'
    as _i88;
import 'package:flutter_tdd/features/auth/data/data_source/auth_data_source.dart'
    as _i662;
import 'package:flutter_tdd/features/auth/data/data_source/impl_auth_data_source.dart'
    as _i23;
import 'package:flutter_tdd/features/auth/data/repositories/impl_auth_repositories.dart'
    as _i988;
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repositories.dart'
    as _i674;
import 'package:flutter_tdd/features/base/data/data_sources/base_data_source.dart'
    as _i153;
import 'package:flutter_tdd/features/base/data/data_sources/impl_base_data_source.dart'
    as _i197;
import 'package:flutter_tdd/features/base/data/repositories/impl_base_repository.dart'
    as _i508;
import 'package:flutter_tdd/features/base/domain/repositories/base_repository.dart'
    as _i298;
import 'package:flutter_tdd/features/campaigns/data/data_source/campaign_data_source.dart'
    as _i799;
import 'package:flutter_tdd/features/campaigns/data/data_source/impl_campaign_data_source.dart'
    as _i1039;
import 'package:flutter_tdd/features/campaigns/data/repositories/impl_campaigns_repositories.dart'
    as _i608;
import 'package:flutter_tdd/features/campaigns/domain/repositories/campaigns_repositories.dart'
    as _i819;
import 'package:flutter_tdd/features/chat/data/data_sources/chat_data_source.dart'
    as _i243;
import 'package:flutter_tdd/features/chat/data/data_sources/impl_chat_data_source.dart'
    as _i206;
import 'package:flutter_tdd/features/chat/data/repositories/impl_chat_repository.dart'
    as _i744;
import 'package:flutter_tdd/features/chat/domain/repositories/chat_repository.dart'
    as _i1055;
import 'package:flutter_tdd/features/chat/presentation/manager/helper/general_chat_route_by_id.dart'
    as _i38;
import 'package:flutter_tdd/features/favorite/data/data_source/favorite_data_source.dart'
    as _i753;
import 'package:flutter_tdd/features/favorite/data/data_source/impl_favorite_data_source.dart'
    as _i388;
import 'package:flutter_tdd/features/favorite/data/repositories/impl_favorite_repository.dart'
    as _i442;
import 'package:flutter_tdd/features/favorite/domain/repositories/favorite_repository.dart'
    as _i260;
import 'package:flutter_tdd/features/favorite/presentation/manager/favorite_controller.dart'
    as _i1063;
import 'package:flutter_tdd/features/general/data/data_source/general_data_source.dart'
    as _i503;
import 'package:flutter_tdd/features/general/data/data_source/impl_general_data_source.dart'
    as _i69;
import 'package:flutter_tdd/features/general/data/repositories/impl_general_repository.dart'
    as _i634;
import 'package:flutter_tdd/features/general/domain/repositories/general_repository.dart'
    as _i609;
import 'package:flutter_tdd/features/get_discount/data/data_souces/discount_data_sources.dart'
    as _i714;
import 'package:flutter_tdd/features/get_discount/data/data_souces/impl_discount_data_sources.dart'
    as _i926;
import 'package:flutter_tdd/features/get_discount/data/repositories/impl_discount_repository.dart'
    as _i765;
import 'package:flutter_tdd/features/get_discount/domain/repositories/discount_repository.dart'
    as _i575;
import 'package:flutter_tdd/features/offer/data/data_sources/impl_offer_data_source.dart'
    as _i225;
import 'package:flutter_tdd/features/offer/data/data_sources/offer_data_source.dart'
    as _i848;
import 'package:flutter_tdd/features/offer/data/repositories/impl_offer_repository.dart'
    as _i860;
import 'package:flutter_tdd/features/offer/domain/repositories/offer_repository.dart'
    as _i596;
import 'package:flutter_tdd/features/profile/data/data_source/impl_profile_data_source.dart'
    as _i67;
import 'package:flutter_tdd/features/profile/data/data_source/profile_data_source.dart'
    as _i147;
import 'package:flutter_tdd/features/profile/data/repositories/impl_profile_repository.dart'
    as _i351;
import 'package:flutter_tdd/features/profile/domain/repositories/profile_repository.dart'
    as _i233;
import 'package:flutter_tdd/features/settings/data/data_source/impl_settings_data_source.dart'
    as _i708;
import 'package:flutter_tdd/features/settings/data/data_source/settings_data_source.dart'
    as _i639;
import 'package:flutter_tdd/features/settings/data/repositories/impl_settings_repository.dart'
    as _i590;
import 'package:flutter_tdd/features/settings/domain/repositories/settings_repository.dart'
    as _i8;
import 'package:flutter_tdd/features/wallet/data/data_source/impl_wallet_data_source.dart'
    as _i72;
import 'package:flutter_tdd/features/wallet/data/data_source/wallet_data_source.dart'
    as _i260;
import 'package:flutter_tdd/features/wallet/data/repositories/impl_wallet_repository.dart'
    as _i153;
import 'package:flutter_tdd/features/wallet/domain/repositories/wallet_repository.dart'
    as _i160;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i320.LocationService>(() => _i320.LocationService());
    gh.factory<_i940.ShareServices>(() => _i940.ShareServices());
    gh.factory<_i323.AppFileService>(() => _i323.AppFileService());
    gh.factory<_i1024.PermissionServices>(() => _i1024.PermissionServices());
    gh.factory<_i690.UserServicesHelper>(() => _i690.UserServicesHelper());
    gh.factory<_i683.YoutubeDetailsHelper>(() => _i683.YoutubeDetailsHelper());
    gh.singleton<_i934.LoadingHelper>(() => _i934.LoadingHelper());
    gh.lazySingleton<_i407.NetworkInfoImpl>(() => _i407.NetworkInfoImpl());
    gh.lazySingleton<_i789.AmplitudeClass>(() => _i789.AmplitudeClass());
    gh.lazySingleton<_i466.DioOptions>(() => _i466.DioOptions());
    gh.lazySingleton<_i974.HandleErrors>(() => _i974.HandleErrors());
    gh.lazySingleton<_i45.HandleRequestBody>(() => _i45.HandleRequestBody());
    gh.lazySingleton<_i893.HandleJsonResponse<dynamic>>(
        () => _i893.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i627.DioHeader>(() => _i627.DioHeader());
    gh.lazySingleton<_i1065.Patch>(() => _i1065.Patch());
    gh.lazySingleton<_i20.Post>(() => _i20.Post());
    gh.lazySingleton<_i146.Delete>(() => _i146.Delete());
    gh.lazySingleton<_i687.Get>(() => _i687.Get());
    gh.lazySingleton<_i106.Put>(() => _i106.Put());
    gh.lazySingleton<_i798.GenericHttpImpl<dynamic>>(
        () => _i798.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i769.GlobalContext>(() => _i769.GlobalContext());
    gh.lazySingleton<_i443.GlobalNotification>(
        () => _i443.GlobalNotification());
    gh.lazySingleton<_i652.Utilities>(() => _i652.Utilities());
    gh.lazySingleton<_i38.GeneralChatRoute>(() => _i38.GeneralChatRoute());
    gh.lazySingleton<_i1063.FavoriteController>(
        () => _i1063.FavoriteController());
    gh.factory<_i503.GeneralDataSource>(() => _i69.ImplGeneralDataSource());
    gh.factory<_i575.DiscountRepository>(() => _i765.ImplDiscountRepository());
    gh.factory<_i753.FavoriteDataSource>(() => _i388.ImplFavoriteDataSource());
    gh.factory<_i819.CampaignsRepositories>(
        () => _i608.ImplCampaignsRepositories());
    gh.factory<_i243.ChatDataSource>(() => _i206.ImplChatDataSource());
    gh.factory<_i639.SettingsDataSource>(() => _i708.ImplSettingsDataSource());
    gh.factory<_i596.OfferRepository>(() => _i860.ImplOfferRepository());
    gh.factory<_i848.OfferDataSource>(() => _i225.ImplOfferDataSource());
    gh.factory<_i88.AnalyticsRepository>(() => _i33.ImplAnalyticsRepository());
    gh.factory<_i298.BaseRepository>(() => _i508.ImplBaseRepository());
    gh.factory<_i160.WalletRepository>(() => _i153.ImplWalletRepository());
    gh.factory<_i799.CampaignDataSource>(() => _i1039.ImplCampaignDataSource());
    gh.factory<_i609.GeneralRepository>(() => _i634.ImplGeneralRepository());
    gh.factory<_i971.AccountDataSource>(() => _i122.ImplAccountDataSource());
    gh.factory<_i27.AccountRepository>(() => _i846.ImplAccountRepository());
    gh.factory<_i153.BaseDataSource>(() => _i197.ImplBaseDataSource());
    gh.factory<_i1055.ChatRepository>(() => _i744.ImplChatRepository());
    gh.factory<_i8.SettingsRepository>(() => _i590.ImplSettingsRepository());
    gh.factory<_i260.FavoriteRepository>(() => _i442.ImplFavoriteRepository());
    gh.factory<_i260.WalletDataSource>(() => _i72.ImplWalletDataSource());
    gh.factory<_i674.AuthRepository>(() => _i988.ImplAuthRepository());
    gh.factory<_i233.ProfileRepository>(() => _i351.ImplProfileRepository());
    gh.factory<_i718.AnalyticsDataSource>(
        () => _i878.ImplAnalyticsDataSource());
    gh.factory<_i714.DiscountDataSources>(
        () => _i926.ImplDiscountDataSources());
    gh.factory<_i147.ProfileDataSource>(() => _i67.ImplProfileDataSource());
    gh.factory<_i662.AuthDataSource>(() => _i23.ImplAuthDataSource());
    return this;
  }
}
