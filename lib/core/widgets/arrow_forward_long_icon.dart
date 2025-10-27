import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/localized_widget.dart';
import 'package:flutter_tdd/res.dart';

class ArrowForwardLongIcon extends StatelessWidget {
  const ArrowForwardLongIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return LocalizedWidget(
      arElement: SvgPicture.asset(
        Res.arrowBack,
        color: context.colors.black,
        width: 25,
        height: 25,
      ),
      enElement: SvgPicture.asset(
        Res.arrowForwardIcon,
        color: context.colors.black,
        width: 25,
        height: 25,
      ),
    );
  }
}
