import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/share_services.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class WhatsappLayout extends StatelessWidget {
  final Widget child;
  final bool showWhatsApp;

  const WhatsappLayout({
    super.key,
    required this.child,
    required this.showWhatsApp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          child,
          if (showWhatsApp) const _DraggableWhatsAppButton(),
        ],
      ),
    );
  }
}

class _DraggableWhatsAppButton extends StatefulWidget {
  const _DraggableWhatsAppButton();

  @override
  State<_DraggableWhatsAppButton> createState() => _DraggableWhatsAppButtonState();
}

class _DraggableWhatsAppButtonState extends State<_DraggableWhatsAppButton> {
  late Offset position;

  @override
  void initState() {
    super.initState();
    // Initialize position in initState to access MediaQuery
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.of(context).size;
      const buttonSize = 42.0;
      const edgePadding = 16.0;
      setState(() {
        position = Offset(
          screenSize.width - buttonSize - edgePadding, // Right edge
          screenSize.height - 140, // Position from bottom
        );
      });
    });
    position = const Offset(300, 500); // Temporary initial position
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const buttonSize = 42.0; // Button size
    const edgePadding = 16.0; // Padding from screen edge
    
    return PositionedDirectional(
      start: position.dx,
      top: position.dy,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            // Update position during drag (allow anywhere for smooth dragging)
            double newX = position.dx + details.delta.dx;
            double newY = position.dy + details.delta.dy;
            
            // Keep Y within screen bounds during drag
            newY = newY.clamp(50, screenSize.height - buttonSize - 100);
            
            position = Offset(newX, newY);
          });
        },
        onPanEnd: (details) {
          setState(() {
            // Snap to nearest edge when drag ends
            double centerX = screenSize.width / 2;
            double snapX;
            
            if (position.dx < centerX) {
              // Snap to left edge
              snapX = edgePadding;
            } else {
              // Snap to right edge
              snapX = screenSize.width - buttonSize - edgePadding;
            }
            
            // Keep Y within bounds
            double snapY = position.dy.clamp(50, screenSize.height - buttonSize - 100);
            
            position = Offset(snapX, snapY);
          });
        },
        child: _buildWhatsAppButton(context),
      ),
    );
  }

  Widget _buildWhatsAppButton(BuildContext context) {
    return GestureDetector(
      onTap: () => getIt<ShareServices>().launchWhatsApp("+966556633344"),
      child: Container(
        width: 42,
        height: 42,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.8],
            colors: [
              Color(0xff60D66A),
              Color(0xff20B038),
            ],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colors.grey,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: SvgPicture.asset(Res.whatsApp),
      ),
    );
  }
}
