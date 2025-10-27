import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? height, width, borderWidth;
  final BorderRadius? borderRadius;
  final ColorFilter? colorFilter;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final Widget? placeHolder;
  final Color? borderColor;
  final Color? bgColor;
  final BoxShape? boxShape;
  final bool haveRadius;
  final Widget? loadingWidget;
  final EdgeInsetsGeometry? errorPlaceholderPadding;

  const CachedImage(
      {super.key,
        required this.url,
        this.fit,
        this.width,
        this.height,
        this.placeHolder,
        this.borderRadius,
        this.colorFilter,
        this.alignment,
        this.child,
        this.boxShape,
        this.borderColor,
        this.borderWidth,
        this.errorPlaceholderPadding,
        this.bgColor,
        this.loadingWidget,
        this.haveRadius = true});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: fit ?? BoxFit.fill, colorFilter: colorFilter),
          borderRadius: haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          shape: boxShape ?? BoxShape.rectangle,
          border: Border.all(color: borderColor ?? Colors.transparent, width: borderWidth ?? 1),
        ),
        alignment: alignment ?? Alignment.center,
        child: child,
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          border: Border.all(color: borderColor ?? Colors.transparent, width: 1),
          shape: boxShape ?? BoxShape.rectangle,
          color: bgColor ?? context.colors.primary.withValues(alpha: .5),
        ),
        child: loadingWidget??SpinKitFadingCircle(
          color: context.colors.primary,
          size: 30.0,
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        padding: errorPlaceholderPadding,
        decoration: BoxDecoration(
          color: bgColor ?? context.colors.white,
          borderRadius: haveRadius ? borderRadius ?? BorderRadius.circular(0) : null,
          border: Border.all(color: borderColor ?? CupertinoColors.systemGrey5, width: 1),
          shape: boxShape ?? BoxShape.rectangle,
        ),
        child: Stack(
          children: [
            placeHolder ?? child ?? Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage(Res.nojomIcon))
              ),
            ),
            // child??Container(),
          ],
        ),
      ),
    );
  }
}
