import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/fade_animation_widget.dart';
import 'package:flutter_tdd/res.dart';

class ImageWidget extends StatelessWidget {
  final File? file;
  final bool setSvgImage;
  final bool? haveRadius;
  final Color? bgColor;
  final double? svgSize;
  final double width;
  final double height;
  final String? svgImagePath;
  final BorderRadiusGeometry? borderRadius;

  const ImageWidget(
      {super.key,
      this.file,
      required this.setSvgImage,
      required this.width,
      required this.height,
      this.haveRadius = true,
      this.bgColor,
      this.svgSize,
      this.borderRadius,
        this.svgImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor ?? context.colors.white,
        borderRadius: haveRadius! ?borderRadius?? BorderRadius.circular(20) : null,
        shape: haveRadius! ? BoxShape.rectangle : BoxShape.circle,
        image: DecorationImage(
          image: FileImage(file ?? File('')),
          fit: BoxFit.cover,
        ),
      ),
      child: setSvgImage
          ? (SvgPicture.asset(svgImagePath ?? Res.userIcon,
              width: svgSize ?? 86, height: svgSize ?? 86))
          : setAssetImage(),
    );
  }
  Widget setAssetImage(){
    if(setSvgImage==false && file==null){
      return Image.asset(svgImagePath ?? "");
    }else{
      return Gaps.empty;
    }
  }
}
