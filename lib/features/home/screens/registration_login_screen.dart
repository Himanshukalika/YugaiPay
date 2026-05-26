import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/router/app_router.dart';

class RegistrationLoginScreen extends StatefulWidget {
  const RegistrationLoginScreen({super.key});

  @override
  State<RegistrationLoginScreen> createState() => _RegistrationLoginScreenState();
}

class _RegistrationLoginScreenState extends State<RegistrationLoginScreen> {
  bool _obscurePassword = true;
  final _yugaiPayIdCtrl = TextEditingController();
  final _mobileEmailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  final List<TextEditingController> _otpControllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _otpFocusNodes = List.generate(6, (_) => FocusNode());
  int _secondsLeft = 119;
  Timer? _timer;

  final _newMpinCtrl = TextEditingController();
  final _confirmMpinCtrl = TextEditingController();
  final _newMpinFocus = FocusNode();
  final _confirmMpinFocus = FocusNode();

  static const _primary = Color(0xFF461599);
  static const _timerColor = Color(0xFF6366F1);
  static const _textDark = Color(0xFF1A1D3A);
  static const _textGray = Color(0xFF6B7280);
  static const _inputBorder = Color(0xFFE5E7EB);
  static const _hintColor = Color(0xFF9CA3AF);

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_secondsLeft == 0) {
        t.cancel();
      } else {
        setState(() => _secondsLeft--);
      }
    });
  }

  String get _timerText {
    final m = _secondsLeft ~/ 60;
    final s = _secondsLeft % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _yugaiPayIdCtrl.dispose();
    _mobileEmailCtrl.dispose();
    _passwordCtrl.dispose();
    _timer?.cancel();
    for (final c in _otpControllers) c.dispose();
    for (final f in _otpFocusNodes) f.dispose();
    _newMpinCtrl.dispose();
    _confirmMpinCtrl.dispose();
    _newMpinFocus.dispose();
    _confirmMpinFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFF6),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // ── Header row ──
            Positioned(
              top: 53,
              left: 17,
              right: 17,
              height: 40,
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
                          'Login',
                          style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: _textDark,
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

            // ── Outer glass card (login form) ──
            Positioned(
              top: 113,
              left: 16,
              right: 16,
              bottom: 403,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xB2FFFFFF),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0x80FFFFFF), width: 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) => FittedBox(
                        fit: BoxFit.scaleDown,
                        child: SizedBox(
                          width: constraints.maxWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // YugaiPay ID
                              _fieldLabel('YugaiPay ID'),
                              const SizedBox(height: 6),
                              _inputField(controller: _yugaiPayIdCtrl, hint: 'Partner ID'),
                              const SizedBox(height: 12),

                              // Mobile / Email
                              _fieldLabel('Mobile / Email Address'),
                              const SizedBox(height: 6),
                              _inputField(
                                controller: _mobileEmailCtrl,
                                hint: 'name@partner.com',
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 12),

                              // Password + Forgot Password
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _fieldLabel('Password'),
                                  Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      color: _primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              _passwordField(),
                              const SizedBox(height: 16),

                              // Verify & Send OTP button
                              SizedBox(
                                width: double.infinity,
                                height: 48,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: _primary,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    'Verify & Send OTP ›',
                                    style: GoogleFonts.manrope(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
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
              ),
            ),

            // ── Card 1 — OTP ──
            Positioned(
              bottom: 239,
              left: 16,
              right: 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    height: 146,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xB2FFFFFF),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0x1A461599), width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title + timer
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'One-Time Password',
                              style: GoogleFonts.manrope(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: _textDark,
                              ),
                            ),
                            Text(
                              _timerText,
                              style: GoogleFonts.manrope(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: _timerColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        // OTP boxes
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (i) => _otpBox(i)),
                        ),
                        const SizedBox(height: 12),
                        // Resend OTP
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              _timer?.cancel();
                              setState(() => _secondsLeft = 119);
                              _startTimer();
                            },
                            child: Text(
                              'Resend OTP',
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: _primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // ── Card 2 — bottom:88, height:135 ──
            Positioned(
              bottom: 88,
              left: 16,
              right: 16,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    height: 135,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xB2FFFFFF),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0x80FFFFFF), width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          'Set Login MPIN',
                          style: GoogleFonts.manrope(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: _textDark,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Two MPIN columns
                        Row(
                          children: [
                            Expanded(child: _mpinField('NEW MPIN', _newMpinCtrl, _newMpinFocus)),
                            const SizedBox(width: 12),
                            Expanded(child: _mpinField('CONFIRM MPIN', _confirmMpinCtrl, _confirmMpinFocus)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // ── Register button — bottom:16 ──
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: SizedBox(
                height: 56,
                child: ElevatedButton(
                  onPressed: () => context.push(AppRoutes.registerDevice),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                  ),
                  child: Text(
                    'Complete Registration',
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 0.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otpBox(int index) {
    return AnimatedBuilder(
      animation: _otpFocusNodes[index],
      builder: (context, _) {
        final focused = _otpFocusNodes[index].hasFocus;
        return Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: focused ? _primary : _inputBorder,
              width: focused ? 1.5 : 1,
            ),
            boxShadow: focused
                ? [
                    const BoxShadow(
                        color: Color(0x0D000000), blurRadius: 2, offset: Offset(0, 1)),
                    const BoxShadow(
                        color: Color(0xFF2E0070),
                        spreadRadius: 2,
                        blurRadius: 0),
                  ]
                : null,
          ),
          child: TextField(
            controller: _otpControllers[index],
            focusNode: _otpFocusNodes[index],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600, color: _textDark),
            decoration: const InputDecoration(
              counterText: '',
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              filled: false,
            ),
            onChanged: (v) {
              if (v.isNotEmpty && index < 5) {
                _otpFocusNodes[index + 1].requestFocus();
              } else if (v.isEmpty && index > 0) {
                _otpFocusNodes[index - 1].requestFocus();
              }
            },
          ),
        );
      },
    );
  }

  Widget _mpinField(
    String label,
    TextEditingController controller,
    FocusNode focusNode,
  ) {
    return AnimatedBuilder(
      animation: focusNode,
      builder: (context, _) {
        final focused = focusNode.hasFocus;
        final filled = controller.text.length;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: _textGray,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 6),
            GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(focusNode),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: focused ? _primary : _inputBorder,
                    width: focused ? 1.5 : 1,
                  ),
                ),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0,
                      child: TextField(
                        controller: controller,
                        focusNode: focusNode,
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: const InputDecoration(counterText: ''),
                        onChanged: (_) => setState(() {}),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(6, (i) => Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: i < filled
                                ? _textDark
                                : const Color(0xFFD1D5DB),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _fieldLabel(String text) => Text(
        text,
        style: GoogleFonts.inter(
            fontSize: 13, fontWeight: FontWeight.w500, color: _textGray),
      );

  Widget _inputField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: GoogleFonts.inter(fontSize: 14, color: _textDark),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.inter(fontSize: 14, color: _hintColor),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _inputBorder)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _inputBorder)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _primary, width: 1.5)),
      ),
    );
  }

  Widget _passwordField() {
    return TextField(
      controller: _passwordCtrl,
      obscureText: _obscurePassword,
      style: GoogleFonts.inter(fontSize: 14, color: _textDark),
      decoration: InputDecoration(
        hintText: '••••••••',
        hintStyle: GoogleFonts.inter(fontSize: 14, color: _hintColor),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _inputBorder)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _inputBorder)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: _primary, width: 1.5)),
        suffixIcon: IconButton(
          icon: Icon(
              _obscurePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 18,
              color: _textGray),
          onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
        ),
      ),
    );
  }
}
