import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferEarnScreen extends StatelessWidget {
  const ReferEarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = screenWidth / 393;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ClipRect(
          child: SizedBox(
            width: screenWidth,
            height: 828 * scale,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: 393,
                height: 828,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: _HeroSection(onBack: () => Navigator.pop(context)),
                    ),
                    const Positioned(
                      top: 342,
                      left: 0,
                      child: SizedBox(
                        width: 393,
                        height: 50,
                        child: ColoredBox(color: Color(0xFF6A1B9A)),
                      ),
                    ),
                    Positioned(
                      top: 426.5,
                      left: 0,
                      child: SizedBox(
                        width: 393,
                        height: 240,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 345,
                              height: 75,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 345,
                                    height: 49,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 253,
                                          height: 49,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF7F7F7),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFFEBEBEB),
                                              width: 1,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 13,
                                                left: 47,
                                                child: SizedBox(
                                                  width: 159,
                                                  height: 24,
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/whatsapp.png',
                                                        width: 24,
                                                        height: 24,
                                                        fit: BoxFit.contain,
                                                      ),
                                                      const SizedBox(width: 21),
                                                      const SizedBox(
                                                        width: 114,
                                                        height: 15,
                                                        child: Text(
                                                          'Invite on Whatsapp',
                                                          style: TextStyle(
                                                            color: Color(
                                                              0xFF1A1D3A,
                                                            ),
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 12,
                                                            height: 1,
                                                            letterSpacing: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 40),
                                        Container(
                                          width: 52,
                                          height: 49,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF7F7F7),
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFFEBEBEB),
                                              width: 1,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 13,
                                                left: 11,
                                                child: Image.asset(
                                                  'assets/images/share.png',
                                                  width: 24,
                                                  height: 24,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 260,
                                    height: 18,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 63,
                                          height: 18,
                                          child: Text.rich(
                                            TextSpan(
                                              text: 'Invite : ',
                                              style: GoogleFonts.poppins(
                                                color: const Color(0xFF4A5568),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                height: 1,
                                                letterSpacing: 0,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'link',
                                                  style: GoogleFonts.poppins(
                                                    color: const Color(
                                                      0xFF4A5568,
                                                    ),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    height: 1,
                                                    letterSpacing: 0,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationColor:
                                                        const Color(0xFF4A5568),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 18,
                                          height: 18,
                                          child: Icon(
                                            Icons.copy_outlined,
                                            color: Color(0xFF4A5568),
                                            size: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            SizedBox(
                              width: 345,
                              height: 116,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 345,
                                    height: 19,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        SizedBox(
                                          width: 118,
                                          height: 19,
                                          child: Text(
                                            'Invite Contacts',
                                            style: TextStyle(
                                              color: Color(0xFF1A1D3A),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              height: 1,
                                              letterSpacing: 0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 84,
                                          height: 19,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 18,
                                                height: 18,
                                                child: Icon(
                                                  Icons.search,
                                                  color: Color(0xFF4A5568),
                                                  size: 18,
                                                ),
                                              ),
                                              SizedBox(width: 11),
                                              SizedBox(
                                                width: 55,
                                                height: 19,
                                                child: Text(
                                                  'Search',
                                                  style: TextStyle(
                                                    color: Color(0xFF4A5568),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    height: 1,
                                                    letterSpacing: 0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 64,
                                    height: 89,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF59E0B),
                                            borderRadius: BorderRadius.circular(
                                              18,
                                            ),
                                          ),
                                          child: const Stack(
                                            children: [
                                              Positioned(
                                                top: 20,
                                                left: 25,
                                                child: SizedBox(
                                                  width: 14,
                                                  height: 24,
                                                  child: Text(
                                                    'K',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      height: 1,
                                                      letterSpacing: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        const SizedBox.shrink(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 701,
                      left: 24,
                      child: SizedBox(
                        width: 143,
                        height: 127,
                        child: Stack(
                          children: [
                            const Positioned(
                              top: 0,
                              left: 0,
                              child: SizedBox(
                                width: 143,
                                height: 19,
                                child: Text(
                                  'More ways to earn',
                                  style: TextStyle(
                                    color: Color(0xFF1A1D3A),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    height: 1,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 63,
                              left: 63,
                              child: Image.asset(
                                'assets/images/earnings.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  final VoidCallback onBack;

  const _HeroSection({required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 342,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.66, -0.75),
          end: Alignment(0.66, 0.75),
          stops: [0.0571, 0.4938, 0.9306],
          colors: [Color(0xFFF0F7FF), Color(0xFFF9F5FF), Color(0xFFFFFDF0)],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            offset: Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 55,
            left: 0,
            child: ClipRect(
              child: SizedBox(
                width: 393,
                height: 305,
                child: CustomPaint(painter: _PurpleTrianglePainter()),
              ),
            ),
          ),
          Positioned(
            top: 66,
            left: 24,
            child: SizedBox(
              width: 345,
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onBack,
                    child: const SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF1A1D3A),
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.help_outline,
                      color: Color(0xFF1A1D3A),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 102,
            left: 24,
            child: Container(
              width: 345,
              height: 240,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: IgnorePointer(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: const Color(0xFFBA68CB),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: ClipRect(
                      child: SizedBox(
                        width: 264,
                        height: 147,
                        child: CustomPaint(
                          painter: _PurpleRoundedShapePainter(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: ClipRect(
                      child: SizedBox(
                        width: 264,
                        height: 147,
                        child: Transform.scale(
                          alignment: Alignment.center,
                          scaleX: -1,
                          child: CustomPaint(
                            painter: _PurpleRoundedShapePainter(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 191,
                    left: 31.36,
                    child: _BottomCurve(),
                  ),
                  Positioned(
                    top: 25,
                    left: 40,
                    child: SizedBox(
                      width: 267,
                      height: 136,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 267,
                            height: 81,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 223,
                                      height: 42,
                                      child: Text(
                                        'Invite Friends & Earn Rewards',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF1A1D3A),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          height: 21 / 20,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    SizedBox(
                                      width: 223,
                                      height: 30,
                                      child: Text(
                                        'Invite your friends and earn on their 1st payment on YugaiPay',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF4A5568),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          height: 1,
                                          letterSpacing: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 17),
                          Container(
                            width: 156,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFEBEBEB),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  left: 26,
                                  child: SizedBox(
                                    width: 91,
                                    height: 22,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 12,
                                          height: 12,
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.black,
                                            size: 12,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        SizedBox(
                                          width: 63,
                                          height: 22,
                                          child: Text(
                                            'How it works',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xFF4A5568),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10,
                                              height: 22 / 10,
                                              letterSpacing: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomCurve extends StatelessWidget {
  const _BottomCurve();

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: 282.2862,
        height: 49.1256,
        child: Stack(
          children: [
            Container(
              width: 282.2862,
              height: 49.1256,
              decoration: const BoxDecoration(
                color: Color(0xFF6A1B9A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(54),
                  topRight: Radius.circular(54),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 6,
              left: 6,
              right: 6,
              child: Container(
                height: 49.1256,
                decoration: const BoxDecoration(
                  color: Color(0xFF8150B9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PurpleTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 393;
    final scaleY = size.height / 305;

    canvas.save();
    canvas.scale(scaleX, scaleY);

    final path = Path()
      ..moveTo(185.632, 22.6018)
      ..cubicTo(192.462, 19.1327, 200.538, 19.1327, 207.368, 22.6018)
      ..lineTo(715.5, 280.684)
      ..cubicTo(738.006, 292.115, 729.875, 326.082, 704.631, 326.082)
      ..lineTo(-311.631, 326.082)
      ..cubicTo(-336.875, 326.082, -345.006, 292.115, -322.499, 280.684)
      ..lineTo(185.632, 22.6018)
      ..close();

    canvas.drawShadow(path, Colors.black.withValues(alpha: 0.25), 10, false);
    canvas.drawPath(path, Paint()..color = const Color(0xFF8150B9));

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _PurpleRoundedShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final scaleX = size.width / 264;
    final scaleY = size.height / 147;

    canvas.save();
    canvas.scale(scaleX, scaleY);
    canvas.clipRect(const Rect.fromLTWH(0, 0, 264, 147));

    final rect = RRect.fromRectAndRadius(
      const Rect.fromLTWH(-189.141, 243.801, 300, 304.366),
      Radius.zero,
    );

    void drawRotatedRRect(Paint paint) {
      canvas.save();
      canvas.translate(-189.141, 243.801);
      canvas.rotate(-54.3577 * 3.141592653589793 / 180);
      canvas.translate(189.141, -243.801);
      canvas.drawRRect(rect, paint);
      canvas.restore();
    }

    final shadowPaint = Paint()
      ..color = const Color(0x40000000)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 15);

    canvas.save();
    canvas.translate(0, 10);
    drawRotatedRRect(shadowPaint);
    canvas.restore();

    drawRotatedRRect(Paint()..color = const Color(0xFF8150B9));
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
