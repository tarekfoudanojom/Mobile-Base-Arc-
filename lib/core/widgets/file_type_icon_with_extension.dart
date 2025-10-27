import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:path/path.dart';

import '../../res.dart';
import '../constants/gaps.dart';
import '../theme/text/app_text_style.dart';

class FileTypeIconWithExtension extends StatelessWidget {
  final File? file;
  final String? path;
  final double? height;
  final double? width;
  final TextStyle? style;

  const FileTypeIconWithExtension({
    super.key,
    this.file,
    this.path,
    this.height,
    this.width,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(
          Res.fileTypeBgIcon,
          color: getExtension().toLowerCase() == 'pdf' ? null : context.colors.greyOpacity,
          height: height ?? 30,
          width: width ?? 24,
        ),
        SizedBox(
          height: height ?? 30,
          width: width ?? 24,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                getExtension(),
                style: style ?? AppTextStyle.s10_w500(color: context.colors.white),
              ),
              Gaps.vGap5,
            ],
          ),
        ),
        //     Icon(
        //       Icons.folder,
        //       color: context.colors.grey,
        //       size: 25,
        //     ),
      ],
    );
  }

  String getExtension() {
    var filePath = file;
    var fileName = basename(filePath?.path.toString() ?? path ?? "");
    var extension = fileName.split(".").last;
    return extension;
  }
}
