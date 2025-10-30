import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class SettingsSettingCardWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? backgroundColor;
  final Widget? trailing;

  const SettingsSettingCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.iconColor,
    this.backgroundColor,
    this.trailing,
  });

  @override
  State<SettingsSettingCardWidget> createState() => _SettingsSettingCardWidgetState();
}

class _SettingsSettingCardWidgetState extends State<SettingsSettingCardWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    _animationController.reverse();
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = widget.iconColor ?? context.colors.primary;
    final backgroundColor = widget.backgroundColor ?? context.colors.white;
    
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            margin: const EdgeInsets.only(bottom: Dimens.dp12),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(Dimens.dp16),
              border: Border.all(
                color: _isPressed 
                    ? iconColor.withValues(alpha: 0.3)
                    : context.colors.lightGray.withValues(alpha: 0.5),
                width: _isPressed ? 1.5 : 1,
              ),
                  boxShadow: [
                    BoxShadow(
                      color: _isPressed
                          ? iconColor.withValues(alpha: 0.2)
                          : context.colors.black.withValues(alpha: 0.08),
                      blurRadius: _isPressed ? 12 : 8,
                      offset: Offset(0, _isPressed ? 4 : 2),
                    ),
                    if (!_isPressed)
                      BoxShadow(
                        color: context.colors.white.withValues(alpha: 0.8),
                        blurRadius: 1,
                        offset: const Offset(0, -1),
                      ),
                  ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: widget.onTap,
                onTapDown: _onTapDown,
                onTapUp: _onTapUp,
                onTapCancel: _onTapCancel,
                borderRadius: BorderRadius.circular(Dimens.dp16),
                splashColor: iconColor.withValues(alpha: 0.1),
                highlightColor: iconColor.withValues(alpha: 0.05),
                child: Padding(
                  padding: const EdgeInsets.all(Dimens.dp16),
                  child: Row(
                    children: [
                      // Enhanced Icon Container
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              iconColor.withValues(alpha: 0.1),
                              iconColor.withValues(alpha: 0.05),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(Dimens.dp12),
                          border: Border.all(
                            color: iconColor.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          widget.icon,
                          color: iconColor,
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: Dimens.dp16),
                      
                      // Content
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: AppTextStyle.s16_w600(
                                color: context.colors.textColor,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              widget.subtitle,
                              style: AppTextStyle.s14_w400(
                                color: context.colors.textGaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // Enhanced Trailing
                      Container(
                        padding: const EdgeInsets.all(Dimens.dp8),
                        decoration: BoxDecoration(
                          color: context.colors.lightGray.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(Dimens.dp8),
                        ),
                        child: widget.trailing ?? Icon(
                          CupertinoIcons.chevron_right,
                          size: 14,
                          color: context.colors.textGaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
