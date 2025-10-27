import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialItemWidget extends StatelessWidget {
  final String icon;
  final void Function() onTap;

  const SocialItemWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: 48,
        height: 48,
      ),
    );
  }
}
