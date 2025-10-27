import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/social_item_widget.dart';
import 'package:flutter_tdd/res.dart';

class ContinueWithSocialMediaWidget extends StatelessWidget {
  final void Function() onSelectApple;
  final void Function() onSelectGoogle;
  final void Function() onSelectFacebook;
  const ContinueWithSocialMediaWidget({super.key, required this.onSelectApple, required this.onSelectGoogle, required this.onSelectFacebook,});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (Platform.isIOS)
          SocialItemWidget(icon: Res.appleIcon,onTap: onSelectApple),
        if (Platform.isIOS)
          Gaps.hGap20,
         SocialItemWidget(icon: Res.googleIcon,onTap: onSelectGoogle),
        if(false)
          Gaps.hGap20,
        if(false)
          SocialItemWidget(icon: Res.faceBookIcon,onTap: onSelectFacebook),
      ],
    );
  }
}
