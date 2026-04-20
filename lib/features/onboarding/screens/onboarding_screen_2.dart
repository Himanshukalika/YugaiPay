import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'onboarding_screen_3.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = math.min(345.0, size.width * 0.9);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: Stack(
        children: [
          // Background/Logo Painter
          Positioned.fill(
            child: CustomPaint(
              painter: OnboardingLogoPainter2(),
            ),
          ),
          
          // Back Button
          Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            left: 24,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.string(
                '''<svg width="12" height="20" viewBox="0 0 12 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10 20L0 10L10 0L11.775 1.775L3.55 10L11.775 18.225L10 20Z" fill="#1A1D3A"/>
</svg>''',
                width: 24,
                height: 24,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          
          // Responsive Content
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 100),
                // Title Area
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF1A1D3A),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
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
                                stones: [0.0926, 0.3722, 0.6308, 0.714],
                              ).createShader(
                                const Rect.fromLTWH(200.0, 0.0, 100.0, 30.0),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Comprehensive system for community mobilization, SHG operations, banking & credit linkage, livelihood management, monitoring, MIS, and compliance- from village to national level.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF4A5568),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
                
                const Spacer(),
                
                // Illustration
                Center(
                  child: SizedBox(
                    width: cardWidth,
                    height: cardWidth * 0.9,
                    child: Image.asset(
                      'assets/images/onboarding2.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                
                const Spacer(),
                
                // Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIndicator(isActive: false),
                    const SizedBox(width: 7),
                    _buildIndicator(isActive: true),
                    const SizedBox(width: 7),
                    _buildIndicator(isActive: false),
                  ],
                ),
                
                const SizedBox(height: 32),
                
                // Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          'Skip',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF64748B).withOpacity(0.8),
                          ),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const OnboardingScreen3()),
                          );
                        },
                        child: Container(
                          width: cardWidth * 0.65,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFFF7A18).withOpacity(0.3),
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
                
                const SizedBox(height: 24),
                
                // Footer
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Unified Digital Platform for NRLM SHG Management',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF1A1D3A).withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator({required bool isActive}) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFF0F172A) : const Color(0xFF64748B),
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
      ..translate(159.01 + 20.49/2, 60.19 + 56.76/2)
      ..rotateZ(-33.13 * math.pi / 180)
      ..translate(-20.49/2, -56.76/2);
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
      ..translate(188.71 + 20.23/2, 60.19 + 82.62/2)
      ..rotateZ(27.37 * math.pi / 180)
      ..translate(-20.23/2, -82.62/2);
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
      ..translate(189.89 + 4.36/2, 94.53 + 47.80/2)
      ..rotateZ(52.77 * math.pi / 180)
      ..translate(-4.36/2, -47.80/2);
    path3 = path3.transform(m3.storage);

    Path finalPath1 = Path.combine(PathOperation.difference, path1, path3);
    Path finalPath2 = Path.combine(PathOperation.difference, path2, path3);

    canvas.drawPath(finalPath1, paint1);
    canvas.drawPath(finalPath2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
