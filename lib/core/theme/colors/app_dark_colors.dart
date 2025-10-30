import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {
  @override
  Color get primary => const Color(0xFF5B7FFF); // Brighter blue for dark theme

  @override
  Color get secondary => const Color(0xFF9E9E9E); // Lighter gray for dark theme

  @override
  Color get white => const Color(0xFF1A1A1A); // Dark background instead of white

  @override
  Color get background1 => const Color(0xFF121212); // Dark background

  @override
  Color get btnBackgroundGrey => const Color(0xFF2C2C2E); // Dark gray for buttons

  @override
  Color get background2 => const Color(0xFF1C1C1E); // Slightly lighter dark background

  @override
  Color backgroundGray = const Color(0xFF1A1A1A); // Dark gray background

  @override
  Color get appBarColor => const Color(0xFF2C2C2E); // Dark app bar

  @override
  Color get black => CupertinoColors.white; // White text on dark theme

  @override
  Color get blackOpacity => Colors.white.withValues(alpha: .54); // White with opacity

  @override
  Color get blackOpacity87 => Colors.white.withValues(alpha: .7); // White with opacity

  @override
  Color get greyWhite => Colors.grey.withValues(alpha: .3); // Slightly more visible gray

  @override
  Color get disableGray => const Color(0xFF4A4A4A); // Darker gray for disabled

  @override
  Color get slightBlueGray => const Color(0xFF3A3A3C); // Dark blue-gray

  @override
  Color get textColor => Colors.white.withValues(alpha: .87); // White text with opacity

  @override
  Color get textGaryColor => const Color(0xFF8E8E93).withValues(alpha: .6); // Light gray text

  @override
  Color get hintGaryColor => const Color(0xFF8E8E93); // Light gray for hints

  @override
  Color get inputFillColor => const Color(0xFF2C2C2E); // Dark input background

  @override
  Color get dotColor => const Color(0xFFFFFFFF); // White dots on dark

  @override
  Color get slightGray => const Color(0xFF8E8E93); // Light gray

  @override
  Color get red => const Color(0xFFFF453A); // System red for dark theme

  @override
  Color get lightGray => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get grayWhite => const Color(0xFF48484A); // Dark gray

  @override
  Color get blue => const Color(0xFF0A84FF); // System blue for dark theme

  @override
  Color get slightDeepGreen => const Color(0xFF30D158); // System green for dark theme

  @override
  Color get lightWhite => const Color(0xFF2C2C2E); // Dark gray instead of light white

  @override
  Color get feedBackColor => const Color(0xFF1C1C1E); // Dark feedback background

  @override
  Color get arrowDownColor => const Color(0xFF8E8E93); // Light gray for arrows

  @override
  Color get closeIconColor => const Color(0xFF8E8E93); // Light gray for close icon

  @override
  Color get deepSlightGray => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get green => const Color(0xFF30D158); // System green

  @override
  Color get textGrayOpacity => const Color(0xFF8E8E93); // Light gray

  @override
  Color get popMenuColor => const Color(0xFF2C2C2E); // Dark popup menu

  @override
  Color get slightBlue => const Color(0xFF0A84FF); // System blue

  @override
  Color get dotFrameColor => const Color(0xFF48484A); // Dark gray frame

  @override
  Color get slightRed => const Color(0xFF2C1B1A); // Dark red background

  @override
  Color get activeColor => const Color(0xFF30D158); // System green for active

  @override
  Color get slightGrey => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get cardBgColor => const Color(0xFF2C2C2E); // Dark card background

  @override
  Color get disabledCardColor => const Color(0xFF1C1C1E); // Darker disabled card

  @override
  Color get textGreyColor => const Color(0xFF8E8E93); // Light gray text

  @override
  Color get textCupertinoSystemGreyColor => const Color(0xFF8E8E93); // System gray

  @override
  Color get lightRed => const Color(0xFF2C1B1A); // Dark red background

  @override
  Color get messageSent => const Color(0xFF1C1C1E); // Dark message background

  @override
  Color get fileColor => const Color(0xFF1C1C1E); // Dark file background

  @override
  Color get whiteOpacity => const Color(0xFF1C1C1E); // Dark with opacity

  @override
  Color get noFilesColor => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get blueGray => const Color(0xFF1C1C1E); // Dark blue-gray

  @override
  Color get orange => const Color(0xFFFF9F0A); // System orange for dark theme

  @override
  Color get mintGreenColor => const Color(0xFF30D158); // System green

  @override
  Color get yellow => const Color(0xFFFFD60A); // System yellow for dark theme

  @override
  Color get grey => const Color(0xFF8E8E93); // Light gray

  @override
  Color get keyboard => const Color(0xFF8E8E93); // Light gray for keyboard

  @override
  Color get lightGrey => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get greyOpacity => Colors.grey.withValues(alpha: .3); // Gray with opacity

  @override
  Color get gold => const Color(0xFFFFD700); // Gold stays the same

  @override
  Color silverColor = const Color(0xFF8E8E93); // Light gray for silver

  @override
  Color checkIconColor = const Color(0xFF30D158); // System green

  @override
  Color releaseNonActiveColor = const Color(0xFF2C2C2E).withValues(alpha: .6); // Dark with opacity

  @override
  Color stepsIconColor = const Color(0xFF6D6D70); // Medium gray

  @override
  Color separatorColor = const Color(0xFF48484A); // Dark separator

  @override
  Color mystic = const Color(0xFF1C1C1E); // Dark mystic

  @override
  Color darkRed = const Color(0xFFFF453A); // System red

  @override
  Color mistGray = const Color(0xFF2C2C2E); // Dark mist gray

  @override
  Color textPrimary = const Color(0xFFFFFFFF); // White text

  @override
  Color textTertiary = const Color(0xFF8E8E93); // Light gray text

  @override
  Color whiteSmoke = const Color(0xFF1A1A1A); // Dark background

  @override
  Color steelGray = const Color(0xFF6D6D70); // Medium gray

  @override
  Color ashGray = const Color(0xFF8E8E93); // Light gray

  @override
  Color softSilver = const Color(0xFF48484A); // Dark silver

  @override
  Color mistyGray = const Color(0xFF2C2C2E); // Dark misty gray

  @override
  Color slateGray = const Color(0xFF8E8E93); // Light slate gray

  @override
  Color iceBlue = const Color(0xFF1C1C1E); // Dark ice blue

  @override
  Color softGray = const Color(0xFF48484A); // Dark soft gray

  @override
  Color snowWhite = const Color(0xFF1A1A1A); // Dark background

  @override
  Color smokeyGray = const Color(0xFF2C2C2E); // Dark smokey gray

  @override
  Color lightSilver = const Color(0xFF6D6D70); // Medium gray

  @override
  Color lightPink = const Color(0xFF2C1B1A); // Dark pink background

  @override
  Color mutedGray = Colors.white.withValues(alpha: .6); // White with opacity

  @override
  Color softSkyBlue = const Color(0xFF1C1C1E); // Dark sky blue

  @override
  Color softBlue = const Color(0xFF1C1C1E); // Dark blue

  @override
  Color offWhite = const Color(0xFF1A1A1A); // Dark background

  @override
  Color get red2 => const Color(0xFFFF453A); // System red

  @override
  Color mistGray2 = const Color(0xFF2C2C2E); // Dark mist gray

  @override
  Color ashGray2 = const Color(0xFF8E8E93); // Light gray

  @override
  Color cloudGray = const Color(0xFF2C2C2E); // Dark cloud gray

  @override
  Color dustGray = const Color(0xFF48484A); // Dark dust gray

  @override
  Color softLilac = const Color(0xFF2C2C2E); // Dark lilac

  @override
  Color blushPink = const Color(0xFF2C1B1A); // Dark pink

  @override
  Color semiTransparent = const Color(0x80000000); // Semi-transparent black

  @override
  Color lightIceBlue = const Color(0xFF1C1C1E); // Dark ice blue

  // Favorites feature colors
  @override
  Color get favoriteSelectedBackground => const Color(0xFF0A84FF); // System blue
  
  @override
  Color get favoriteSelectedBorder => const Color(0xFF0A84FF); // System blue
  
  @override
  Color get favoriteSelectedText => const Color(0xFFFFFFFF); // White text
  
  @override
  Color get favoriteIconGray => const Color(0xFF8E8E93); // Light gray
  
  @override
  Color get favoriteBorderGray => const Color(0xFF48484A); // Dark gray
  
  @override
  Color get favoriteButtonBlue => const Color(0xFF0A84FF); // System blue
  
  @override
  Color get favoriteFocusBorder => const Color(0xFF0A84FF); // System blue
  
  @override
  Color get favoriteShimmerLight => const Color(0xFF2C2C2E); // Dark shimmer
  
  @override
  Color get favoriteShimmerMedium => const Color(0xFF48484A); // Medium shimmer
  
  @override
  Color get favoriteOverlayDark => const Color(0x80000000); // Dark overlay


  @override
  Color get greyDark => const Color(0xFF48484A); // Dark gray

  @override
  Color get appColorBlue => const Color(0xFF0A84FF); // System blue

  @override
  Color get darkRedText => const Color(0xFFFF453A); // System red

  @override
  Color get lightRedBackground => const Color(0xFF2C1B1A); // Dark red background

  @override
  Color get paleRed => const Color(0xFF2C1B1A); // Dark pale red

  @override
  Color get primaryRed => const Color(0xFFFF453A); // System red

  @override
  Color get textSecondary => const Color(0xFF8E8E93); // Light gray text

  @override
  Color get successLight => const Color(0xFF1C2C1A); // Dark green background

  @override
  Color get successBorder => const Color(0xFF30D158); // System green

  @override
  Color get successText => const Color(0xFF30D158); // System green

  @override
  Color get warningLight => const Color(0xFF2C2A1A); // Dark yellow background

  @override
  Color get warningBorder => const Color(0xFFFFD60A); // System yellow

  @override
  Color get warningText => const Color(0xFFFFD60A); // System yellow

  @override
  Color get errorLight => const Color(0xFF2C1B1A); // Dark red background

  @override
  Color get errorBorder => const Color(0xFFFF453A); // System red

  @override
  Color get errorText => const Color(0xFFFF453A); // System red

  @override
  Color get success => const Color(0xFF30D158); // System green

  @override
  Color get warning => const Color(0xFFFFD60A); // System yellow

  @override
  Color get error => const Color(0xFFFF453A); // System red

  @override
  Color get divider => const Color(0xFF48484A); // Dark divider

  @override
  Color get backgroundChat => const Color(0xFF1C1C1E); // Dark chat background

  @override
  Color get boldBlue => const Color(0xFF0A84FF); // System blue

  @override
  Color get greenChatMsg => const Color(0xFF30D158); // System green

  @override
  Color get lightGray2 => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get backGround1 => const Color(0xFF121212); // Dark background

  @override
  Color get disabledColor => const Color(0xFF4A4A4A); // Dark disabled

  @override
  Color get pastelBlue => const Color(0xFF1C1C1E); // Dark pastel blue

  @override
  Color get primaryBlue => const Color(0xFF0A84FF); // System blue

  @override
  Color get deepBlue => const Color(0xFF0051D5); // Darker blue

  @override
  Color get strongRed => const Color(0xFFFF453A); // System red

  @override
  Color get alertRed => const Color(0xFFFF453A); // System red

  @override
  Color get softRed => const Color(0xFF2C1B1A); // Dark red background

  @override
  Color get primaryGreen => const Color(0xFF30D158); // System green

  @override
  Color get mediumGreen => const Color(0xFF28CD41); // Medium green

  @override
  Color get lightGreen => const Color(0xFF1C2C1A); // Dark green background

  @override
  Color get paleGreen => const Color(0xFF1C2C1A); // Dark pale green

  @override
  Color get deepPink => const Color(0xFFFF2D92); // System pink

  @override
  Color get mediumGray => const Color(0xFF6D6D70); // Medium gray

  @override
  Color get steelBlueGray => const Color(0xFF48484A); // Dark steel blue gray

  @override
  Color get whatsappFooterColor => const Color(0xFF1C1C1E); // Dark footer

  @override
  Color get lightMintGreen => const Color(0xFF1C2C1A); // Dark mint green

  @override
  Color get emeraldGreen => const Color(0xFF30D158); // System green

  @override
  Color get darkGreen => const Color(0xFF28CD41); // Medium green
}