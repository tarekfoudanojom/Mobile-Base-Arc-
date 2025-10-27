
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/res.dart';

class StarLogoWidget extends StatelessWidget {
  final double? logoWidth;
  final double? logoHeight;
  final double? sloganWidth;
  final double? sloganHeight;
  const StarLogoWidget({
    super.key,
    this.logoWidth = 34,
    this.logoHeight = 32,
    this.sloganWidth = 67,
    this.sloganHeight = 22});

  @override
  Widget build(BuildContext context) {
    var lang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(Res.nojomLogo,width:logoWidth, height: logoHeight,),
        Gaps.hGap7,
        SvgPicture.asset(lang=="ar"?Res.nojomSloganAr:Res.nojomSlogan,height: sloganHeight, width: sloganWidth,),
      ],
    );
  }
}
