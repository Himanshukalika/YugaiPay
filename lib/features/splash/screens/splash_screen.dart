import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;
import '../../../core/router/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to onboarding after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(AppRoutes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 1. Base Gradient Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF4C1D95).withOpacity(0.12),
                  const Color(0xFF8B5CF6).withOpacity(0.12),
                ],
              ),
            ),
          ),

          // 2. Large Glow Blur Shape
          Positioned(
            top: 712,
            left: -110,
            width: 613,
            height: 361,
            child: Opacity(
              opacity: 0.4,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF4C1D95).withOpacity(0.6),
                        const Color(0xFF8B5CF6).withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // 3. Logo with Cut Effect (Fixed positioning)
          Positioned.fill(
            child: CustomPaint(
              painter: LogoPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Note: We use the coordinates provided in the CSS relative to the center or screen
    // Since CustomPaint is Centered, we need to adjust if those were absolute.
    // Based on the 'top' values (~280-340), these look like absolute screen coords.
    // I will use absolute positioning by drawing at the specified offsets.

    final paint1 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
        stops: [0.1106, 0.5872, 1.0],
      ).createShader(const Rect.fromLTWH(120, 281, 40, 150));

    final paint2 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
        stops: [-0.0778, 0.3564, 0.7907],
      ).createShader(const Rect.fromLTWH(176, 282, 40, 150));

    // Part 1 Path
    Path path1 = Path();
    path1.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 39.14, 102.0,
      topLeft: const Radius.circular(12),
      topRight: const Radius.circular(72),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));
    
    // Apply Rotation -30
    Matrix4 m1 = Matrix4.identity()
      ..translate(120.95 + 39.14/2, 281.72 + 102.0/2)
      ..rotateZ(-30 * math.pi / 180)
      ..translate(-39.14/2, -102.0/2);
    path1 = path1.transform(m1.storage);

    // Part 2 Path
    Path path2 = Path();
    path2.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 39.14, 150.75,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    // Apply Rotation +22.76
    Matrix4 m2 = Matrix4.identity()
      ..translate(176.51 + 39.14/2, 282.64 + 150.75/2)
      ..rotateZ(22.76 * math.pi / 180)
      ..translate(-39.14/2, -150.75/2);
    path2 = path2.transform(m2.storage);

    // Part 3 (The Cutter)
    Path path3 = Path();
    path3.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 8.0, 89.29,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    // Apply Rotation +49.34
    Matrix4 m3 = Matrix4.identity()
      ..translate(180.37 + 8.0/2, 342.64 + 89.29/2)
      ..rotateZ(49.34 * math.pi / 180)
      ..translate(-8.0/2, -89.29/2);
    path3 = path3.transform(m3.storage);

    // COMBINE AND CUT
    // Subtract path3 from path1 and path2
    Path finalPath1 = Path.combine(PathOperation.difference, path1, path3);
    Path finalPath2 = Path.combine(PathOperation.difference, path2, path3);

    canvas.drawPath(finalPath1, paint1);
    canvas.drawPath(finalPath2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
