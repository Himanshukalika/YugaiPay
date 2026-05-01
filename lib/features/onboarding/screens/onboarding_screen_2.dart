import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_math/vector_math_64.dart' as v64;
import 'dart:math' as math;
import 'onboarding_screen_3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 393,
            height: 852,
            child: Stack(
              children: [
                // Background container
                Container(
                  width: 393,
                  height: 852,
                  color: const Color(0xFFF8FAFC),
                ),
                
                // Logo with Cut Effect (Fixed positioning)
                Positioned.fill(
                  child: CustomPaint(
                    painter: OnboardingLogoPainter2(),
                  ),
                ),
        
                // Top-Left Element (Back Button/Icon Placeholder)
                Positioned(
                  top: 66,
                  left: 24,
                  width: 24,
                  height: 24,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.transparent,
                      child: SvgPicture.string(
                        '''<svg width="12" height="20" viewBox="0 0 12 20" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M10 20L0 10L10 0L11.775 1.775L3.55 10L11.775 18.225L10 20Z" fill="#1A1D3A"/>
        </svg>''',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                
                // Content Container (Title & description)
                Positioned(
                  top: 175,
                  left: 24,
                  width: 345,
                  height: 164,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF1A1D3A),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                          ),
                          children: [
                            const TextSpan(text: 'YugaiPay-'),
                            TextSpan(
                              text: 'Sakhi',
                              style: GoogleFonts.poppins(
                                fontStyle: FontStyle.italic,
                                foreground: Paint()
                                  ..shader = const LinearGradient(
                                    colors: <Color>[
                                      Color(0xFFD81B60),
                                      Color(0x99FF4081),
                                      Color(0xD6E82A6D),
                                      Color(0xFFD81B60),
                                    ],
                                    stops: [0.0926, 0.3722, 0.6308, 0.714],
                                  ).createShader(
                                    const Rect.fromLTWH(200.0, 0.0, 100.0, 30.0),
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'Comprehensive system for community mobilization, SHG operations, banking & credit linkage, livelihood management, monitoring, MIS, and compliance- from village to national level.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF4A5568),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                // Illustration Container
                Positioned(
                  top: 349,
                  left: 24,
                  width: 345,
                  height: 340,
                  child: Image.asset(
                    'assets/images/onboarding2.png',
                    fit: BoxFit.contain,
                  ),
                ),
        
                // Page Indicators (Dots) - Placeholder
                Positioned(
                  top: 684,
                  left: 184,
                  width: 44,
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Inactive Dot 1
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF64748B),
                        ),
                      ),
                      const SizedBox(width: 7),
                      // Active Dot 2
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      const SizedBox(width: 7),
                      // Inactive Dot 3
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
        
                // Navigation Buttons (Placeholder)
                Positioned(
                  top: 731,
                  left: 52,
                  width: 295,
                  height: 43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 45,
                        child: GestureDetector(
                          onTap: () async {
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setBool('isFirstTime', false);
                            if (context.mounted) {
                              context.go(AppRoutes.home);
                            }
                          },
                          child: Text(
                            'Skip',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF64748B).withValues(alpha: 0.8),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => const OnboardingScreen3(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Container(
                          width: 226,
                          height: 43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFFF7A18).withValues(alpha: 0.3),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Next',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                // Tagline Footer
                Positioned(
                  top: 805,
                  left: 24,
                  width: 345,
                  height: 15,
                  child: Text(
                    'Unified Digital Platform for NRLM SHG Management',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF1A1D3A).withValues(alpha: 0.6),
                      height: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingLogoPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final shader = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: const [
        Color(0xFFD81B60),
        Color(0x99FF4081),
        Color(0xD6E82A6D),
        Color(0xFFD81B60),
      ],
      stops: const [0.0926, 0.3722, 0.6308, 0.714],
    );

    final paint1 = Paint()
      ..shader = shader.createShader(const Rect.fromLTWH(159, 60, 20.49, 56.76));

    final paint2 = Paint()
      ..shader = shader.createShader(const Rect.fromLTWH(188, 60, 20.23, 82.62));

    Path path1 = Path();
    path1.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 20.49, 56.76,
      topLeft: const Radius.circular(12),
      topRight: const Radius.circular(72),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));
    
    Matrix4 m1 = Matrix4.identity()
      ..translateByVector3(v64.Vector3(159.01 + 20.49/2, 60.19 + 56.76/2, 0.0))
      ..rotateZ(-33.13 * math.pi / 180)
      ..translateByVector3(v64.Vector3(-20.49/2, -56.76/2, 0.0));
    path1 = path1.transform(m1.storage);

    Path path2 = Path();
    path2.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 20.23, 82.62,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    Matrix4 m2 = Matrix4.identity()
      ..translateByVector3(v64.Vector3(188.71 + 20.23/2, 60.19 + 82.62/2, 0.0))
      ..rotateZ(27.37 * math.pi / 180)
      ..translateByVector3(v64.Vector3(-20.23/2, -82.62/2, 0.0));
    path2 = path2.transform(m2.storage);

    Path path3 = Path();
    path3.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 4.36, 47.80,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    Matrix4 m3 = Matrix4.identity()
      ..translateByVector3(v64.Vector3(189.89 + 4.36/2, 94.53 + 47.80/2, 0.0))
      ..rotateZ(52.77 * math.pi / 180)
      ..translateByVector3(v64.Vector3(-4.36/2, -47.80/2, 0.0));
    path3 = path3.transform(m3.storage);

    Path finalPath1 = Path.combine(PathOperation.difference, path1, path3);
    Path finalPath2 = Path.combine(PathOperation.difference, path2, path3);

    canvas.drawPath(finalPath1, paint1);
    canvas.drawPath(finalPath2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
