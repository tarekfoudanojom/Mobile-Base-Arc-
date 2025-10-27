import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/global_imports.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class CustomButtonLoadingWidget extends StatelessWidget {
  final ObsValue<bool> loadingObs;
  final Widget child;
  final Color? loadingColor;
  final double? loadingSize;
  final MainAxisAlignment? alignment;
  final bool aiLoader;

  const CustomButtonLoadingWidget({
    super.key,
    required this.loadingObs,
    required this.child,
    this.loadingColor,
    this.loadingSize,
    this.alignment,
    this.aiLoader = false,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: loadingObs,
        builder: (context, value) {
          return Visibility(
            visible: !value,
            replacement: Row(
              mainAxisAlignment: alignment ?? MainAxisAlignment.start,
              children: [
                (aiLoader)
                    ? const GradientCupertinoLoader(
                        size: 24,
                        gradientColors: [
                          Color(0xFF4F46E5), // Indigo
                          Colors.red,
                          Color(0xFF6EE7B7), // Mint green
                          Color(0xFF3B82F6), // Blue
                          Color(0xFF9333EA), // Violet
                        ],
                      )
                    : CupertinoActivityIndicator(
                        color: loadingColor ?? context.colors.appColorBlue,
                        radius: loadingSize ?? 10,
                      ),
              ],
            ),
            child: child,
          );
        });
  }
}

class GradientCupertinoLoader extends StatelessWidget {
  final double size;
  final List<Color> gradientColors;

  const GradientCupertinoLoader({
    Key? key,
    this.size = 30.0,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 1),
        onEnd: () => {},
        builder: (context, value, child) {
          return Transform.rotate(
            angle: value * 6.28, // 2π
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return SweepGradient(
                  colors: gradientColors,
                  startAngle: 0.0,
                  endAngle: 3.14 * 2,
                ).createShader(bounds);
              },
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
