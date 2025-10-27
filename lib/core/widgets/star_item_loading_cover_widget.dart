
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

class StarItemLoadingCoverWidget extends StatelessWidget {
  final bool isLoading;
  const StarItemLoadingCoverWidget({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    if(isLoading == false) return Gaps.empty;
    return  Positioned.fill(
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          blendMode: BlendMode.srcIn,
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
