import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/errors/base_error.dart';
import 'package:flutter_tdd/core/errors/unknown_error.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/svg_icon_wrapper.dart';
import 'package:flutter_tdd/res.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastType { success, error, info }

abstract class AppSnackBar {
  const AppSnackBar._();

  static bool _isSnackBarActive = false;
  static VoidCallback? _currentUndoCompleteCallback;
  static int _campaignSnackBarCounter = 0;
  static int _undoSnackBarCounter = 0;

  static Map<ToastType, Color> toastBgColors = {
    ToastType.success: AppColors.snackBarGreenSuccess,
    ToastType.error: AppColors.snackBarRedError,
    ToastType.info: AppColors.snackBarYellowAlert,
  };

  static void showSuccessSnackBar(String message, {VoidCallback? callback}) {
    _showSuccessSnackBar(_CustomSuccessSnackBar(
      color: AppColors.snackBarGreenSuccess,
      icon: Res.successSnackBar,
      message: message,
      callback: callback,
    ));
  }

  static void showErrorSnackBar({
    required BaseError error,
    VoidCallback? callback,
  }) {
    _showSnackBar(_CustomSnackBar(
        color: AppColors.snackBarRedError,
        icon: Res.errorSnackBar,
        callback: callback,
        message: error.message));
  }

  static void showUnknownErrorSnackBar({VoidCallback? callback}) {
    showErrorSnackBar(error: UnknownError(), callback: callback);
  }

  static void showWarningSnackBar({required String message, Color? color}) {
    _showSnackBar(_CustomSnackBar(
      color: color ?? AppColors.snackBarYellowAlert,
      icon: Res.warningSnackBar,
      message: message,
    ));
  }

  static void _showSnackBar(_CustomSnackBar snackBar,
      {
      // if true, show snackBar even if another snackBar is active
      bool forceShow = false}) {
    BuildContext context = getIt.get<GlobalContext>().context();
    if (_isSnackBarActive && !forceShow) return;
    _isSnackBarActive = true;
    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((value) {
      _isSnackBarActive = false;
    });
  }

  static void _showSuccessSnackBar(_CustomSuccessSnackBar snackBar,
      {
      // if true, show snackBar even if another snackBar is active
      bool forceShow = false}) {
    BuildContext context = getIt.get<GlobalContext>().context();
    if (_isSnackBarActive && !forceShow) return;
    _isSnackBarActive = true;
    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((value) {
      _isSnackBarActive = false;
    });
  }

  static void showSimpleToast(
      {required String msg,
      Color? color,
      Color? textColor,
      ToastGravity? gravity,
      ToastType type = ToastType.error}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity ?? ToastGravity.TOP,
      backgroundColor: color ?? toastBgColors[type],
      textColor: textColor ?? Colors.white,
      fontSize: 16.0,
    );
  }

  static void showUndoSnackBar({
    required Widget message,
    required VoidCallback onUndo,
    required VoidCallback onComplete,
    Duration duration = const Duration(seconds: 5),
  }) {
    BuildContext context = getIt.get<GlobalContext>().context();
    
    // Increment counter and get unique ID for this snackbar
    _undoSnackBarCounter++;
    final currentUndoSnackBarId = _undoSnackBarCounter;
    
    // If a snackbar is already active, execute its completion callback and dismiss it
    if (_isSnackBarActive && _currentUndoCompleteCallback != null) {
      _currentUndoCompleteCallback!(); // Execute previous item's completion
    }
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    
    // Store the current completion callback
    _currentUndoCompleteCallback = onComplete;
    _isSnackBarActive = true;
    
    ScaffoldMessenger.of(context)
        .showSnackBar(_UndoSnackBar(
          message: message,
          onUndo: () {
            // Clear the completion callback when undo is pressed
            _currentUndoCompleteCallback = null;
            onUndo();
          },
          onComplete: onComplete,
          duration: duration,
        ))
        .closed
        .then((value) {
      // Only reset if this is still the latest undo snackbar
      if (currentUndoSnackBarId == _undoSnackBarCounter) {
        _isSnackBarActive = false;
        _currentUndoCompleteCallback = null;
      }
    });
  }

  static void showCampaignSuccessSnackBar({
    required Widget message,
    required String actionText,
    required VoidCallback onAction,
    Duration duration = const Duration(seconds: 5),
  }) {
    BuildContext context = getIt.get<GlobalContext>().context();
    
    // Increment counter and dismiss any existing snackbar
    _campaignSnackBarCounter++;
    final currentSnackBarId = _campaignSnackBarCounter;
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    
    ScaffoldMessenger.of(context)
        .showSnackBar(_CampaignSuccessSnackBar(
          message: message,
          actionText: actionText,
          onAction: onAction,
          duration: duration,
        ))
        .closed
        .then((value) {
      // Only reset if this is still the latest snackbar
      if (currentSnackBarId == _campaignSnackBarCounter) {
        // This ensures we don't interfere with newer snackbars
      }
    });
  }
}

class _CustomSnackBar extends SnackBar {
  final String message;
  final VoidCallback? callback;
  final String icon;
  final Color color;
  final String? callbackMessage;

  _CustomSnackBar({
    required this.color,
    required this.icon,
    required this.message,
    this.callback,
    this.callbackMessage,
    Color? iconColor,
  }) : super(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            backgroundColor: Colors.transparent,
            elevation: 0,
            behavior: SnackBarBehavior.fixed,
            content: _SnackBarWidget(
              color: color,
              message: message,
              icon: icon,
              iconColor: iconColor,
              callback: callback,
              callbackMessage: callbackMessage,
            ));
}

class _SnackBarWidget extends StatelessWidget {
  final String icon;
  final String message;
  final Color color;
  final VoidCallback? callback;
  final String? callbackMessage;
  final Color? iconColor;

  const _SnackBarWidget({
    required this.icon,
    required this.message,
    required this.color,
    this.callback,
    this.callbackMessage,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIconWrapper(size: 20, iconPath: icon, color: iconColor),
          Gaps.hGap8,
          Flexible(
            child: Text(
              message,
              style: AppTextStyle.s14_w600(color: AppColors.fixedColors.white),
              overflow: TextOverflow.visible,
            ),
          ),
          if (callback != null) Gaps.hGap4,
          if (callback != null)
            InkWell(
              onTap: callback,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(callbackMessage ?? Translate.s.open,
                      style: AppTextStyle.s14_w400(color: AppColors.fixedColors.white)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _CustomSuccessSnackBar extends SnackBar {
  final String message;
  final VoidCallback? callback;
  final String icon;
  final Color color;
  final String? callbackMessage;

  _CustomSuccessSnackBar({
    required this.color,
    required this.icon,
    required this.message,
    this.callback,
    this.callbackMessage,
    Color? iconColor,
  }) : super(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: Center(
              child: _SuccessSnackBarWidget(
                color: color,
                message: message,
                icon: icon,
                iconColor: iconColor,
                callback: callback,
                callbackMessage: callbackMessage,
              ),
            ));
}

class _SuccessSnackBarWidget extends StatelessWidget {
  final String icon;
  final String message;
  final Color color;
  final VoidCallback? callback;
  final String? callbackMessage;
  final Color? iconColor;

  const _SuccessSnackBarWidget({
    required this.icon,
    required this.message,
    required this.color,
    this.callback,
    this.callbackMessage,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgIconWrapper(size: 20, iconPath: icon, color: iconColor),
            Gaps.hGap8,
            Text(
              message,
              style: AppTextStyle.s14_w600(color: AppColors.fixedColors.white),
              textAlign: TextAlign.center,
            ),
            if (callback != null) Gaps.hGap4,
            if (callback != null)
              InkWell(
                onTap: callback,
                child: Text(
                  callbackMessage ?? Translate.s.open,
                  style: AppTextStyle.s14_w400(color: AppColors.fixedColors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _UndoSnackBar extends SnackBar {
  final Widget message;
  final VoidCallback onUndo;
  final VoidCallback onComplete;
  @override
  final Duration duration;

  _UndoSnackBar({
    required this.message,
    required this.onUndo,
    required this.onComplete,
    required this.duration,
  }) : super(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          backgroundColor: Colors.transparent,
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          duration: duration,
          content: Center(
            child: _AnimatedUndoSnackBarWrapper(
              child: _UndoSnackBarWidget(
                message: message,
                onUndo: onUndo,
                onComplete: onComplete,
                duration: duration,
              ),
            ),
          ),
        );
}

class _AnimatedUndoSnackBarWrapper extends StatefulWidget {
  final Widget child;

  const _AnimatedUndoSnackBarWrapper({
    required this.child,
  });

  @override
  State<_AnimatedUndoSnackBarWrapper> createState() => _AnimatedUndoSnackBarWrapperState();
}

class _AnimatedUndoSnackBarWrapperState extends State<_AnimatedUndoSnackBarWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600), // Longer duration for more attention
      vsync: this,
    );
    
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -4.0), // Start from well below screen (positive value for bottom-to-top)
      end: Offset.zero, // End at normal position
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut, // More bouncy, attention-grabbing curve
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.8, // Start slightly smaller
      end: 1.0, // End at normal size
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut, // Same curve for synchronized effect
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: widget.child,
      ),
    );
  }
}

class _UndoSnackBarWidget extends StatefulWidget {
  final Widget message;
  final VoidCallback onUndo;
  final VoidCallback onComplete;
  final Duration duration;

  const _UndoSnackBarWidget({
    required this.message,
    required this.onUndo,
    required this.onComplete,
    required this.duration,
  });

  @override
  State<_UndoSnackBarWidget> createState() => _UndoSnackBarWidgetState();
}

class _UndoSnackBarWidgetState extends State<_UndoSnackBarWidget> {
  bool _undoPressed = false;

  @override
  void initState() {
    super.initState();
    // Execute the action after the duration if undo wasn't pressed
    Future.delayed(widget.duration, () {
      if (!_undoPressed && mounted) {
        widget.onComplete();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        margin: const EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.withValues(alpha: 0.3),
            width: .6,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: widget.message,
            ),
            Gaps.hGap8,
            InkWell(
              onTap: () {
                _undoPressed = true;
                widget.onUndo();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Text(
                Translate.s.undo,
                style: AppTextStyle.s14_w600(color: context.colors.appColorBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CampaignSuccessSnackBar extends SnackBar {
  final Widget message;
  final String actionText;
  final VoidCallback onAction;
  @override
  final Duration duration;

  _CampaignSuccessSnackBar({
    required this.message,
    required this.actionText,
    required this.onAction,
    required this.duration,
  }) : super(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          backgroundColor: Colors.transparent,
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 60, // Move 30px higher from bottom
          ),
          duration: duration,
          content: _AnimatedUndoSnackBarWrapper(
            child: _CampaignSuccessSnackBarWidget(
              message: message,
              actionText: actionText,
              onAction: onAction,
              duration: duration,
            ),
          ),
        );
}

class _CampaignSuccessSnackBarWidget extends StatefulWidget {
  final Widget message;
  final String actionText;
  final VoidCallback onAction;
  final Duration duration;

  const _CampaignSuccessSnackBarWidget({
    required this.message,
    required this.actionText,
    required this.onAction,
    required this.duration,
  });

  @override
  State<_CampaignSuccessSnackBarWidget> createState() => _CampaignSuccessSnackBarWidgetState();
}

class _CampaignSuccessSnackBarWidgetState extends State<_CampaignSuccessSnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.withValues(alpha: 0.3),
            width: .6,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: widget.message,
            ),
            Gaps.hGap8,
            InkWell(
              onTap: () {
                widget.onAction();
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Text(
                widget.actionText,
                style: AppTextStyle.s14_w600(color: context.colors.appColorBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
