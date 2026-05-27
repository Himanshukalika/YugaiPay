import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/router/app_router.dart';

class MpinLoginScreen extends StatefulWidget {
  const MpinLoginScreen({super.key});

  @override
  State<MpinLoginScreen> createState() => _MpinLoginScreenState();
}

class _MpinLoginScreenState extends State<MpinLoginScreen> {
  final TextEditingController _mpinController = TextEditingController();
  final FocusNode _mpinFocusNode = FocusNode();

  @override
  void dispose() {
    _mpinController.dispose();
    _mpinFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 393,
            height: 852,
            child: Stack(
              children: [
                Positioned(
                  top: 785,
                  left: 0,
                  width: 393,
                  height: 67,
                  child: Opacity(
                    opacity: 0.1,
                    child: SvgPicture.string(
                      _bottomWaveSvg,
                      width: 393,
                      height: 67,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Top Header Container (top: 26, width: 393, height: 94)
                Positioned(
                  top: 26,
                  left: 0,
                  width: 393,
                  height: 94,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Child: The Big Container (110.25 x 48)
                        Container(
                          width: 110.25,
                          height: 48,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Left side child: Circular avatar image
                              Container(
                                width: 48,
                                height: 48,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFF5E35B1),
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9999),
                                  child: Image.asset(
                                    'assets/images/person1.jpg',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Right side child: Column holding Hello and Rajesh texts
                              Container(
                                width: 50.25,
                                height: 44,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Hello,',
                                      style: GoogleFonts.manrope(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        height: 20 / 16,
                                        letterSpacing: 0,
                                        color: const Color(0xFF494453),
                                      ),
                                    ),
                                    Text(
                                      'Rajesh',
                                      style: GoogleFonts.manrope(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        height: 24 / 16,
                                        letterSpacing: 0,
                                        color: const Color(0xFF1A1C1D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Right Child: New Capsule Container (63 x 40) containing the SVG icon and chevron arrow
                        Container(
                          width: 63,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9999),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.string(
                                _langSvg,
                                width: 22,
                                height: 19,
                              ),
                              const SizedBox(width: 4), // 4px Gap
                              SvgPicture.string(
                                _arrowSvg,
                                width: 9,
                                height: 5.55,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Main Content Column Container (top: 129, width: 393, height: 706)
                Positioned(
                  top: 129,
                  left: 0,
                  width: 393,
                  height: 706,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Glassmorphic Content Card (Fixed: 345 x 417)
                        Container(
                          width: 345,
                          height: 417,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.12),
                                blurRadius: 40,
                                offset: const Offset(0, 8),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 21,
                                  bottom: 16,
                                  left: 21,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.9),
                                  borderRadius: BorderRadius.circular(32),
                                  border: Border.all(
                                    color: Colors.white.withValues(alpha: 0.5),
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Parent Container (280 x 52)
                                    Container(
                                      width: 280,
                                      height: 52,
                                      child: Stack(
                                        children: [
                                          // The actual content Column (width 280, height 52)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Child Container (280 x 24) holding 'Welcome Back' Text
                                              Container(
                                                width: 280,
                                                height: 24,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Welcome Back',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.manrope(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    height: 24 / 16,
                                                    letterSpacing: 0,
                                                    color: const Color(
                                                      0xFF461599,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              // Second Child Container (280 x 24)
                                              Container(
                                                width: 280,
                                                height: 24,
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 244.97,
                                                  height: 24,
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Verify identity to continue access',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.manrope(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 24 / 16,
                                                      letterSpacing: 0,
                                                      color: const Color(
                                                        0xFF605D69,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    // New Container (281 x 72)
                                    Container(
                                      width: 303,
                                      height: 74,
                                      child: Stack(
                                        children: [
                                          // Content Row (width 281, height 72)
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              // First Child Container
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    context.push(
                                                      AppRoutes.login,
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 72,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 8,
                                                          bottom: 5,
                                                          left: 4,
                                                          right: 4,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                        0xFFF9F9FB,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 38,
                                                          height: 38,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                              0xFFE9DDFF,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8,
                                                                ),
                                                          ),
                                                          child:
                                                              SvgPicture.string(
                                                                _firstCardSvg,
                                                                width: 22,
                                                                height: 24,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 1,
                                                        ), // 4px Gap
                                                        Container(
                                                          width: 80,
                                                          height: 15,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'FINGERPRINT',
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                            style: GoogleFonts.manrope(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 15 / 10,
                                                              letterSpacing:
                                                                  -0.25,
                                                              color:
                                                                  const Color(
                                                                    0xFF605D69,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              // Second Child Container
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // Interaction
                                                  },
                                                  child: Container(
                                                    height: 72,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 8,
                                                          bottom: 5,
                                                          left: 25.15,
                                                          right: 25.18,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                        0xFFF9F9FB,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 38,
                                                          height: 38,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                              0xFFE9DDFF,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8,
                                                                ),
                                                          ),
                                                          child:
                                                              SvgPicture.string(
                                                                _secondCardSvg,
                                                                width: 20,
                                                                height: 20,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 1,
                                                        ), // 4px Gap
                                                        Container(
                                                          width: 34.94,
                                                          height: 15,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'FACE ID',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts.manrope(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 15 / 10,
                                                              letterSpacing:
                                                                  -0.25,
                                                              color:
                                                                  const Color(
                                                                    0xFF605D69,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              // Third Child Container
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    // Interaction
                                                  },
                                                  child: Container(
                                                    height: 72,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 8,
                                                          bottom: 5,
                                                          left: 18.09,
                                                          right: 18.09,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                        0xFFF9F9FB,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            12,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 38,
                                                          height: 38,
                                                          alignment:
                                                              Alignment.center,
                                                          decoration: BoxDecoration(
                                                            color: const Color(
                                                              0xFFE9DDFF,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  8,
                                                                ),
                                                          ),
                                                          child:
                                                              SvgPicture.string(
                                                                _thirdCardSvg,
                                                                width: 23,
                                                                height: 12,
                                                              ),
                                                        ),
                                                        const SizedBox(
                                                          height: 1,
                                                        ), // 4px Gap
                                                        Container(
                                                          width: 64,
                                                          height: 15,
                                                          alignment:
                                                              Alignment.center,
                                                          child: FittedBox(
                                                            fit: BoxFit
                                                                .scaleDown,
                                                            child: Text(
                                                              'PASSWORD',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts.manrope(
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 15 / 10,
                                                                letterSpacing:
                                                                    -0.25,
                                                                color:
                                                                    const Color(
                                                                      0xFF605D69,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      width: 303,
                                      height: 76,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            height: 16,
                                            child: Text(
                                              'Enter 6-digit MPIN',
                                              style: GoogleFonts.manrope(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                height: 16 / 12,
                                                letterSpacing: 0,
                                                color: const Color(0xFF494453),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          GestureDetector(
                                            onTap: () => FocusScope.of(
                                              context,
                                            ).requestFocus(_mpinFocusNode),
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 48,
                                              child: Stack(
                                                children: [
                                                  Opacity(
                                                    opacity: 0,
                                                    child: TextField(
                                                      controller:
                                                          _mpinController,
                                                      focusNode: _mpinFocusNode,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      obscureText: true,
                                                      maxLength: 6,
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                      decoration:
                                                          const InputDecoration(
                                                            counterText: '',
                                                            border: InputBorder
                                                                .none,
                                                          ),
                                                      onChanged: (_) =>
                                                          setState(() {}),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: List.generate(
                                                      6,
                                                      (index) => Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                right:
                                                                    index == 5
                                                                    ? 0
                                                                    : 3,
                                                              ),
                                                          child: Container(
                                                            height: 48,
                                                            padding:
                                                                const EdgeInsets.fromLTRB(
                                                                  12,
                                                                  11,
                                                                  12,
                                                                  11,
                                                                ),
                                                            decoration: BoxDecoration(
                                                              color:
                                                                  const Color(
                                                                    0xFFF3F3F5,
                                                                  ),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    12,
                                                                  ),
                                                              border: Border.all(
                                                                color: Colors
                                                                    .black
                                                                    .withValues(
                                                                      alpha: 0,
                                                                    ),
                                                                width: 2,
                                                              ),
                                                            ),
                                                            child:
                                                                index <
                                                                    _mpinController
                                                                        .text
                                                                        .length
                                                                ? const Center(
                                                                    child: Text(
                                                                      '.',
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            24,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        color: Color(
                                                                          0xFF1A1C1D,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                : null,
                                                          ),
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
                                    const SizedBox(height: 24),
                                    // New Row Container (308 x 56)
                                    Container(
                                      width: 308,
                                      height: 56,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF461599),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          // "Login securely" label (169 x 24)
                                          SizedBox(
                                            width: 169,
                                            height: 24,
                                            child: Text(
                                              'Login securely',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                                height: 24 / 16,
                                                letterSpacing: 0,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    SizedBox(
                                      width: 308,
                                      height: 16,
                                      child: Text(
                                        'Forgot MPIN?',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.manrope(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          height: 16 / 12,
                                          letterSpacing: 0,
                                          color: const Color(0xFF461599),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // New Section Container (345 x 146, gap: 12px)
                        Container(
                          width: 345,
                          height: 146,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Child 1: Title
                              SizedBox(
                                width: double.infinity,
                                height: 22,
                                child: Text(
                                  'Our Platforms',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    height: 1.0,
                                    letterSpacing: 0,
                                    color: const Color(0xFF1A1D3A),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                width: 341,
                                height: 108,
                                child: Row(
                                  children: [
                                    _buildPlatformCard(
                                      iconSvg: _platformFirstSvg,
                                      title: 'YugaiPay',
                                      subtitle: 'Banking Services',
                                    ),
                                    const SizedBox(width: 16),
                                    _buildPlatformCard(
                                      iconSvg: _platformSecondSvg,
                                      title: 'YugaiPay',
                                      subtitle: 'Sakhi',
                                      subtitleGradient: const [
                                        Color(0xFFE82A6D),
                                        Color(0xFFD81B60),
                                      ],
                                    ),
                                    const SizedBox(width: 16),
                                    _buildPlatformCard(
                                      iconSvg: _platformThirdSvg,
                                      title: 'YugaiPay',
                                      subtitle: 'Agri',
                                      subtitleGradient: const [
                                        Color(0xFFA8E063),
                                        Color(0xFF56AB2F),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 28),
                        Container(
                          width: 345,
                          height: 70,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0x80EEF2FF),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: const Color(0x80E0E7FF),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 82,
                                height: 36,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 34.3,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD7E6FF),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Icon(
                                        Icons.flash_on_rounded,
                                        size: 24,
                                        color: Color(0xFF0647D9),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Fast',
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                      style: GoogleFonts.inter(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        height: 16.5 / 11,
                                        letterSpacing: 0,
                                        color: const Color(0xFF1A1A1A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 0.95,
                                height: 32,
                                color: const Color(0x80C7D2FE),
                              ),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: 90,
                                height: 36,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 34.3,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD1FAE5),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/shield.png',
                                          width: 20,
                                          height: 20,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Secure',
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                      style: GoogleFonts.inter(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        height: 16.5 / 11,
                                        letterSpacing: 0,
                                        color: const Color(0xFF1A1A1A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 0.95,
                                height: 32,
                                color: const Color(0x80C7D2FE),
                              ),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: 91,
                                height: 36,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 34.27,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF3E8FF),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: SvgPicture.string(
                                          _trustedSvg,
                                          width: 16,
                                          height: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Trusted',
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                      style: GoogleFonts.inter(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        height: 16.5 / 11,
                                        letterSpacing: 0,
                                        color: const Color(0xFF1A1A1A),
                                      ),
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlatformCard({
    String? iconSvg,
    String? title,
    String? subtitle,
    List<Color> subtitleGradient = const [Color(0xFFFFA143), Color(0xFFF43B5E)],
  }) {
    return Container(
      width: 103,
      height: 108,
      decoration: BoxDecoration(
        color: const Color(0x99F9F9FB),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 18,
            offset: const Offset(0, 10),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: SizedBox(
          width: 89,
          height: 86,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: iconSvg == null
                    ? const SizedBox.shrink()
                    : SvgPicture.string(iconSvg),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 89,
                height: 30,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        letterSpacing: 0,
                        color: const Color(0xFF1A1D3A),
                      ),
                    ),
                    const SizedBox(height: 2),
                    if (subtitle != null)
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          height: 1.1,
                          letterSpacing: 0,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: subtitleGradient,
                            ).createShader(const Rect.fromLTWH(0, 0, 89, 14)),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── SVG Strings ──
const _langSvg =
    '''<svg width="22" height="19" viewBox="0 0 22 19" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.8 19L15.35 7H17.45L22 19H19.9L18.825 15.95H13.975L12.9 19H10.8ZM14.6 14.2H18.2L16.4 9.1L14.6 14.2ZM5.25 13C4.15 13 3.12083 12.6792 2.1625 12.0375C1.20417 11.3958 0.483333 10.5333 0 9.45L1.8 8.55C2.15 9.25 2.63333 9.83333 3.25 10.3C3.86667 10.7667 4.525 11 5.225 11C5.85833 11 6.37917 10.8042 6.7875 10.4125C7.19583 10.0208 7.4 9.55 7.4 9C7.4 8.45 7.20417 7.97917 6.8125 7.5875C6.42083 7.19583 5.95 7 5.4 7H3.9V5H5.4C5.81667 5 6.17083 4.85417 6.4625 4.5625C6.75417 4.27083 6.9 3.91667 6.9 3.5C6.9 3.08333 6.75833 2.72917 6.475 2.4375C6.19167 2.14583 5.84167 2 5.425 2C5.04167 2 4.7 2.125 4.4 2.375C4.1 2.625 3.83333 2.9 3.6 3.2L2.025 1.975C2.45833 1.44167 2.95833 0.979167 3.525 0.5875C4.09167 0.195833 4.73333 0 5.45 0C6.4 0 7.2125 0.3375 7.8875 1.0125C8.5625 1.6875 8.9 2.50833 8.9 3.475C8.9 3.925 8.81667 4.3625 8.65 4.7875C8.48333 5.2125 8.24167 5.59167 7.925 5.925C8.09167 6.09167 8.24583 6.2625 8.3875 6.4375C8.52917 6.6125 8.66667 6.8 8.8 7H11.9V2H9.9V0H15.9V2H13.9V4.9L12.375 9H9.4V9.1C9.4 10.15 9.01667 11.0625 8.25 11.8375C7.48333 12.6125 6.48333 13 5.25 13Z" fill="#334155"/>
</svg>''';

const _arrowSvg =
    '''<svg width="9" height="6" viewBox="0 0 9 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 1.5L4.5 4.5L8 1.5" stroke="#94A3B8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>''';

const _firstCardSvg =
    '''<svg width="22" height="24" viewBox="0 0 22 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.4942 2.85833C12.5553 2.85833 14.4997 3.30069 16.3275 4.18542C18.1553 5.07014 19.6817 6.34861 20.9067 8.02083C21.0428 8.19583 21.0865 8.35139 21.0379 8.4875C20.9893 8.62361 20.9067 8.74028 20.79 8.8375C20.6733 8.93472 20.5372 8.97847 20.3817 8.96875C20.2261 8.95903 20.09 8.87639 19.9733 8.72083C18.9039 7.20417 17.5282 6.04236 15.8462 5.23542C14.1643 4.42847 12.3803 4.025 10.4942 4.025C8.60806 4.025 6.83861 4.42847 5.18583 5.23542C3.53306 6.04236 2.16222 7.20417 1.07333 8.72083C0.956667 8.89583 0.820556 8.99306 0.665 9.0125C0.509444 9.03194 0.373333 8.99306 0.256667 8.89583C0.120556 8.79861 0.0379167 8.67708 0.00875 8.53125C-0.0204167 8.38542 0.0233333 8.23472 0.14 8.07917C1.34556 6.42639 2.85736 5.14306 4.67542 4.22917C6.49347 3.31528 8.43305 2.85833 10.4942 2.85833ZM10.4942 5.6C13.1192 5.6 15.3747 6.475 17.2608 8.225C19.1469 9.975 20.09 12.1431 20.09 14.7292C20.09 15.7014 19.7449 16.5132 19.0546 17.1646C18.3643 17.816 17.5233 18.1417 16.5317 18.1417C15.54 18.1417 14.6893 17.816 13.9796 17.1646C13.2699 16.5132 12.915 15.7014 12.915 14.7292C12.915 14.0875 12.6768 13.5479 12.2004 13.1104C11.724 12.6729 11.1553 12.4542 10.4942 12.4542C9.83306 12.4542 9.26431 12.6729 8.78792 13.1104C8.31153 13.5479 8.07333 14.0875 8.07333 14.7292C8.07333 16.6153 8.63236 18.1903 9.75042 19.4542C10.8685 20.7181 12.3122 21.6028 14.0817 22.1083C14.2567 22.1667 14.3733 22.2639 14.4317 22.4C14.49 22.5361 14.4997 22.6819 14.4608 22.8375C14.4219 22.9736 14.3442 23.0903 14.2275 23.1875C14.1108 23.2847 13.965 23.3139 13.79 23.275C11.7678 22.7694 10.115 21.7632 8.83167 20.2563C7.54833 18.7493 6.90667 16.9069 6.90667 14.7292C6.90667 13.7569 7.25667 12.9403 7.95667 12.2792C8.65667 11.6181 9.5025 11.2875 10.4942 11.2875C11.4858 11.2875 12.3317 11.6181 13.0317 12.2792C13.7317 12.9403 14.0817 13.7569 14.0817 14.7292C14.0817 15.3708 14.3247 15.9104 14.8108 16.3479C15.2969 16.7854 15.8706 17.0042 16.5317 17.0042C17.1928 17.0042 17.7567 16.7854 18.2233 16.3479C18.69 15.9104 18.9233 15.3708 18.9233 14.7292C18.9233 12.4736 18.0969 10.5778 16.4442 9.04167C14.7914 7.50556 12.8178 6.7375 10.5233 6.7375C8.22889 6.7375 6.25528 7.50556 4.6025 9.04167C2.94972 10.5778 2.12333 12.4639 2.12333 14.7C2.12333 15.1667 2.16708 15.75 2.25458 16.45C2.34208 17.15 2.55111 17.9667 2.88167 18.9C2.94 19.075 2.93514 19.2306 2.86708 19.3667C2.79903 19.5028 2.68722 19.6 2.53167 19.6583C2.37611 19.7167 2.22542 19.7118 2.07958 19.6437C1.93375 19.5757 1.83167 19.4639 1.77333 19.3083C1.48167 18.55 1.27264 17.7965 1.14625 17.0479C1.01986 16.2993 0.956667 15.5264 0.956667 14.7292C0.956667 12.1431 1.89486 9.975 3.77125 8.225C5.64764 6.475 7.88861 5.6 10.4942 5.6ZM10.4942 0C11.7386 0 12.9539 0.150694 14.14 0.452083C15.3261 0.753472 16.4733 1.18611 17.5817 1.75C17.7567 1.84722 17.8587 1.96389 17.8879 2.1C17.9171 2.23611 17.9025 2.37222 17.8442 2.50833C17.7858 2.64444 17.6886 2.75139 17.5525 2.82917C17.4164 2.90694 17.2511 2.89722 17.0567 2.8C16.0261 2.275 14.9615 1.87153 13.8629 1.58958C12.7643 1.30764 11.6414 1.16667 10.4942 1.16667C9.36639 1.16667 8.25806 1.29792 7.16917 1.56042C6.08028 1.82292 5.04 2.23611 4.04833 2.8C3.89278 2.89722 3.73722 2.92153 3.58167 2.87292C3.42611 2.82431 3.30944 2.72222 3.23167 2.56667C3.15389 2.41111 3.13444 2.27014 3.17333 2.14375C3.21222 2.01736 3.30944 1.90556 3.465 1.80833C4.55389 1.225 5.69139 0.777778 6.8775 0.466667C8.06361 0.155556 9.26917 0 10.4942 0ZM10.4942 8.42917C12.3025 8.42917 13.8581 9.03681 15.1608 10.2521C16.4636 11.4674 17.115 12.9597 17.115 14.7292C17.115 14.9042 17.0615 15.0451 16.9546 15.1521C16.8476 15.259 16.7067 15.3125 16.5317 15.3125C16.3761 15.3125 16.24 15.259 16.1233 15.1521C16.0067 15.0451 15.9483 14.9042 15.9483 14.7292C15.9483 13.2708 15.4087 12.0507 14.3296 11.0688C13.2504 10.0868 11.9719 9.59583 10.4942 9.59583C9.01639 9.59583 7.74764 10.0868 6.68792 11.0688C5.62819 12.0507 5.09833 13.2708 5.09833 14.7292C5.09833 16.3042 5.37056 17.641 5.915 18.7396C6.45944 19.8382 7.25667 20.9417 8.30667 22.05C8.42333 22.1667 8.48167 22.3028 8.48167 22.4583C8.48167 22.6139 8.42333 22.75 8.30667 22.8667C8.19 22.9833 8.05389 23.0417 7.89833 23.0417C7.74278 23.0417 7.60667 22.9833 7.49 22.8667C6.34278 21.6611 5.46292 20.4313 4.85042 19.1771C4.23792 17.9229 3.93167 16.4403 3.93167 14.7292C3.93167 12.9597 4.57333 11.4674 5.85667 10.2521C7.14 9.03681 8.68583 8.42917 10.4942 8.42917ZM10.465 14.1458C10.64 14.1458 10.781 14.2042 10.8879 14.3208C10.9949 14.4375 11.0483 14.5736 11.0483 14.7292C11.0483 16.1875 11.5733 17.3833 12.6233 18.3167C13.6733 19.25 14.8983 19.7167 16.2983 19.7167C16.415 19.7167 16.5803 19.7069 16.7942 19.6875C17.0081 19.6681 17.2317 19.6389 17.465 19.6C17.64 19.5611 17.7907 19.5854 17.9171 19.6729C18.0435 19.7604 18.1261 19.8917 18.165 20.0667C18.2039 20.2222 18.1747 20.3583 18.0775 20.475C17.9803 20.5917 17.8539 20.6694 17.6983 20.7083C17.3483 20.8056 17.0421 20.859 16.7796 20.8687C16.5171 20.8785 16.3567 20.8833 16.2983 20.8833C14.5678 20.8833 13.0657 20.3 11.7921 19.1333C10.5185 17.9667 9.88167 16.4986 9.88167 14.7292C9.88167 14.5736 9.93514 14.4375 10.0421 14.3208C10.149 14.2042 10.29 14.1458 10.465 14.1458Z" fill="#461599"/>
</svg>''';

const _secondCardSvg =
    '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7 12.25C6.65 12.25 6.35417 12.1292 6.1125 11.8875C5.87083 11.6458 5.75 11.35 5.75 11C5.75 10.65 5.87083 10.3542 6.1125 10.1125C6.35417 9.87083 6.65 9.75 7 9.75C7.35 9.75 7.64583 9.87083 7.8875 10.1125C8.12917 10.3542 8.25 10.65 8.25 11C8.25 11.35 8.12917 11.6458 7.8875 11.8875C7.64583 12.1292 7.35 12.25 7 12.25ZM13 12.25C12.65 12.25 12.3542 12.1292 12.1125 11.8875C11.8708 11.6458 11.75 11.35 11.75 11C11.75 10.65 11.8708 10.3542 12.1125 10.1125C12.3542 9.87083 12.65 9.75 13 9.75C13.35 9.75 13.6458 9.87083 13.8875 10.1125C14.1292 10.3542 14.25 10.65 14.25 11C14.25 11.35 14.1292 11.6458 13.8875 11.8875C13.6458 12.1292 13.35 12.25 13 12.25ZM10 18C12.2333 18 14.125 17.225 15.675 15.675C17.225 14.125 18 12.2333 18 10C18 9.6 17.975 9.2125 17.925 8.8375C17.875 8.4625 17.7833 8.1 17.65 7.75C17.3 7.83333 16.95 7.89583 16.6 7.9375C16.25 7.97917 15.8833 8 15.5 8C13.9833 8 12.55 7.675 11.2 7.025C9.85 6.375 8.7 5.46667 7.75 4.3C7.21667 5.6 6.45417 6.72917 5.4625 7.6875C4.47083 8.64583 3.31667 9.36667 2 9.85C2 9.88333 2 9.90833 2 9.925C2 9.94167 2 9.96667 2 10C2 12.2333 2.775 14.125 4.325 15.675C5.875 17.225 7.76667 18 10 18ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20ZM8.65 2.125C9.35 3.29167 10.3 4.22917 11.5 4.9375C12.7 5.64583 14.0333 6 15.5 6C15.7333 6 15.9583 5.9875 16.175 5.9625C16.3917 5.9375 16.6167 5.90833 16.85 5.875C16.15 4.70833 15.2 3.77083 14 3.0625C12.8 2.35417 11.4667 2 10 2C9.76667 2 9.54167 2.0125 9.325 2.0375C9.10833 2.0625 8.88333 2.09167 8.65 2.125ZM2.425 7.475C3.275 6.99167 4.01667 6.36667 4.65 5.6C5.28333 4.83333 5.75833 3.975 6.075 3.025C5.225 3.50833 4.48333 4.13333 3.85 4.9C3.21667 5.66667 2.74167 6.525 2.425 7.475Z" fill="#461599"/>
</svg>''';

const _thirdCardSvg =
    '''<svg width="23" height="12" viewBox="0 0 23 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M6 8C5.45 8 4.97917 7.80417 4.5875 7.4125C4.19583 7.02083 4 6.55 4 6C4 5.45 4.19583 4.97917 4.5875 4.5875C4.97917 4.19583 5.45 4 6 4C6.55 4 7.02083 4.19583 7.4125 4.5875C7.80417 4.97917 8 5.45 8 6C8 6.55 7.80417 7.02083 7.4125 7.4125C7.02083 7.80417 6.55 8 6 8ZM6 12C4.33333 12 2.91667 11.4167 1.75 10.25C0.583333 9.08333 0 7.66667 0 6C0 4.33333 0.583333 2.91667 1.75 1.75C2.91667 0.583333 4.33333 0 6 0C7.11667 0 8.12917 0.275 9.0375 0.825C9.94583 1.375 10.6667 2.1 11.2 3H20L23 6L18.5 10.5L16.5 9L14.5 10.5L12.375 9H11.2C10.6667 9.9 9.94583 10.625 9.0375 11.175C8.12917 11.725 7.11667 12 6 12ZM6 10C6.93333 10 7.75417 9.71667 8.4625 9.15C9.17083 8.58333 9.64167 7.86667 9.875 7H13L14.45 8.025L16.5 6.5L18.275 7.875L20.15 6L19.15 5H9.875C9.64167 4.13333 9.17083 3.41667 8.4625 2.85C7.75417 2.28333 6.93333 2 6 2C4.9 2 3.95833 2.39167 3.175 3.175C2.39167 3.95833 2 4.9 2 6C2 7.1 2.39167 8.04167 3.175 8.825C3.95833 9.60833 4.9 10 6 10Z" fill="#461599"/>
</svg>''';

const _trustedSvg =
    '''<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M4.26686 1.45486C4.91012 1.4035 5.52077 1.15049 6.01186 0.731859C7.15758 -0.243953 8.84214 -0.243953 9.98786 0.731859C10.4789 1.15049 11.0896 1.4035 11.7329 1.45486C13.2334 1.57478 14.4249 2.76631 14.5449 4.26686C14.5959 4.90686 14.8489 5.51686 15.2679 6.01186C16.2437 7.15758 16.2437 8.84214 15.2679 9.98786C14.8492 10.4789 14.5962 11.0896 14.5449 11.7329C14.4249 13.2334 13.2334 14.4249 11.7329 14.5449C11.0896 14.5962 10.4789 14.8492 9.98786 15.2679C8.84214 16.2437 7.15758 16.2437 6.01186 15.2679C5.52077 14.8492 4.91012 14.5962 4.26686 14.5449C2.76631 14.4249 1.57478 13.2334 1.45486 11.7329C1.4035 11.0896 1.15049 10.4789 0.731859 9.98786C-0.243953 8.84214 -0.243953 7.15758 0.731859 6.01186C1.15049 5.52077 1.4035 4.91012 1.45486 4.26686C1.57478 2.76631 2.76631 1.57478 4.26686 1.45486ZM11.7069 6.70686C12.0858 6.31448 12.0804 5.69077 11.6947 5.30504C11.3089 4.91931 10.6852 4.91389 10.2929 5.29286L6.99986 8.58586L5.70686 7.29286C5.31448 6.91389 4.69077 6.91931 4.30504 7.30504C3.91931 7.69077 3.91389 8.31448 4.29286 8.70686L6.29286 10.7069C6.68336 11.0972 7.31636 11.0972 7.70686 10.7069L11.7069 6.70686Z" fill="#9333EA"/>
</svg>''';

const _bottomWaveSvg =
    '''<svg width="393" height="67" viewBox="0 0 393 67" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 34.932L13.1 36.3784C26.2 37.934 52.4 40.663 78.6 34.932C104.8 29.201 131 14.464 157.2 10.1794C183.4 5.73103 209.6 11.735 235.8 20.3861C262 29.201 288.2 40.663 314.4 37.8521C340.6 34.932 366.8 17.466 379.9 8.733L393 0V69.864H379.9C366.8 69.864 340.6 69.864 314.4 69.864C288.2 69.864 262 69.864 235.8 69.864C209.6 69.864 183.4 69.864 157.2 69.864C131 69.864 104.8 69.864 78.6 69.864C52.4 69.864 26.2 69.864 13.1 69.864H0V34.932Z" fill="#461599"/>
</svg>''';

const _platformFirstSvg =
    '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.6465 27.3652C21.2237 31.199 17.075 32.8866 13.3799 31.1347C12.7641 30.8427 12.4563 30.0882 12.6934 29.4492L13.5635 27.1035C14.0509 27.2924 14.6163 27.1907 15.041 26.7783L27.2696 14.9052L22.6465 27.3652ZM21.9668 4.46187C23.3898 0.62811 27.5393 -1.05966 31.2344 0.692336C31.8499 0.984372 32.1567 1.7391 31.9199 2.37788L27.9502 13.0712C27.424 12.7607 26.7558 12.8277 26.2705 13.2988L14.416 24.8066L21.9668 4.46187ZM0.623067 1.62007C4.09329 -0.644466 8.43443 0.511864 10.3194 4.2021L14.5225 12.4296C16.4073 16.1198 15.1222 20.9471 11.6524 23.2119C11.0741 23.5892 10.3504 23.397 10.0362 22.7822L0.144551 3.41695C-0.169301 2.80196 0.0448491 1.99744 0.623067 1.62007Z" fill="url(#paint0_linear_336_6359)"/>
<defs>
<linearGradient id="paint0_linear_336_6359" x1="1.84056" y1="2.94251" x2="22.4758" y2="50.3878" gradientUnits="userSpaceOnUse">
<stop stop-color="#FFB65C"/>
<stop offset="0.25" stop-color="#FFA143"/>
<stop offset="0.5" stop-color="#F43B5E"/>
</linearGradient>
</defs>
</svg>''';

const _platformSecondSvg =
    '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.6465 27.3652C21.2237 31.1991 17.075 32.8866 13.3799 31.1347C12.7642 30.8427 12.4564 30.0881 12.6934 29.4492L13.5625 27.1045C14.0499 27.2936 14.6152 27.1914 15.0401 26.7793L27.2696 14.9053L22.6465 27.3652ZM21.9668 4.4619C23.3897 0.627951 27.5393 -1.05963 31.2344 0.692364C31.8501 0.984411 32.157 1.73901 31.92 2.37791L27.9502 13.0722C27.4239 12.7614 26.755 12.8276 26.2696 13.2988L14.4161 24.8066L21.9668 4.4619ZM0.623097 1.6201C4.09332 -0.644266 8.43445 0.51196 10.3194 4.20213L14.5225 12.4297C16.4075 16.12 15.1217 20.9473 11.6514 23.2119C11.0732 23.5891 10.3504 23.397 10.0362 22.7822L0.144581 3.41697C-0.169328 2.80198 0.0448562 1.99749 0.623097 1.6201Z" fill="url(#paint0_linear_336_6367)"/>
<defs>
<linearGradient id="paint0_linear_336_6367" x1="14.3092" y1="-1.28138" x2="37.1544" y2="60.0257" gradientUnits="userSpaceOnUse">
<stop stop-color="#D81B60"/>
<stop offset="0.175211" stop-color="#FF4081" stop-opacity="0.6"/>
<stop offset="0.337267" stop-color="#E82A6D" stop-opacity="0.840377"/>
<stop offset="0.389382" stop-color="#D81B60"/>
</linearGradient>
</defs>
</svg>''';

const _platformThirdSvg =
    '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.6465 27.3652C21.2237 31.199 17.075 32.8866 13.3799 31.1347C12.7641 30.8427 12.4563 30.0882 12.6934 29.4492L13.5635 27.1035C14.0509 27.2924 14.6163 27.1907 15.041 26.7783L27.2696 14.9052L22.6465 27.3652ZM21.9668 4.46187C23.3898 0.62811 27.5393 -1.05966 31.2344 0.692336C31.8499 0.984372 32.1567 1.7391 31.9199 2.37788L27.9502 13.0712C27.424 12.7607 26.7558 12.8277 26.2705 13.2988L14.416 24.8066L21.9668 4.46187ZM0.623067 1.62007C4.09329 -0.644466 8.43443 0.511864 10.3194 4.2021L14.5225 12.4296C16.4073 16.1198 15.1222 20.9471 11.6524 23.2119C11.0741 23.5892 10.3504 23.397 10.0362 22.7822L0.144551 3.41695C-0.169301 2.80196 0.0448491 1.99744 0.623067 1.62007Z" fill="url(#paint0_linear_336_6375)"/>
<defs>
<linearGradient id="paint0_linear_336_6375" x1="1.84056" y1="2.94251" x2="22.4758" y2="50.3878" gradientUnits="userSpaceOnUse">
<stop stop-color="#9ACFA1"/>
<stop offset="0.25" stop-color="#A8E063"/>
<stop offset="0.5" stop-color="#56AB2F"/>
</linearGradient>
</defs>
</svg>''';
