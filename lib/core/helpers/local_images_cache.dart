import 'package:flutter/material.dart';
import 'package:flutter_tdd/res.dart';

class LocalImagesCache{

  Future<void> cacheImages(BuildContext context) async{
    await Future.wait([
      precacheImage(const AssetImage(Res.influencerOverViewImage), context),
      precacheImage(const AssetImage(Res.gradientBgImage1), context),
      precacheImage(const AssetImage(Res.gradientBgImage2), context),
      precacheImage(const AssetImage(Res.gradientBgImage3), context),
      precacheImage(const AssetImage(Res.gradientBgImage4), context),
      precacheImage(const AssetImage(Res.gradientBgImage5), context),
      precacheImage(const AssetImage(Res.createCampAr), context),
      precacheImage(const AssetImage(Res.createCampEn), context),
      precacheImage(const AssetImage(Res.aiStarsImageAr), context),
      precacheImage(const AssetImage(Res.aiStarsImageEn), context),
      precacheImage(const AssetImage(Res.askPaymentImageAr), context),
      precacheImage(const AssetImage(Res.askPaymentImageEn), context),
      precacheImage(const AssetImage(Res.trackingCampImageAr), context),
      precacheImage(const AssetImage(Res.trackingCampImageEn), context),
      precacheImage(const AssetImage(Res.receiveCampImageAr), context),
      precacheImage(const AssetImage(Res.receiveCampImageEn), context),
    ]);
  }

}