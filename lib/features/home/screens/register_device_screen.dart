import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/router/app_router.dart';

class RegisterDeviceScreen extends StatefulWidget {
  const RegisterDeviceScreen({super.key});

  @override
  State<RegisterDeviceScreen> createState() => _RegisterDeviceScreenState();
}

class _RegisterDeviceScreenState extends State<RegisterDeviceScreen> {
  static const _primary = Color(0xFF461599);
  static const _textDark = Color(0xFF1A1D3A);
  static const _textGray = Color(0xFF6B7280);
  static const _inputBorder = Color(0xFFE5E7EB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFF6),
      body: SafeArea(
        child: Column(
          children: [
            // ── Header ──
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 16, 17, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Row(
                      children: [
                        const Icon(Icons.arrow_back, color: _primary, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Register Device',
                          style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF312E81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: _inputBorder),
                    ),
                    child: const Icon(Icons.help_outline, color: _textGray, size: 18),
                  ),
                ],
              ),
            ),

            // ── Scrollable content ──
            Expanded(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                child: Column(
                  children: [
                    // Banner card — 342×192, border-radius:12
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/register_device_banner.jpg',
                        width: double.infinity,
                        height: 192,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Middle section — 342×96, gap:8
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register this device?',
                            style: GoogleFonts.manrope(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: _textDark,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Link this device to your YugaiPay account for\nenhanced security and faster transactions.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: _textGray,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // White card 1 — 342×119
                    _deviceCard(
                      name: 'Yugai Laptop',
                      lastActive: 'LAST ACTIVE TODAY AT 11:08 AM',
                    ),

                    const SizedBox(height: 8),

                    // White card 2 — 342×119
                    _deviceCard(
                      name: 'Vyapar Laptop Mahesh',
                      lastActive: 'LAST ACTIVE 4 MAY, 11:35 AM',
                    ),

                    const SizedBox(height: 10),

                    // Info chip — 342×42
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0x0D461599),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: const Color(0x1A461599), width: 1),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.lock, size: 16, color: Color(0xFF461599)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'This device will be registered securely to your account',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: _textDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),

                    // CTA button
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: ElevatedButton(
                        onPressed: () => context.go(AppRoutes.login),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.only(top: 20, bottom: 18),
                          elevation: 4,
                          shadowColor: const Color(0x0A000000),
                        ),
                        child: Text(
                          'Confirm & Register Device',
                          style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            letterSpacing: 0.4,
                          ),
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
    );
  }

  Widget _deviceCard({required String name, required String lastActive}) {
    return Container(
      width: double.infinity,
      height: 119,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0x0D000000), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top content area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Laptop icon container
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2EBF7),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFCBC3D5), width: 1),
                    ),
                    child: const Icon(
                      Icons.laptop,
                      color: Color(0xFF461599),
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Device name + last active
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: _textDark,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        lastActive,
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: _textGray,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Footer bar — 340×45
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: const BoxDecoration(
              color: Color(0x4DF8F1FC),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              border: Border(
                top: BorderSide(color: Color(0x4DCBC3D5), width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined,
                        size: 14, color: _textGray),
                    const SizedBox(width: 4),
                    Text(
                      'New Delhi, India',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: _textGray,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Logout',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: _primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
