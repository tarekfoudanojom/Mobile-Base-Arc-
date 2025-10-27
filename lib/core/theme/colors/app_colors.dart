import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/theme/colors/app_dark_colors.dart';
import 'package:flutter_tdd/core/theme/colors/app_light_colors.dart';

abstract class AppColors {
  static final AppDarkColors _dark = AppDarkColors();
  static final AppLightColors _light = AppLightColors();

  static AppColors get fixedColors => _light;

  static const Color snackBarGreenSuccess = CupertinoColors.black;
  static const Color snackBarRedError = CupertinoColors.black;
  static const Color snackBarYellowAlert = CupertinoColors.black;
  static const Color notStartedColor = Color(0xFFE8E8E8);

  static AppColors get noContextInstance => getIt
              .get<GlobalContext>()
              .context()
              .read<DeviceCubit>()
              .state
              .model
              .themeMode ==
          AdaptiveThemeMode.dark
      ? _dark
      : _light;

  static AppColors of(BuildContext context) =>
      context.read<DeviceCubit>().state.model.themeMode ==
              AdaptiveThemeMode.dark
          ? _dark
          : _light;

  Color get primary;

  Color get secondary;

  Color get greyWhite;

  Color get blackOpacity;

  Color get blackOpacity87;

  Color get appBarColor;

  Color get white;

  Color get black;

  Color get green;

  Color get background1;

  Color get background2;

  Color get disableGray;

  Color get slightBlueGray;

  Color get textColor;

  Color get textGaryColor;

  Color get hintGaryColor;

  Color get inputFillColor;

  Color get dotColor;

  Color get slightGray;

  Color get red;

  Color get lightGray;

  Color get grayWhite;

  // Color get blue;

  Color get slightDeepGreen;

  // Color get navy;

  Color get lightWhite;

  Color get feedBackColor;

  Color get arrowDownColor;

  // Color get lightBlue;

  Color get closeIconColor;

  Color get deepSlightGray;

  Color get textGrayOpacity;

  Color get popMenuColor;

  Color get slightBlue;

  Color get dotFrameColor;

  Color get slightRed;

  Color get activeColor;

  // Color get mainBlue;

  Color get slightGrey;

  Color get cardBgColor;

  Color get disabledCardColor;

  Color get textGreyColor;

  Color get textCupertinoSystemGreyColor;

  Color get lightRed;

  Color get messageSent;

  Color get fileColor;

  Color get whiteOpacity;

  Color get noFilesColor;

  Color get blueGray;

  Color get orange;

  Color get mintGreenColor;

  Color get grey;

  Color get keyboard;

  Color get lightGrey;

  Color get greyOpacity;

  Color get gold;

  Color get silverColor;

  Color get yellow;

  Color get checkIconColor;

  Color get releaseNonActiveColor;

  Color get stepsIconColor;

  Color get separatorColor;

  Color get mystic;

  Color get mistGray;

  Color get darkRed;

  // Color get newBlue;

  Color get textPrimary;

  Color get textTertiary;

  Color get whiteSmoke;

  Color get steelGray;

  Color get ashGray;

  Color get softSilver;

  Color get mistyGray;

  Color get slateGray;

  Color get iceBlue;

  Color get softGray;

  Color get snowWhite;

  Color get smokeyGray;

  Color get lightSilver;

  Color get lightPink;

  Color get mutedGray;

  Color get softSkyBlue;

  Color get softBlue;

  // Color get boldBlue;

  // Color get lightBlue2;

  Color get red2;

  Color get offWhite;

  // Color get royalBlue;

  Color get mistGray2;

  Color get ashGray2;

  Color get cloudGray;

  Color get dustGray;

  Color get softLilac;

  Color get blushPink;

  Color get semiTransparent;

  Color get lightIceBlue;

  // Favorites feature colors
  Color get favoriteSelectedBackground;
  
  Color get favoriteSelectedBorder;
  
  Color get favoriteSelectedText;
  
  Color get favoriteIconGray;
  
  Color get favoriteBorderGray;
  
  Color get favoriteButtonBlue;
  
  Color get favoriteFocusBorder;
  
  Color get favoriteShimmerLight;
  
  Color get favoriteShimmerMedium;
  
  Color get favoriteOverlayDark;

  Color get backgroundGray;

  Color get btnBackgroundGrey;

  Color get greyDark;

  Color get appColorBlue;

  Color get blue;

  Color get darkRedText;

  Color get lightRedBackground;

  Color get paleRed;

  Color get primaryRed;

  Color get textSecondary;

  Color get successLight;

  Color get successBorder;

  Color get successText;

  Color get warningLight;

  Color get warningBorder;

  Color get warningText;

  Color get errorLight;

  Color get errorBorder;

  Color get errorText;

  Color get success;

  Color get warning;

  Color get error;

  Color get divider;

  Color get backgroundChat;

  Color get boldBlue;

  Color get greenChatMsg;

  Color get lightGray2;

  Color get backGround1;

  Color get disabledColor;

  Color get pastelBlue;
  Color get primaryBlue;
  Color get deepBlue;

  Color get strongRed;
  Color get alertRed;
  Color get softRed;

  Color get primaryGreen;
  Color get mediumGreen;
  Color get lightGreen;
  Color get paleGreen;
  Color get deepPink;

  Color get mediumGray;
  Color get steelBlueGray;
  Color get whatsappFooterColor;

  Color get lightMintGreen;
  Color get emeraldGreen;
  Color get darkGreen;
}
