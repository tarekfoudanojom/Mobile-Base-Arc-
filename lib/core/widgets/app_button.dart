import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

enum _AppTextButton {
  minPrimaryColor,
  minWhiteColor,
  minCustomColor,
  maxPrimaryColor,
  maxWhiteColor,
  maxCustomColor,
}

class AppTextButton extends StatelessWidget {
  const AppTextButton._({
    super.key,
    required _AppTextButton appTextButton,
    required this.text,
    required this.enabled,
    this.onPressed,
    this.icon,
    Color? bgColor,
    Color? borderColor,
    double? textSize,
    double? maxHeight,
    double? minWidth,
    double? borderRadius,
    double? borderWidth,
    TextStyle? style,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Color? txtColor,
    this.customLapel,
  })  : _appTextButton = appTextButton,
        _textColor = txtColor,
        _bgColor = bgColor,
        _style = style,
        maxHeight = maxHeight ?? 52,
        minWidth = minWidth ?? 100,
        _textSize = textSize,
        _margin = margin,
        _padding = padding,
        _borderColor = borderColor,
        _borderRadius = borderRadius,
        _borderWidth = borderWidth;

  final _AppTextButton _appTextButton;
  final String text;
  final bool enabled;
  final VoidCallback? onPressed;
  final Color? _bgColor;
  final Color? _textColor;
  final Widget? customLapel;
  final Color? _borderColor;
  final double? _textSize;
  final double? _borderRadius;
  final TextStyle? _style;
  final EdgeInsetsGeometry? _margin;
  final EdgeInsetsGeometry? _padding;
  final Widget? icon;
  final double? _borderWidth;

  final double minWidth;

  final double maxWidth = double.maxFinite;

  final double minHeight = 40;
  final double maxHeight;

  factory AppTextButton.minPrimary(
      {Key? key,
      required String text,
      bool enabled = true,
      VoidCallback? onPressed,
      double? minWidth,
      Color? bgColor}) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.minPrimaryColor,
      text: text,
      minWidth: minWidth,
      bgColor: bgColor,
      enabled: enabled,
      onPressed: onPressed,
    );
  }

  factory AppTextButton.minWhite({Key? key, required String text, VoidCallback? onPressed}) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.minWhiteColor,
      text: text,
      enabled: true,
      onPressed: onPressed,
    );
  }

  factory AppTextButton.maxPrimary({Key? key, required String text, bool enabled = true, VoidCallback? onPressed}) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.maxPrimaryColor,
      text: text,
      enabled: enabled,
      onPressed: onPressed,
    );
  }

  factory AppTextButton.maxWhite({Key? key, required String text, VoidCallback? onPressed}) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.maxWhiteColor,
      text: text,
      enabled: true,
      onPressed: onPressed,
    );
  }

  factory AppTextButton.minCustom({
    Key? key,
    required String text,
    required Color bgColor,
    Color? txtColor,
    Color? borderColor,
    TextStyle? textStyle,
    VoidCallback? onPressed,
    double? textSize,
    double? maxHeight,
    double? miWidth,
    double? borderRadius,
    double? borderWidth,
    EdgeInsetsGeometry? padding,
    Widget? icon,
  }) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.minCustomColor,
      text: text,
      enabled: true,
      bgColor: bgColor,
      txtColor: txtColor,
      borderColor: borderColor,
      minWidth: miWidth,
      padding: padding,
      style: textStyle,
      onPressed: onPressed,
      textSize: textSize,
      maxHeight: maxHeight,
      borderRadius: borderRadius,
      icon: icon,
      borderWidth:borderWidth,
    );
  }

  factory AppTextButton.maxCustom({
    Key? key,
    required String text,
    VoidCallback? onPressed,
    Color? bgColor,
    Color? txtColor,
    Color? borderColor,
    double? textSize,
    double? maxHeight,
    TextStyle? textStyle,
    Widget? customLapel,
    EdgeInsetsGeometry? margin,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Widget? icon,
  }) {
    return AppTextButton._(
      key: key,
      appTextButton: _AppTextButton.maxCustomColor,
      text: text,
      enabled: true,
      bgColor: bgColor,
      txtColor: txtColor,
      style: textStyle,
      onPressed: onPressed,
      textSize: textSize,
      maxHeight: maxHeight,
      margin: margin,
      borderRadius: borderRadius,
      borderColor: borderColor,
      icon: icon,
      customLapel: customLapel,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_appTextButton) {
      case _AppTextButton.minPrimaryColor:
        return SizedBox(
          width: minWidth,
          height: minHeight,
          child: BouncingWidget(
            enable: enabled && onPressed != null,
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (_) {
                        return AppColors.of(context).primary;
                      },
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        if (enabled) {
                          return _bgColor ?? AppColors.of(context).primary;
                        } else {
                          return AppColors.of(context).blackOpacity;
                        }
                      },
                    ),
                  ),
              onPressed: onPressed,
              child: Text(
                text,
                style: AppTextStyle.s14_w500(
                  color: (enabled ? AppColors.fixedColors.white : AppColors.fixedColors.blackOpacity),
                ),
              ),
            ),
          ),
        );

      case _AppTextButton.minWhiteColor:
        return SizedBox(
          width: minWidth,
          height: minHeight,
          child: BouncingWidget(
            enable: enabled && onPressed != null,
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (_) {
                        return Colors.transparent;
                      },
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.transparent;
                      },
                    ),
                  ),
              onPressed: onPressed,
              child: Text(
                text,
                style: AppTextStyle.s14_w500(
                  color: AppColors.of(context).blackOpacity,
                ),
              ),
            ),
          ),
        );

      case _AppTextButton.maxPrimaryColor:
        return SizedBox(
          width: maxWidth,
          height: maxHeight,
          child: BouncingWidget(
            enable: enabled && onPressed != null,
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (_) {
                        return AppColors.of(context).primary;
                      },
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        if (enabled) {
                          return AppColors.of(context).primary;
                        } else {
                          return AppColors.of(context).blackOpacity;
                        }
                      },
                    ),
                  ),
              onPressed: onPressed,
              child: Text(
                text,
                style: AppTextStyle.s16_w500(
                  color: (enabled ? AppColors.fixedColors.white : AppColors.fixedColors.blackOpacity),
                ),
              ),
            ),
          ),
        );

      case _AppTextButton.maxWhiteColor:
        return SizedBox(
          width: maxWidth,
          height: maxHeight,
          child: BouncingWidget(
            enable: enabled && onPressed != null,
            child: TextButton(
              style: Theme.of(context).textButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(EdgeInsets.zero),
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (_) {
                        return Colors.transparent;
                      },
                    ),
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.transparent;
                      },
                    ),
                  ),
              onPressed: onPressed,
              child: Text(
                text,
                style: AppTextStyle.s16_w500(
                  color: AppColors.of(context).blackOpacity,
                ),
              ),
            ),
          ),
        );
      case _AppTextButton.minCustomColor:
        return Container(
          width: minWidth,
          height: maxHeight,
          padding: _padding,
          decoration: BoxDecoration(
            border: Border.all(color: _borderColor ?? Colors.transparent,width: _borderWidth??1),
            borderRadius: BorderRadius.circular(_borderRadius ?? 18),
            color: _bgColor,
          ),
          child: BouncingWidget(
            enable: enabled && onPressed != null,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(_borderRadius ?? 18),
              child: TextButton(
                style: Theme.of(context).textButtonTheme.style?.copyWith(
                      padding: WidgetStateProperty.all(EdgeInsets.zero),
                      foregroundColor: WidgetStateProperty.resolveWith(
                        (_) {
                          return _bgColor;
                        },
                      ),
                      backgroundColor: WidgetStateProperty.resolveWith(
                        (states) {
                          if (enabled) {
                            return _bgColor;
                          } else {
                            return AppColors.of(context).black;
                          }
                        },
                      ),
                    ),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) icon!,
                    if (icon != null) Gaps.hGap8,
                    Flexible(
                      child: Text(
                        text,
                        style: _style ??
                            AppTextStyle.s14_w500(color: _textColor ?? AppColors.fixedColors.white)
                                .copyWith(fontSize: _textSize ?? 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      case _AppTextButton.maxCustomColor:
        return Container(
          margin: _margin ?? EdgeInsets.zero,
          decoration: BoxDecoration(
            border: Border.all(color: _borderColor ?? context.colors.textColor),
            borderRadius: BorderRadius.circular(_borderRadius ?? 62),
            color: _bgColor,
          ),
          child: SizedBox(
            width: maxWidth,
            height: maxHeight,
            child: BouncingWidget(
              enable: enabled && onPressed != null,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(_borderRadius ?? 62),
                child: TextButton(
                  style: Theme.of(context).textButtonTheme.style?.copyWith(
                        padding: WidgetStateProperty.all(EdgeInsets.zero),
                        foregroundColor: WidgetStateProperty.resolveWith(
                          (_) {
                            return _bgColor;
                          },
                        ),
                        backgroundColor: WidgetStateProperty.resolveWith(
                          (states) {
                            return _bgColor;
                          },
                        ),
                      ),
                  onPressed: onPressed,
                  child: customLapel ??
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (icon != null) icon!,
                          if (icon != null) Gaps.hGap4,
                          Flexible(
                            child: Text(
                              text,
                              style: _style ??
                                  AppTextStyle.s16_w500(
                                    color: _textColor ?? AppColors.fixedColors.white,
                                  ).copyWith(fontSize: _textSize ?? 16),
                            ),
                          ),
                        ],
                      ),
                ),
              ),
            ),
          ),
        );
    }
  }
}

class BouncingWidget extends StatefulWidget {
  final Widget child;
  final bool enable;

  const BouncingWidget({
    super.key,
    required this.child,
    this.enable = true,
  });

  @override
  State<BouncingWidget> createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void didUpdateWidget(BouncingWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enable != widget.enable) {
      if (widget.enable) {
        // _controller.forward();
      } else {
        // _controller.reverse();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.03,
    )..drive(CurveTween(curve: Curves.elasticIn));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      onTapCancel: () {
        widget.enable ? _controller.reverse() : null;
      },
      child: AnimatedBuilder(
          animation: _controller,
          child: widget.child,
          builder: (_, child) {
            _scale = 1 - _controller.value;
            return Transform.scale(
              scale: _scale,
              child: child,
            );
          }),
    );
  }

  void _tapDown(TapDownDetails details) {
    widget.enable ? _controller.forward() : null;
  }

  void _tapUp(TapUpDetails details) {
    widget.enable ? _controller.reverse() : null;
  }
}
