import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_tdd/core/helpers/recording_sound_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:stream_chat_flutter/src/message_input/stream_message_input_icon_button.dart';
import 'package:stream_chat_flutter/src/misc/audio_waveform.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/res.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// WhatsApp-style voice recorder with hold-to-record functionality
class WhatsAppStyleVoiceRecorder extends StatefulWidget {
  const WhatsAppStyleVoiceRecorder({
    super.key,
    required this.recordState,
    this.onRecordStart,
    this.onRecordPause,
    this.onRecordResume,
    this.onRecordDragUpdate,
    this.onRecordCancel,
    this.onRecordLock,
    this.onRecordFinish,
    this.onRecordStop,
    this.onRecordStartCancel,
    this.onCancelWidgetVisibilityChanged,
    this.lockRecordThreshold = 50,
    this.cancelRecordThreshold = 100,
  });

  final AudioRecorderState recordState;
  final VoidCallback? onRecordStart;
  final VoidCallback? onRecordPause;
  final VoidCallback? onRecordResume;
  final VoidCallback? onRecordCancel;
  final VoidCallback? onRecordLock;
  final VoidCallback? onRecordFinish;
  final VoidCallback? onRecordStop;
  final VoidCallback? onRecordStartCancel;
  final ValueSetter<Offset>? onRecordDragUpdate;
  final ValueSetter<bool>? onCancelWidgetVisibilityChanged;
  final double lockRecordThreshold;
  final double cancelRecordThreshold;

  @override
  State<WhatsAppStyleVoiceRecorder> createState() => _WhatsAppStyleVoiceRecorderState();
}

class _WhatsAppStyleVoiceRecorderState extends State<WhatsAppStyleVoiceRecorder>
    with TickerProviderStateMixin {
  
  late AnimationController _scaleController;
  late AnimationController _slideController;
  late AnimationController _pulseController;
  late AnimationController _cancelController;
  late AnimationController _lockController;
  late AnimationController _recordingInterfaceController;
  late AnimationController _buttonPositionController;
  
  late Animation<double> _scaleAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _pulseAnimation;
  late Animation<double> _cancelAnimation;
  late Animation<double> _recordingInterfaceAnimation;
  late Animation<double> _buttonPositionAnimation;
  
  bool _isPanRecording = false;
  Offset _initialPanPosition = Offset.zero;
  Offset _currentDragOffset = Offset.zero;
  double _smoothButtonOffsetY = 0.0;
  double _buttonTargetY = 0.0;
  
  bool get isRecording => widget.recordState is RecordStateRecordingHold;
  bool get isLocked => widget.recordState is RecordStateRecordingLocked;
  bool get isStopped => widget.recordState is RecordStateStopped;

  @override
  void initState() {
    super.initState();
    
    // Initialize recording sound helper for instant sound playback
    RecordingSoundHelper().initialize();
    
    // Scale animation for button press feedback - faster response
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    
    // Slide animation for recording interface
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    
    // Pulse animation for recording state - WhatsApp timing
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    // Cancel animation for slide-to-cancel feedback
    _cancelController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    
    // Lock animation for slide-to-lock feedback
    _lockController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    
    // Recording interface animation - faster WhatsApp-style
    _recordingInterfaceController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    
    // Button position animation
    _buttonPositionController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    
    // Button scale animation with elastic effect
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.15,
    ).animate(CurvedAnimation(
      parent: _scaleController,
      curve: Curves.elasticOut,
    ));
    
    // Slide-in animation for recording UI
    _slideAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutBack,
    ));
    
    // Pulse animation for recording indicator
    _pulseAnimation = Tween<double>(
      begin: 0.8,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _pulseController,
      curve: Curves.easeInOut,
    ));
    
    // Cancel progress animation
    _cancelAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _cancelController,
      curve: Curves.easeOut,
    ));
    
    // Recording interface animation with WhatsApp-style easing
    _recordingInterfaceAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _recordingInterfaceController,
      curve: Curves.easeOutQuart,
    ));
    
    // Button position animation
    _buttonPositionAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _buttonPositionController,
      curve: Curves.easeOut,
    ));
    
    // Listen to button position animation
    _buttonPositionAnimation.addListener(() {
      if (mounted && _buttonPositionController.isAnimating) {
        setState(() {
          // Animate from current position to target position
          _smoothButtonOffsetY = _buttonTargetY + 
            (_smoothButtonOffsetY - _buttonTargetY) * (1 - _buttonPositionAnimation.value);
        });
      }
    });
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _slideController.dispose();
    _pulseController.dispose();
    _cancelController.dispose();
    _lockController.dispose();
    _recordingInterfaceController.dispose();
    _buttonPositionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // WhatsApp behavior: Tap to start recording
      onTap: () {
        if (!isRecording && !isLocked && !isStopped) {
          _startLockedRecording();
        }
      },
      // Swipe up to start recording with amazing animation
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: StreamAudioRecorder(
        state: widget.recordState,
        button: _buildRecordButton(),
        builder: (context, state, recordButton) => switch (state) {
          RecordStateIdle() => _buildIdleState(state, recordButton),
          RecordStateRecordingHold() => _buildHoldingState(state, recordButton),
          RecordStateRecordingLocked() => _buildLockedState(state),
          RecordStateStopped() => _buildStoppedState(state),
        },
      ),
    );
  }

  Widget _buildRecordButton() {
    final theme = StreamChatTheme.of(context);
    
    return AnimatedBuilder(
      animation: Listenable.merge([_scaleAnimation, _lockController]),
      builder: (context, child) {
        // Only show swipe progress when actually recording or swiping
        final swipeProgress = (isRecording || _isPanRecording) 
          ? _lockController.value 
          : 0.0;
        
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Main mic button
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: swipeProgress > 0.0 ? Colors.white : theme.colorTheme.inputBg,
                  border: swipeProgress > 0.1
                    ? Border.all(
                        color: theme.colorTheme.accentPrimary.withValues(
                          alpha: 0.3 + (swipeProgress * 0.7)
                        ),
                        width: 2,
                      )
                    : null,
                  boxShadow: swipeProgress > 0.2
                    ? []
                    : null,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: StreamMessageInputIconButton(
                    onPressed: null, // Handled by parent GestureDetector
                    icon: SvgPicture.asset(
                      Res.microphoneBorderIcon,
                      colorFilter: ColorFilter.mode(
                        swipeProgress > 0.3
                          ? context.colors.appColorBlue
                          : context.colors.black,
                        BlendMode.srcIn,
                      ),
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
              // Swipe up indicator - appears when user starts swiping
              if (swipeProgress > 0.1 && (isRecording || _isPanRecording))
                Positioned(
                  bottom: -25,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: (swipeProgress * 2).clamp(0.0, 1.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: theme.colorTheme.accentPrimary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 12,
                            color: theme.colorTheme.barsBg,
                          ),
                          Text(
                            Translate.s.lock,
                            style: theme.textTheme.footnote.copyWith(
                              color: theme.colorTheme.barsBg,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIdleState(RecordStateIdle state, Widget recordButton) {
    final theme = StreamChatTheme.of(context);
    
    // Use smooth button movement for fluid animation like WhatsApp
    final buttonWithMovement = Transform.translate(
      offset: Offset(0, _smoothButtonOffsetY),
      child: IconTheme(
        data: IconThemeData(color: theme.colorTheme.textLowEmphasis),
        child: recordButton,
      ),
    );

    // If user is pan recording (swiping), show recording interface
    if (_isPanRecording) {
      return AnimatedBuilder(
        animation: _recordingInterfaceAnimation,
        builder: (context, child) {
          final interfaceProgress = _recordingInterfaceAnimation.value;
          
          return LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth.isFinite ? constraints.maxWidth : 400.0;
              
              return SizedBox(
                width: maxWidth,
                child: Stack(
                  clipBehavior: Clip.none, // Allow button to move outside stack bounds
                  children: [
                    // Recording interface during swipe - with proper constraints
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // Recording interface with WhatsApp-style animation
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 48,
                            margin: const EdgeInsets.only(
                              right: 8, // Reduced margin for closer spacing to button
                            ),
                            decoration: BoxDecoration(
                              // Use message bubble colors - white for sender, green for receiver
                              color: context.colors.white, // WhatsApp-style white background for recording interface
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: context.colors.disabledColor.withValues(alpha: 0.2), // Subtle border
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.08), // Subtle shadow like message bubbles
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Transform.scale(
                              scale: 0.9 + (interfaceProgress * 0.1), // Slight scale-in effect
                              child: Opacity(
                                opacity: interfaceProgress,
                                child: Row(
                                  children: [
                                    // Recording dot and timer (show 0:00 during swipe)
                                    Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          // Pulsing red dot
                                          AnimatedBuilder(
                                            animation: _pulseController,
                                            builder: (context, child) {
                                              return Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: context.colors.red, // Use app's red color for recording dot
                                                  shape: BoxShape.circle,
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(width: 8),
                                          // Timer
                                          Text(
                                            "0:00",
                                            style: theme.textTheme.body.copyWith(
                                              color: context.colors.black, // Use black text on white background
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Spacer to push content to sides
                                    Expanded(child: const SizedBox.shrink()),
                                    // WhatsApp-style cancel widget that looks like recording interface
                                    AnimatedBuilder(
                                      animation: _cancelAnimation,
                                      builder: (context, child) {
                                        final cancelProgress = _isPanRecording ? _cancelController.value : _cancelAnimation.value;
                                        
                                        // Show cancel widget when approaching cancel threshold
                                        if (cancelProgress > 0.2) {
                                          return AnimatedContainer(
                                            duration: const Duration(milliseconds: 200),
                                            margin: const EdgeInsets.only(right: 12),
                                            height: 36,
                                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                            decoration: BoxDecoration(
                                              // Red background like WhatsApp cancel widget
                                                                                          color: Color.lerp(
                                              context.colors.red.withValues(alpha: 0.1),
                                              context.colors.red.withValues(alpha: 0.15),
                                              cancelProgress,
                                            ),
                                              borderRadius: BorderRadius.circular(18),
                                              border: Border.all(
                                                color: Color.lerp(
                                                  context.colors.red.withValues(alpha: 0.3),
                                                  context.colors.red.withValues(alpha: 0.6),
                                                  cancelProgress,
                                                )!,
                                                width: 1.5,
                                              ),
                                              boxShadow: cancelProgress > 0.5 
                                                ? [
                                                    BoxShadow(
                                                      color: context.colors.red.withValues(alpha: 0.2),
                                                      blurRadius: 8,
                                                      offset: const Offset(0, 2),
                                                    ),
                                                  ]
                                                : null,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                // Multiple animated arrows like WhatsApp
                                                ...List.generate(3, (index) {
                                                  return AnimatedContainer(
                                                    duration: Duration(milliseconds: 150 + (index * 50)),
                                                    transform: Matrix4.translationValues(
                                                      -(cancelProgress * (10 + index * 3)), 0, 0),
                                                    child: AnimatedOpacity(
                                                      duration: const Duration(milliseconds: 200),
                                                      opacity: (cancelProgress - (index * 0.2)).clamp(0.0, 1.0),
                                                      child: Icon(
                                                        Icons.keyboard_arrow_left,
                                                        size: 16,
                                                        color: Color.lerp(
                                                          context.colors.red.withValues(alpha: 0.7),
                                                          context.colors.red,
                                                          cancelProgress,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                                const SizedBox(width: 8),
                                                // "CANCEL" text in bold like WhatsApp
                                                Text(
                                                  Translate.s.slide_to_cancel.toUpperCase(),
                                                  style: theme.textTheme.captionBold.copyWith(
                                                    color: Color.lerp(
                                                      context.colors.red.withValues(alpha: 0.8),
                                                      context.colors.red,
                                                      cancelProgress,
                                                    ),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.5,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                        
                                        // Default subtle indicator when not approaching cancel
                                        return Container(
                                          margin: const EdgeInsets.only(right: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.keyboard_arrow_left,
                                                size: 16,
                                                color: context.colors.textGaryColor, // Use gray arrow on white background
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                Translate.s.slide_to_cancel,
                                                style: theme.textTheme.body.copyWith(
                                                  color: context.colors.textGaryColor, // Use gray text on white background
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Button space
                        const SizedBox(width: 48, height: 48),
                      ],
                    ),
                    
                    // "Lift to record" floating indicator (WhatsApp style)
                    if (_isPanRecording) 
                      Positioned(
                        left: 20,
                        top: -45, // Position above the recording interface
                        child: AnimatedOpacity(
                          opacity: interfaceProgress,
                          duration: const Duration(milliseconds: 200),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: context.colors.primary, // Use app's primary color
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.15), // Standard shadow color
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 16,
                                  color: Colors.white, // White text on primary background
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  Translate.s.lift_to_record,
                                  style: theme.textTheme.captionBold.copyWith(
                                    color: Colors.white, // White text on primary background
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    
                    // Recording button that moves with swipe gesture - ensure it's always visible
                    Positioned(
                      right: 0,
                      child: Transform.translate(
                        offset: Offset(0, _smoothButtonOffsetY),
                        child: Container(
                          // Add generous padding to prevent clipping during upward movement
                          padding: const EdgeInsets.symmetric(vertical: 60),
                          child: recordButton,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
    }

    // Show hint tooltip if there's a message (normal idle state)
    final info = state.message;
    if (info == null || info.isEmpty) return buttonWithMovement;

    return PortalTarget(
      anchor: const Aligned(
        target: Alignment.topRight,
        follower: Alignment.bottomRight,
      ),
      portalFollower: _buildHoldToRecordHint(info),
      child: buttonWithMovement,
    );
  }

  Widget _buildHoldingState(RecordStateRecordingHold state, Widget recordButton) {
    final theme = StreamChatTheme.of(context);
    final recordingTime = state.duration;
    final dragOffset = Offset(
      math.min(state.dragOffset.dx, 0),
      math.min(state.dragOffset.dy, 0),
    );

    // Calculate progress for slide to cancel
    final cancelProgress = (dragOffset.dx.abs() / widget.cancelRecordThreshold).clamp(0.0, 1.0);

    // Use smooth button movement for fluid animation like WhatsApp
    final buttonOffsetY = _smoothButtonOffsetY;

    return AnimatedBuilder(
        animation: _recordingInterfaceAnimation,
        builder: (context, child) {
          final interfaceProgress = _recordingInterfaceAnimation.value;
          
          return Stack(
            clipBehavior: Clip.none, // Allow button to move outside stack bounds
            children: [
              // Recording interface positioned normally
              Row(
                children: [
                  // Recording interface with WhatsApp-style animation
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutQuart,
                      height: 48,
                      margin: EdgeInsets.only(
                        right: 12 + (interfaceProgress * 4), // Slight margin animation
                      ),
                      decoration: BoxDecoration(
                        color: context.colors.white, // White background for recording state
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: context.colors.primary.withValues(alpha: 0.3), // Primary color border when recording
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08), // Subtle shadow like message bubbles
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Transform.scale(
                        scale: 0.9 + (interfaceProgress * 0.1), // Slight scale-in effect
                        child: Opacity(
                          opacity: interfaceProgress,
                          child: Row(
                            children: [
                              // Recording dot and timer
                              Container(
                                margin: const EdgeInsets.only(left: 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildRecordingTimer(recordingTime),
                                    // Show unlock icon during swipe to indicate finger lift needed
                                    if (_isPanRecording) ...[
                                      const SizedBox(width: 12),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: context.colors.primary.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: context.colors.primary.withValues(alpha: 0.3),
                                            width: 1,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.lock_open,
                                              size: 12,
                                              color: context.colors.primary,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              Translate.s.lift_to_record,
                                              style: theme.textTheme.footnote.copyWith(
                                                color: context.colors.primary,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Enhanced slide to cancel indicator - same design as idle state
                              Expanded(
                                child: AnimatedBuilder(
                                  animation: _cancelAnimation,
                                  builder: (context, child) {
                                    final effectiveCancelProgress = _isPanRecording ? _cancelController.value : cancelProgress;
                                    
                                    // Show enhanced cancel widget when approaching cancel threshold
                                    if (effectiveCancelProgress > 0.2) {
                                      return Center(
                                        child: AnimatedContainer(
                                          duration: const Duration(milliseconds: 200),
                                          height: 36,
                                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                          decoration: BoxDecoration(
                                            color: Color.lerp(
                                              context.colors.red.withValues(alpha: 0.1),
                                              context.colors.red.withValues(alpha: 0.15),
                                              effectiveCancelProgress,
                                            ),
                                            borderRadius: BorderRadius.circular(18),
                                            border: Border.all(
                                              color: Color.lerp(
                                                context.colors.red.withValues(alpha: 0.3),
                                                context.colors.red.withValues(alpha: 0.6),
                                                effectiveCancelProgress,
                                              )!,
                                              width: 1.5,
                                            ),
                                            boxShadow: effectiveCancelProgress > 0.5 
                                              ? [
                                                  BoxShadow(
                                                    color: context.colors.red.withValues(alpha: 0.2),
                                                    blurRadius: 8,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ]
                                              : null,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // Multiple animated arrows like WhatsApp
                                              ...List.generate(3, (index) {
                                                return AnimatedContainer(
                                                  duration: Duration(milliseconds: 150 + (index * 50)),
                                                  transform: Matrix4.translationValues(
                                                    -(effectiveCancelProgress * (10 + index * 3)), 0, 0),
                                                  child: AnimatedOpacity(
                                                    duration: const Duration(milliseconds: 200),
                                                    opacity: (effectiveCancelProgress - (index * 0.2)).clamp(0.0, 1.0),
                                                    child: Icon(
                                                      Icons.keyboard_arrow_left,
                                                      size: 16,
                                                      color: Color.lerp(
                                                        context.colors.red.withValues(alpha: 0.7),
                                                        context.colors.red,
                                                        effectiveCancelProgress,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                              const SizedBox(width: 8),
                                              // "CANCEL" text in bold like WhatsApp
                                              Text(
                                                Translate.s.slide_to_cancel.toUpperCase(),
                                                style: theme.textTheme.captionBold.copyWith(
                                                  color: Color.lerp(
                                                    context.colors.red.withValues(alpha: 0.8),
                                                    context.colors.red,
                                                    effectiveCancelProgress,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                    
                                    // Default subtle indicator
                                    return _buildSlideToCancelIndicator(effectiveCancelProgress);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Placeholder for button space
                  const SizedBox(width: 48, height: 48),
                ],
              ),
              // Recording button that moves with swipe gesture - consistent positioning
              Positioned(
                right: 0,
                child: Transform.translate(
                  offset: Offset(0, buttonOffsetY), // Move button with swipe
                  child: Container(
                    // Add generous padding to prevent clipping during upward movement
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: recordButton,
                  ),
                ),
              ),
            ],
          );
        },
      );
  }

  Widget _buildLockedState(RecordStateRecordingLocked state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _buildRecordingTimer(state.duration),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                height: 32,
                child: StreamAudioWaveform(
                  limit: 50,
                  waveform: state.waveform,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamMessageInputIconButton(
              icon: const StreamSvgIcon(icon: StreamSvgIcons.delete),
              color: context.colors.red,
              onPressed: _handleRecordCancel,
            ),
            StreamMessageInputIconButton(
              icon: const StreamSvgIcon(icon: StreamSvgIcons.stop),
              color: context.colors.red,
              onPressed: _handleRecordStop,
            ),
            StreamMessageInputIconButton(
              icon: const StreamSvgIcon(icon: StreamSvgIcons.checkSend),
              color: context.colors.appColorBlue,
              onPressed: _handleRecordFinish,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStoppedState(RecordStateStopped state) {
    // Get duration and waveform from the audio recording attachment
    final recording = state.audioRecording;
    final duration = Duration(
      milliseconds: ((recording.extraData['duration'] as num?) ?? 0).toInt() * 1000,
    );
    final waveform = (recording.extraData['waveform_data'] as List<double>?) ?? <double>[];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            _buildRecordingTimer(duration),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                height: 32,
                child: StreamAudioWaveform(
                  limit: 50,
                  waveform: waveform,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamMessageInputIconButton(
              icon: const StreamSvgIcon(icon: StreamSvgIcons.delete),
              color: context.colors.red,
              onPressed: _handleRecordCancel,
            ),
            StreamMessageInputIconButton(
              icon: const StreamSvgIcon(icon: StreamSvgIcons.checkSend),
              color: context.colors.primary,
              onPressed: _handleRecordFinish,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHoldToRecordHint(String message) {
    final theme = StreamChatTheme.of(context);
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
                   BoxShadow(
           color: Colors.black.withValues(alpha: 0.1),
           blurRadius: 8,
           offset: const Offset(0, 2),
         ),
        ],
      ),
      child: Text(
        message,
        style: theme.textTheme.footnote.copyWith(
          color: context.colors.textGaryColor,
        ),
      ),
    );
  }

  Widget _buildRecordingTimer(Duration duration) {
    final theme = StreamChatTheme.of(context);
    
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Animated pulsing red dot like WhatsApp
        AnimatedBuilder(
          animation: _pulseAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _pulseAnimation.value,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: context.colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.red.withValues(alpha: 0.4),
                      blurRadius: 4 * _pulseAnimation.value,
                      spreadRadius: 1 * _pulseAnimation.value,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(width: 8),
        // Recording time with monospace font
        AnimatedBuilder(
          animation: _slideAnimation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(20 * (1 - _slideAnimation.value), 0),
              child: Opacity(
                opacity: _slideAnimation.value,
                child: Text(
                  duration.toMinutesAndSeconds(),
                  style: theme.textTheme.headline.copyWith(
                    color: context.colors.black,
                    fontFeatures: [const FontFeature.tabularFigures()],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // Removed duplicate method - using _buildRecordingTimer instead

  Widget _buildSlideToCancelIndicator(double progress) {
    final theme = StreamChatTheme.of(context);
    final isArabic = Localizations.localeOf(context).languageCode == 'ar';
    
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 40,
      decoration: BoxDecoration(
        color: progress > 0.7 
          ? context.colors.red.withValues(alpha: 0.1)
          : context.colors.white,
        borderRadius: BorderRadius.circular(20),
        border: progress > 0.7 
          ? Border.all(color: context.colors.red.withValues(alpha: 0.3))
          : null,
      ),
      child: Stack(
        children: [
          // Background slide progress
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: progress > 0.3
                ? LinearGradient(
                    begin: isArabic ? Alignment.centerRight : Alignment.centerLeft,
                    end: isArabic ? Alignment.centerLeft : Alignment.centerRight,
                    colors: [
                      context.colors.red.withValues(alpha: 0.1),
                      Colors.transparent,
                    ],
                    stops: [progress.clamp(0.0, 0.8), 1.0],
                  )
                : null,
            ),
          ),
          // Center content
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated arrow
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  transform: Matrix4.translationValues(
                    isArabic ? (progress * 30) : -(progress * 30), 
                    0, 
                    0
                  ),
                  child: Icon(
                    isArabic ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_left,
                    color: progress > 0.5 
                      ? context.colors.red 
                      : context.colors.textGaryColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 8),
                // Text
                Text(
                  Translate.s.slide_to_cancel,
                  style: theme.textTheme.footnote.copyWith(
                    color: progress > 0.5 
                      ? context.colors.red 
                      : context.colors.textGaryColor,
                    fontWeight: progress > 0.7 ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // WhatsApp-style pan gestures: Follow finger, record on release
  void _onPanStart(DragStartDetails details) {
    if (isRecording || isLocked || isStopped) return;
    
    _initialPanPosition = details.localPosition;
    _currentDragOffset = Offset.zero;
    _isPanRecording = true;
    
    // Reset button position to ensure it starts at the correct position
    _smoothButtonOffsetY = 0.0;
    
    // Start visual feedback immediately
    _scaleController.forward();
    HapticFeedback.lightImpact();
    
    // Hide input buttons immediately when any swipe starts (WhatsApp behavior)
    widget.onCancelWidgetVisibilityChanged?.call(true);
    
    // Show recording interface when swipe starts (but don't start recording yet)
    _recordingInterfaceController.forward();
    _pulseController.repeat(reverse: true);
  }

  void _onPanUpdate(DragUpdateDetails details) {
    if (!_isPanRecording) return;
    
    _currentDragOffset = details.localPosition - _initialPanPosition;
    
    // Smooth button movement following finger
    _smoothlyMoveButtonTo(_currentDragOffset.dy);
    
    // Handle upward swipe for lock indication
    if (_currentDragOffset.dy < -20) {
      final lockProgress = ((_currentDragOffset.dy + 20).abs() / widget.lockRecordThreshold).clamp(0.0, 1.0);
      _lockController.value = lockProgress;
      
      // Haptic feedback when approaching lock threshold
      if (lockProgress > 0.7 && lockProgress < 0.8) {
        HapticFeedback.selectionClick();
      }
    } else {
      _lockController.value = 0.0;
    }
    
    // Handle left swipe for cancel indication  
    if (_currentDragOffset.dx < -20) {
      final cancelProgress = ((_currentDragOffset.dx + 20).abs() / widget.cancelRecordThreshold).clamp(0.0, 1.0);
      _cancelController.value = cancelProgress;
      
      // Haptic feedback when approaching cancel threshold
      if (cancelProgress > 0.7 && cancelProgress < 0.8) {
        HapticFeedback.selectionClick();
      }
    } else {
      _cancelController.value = 0.0;
    }
    
    // Update drag offset for visual feedback
    widget.onRecordDragUpdate?.call(_currentDragOffset);
  }

  void _onPanEnd(DragEndDetails details) {
    if (!_isPanRecording) return;
    
    _scaleController.reverse();
    _isPanRecording = false;
    
    // IMMEDIATELY animate button back to original position
    _animateButtonToPosition(0.0);
    
    // Decide action based on final position
    final lockProgress = _lockController.value;
    final cancelProgress = _cancelController.value;
    
    if (cancelProgress >= 1.0) {
      // Cancel - don't start recording, show buttons again
      _resetToIdleState();
    } else {
      // Recording interface already started in _onPanStart, now start actual recording
      if (lockProgress >= 1.0) {
        // Start recording and auto-lock (buttons stay hidden during recording)
        _startRecordingAndLock();
      } else {
        // Start normal recording (buttons stay hidden during recording)
        _startRecordingWithSwipeAnimation();
      }
    }
  }

  void _smoothlyMoveButtonTo(double targetY) {
    // For immediate finger following during swipe - more responsive
    setState(() {
      _smoothButtonOffsetY = _smoothButtonOffsetY * 0.1 + targetY * 0.9;
    });
  }
  
  void _animateButtonToPosition(double targetY) {
    // Animate smoothly to target position
    _buttonTargetY = targetY;
    
    _buttonPositionController.reset();
    _buttonPositionController.forward().then((_) {
      if (mounted) {
        setState(() {
          _smoothButtonOffsetY = targetY;
        });
      }
    });
  }

  // WhatsApp-style recording methods
  void _startLockedRecording() {
    // WhatsApp behavior: Vibrate first, then start recording after delay
    HapticFeedback.heavyImpact();
    _scaleController.forward();
    
    // Wait for vibration to be felt, then start recording with sound
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        // Play recording start sound
        RecordingSoundHelper().playRecordingStartSound();
        
        _recordingInterfaceController.forward();
        _pulseController.repeat(reverse: true);
        widget.onRecordStart?.call();
        
        // Scale button back to normal
        _scaleController.reverse();
      }
    });
  }

  void _startRecordingWithSwipeAnimation() {
    // Swipe recording start with sound delay
    HapticFeedback.heavyImpact();
    
    // Wait for vibration, then start recording with sound
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        // Play recording start sound
        RecordingSoundHelper().playRecordingStartSound();
        
        // Recording interface and pulse already started in _onPanEnd
        widget.onRecordStart?.call();
      }
    });
  }

  void _startRecordingAndLock() {
    // Start recording and immediately lock it
    HapticFeedback.heavyImpact();
    
    // Wait for vibration, then start recording with sound and auto-lock
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        // Play recording start sound
        RecordingSoundHelper().playRecordingStartSound();
        
        // Recording interface and pulse already started in _onPanEnd
        _lockController.forward();
        
        widget.onRecordStart?.call();
        
        // Auto-lock after a brief moment
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            widget.onRecordLock?.call();
          }
        });
      }
    });
  }

  void _resetToIdleState() {
    // Cancel and return to idle state
    HapticFeedback.lightImpact();
    
    // Reset all animations and controllers
    _scaleController.reverse();
    _slideController.reverse();
    _pulseController.stop();
    _lockController.reset();
    _cancelController.reset();
    _recordingInterfaceController.reverse();
    
    // Show input buttons again when returning to idle state
    widget.onCancelWidgetVisibilityChanged?.call(false);
    
    // Return button to original position
    _animateButtonToPosition(0.0);
    _currentDragOffset = Offset.zero;
    _isPanRecording = false;
  }

  // Wrapper methods to ensure button returns to position
  void _handleRecordCancel() {
    _resetToIdleState();
    widget.onRecordCancel?.call();
  }

  void _handleRecordStop() {
    _resetToIdleState(); 
    widget.onRecordStop?.call();
  }

  void _handleRecordFinish() {
    // Play finish sound and reset
    HapticFeedback.selectionClick();
    _resetToIdleState();
    widget.onRecordFinish?.call();
  }
} 