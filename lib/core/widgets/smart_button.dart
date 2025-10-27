import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

enum SmartButtonState { active, disabled, loading }

class SmartButton extends StatefulWidget {
  final SmartButtonState state;
  final String? title;
  final TextStyle? titleStyle;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final double borderRadius;
  final double height;
  final double? width;
  final bool isMaxWidth;
  final double borderWidth;
  final Color? borderColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? disabledColor;
  final Color? activeColor;
  final Color? disabledTextColor;
  final Color? loaderColor;
  final Widget? child;
  final Future<void> Function()? onPressed;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final double leftIconSpacing;
  final double rightIconSpacing;
  final Color containerBackgroundColor;

  const SmartButton({
    Key? key,
    required this.state,
    required this.onPressed,
    this.title,
    this.titleStyle,
    this.leftIcon,
    this.rightIcon,
    this.borderRadius = 10,
    this.height = 48,
    this.width,
    this.isMaxWidth = false,
    this.borderWidth = 0,
    this.borderColor,
    this.margin,
    this.padding,
    this.backgroundColor,
    this.containerBackgroundColor = Colors.transparent,
    this.disabledColor = const Color(0xFFF5F5F5),
    this.activeColor = const Color(0xFF004EEE),
    this.disabledTextColor = const Color(0xFF9E9E9E),
    this.loaderColor = Colors.white,
    this.child,
    this.subtitle,
    this.subtitleStyle,
    this.leftIconSpacing = 8,
    this.rightIconSpacing = 8,
  }) : super(key: key);

  @override
  State<SmartButton> createState() => _SmartButtonState();
}

class _SmartButtonState extends State<SmartButton> {
  bool _isLoading = false;

  Future<void> _handlePress() async {
    if (widget.state == SmartButtonState.disabled ||
        _isLoading ||
        widget.state == SmartButtonState.loading) return;

    if (widget.onPressed != null) {
      setState(() => _isLoading = true);
      await widget.onPressed!();
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color bgColor = widget.state == SmartButtonState.disabled
        ? widget.disabledColor!
        : widget.backgroundColor ?? widget.activeColor!;

    return Container(
      color: widget.containerBackgroundColor,
      child: Container(
        margin: widget.margin,
        width: widget.isMaxWidth ? double.infinity : null,
        child: Material(
          color: bgColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: InkWell(
            onTap:
                (widget.state == SmartButtonState.active) ? _handlePress : null,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: IntrinsicWidth(
              child: Container(
                height: widget.height,
                width: widget.width,
                padding:
                    widget.padding ?? const EdgeInsets.symmetric(horizontal: 0),
                decoration: widget.borderWidth > 0
                    ? BoxDecoration(
                        border: Border.all(
                          color: widget.borderColor ?? Colors.transparent,
                          width: widget.borderWidth,
                        ),
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius),
                      )
                    : null,
                child: (_isLoading || widget.state == SmartButtonState.loading)
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CupertinoActivityIndicator(
                          color: widget.loaderColor!,
                          radius: 10,
                        ),
                      )
                    : _buildContent(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (widget.child != null) return widget.child!;

    final bool isDisabled = widget.state == SmartButtonState.disabled;
    final Color titleColor = isDisabled
        ? widget.disabledTextColor!
        : (widget.titleStyle?.color ?? Colors.white);
    final Color subtitleColor = isDisabled
        ? widget.disabledTextColor!
        : (widget.subtitleStyle?.color ?? Colors.white70);
    final Color iconColor = isDisabled ? widget.disabledTextColor! : titleColor;

    final TextStyle baseTitleStyle =
        (widget.titleStyle ?? AppTextStyle.s16_w600(color: Colors.white))
            .copyWith(color: titleColor);
    final TextStyle baseSubtitleStyle =
        (widget.subtitleStyle ?? AppTextStyle.s12_w400(color: Colors.white))
            .copyWith(color: subtitleColor);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconTheme(
          data: IconThemeData(color: iconColor),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.leftIcon != null) ...[
                widget.leftIcon!,
                if (widget.title != null)
                  SizedBox(width: widget.leftIconSpacing),
              ],
              if (widget.title != null)
                Text(widget.title!, style: baseTitleStyle),
              if (widget.rightIcon != null && widget.title != null)
                SizedBox(width: widget.rightIconSpacing),
              if (widget.rightIcon != null) widget.rightIcon!,
            ],
          ),
        ),
        if (widget.subtitle != null) ...[
          const SizedBox(height: 4),
          Text(
            widget.subtitle!,
            style: baseSubtitleStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
