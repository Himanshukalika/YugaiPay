import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/router/app_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const _primary    = Color(0xFF461599);
  static const _darkPurple = Color(0xFF312E81);
  static const _textDark   = Color(0xFF1A1D3A);
  static const _textGray   = Color(0xFF6B7280);
  static const _lavender   = Color(0xFFEDE9FE);
  static const _border     = Color(0xFFE5E7EB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFF6),
      body: Stack(
        children: [
          // ── Bottom wave decoration ──
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 110),
              painter: _WavePainter(),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ── Header ──
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Profile photo
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: _primary, width: 2),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/person1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hello,',
                                  style: GoogleFonts.manrope(
                                      fontSize: 14,
                                      color: _textGray,
                                      fontWeight: FontWeight.w400)),
                              Text('Rajesh',
                                  style: GoogleFonts.manrope(
                                      fontSize: 18,
                                      color: _textDark,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ],
                      ),
                      // Language switcher
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: _border),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.string(_langSvg, width: 22, height: 19),
                            const SizedBox(width: 4),
                            const Icon(Icons.keyboard_arrow_down,
                                size: 16, color: _textGray),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // ── Main white card ──
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                      child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xE6FFFFFF),
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: const Color(0x80FFFFFF), width: 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1F000000),
                          blurRadius: 40,
                          offset: Offset(0, 8),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.fromLTRB(32, 32, 31, 32),
                    child: Column(
                      children: [
                        // Welcome Back + subtitle — 280×52, gap:4
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Welcome Back',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: _primary,
                                  height: 1.5,
                                  letterSpacing: 0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Verify identity to continue access',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: _textGray,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Auth options row — 282×75, gap:12
                        Row(
                          children: [
                            Expanded(child: _authOption(child: _mpinIcon(), label: 'MPIN')),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _authOption(
                                child: SvgPicture.string(_faceIdSvg, width: 20, height: 20),
                                label: 'FACE ID',
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _authOption(
                                child: SvgPicture.string(_passwordSvg, width: 23, height: 12),
                                label: 'PASSWORD',
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // Fingerprint button — 280×64, radius:16, #461599
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => context.go(AppRoutes.home),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF461599),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              elevation: 0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.fingerprint, color: Colors.white, size: 24),
                                const SizedBox(width: 12),
                                Text(
                                  'Login using Fingerprint',
                                  style: GoogleFonts.manrope(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Forgot MPIN | Need Help
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Forgot MPIN?',
                              style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: _primary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Container(width: 1, height: 16, color: _border),
                            ),
                            Text(
                              'Need Help?',
                              style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: _primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                  ),

                  const SizedBox(height: 20),

                  // ── Our Platforms ──
                  Text(
                    'Our Platforms',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF1A1D3A),
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Platform cards
                  Row(
                    children: [
                      Expanded(
                          child: _platformCard(
                        svg: _bankingSvg,
                        name: 'YugaiPay',
                        service: 'Banking Services',
                        borderColors: const [
                          Color(0xFFFFA143),
                          Color(0xFFF43B5E)
                        ],
                        serviceColors: const [
                          Color(0xFFFFA143),
                          Color(0xFFF43B5E)
                        ],
                      )),
                      const SizedBox(width: 8),
                      Expanded(
                          child: _platformCard(
                        svg: _sakhiSvg,
                        name: 'YugaiPay',
                        service: 'Sakhi',
                        borderColors: const [
                          Color(0xFFFF4081),
                          Color(0xFFE82A6D)
                        ],
                        serviceColors: const [
                          Color(0xFFFF4081),
                          Color(0xFFE82A6D)
                        ],
                      )),
                      const SizedBox(width: 8),
                      Expanded(
                          child: _platformCard(
                        svg: _agriSvg,
                        name: 'YugaiPay',
                        service: 'Agri',
                        borderColors: const [
                          Color(0xFFA8E063),
                          Color(0xFF56AB2F)
                        ],
                        serviceColors: const [
                          Color(0xFFA8E063),
                          Color(0xFF56AB2F)
                        ],
                      )),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // ── Feature badges ──
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0x80EEF2FF),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0x80E0E7FF), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _featureBadge(
                            icon: Icons.bolt,
                            bg: const Color(0xFF3B82F6),
                            label: 'Fast'),
                        _featureBadge(
                            icon: Icons.security,
                            bg: const Color(0xFF22C55E),
                            label: 'Secure'),
                        _featureBadge(
                            icon: Icons.verified,
                            bg: _primary,
                            label: 'Trusted'),
                      ],
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

  // ── Auth option box ──
  Widget _authOption({required Widget child, required String label}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 75,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9FB),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFE9DDFF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: child,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: GoogleFonts.manrope(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF605D69),
                height: 1.5,
                letterSpacing: -0.25,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // MPIN icon
  Widget _mpinIcon() {
    return SvgPicture.string(_mpinSvg, width: 22, height: 12);
  }

  // Platform card
  Widget _platformCard({
    required String svg,
    required String name,
    required String service,
    required List<Color> borderColors,
    required List<Color> serviceColors,
  }) {
    return Container(
      height: 108,
      decoration: BoxDecoration(
        color: const Color(0x99F9F9FB),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.string(svg, width: 44, height: 44),
              const SizedBox(height: 4),
              Text(name,
                  style: GoogleFonts.poppins(
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                      color: _textDark,
                      height: 1.2)),
              ShaderMask(
                shaderCallback: (b) => LinearGradient(colors: serviceColors)
                    .createShader(Rect.fromLTWH(0, 0, b.width, b.height)),
                child: Text(service,
                    style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        height: 1.2)),
              ),
            ],
          ),
      ),
    );
  }

  // Feature badge
  Widget _featureBadge(
      {required IconData icon,
      required Color bg,
      required String label}) {
    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(color: bg, shape: BoxShape.circle),
          child: Icon(icon, color: Colors.white, size: 18),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1A1A1A),
            height: 1.5,
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }

}

// ── Wave painter ──
class _WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFFCBC3D5), Color(0xFF9B8CC4)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height * 0.5)
      ..quadraticBezierTo(
          size.width * 0.25, 0, size.width * 0.5, size.height * 0.4)
      ..quadraticBezierTo(
          size.width * 0.75, size.height * 0.8, size.width, size.height * 0.3)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ── Gradient border painter ──
class _GradientBorderPainter extends CustomPainter {
  final double radius;
  final Gradient gradient;

  _GradientBorderPainter({required this.radius, required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    final rect =
        Rect.fromLTWH(0.5, 0.5, size.width - 1, size.height - 1);
    final rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..shader = gradient.createShader(rect);
    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ── SVG strings ──
const _passwordSvg = '''<svg width="23" height="12" viewBox="0 0 23 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M6 8C5.45 8 4.97917 7.80417 4.5875 7.4125C4.19583 7.02083 4 6.55 4 6C4 5.45 4.19583 4.97917 4.5875 4.5875C4.97917 4.19583 5.45 4 6 4C6.55 4 7.02083 4.19583 7.4125 4.5875C7.80417 4.97917 8 5.45 8 6C8 6.55 7.80417 7.02083 7.4125 7.4125C7.02083 7.80417 6.55 8 6 8ZM6 12C4.33333 12 2.91667 11.4167 1.75 10.25C0.583333 9.08333 0 7.66667 0 6C0 4.33333 0.583333 2.91667 1.75 1.75C2.91667 0.583333 4.33333 0 6 0C7.11667 0 8.12917 0.275 9.0375 0.825C9.94583 1.375 10.6667 2.1 11.2 3H20L23 6L18.5 10.5L16.5 9L14.5 10.5L12.375 9H11.2C10.6667 9.9 9.94583 10.625 9.0375 11.175C8.12917 11.725 7.11667 12 6 12ZM6 10C6.93333 10 7.75417 9.71667 8.4625 9.15C9.17083 8.58333 9.64167 7.86667 9.875 7H13L14.45 8.025L16.5 6.5L18.275 7.875L20.15 6L19.15 5H9.875C9.64167 4.13333 9.17083 3.41667 8.4625 2.85C7.75417 2.28333 6.93333 2 6 2C4.9 2 3.95833 2.39167 3.175 3.175C2.39167 3.95833 2 4.9 2 6C2 7.1 2.39167 8.04167 3.175 8.825C3.95833 9.60833 4.9 10 6 10Z" fill="#461599"/>
</svg>''';

const _faceIdSvg = '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7 12.25C6.65 12.25 6.35417 12.1292 6.1125 11.8875C5.87083 11.6458 5.75 11.35 5.75 11C5.75 10.65 5.87083 10.3542 6.1125 10.1125C6.35417 9.87083 6.65 9.75 7 9.75C7.35 9.75 7.64583 9.87083 7.8875 10.1125C8.12917 10.3542 8.25 10.65 8.25 11C8.25 11.35 8.12917 11.6458 7.8875 11.8875C7.64583 12.1292 7.35 12.25 7 12.25ZM13 12.25C12.65 12.25 12.3542 12.1292 12.1125 11.8875C11.8708 11.6458 11.75 11.35 11.75 11C11.75 10.65 11.8708 10.3542 12.1125 10.1125C12.3542 9.87083 12.65 9.75 13 9.75C13.35 9.75 13.6458 9.87083 13.8875 10.1125C14.1292 10.3542 14.25 10.65 14.25 11C14.25 11.35 14.1292 11.6458 13.8875 11.8875C13.6458 12.1292 13.35 12.25 13 12.25ZM10 18C12.2333 18 14.125 17.225 15.675 15.675C17.225 14.125 18 12.2333 18 10C18 9.6 17.975 9.2125 17.925 8.8375C17.875 8.4625 17.7833 8.1 17.65 7.75C17.3 7.83333 16.95 7.89583 16.6 7.9375C16.25 7.97917 15.8833 8 15.5 8C13.9833 8 12.55 7.675 11.2 7.025C9.85 6.375 8.7 5.46667 7.75 4.3C7.21667 5.6 6.45417 6.72917 5.4625 7.6875C4.47083 8.64583 3.31667 9.36667 2 9.85C2 9.88333 2 9.90833 2 9.925C2 9.94167 2 9.96667 2 10C2 12.2333 2.775 14.125 4.325 15.675C5.875 17.225 7.76667 18 10 18ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20ZM8.65 2.125C9.35 3.29167 10.3 4.22917 11.5 4.9375C12.7 5.64583 14.0333 6 15.5 6C15.7333 6 15.9583 5.9875 16.175 5.9625C16.3917 5.9375 16.6167 5.90833 16.85 5.875C16.15 4.70833 15.2 3.77083 14 3.0625C12.8 2.35417 11.4667 2 10 2C9.76667 2 9.54167 2.0125 9.325 2.0375C9.10833 2.0625 8.88333 2.09167 8.65 2.125ZM2.425 7.475C3.275 6.99167 4.01667 6.36667 4.65 5.6C5.28333 4.83333 5.75833 3.975 6.075 3.025C5.225 3.50833 4.48333 4.13333 3.85 4.9C3.21667 5.66667 2.74167 6.525 2.425 7.475Z" fill="#461599"/>
</svg>''';

const _mpinSvg = '''<svg width="22" height="12" viewBox="0 0 22 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 12V10H21V12H1ZM2.15 5.95L0.85 5.2L1.7 3.7H0V2.2H1.7L0.85 0.75L2.15 0L3 1.45L3.85 0L5.15 0.75L4.3 2.2H6V3.7H4.3L5.15 5.2L3.85 5.95L3 4.45L2.15 5.95ZM10.15 5.95L8.85 5.2L9.7 3.7H8V2.2H9.7L8.85 0.75L10.15 0L11 1.45L11.85 0L13.15 0.75L12.3 2.2H14V3.7H12.3L13.15 5.2L11.85 5.95L11 4.45L10.15 5.95ZM18.15 5.95L16.85 5.2L17.7 3.7H16V2.2H17.7L16.85 0.75L18.15 0L19 1.45L19.85 0L21.15 0.75L20.3 2.2H22V3.7H20.3L21.15 5.2L19.85 5.95L19 4.45L18.15 5.95Z" fill="#461599"/>
</svg>''';

const _langSvg = '''<svg width="22" height="19" viewBox="0 0 22 19" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.8 19L15.35 7H17.45L22 19H19.9L18.825 15.95H13.975L12.9 19H10.8ZM14.6 14.2H18.2L16.4 9.1L14.6 14.2ZM5.25 13C4.15 13 3.12083 12.6792 2.1625 12.0375C1.20417 11.3958 0.483333 10.5333 0 9.45L1.8 8.55C2.15 9.25 2.63333 9.83333 3.25 10.3C3.86667 10.7667 4.525 11 5.225 11C5.85833 11 6.37917 10.8042 6.7875 10.4125C7.19583 10.0208 7.4 9.55 7.4 9C7.4 8.45 7.20417 7.97917 6.8125 7.5875C6.42083 7.19583 5.95 7 5.4 7H3.9V5H5.4C5.81667 5 6.17083 4.85417 6.4625 4.5625C6.75417 4.27083 6.9 3.91667 6.9 3.5C6.9 3.08333 6.75833 2.72917 6.475 2.4375C6.19167 2.14583 5.84167 2 5.425 2C5.04167 2 4.7 2.125 4.4 2.375C4.1 2.625 3.83333 2.9 3.6 3.2L2.025 1.975C2.45833 1.44167 2.95833 0.979167 3.525 0.5875C4.09167 0.195833 4.73333 0 5.45 0C6.4 0 7.2125 0.3375 7.8875 1.0125C8.5625 1.6875 8.9 2.50833 8.9 3.475C8.9 3.925 8.81667 4.3625 8.65 4.7875C8.48333 5.2125 8.24167 5.59167 7.925 5.925C8.09167 6.09167 8.24583 6.2625 8.3875 6.4375C8.52917 6.6125 8.66667 6.8 8.8 7H11.9V2H9.9V0H15.9V2H13.9V4.9L12.375 9H9.4V9.1C9.4 10.15 9.01667 11.0625 8.25 11.8375C7.48333 12.6125 6.48333 13 5.25 13Z" fill="#334155"/>
</svg>''';

const _bankingSvg = '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.179C35.8158 52.6488 28.8138 55.4969 22.5782 52.5403C21.5393 52.0475 21.0212 50.7746 21.4209 49.6966L22.8887 45.7386C23.711 46.057 24.6643 45.8852 25.3809 45.1897L46.0196 25.1526L38.2168 46.179ZM37.0704 7.52957C39.4716 1.06012 46.4726 -1.78818 52.7081 1.16824C53.7472 1.66095 54.2652 2.93473 53.8653 4.01297L47.167 22.0589C46.2788 21.534 45.1503 21.6465 44.3311 22.4417L24.3291 41.8596L37.0704 7.52957ZM1.0518 2.73465C6.90783 -1.08669 14.2333 0.863803 17.4141 7.09109L24.5069 20.9759C27.6877 27.2031 25.5189 35.3495 19.6631 39.1712C18.6871 39.8081 17.4658 39.4834 16.9356 38.4456L0.244186 5.76785C-0.285958 4.72995 0.07579 3.37158 1.0518 2.73465Z" fill="url(#b1)"/>
<defs><linearGradient id="b1" x1="3.10598" y1="4.96556" x2="37.9286" y2="85.0306" gradientUnits="userSpaceOnUse">
<stop stop-color="#FFB65C"/><stop offset="0.25" stop-color="#FFA143"/><stop offset="0.5" stop-color="#F43B5E"/>
</linearGradient></defs></svg>''';

const _sakhiSvg = '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.179C35.8158 52.6488 28.8138 55.4969 22.5782 52.5403C21.5393 52.0475 21.0212 50.7746 21.4209 49.6966L22.8887 45.7386C23.711 46.057 24.6643 45.8852 25.3809 45.1897L46.0196 25.1526L38.2168 46.179ZM37.0704 7.52957C39.4716 1.06012 46.4726 -1.78818 52.7081 1.16824C53.7472 1.66095 54.2652 2.93473 53.8653 4.01297L47.167 22.0589C46.2788 21.534 45.1503 21.6465 44.3311 22.4417L24.3291 41.8596L37.0704 7.52957ZM1.0518 2.73465C6.90783 -1.08669 14.2333 0.863803 17.4141 7.09109L24.5069 20.9759C27.6877 27.2031 25.5189 35.3495 19.6631 39.1712C18.6871 39.8081 17.4658 39.4834 16.9356 38.4456L0.244186 5.76785C-0.285958 4.72995 0.07579 3.37158 1.0518 2.73465Z" fill="url(#s1)"/>
<defs><linearGradient id="s1" x1="24.1469" y1="-2.16236" x2="62.6989" y2="101.295" gradientUnits="userSpaceOnUse">
<stop stop-color="#D81B60"/><stop offset="0.175" stop-color="#FF4081" stop-opacity="0.6"/><stop offset="0.34" stop-color="#E82A6D" stop-opacity="0.84"/><stop offset="0.39" stop-color="#D81B60"/>
</linearGradient></defs></svg>''';

const _agriSvg = '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.1791C35.8157 52.6489 28.8137 55.497 22.5782 52.5405C21.5391 52.0475 21.021 50.7739 21.4209 49.6957L22.8887 45.7377C23.7111 46.0563 24.6643 45.8845 25.3809 45.1889L46.0206 25.1508L38.2168 46.179ZM37.0704 7.52971C39.4715 1.05985 46.4724 -1.78822 52.7081 1.16839C53.7473 1.66119 54.2652 2.93484 53.8653 4.01311L47.168 22.059C46.2788 21.5335 45.1506 21.6454 44.3311 22.4408L24.3291 41.8588L37.0704 7.52971ZM1.0518 2.73382C6.90777 -1.08841 14.2333 0.863135 17.4141 7.09026L24.5069 20.976C27.6874 27.2033 25.5191 35.3498 19.6631 39.1713C18.6871 39.8083 17.4657 39.4827 16.9356 38.4448L0.244186 5.76702C-0.285958 4.72912 0.07579 3.37075 1.0518 2.73382Z" fill="url(#a1)"/>
<defs><linearGradient id="a1" x1="3.10598" y1="4.96556" x2="37.9286" y2="85.0306" gradientUnits="userSpaceOnUse">
<stop stop-color="#9ACFA1"/><stop offset="0.25" stop-color="#A8E063"/><stop offset="0.5" stop-color="#56AB2F"/>
</linearGradient></defs></svg>''';
