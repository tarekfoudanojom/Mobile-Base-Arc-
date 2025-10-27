abstract class IEnvironmentConfigReader {
  /// BASE URL
  String getBaseUrl();

  String getAPIUrl();

  String getAndroidAppId();

  String getAppleAppId();

  String getStreamKey();

  String getPaymentKey();

  String getMerchantKey();

  String getLogoUrl();

  String getWebsiteUrl();

  String getAppNameAr();

  String getAppNameEN();

  String getAppEnvName();

  String getClientId();

  String getAnonymousClientId();

  String getAnonymousClientSECRET();

  String getAnonymousGrantType();

  String? getLocalLogoAssetsPath();
}