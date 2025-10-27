// import 'package:animate_do/animate_do.dart';
// import 'package:animated_list_item/animated_list_item.dart';
// import 'package:flutter/material.dart';
//
// class FadeAnimationListWidget extends StatefulWidget {
//   final Widget child;
//   final int length;
//   final int index;
//   final int? duration;
//   final AnimationType animationType;
//
//   const FadeAnimationListWidget({
//     super.key,
//     required this.child,
//     this.duration,
//     required this.index,
//     required this.length,
//     this.animationType = AnimationType.fade,
//   });
//
//   @override
//   State<FadeAnimationListWidget> createState() => _FadeAnimationListWidgetState();
// }
//
// class _FadeAnimationListWidgetState extends State<FadeAnimationListWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: Duration(milliseconds: widget.duration ?? 300),
//       vsync: this,
//     );
//     _animationController.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedListItem(
//       index: widget.index,
//       length: widget.length,
//       aniController: _animationController,
//       animationType: widget.animationType,
//       child: widget.child,
//     );
//   }
// }
