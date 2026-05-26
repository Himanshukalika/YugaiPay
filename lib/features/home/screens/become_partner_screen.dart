import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/router/app_router.dart';

class BecomePartnerScreen extends StatefulWidget {
  const BecomePartnerScreen({super.key});

  @override
  State<BecomePartnerScreen> createState() => _BecomePartnerScreenState();
}

class _BecomePartnerScreenState extends State<BecomePartnerScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _agreeToTerms = false;
  String? _selectedRole;
  bool _showVerification = false;

  final List<TextEditingController> _mobileOtpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<TextEditingController> _emailOtpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _mobileOtpFocusNodes =
      List.generate(6, (_) => FocusNode());
  final List<FocusNode> _emailOtpFocusNodes =
      List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (final c in [..._mobileOtpControllers, ..._emailOtpControllers]) c.dispose();
    for (final n in [..._mobileOtpFocusNodes, ..._emailOtpFocusNodes]) n.dispose();
    super.dispose();
  }

  static const _bg = Color(0xFFF0EFF6);
  static const _textDark = Color(0xFF1A1D3A);
  static const _textGray = Color(0xFF6B7280);
  static const _red = Color(0xFFEF4444);
  static const _inputBorder = Color(0xFFE5E7EB);
  static const _hintColor = Color(0xFF9CA3AF);
  static const _primary = Color(0xFF3D1FA8);
  static const _purple = Color(0xFF6366F1);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      child: Scaffold(
      backgroundColor: _bg,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
            children: [
              // ── Orange decorative circle — bottom-left anchor, 295×295 ──
              Positioned(
                bottom: -130,
                left: -192,
                child: Container(
                  width: 295,
                  height: 295,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: GradientRotation(152.34 * 3.14159 / 180),
                      colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                      stops: [0.1419, 0.9045],
                    ),
                  ),
                ),
              ),

              // ── Trusted by section — bottom:0, width:393, height:71.75 ──
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                    child: Container(
                      width: 393,
                      height: 71.75,
                      padding: const EdgeInsets.only(top: 12, right: 16, bottom: 12, left: 16),
                      decoration: BoxDecoration(
                        color: const Color(0x80EEF2FF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0x80E0E7FF), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // ── Avatars + 10k+ badge row ──
                          SizedBox(
                            width: 102,
                            height: 24,
                            child: Stack(
                              children: [
                                _partnerAvatar(0, 'assets/images/person1.jpg'),
                                _partnerAvatar(18, 'assets/images/person2.jpg'),
                                _partnerAvatar(36, 'assets/images/peson3.jpg'),
                                // 10k+ badge as 4th overlapping circle
                                Positioned(
                                  left: 54,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE8EAF6),
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white, width: 1),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '10k+',
                                      style: GoogleFonts.inter(
                                        fontSize: 5.5,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF3D52D5),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          // ── Text ──
                          Text(
                            'TRUSTED BY 10,000+ PARTNERS ACROSS INDIA',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFC3C5D9),
                              height: 13.5 / 9,
                              letterSpacing: 0.9,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // ── Header logo — top:36, left:24, width:136, height:31.827 ──
              Positioned(
                top: 36,
                left: 24,
                child: SizedBox(
                  width: 136,
                  height: 31.827,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(72),
                          bottomLeft: Radius.circular(12),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/svg/yugai_logo.svg',
                          width: 31.999,
                          height: 31.827,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'YugaiPay-',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: _textDark,
                                height: 1.2,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
                              ).createShader(bounds),
                              child: Text(
                                'Banking Services',
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ── Language switcher — top:36, right:24, width:63, height:40 ──
              Positioned(
                top: 36,
                right: 24,
                child: Container(
                  width: 63,
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/svg/translate_icon.svg',
                        width: 18,
                        height: 15,
                      ),
                      const SizedBox(width: 3),
                      const Icon(Icons.keyboard_arrow_down, size: 12, color: _textGray),
                    ],
                  ),
                ),
              ),

              // ── Main form card — top:82, left:12, right:12, gap:12 ──
              Positioned(
                top: 82,
                left: 12,
                right: 12,
                bottom: 80,
                child: LayoutBuilder(
                  builder: (context, constraints) => FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: constraints.maxWidth,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        'Become a Partner',
                        style: GoogleFonts.inter(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: _textDark,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Submit details to get instant access.',
                        style: GoogleFonts.inter(fontSize: 13, color: _textGray),
                      ),
                      const SizedBox(height: 8),

                      // First Name + Last Name
                      _rowLabels('First Name', 'Last Name'),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(child: _inputField(hint: 'John')),
                          const SizedBox(width: 10),
                          Expanded(child: _inputField(hint: 'Doe')),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Email
                      _label('Email'),
                      const SizedBox(height: 4),
                      _inputField(
                        hint: 'john@example.com',
                        prefix: const Icon(Icons.mail_outline, size: 18, color: _textGray),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 8),

                      // Mobile
                      _label('Mobile'),
                      const SizedBox(height: 4),
                      _mobileField(),
                      const SizedBox(height: 8),

                      // Password + Confirm
                      _rowLabels('Password', 'Confirm'),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: _passwordField(
                              obscure: _obscurePassword,
                              onToggle: () => setState(() => _obscurePassword = !_obscurePassword),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: _passwordField(
                              obscure: _obscureConfirm,
                              onToggle: () => setState(() => _obscureConfirm = !_obscureConfirm),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Pincode + Role
                      _rowLabels('Pincode', 'Role'),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(child: _inputField(hint: '110001', keyboardType: TextInputType.number)),
                          const SizedBox(width: 10),
                          Expanded(child: _roleDropdown()),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Refer By + Refer by Name
                      _rowLabels('Refer By', 'Refer by Name', required: false),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(child: _inputField(hint: 'Optional')),
                          const SizedBox(width: 10),
                          Expanded(child: _inputField(hint: 'None')),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Terms
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: _agreeToTerms,
                              onChanged: (v) => setState(() => _agreeToTerms = v ?? false),
                              activeColor: _primary,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              side: const BorderSide(color: Color(0xFFD1D5DB), width: 1.5),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.inter(fontSize: 12, color: _textGray),
                                children: [
                                  const TextSpan(text: 'I agree to '),
                                  TextSpan(text: 'Terms of Service', style: GoogleFonts.inter(color: _purple, fontWeight: FontWeight.w600)),
                                  const TextSpan(text: ' & '),
                                  TextSpan(text: 'Privacy Policy', style: GoogleFonts.inter(color: _purple, fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => setState(() => _showVerification = true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _primary,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9999)),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create Partner Account',
                                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.arrow_forward, color: Colors.white, size: 17),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Secure
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('🔒', style: TextStyle(fontSize: 11)),
                            const SizedBox(width: 4),
                            Text('Secure & encrypted onboarding process',
                                style: GoogleFonts.inter(fontSize: 11, color: _textGray)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),

                      // Already account
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.inter(fontSize: 13, color: _textGray),
                            children: [
                              const TextSpan(text: 'Already account?  '),
                              TextSpan(text: 'Sign in', style: GoogleFonts.inter(color: _primary, fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),

                      // Need Help
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.inter(fontSize: 12, color: _textGray),
                            children: [
                              const TextSpan(text: 'Need Help?  '),
                              TextSpan(
                                text: 'Contact Support',
                                style: GoogleFonts.inter(
                                  color: _primary,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  decorationColor: _primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  ),
                  ),
                ),
              ),
              // ── OTP Verification Overlay ──
              if (_showVerification)
                Positioned.fill(
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final screenW = MediaQuery.of(context).size.width;
                        final screenH = MediaQuery.of(context).size.height;
                        return Container(
                          width: screenW - 24,
                          height: screenH < 860 ? screenH - 40 : 840,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x1F000000),
                                blurRadius: 40,
                                offset: const Offset(0, -8),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ── Drag handle row ──
                              SizedBox(
                                width: double.infinity,
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Center(
                                    child: Container(
                                      width: 48,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: const Color(0x66CBC3D5),
                                        borderRadius: BorderRadius.circular(9999),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // ── Content ──
                              Expanded(
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                    bottom: MediaQuery.of(context).viewInsets.bottom + 16,
                                  ),
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Shield icon
                                    Center(child: _shieldIcon()),
                                    const SizedBox(height: 12),
                                    // Title
                                    Text(
                                      'Verify Your Account',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800,
                                        color: _textDark,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    // Subtitle
                                    SelectionContainer.disabled(
                                      child: Text(
                                        'A 6-digit code has been sent to your\nregistered mobile number and email.',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          fontSize: 13,
                                          color: _textGray,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    // Mobile verification card
                                    _verificationCard(
                                      label: 'MOBILE VERIFICATION',
                                      maskedId: '+91 ******892',
                                      controllers: _mobileOtpControllers,
                                      focusNodes: _mobileOtpFocusNodes,
                                      timer: '00:45s',
                                      resendText: 'Resend Code',
                                      resendIcon: Icons.refresh,
                                    ),
                                    const SizedBox(height: 12),
                                    // Email verification card
                                    _verificationCard(
                                      label: 'EMAIL VERIFICATION',
                                      maskedId: 'poo****@gmail.com',
                                      controllers: _emailOtpControllers,
                                      focusNodes: _emailOtpFocusNodes,
                                      timer: '01:12s',
                                      resendText: 'Resend Email',
                                      resendIcon: Icons.mail_outline,
                                    ),
                                    const SizedBox(height: 20),
                                    // Verify button
                                    SizedBox(
                                      width: double.infinity,
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () => context.push(AppRoutes.registrationLogin),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFF461599),
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12)),
                                          elevation: 0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Verify & Continue',
                                              style: GoogleFonts.manrope(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                                height: 28 / 18,
                                                letterSpacing: 0,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Icon(Icons.arrow_forward,
                                                color: Colors.white, size: 17),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    // Security text
                                    Text(
                                      'Your verification data is securely encrypted',
                                      style: GoogleFonts.manrope(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF4B5563),
                                        height: 16 / 12,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
    ));
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  Widget _partnerAvatar(double left, String asset) {
    return Positioned(
      left: left,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1),
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _label(String text, {bool required = true}) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600, color: _textDark),
        children: [
          TextSpan(text: text),
          if (required)
            TextSpan(text: '*', style: GoogleFonts.inter(color: _red, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }

  Widget _rowLabels(String a, String b, {bool required = true}) {
    return Row(
      children: [
        Expanded(child: _label(a, required: required)),
        const SizedBox(width: 12),
        Expanded(child: _label(b, required: required)),
      ],
    );
  }

  InputDecoration _dec(String hint, {Widget? prefix, Widget? suffix}) => InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.inter(fontSize: 14, color: _hintColor),
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: _inputBorder)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: _inputBorder)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: _primary.withValues(alpha: 0.5), width: 1.5)),
      );

  Widget _inputField({String hint = '', Widget? prefix, TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      keyboardType: keyboardType,
      style: GoogleFonts.inter(fontSize: 14, color: _textDark),
      decoration: _dec(hint, prefix: prefix),
    );
  }

  Widget _mobileField() {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _inputBorder),
      ),
      child: Row(
        children: [
          const SizedBox(width: 14),
          const Icon(Icons.phone_outlined, size: 18, color: _textGray),
          const SizedBox(width: 8),
          Text('+91', style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: _textDark)),
          Container(width: 1, height: 22, margin: const EdgeInsets.symmetric(horizontal: 10), color: _inputBorder),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              style: GoogleFonts.inter(fontSize: 14, color: _textDark),
              decoration: InputDecoration(
                hintText: 'Enter 10-digit mobile number',
                hintStyle: GoogleFonts.inter(fontSize: 13, color: _hintColor),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _passwordField({required bool obscure, required VoidCallback onToggle}) {
    return TextField(
      obscureText: obscure,
      style: GoogleFonts.inter(fontSize: 14, color: _textDark),
      decoration: _dec(
        '••••••••',
        prefix: const Icon(Icons.lock_outline, size: 18, color: _textGray),
        suffix: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined, size: 18, color: _textGray),
          onPressed: onToggle,
        ),
      ),
    );
  }

  Widget _shieldIcon() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0x1A461599),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/svg/shield_heart.svg',
          width: 21.33,
          height: 26.67,
        ),
      ),
    );
  }

  Widget _verificationCard({
    required String label,
    required String maskedId,
    required List<TextEditingController> controllers,
    required List<FocusNode> focusNodes,
    required String timer,
    required String resendText,
    required IconData resendIcon,
  }) {
    return Container(
      width: double.infinity,
      height: 206,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0x80F8F1FC),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0x1ACBC3D5), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF461599),
                  letterSpacing: 0.8,
                  height: 24 / 16,
                  decoration: TextDecoration.none,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Expires in',
                      style: GoogleFonts.inter(fontSize: 10, color: _textGray)),
                  Text(
                    timer,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: _purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(maskedId, style: GoogleFonts.inter(fontSize: 13, color: _textGray)),
          const SizedBox(height: 10),
          Row(
            children: List.generate(
              6,
              (i) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: i < 5 ? 6 : 0),
                  child: _otpBox(
                    controllers[i],
                    focusNodes[i],
                    i < 5 ? focusNodes[i + 1] : null,
                    i > 0 ? focusNodes[i - 1] : null,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Icon(resendIcon, size: 14, color: _primary),
                const SizedBox(width: 4),
                Text(
                  resendText,
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

  Widget _otpBox(
    TextEditingController controller,
    FocusNode focusNode,
    FocusNode? nextFocus,
    FocusNode? prevFocus,
  ) {
    return AnimatedBuilder(
      animation: focusNode,
      builder: (context, _) {
        final focused = focusNode.hasFocus;
        return Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: focused ? const Color(0xFF461599) : _inputBorder,
              width: 1,
            ),
            boxShadow: focused
                ? [
                    const BoxShadow(
                      color: Color(0x0D000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                    const BoxShadow(
                      color: Color(0xFF2E0070),
                      spreadRadius: 2,
                      blurRadius: 0,
                    ),
                  ]
                : [
                    const BoxShadow(
                      color: Color(0x0D000000),
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
          ),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: GoogleFonts.inter(
                fontSize: 18, fontWeight: FontWeight.w600, color: _textDark),
            decoration: const InputDecoration(
              counterText: '',
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              filled: false,
            ),
            onChanged: (val) {
              if (val.isNotEmpty) {
                if (nextFocus != null) FocusScope.of(context).requestFocus(nextFocus);
              } else {
                if (prevFocus != null) FocusScope.of(context).requestFocus(prevFocus);
              }
            },
          ),
        );
      },
    );
  }

  Widget _roleDropdown() {
    return DropdownButtonFormField<String>(
      value: _selectedRole,
      hint: Text('Role', style: GoogleFonts.inter(fontSize: 14, color: _hintColor)),
      items: ['AEPS Agent', 'CSP Agent', 'Master Agent', 'Distributor']
          .map((r) => DropdownMenuItem(value: r, child: Text(r, style: GoogleFonts.inter(fontSize: 14, color: _textDark))))
          .toList(),
      onChanged: (v) => setState(() => _selectedRole = v),
      decoration: _dec(''),
      icon: const Icon(Icons.keyboard_arrow_down, color: _textGray),
      dropdownColor: Colors.white,
      style: GoogleFonts.inter(fontSize: 14, color: _textDark),
      isExpanded: true,
    );
  }
}
