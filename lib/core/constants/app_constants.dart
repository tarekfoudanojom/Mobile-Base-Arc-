class ApplicationConstants {
  static const keyLanguage = 'language';
  static const keyToken = 'token';
  static const keyStreamChatToken = 'streamChatToken';
  static const headerBearer = 'Bearer';
  static const maxFileCount = 500;
  static const cacheItemsInList = 99999999999999.9999;

// Languages
  static const langEN = 'en';
  static const langAR = 'ar';

  /// Pagination
  static const paginationLimit = 16;
  static const paginationSkip = 0;

  /// font family
  static const String fontFamilyArabic = "SFArabic";
  static const String fontFamilySFPro = "SFProEn";
  static const String fontSaudiRiyalFont = "SaudiRiyalFont";

  static const logoVarName = 'icon_g';
  static String logoPathPng =
      "assets/images/${ApplicationConstants.logoVarName}.png";
  static String logoPathSvg = "assets/images/logoSvg.svg";
}
