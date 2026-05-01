import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                // Main Form Card
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  height: 652,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(64),
                        topRight: Radius.circular(64),
                        bottomLeft: Radius.circular(55),
                        bottomRight: Radius.circular(55),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
        
                // Content Container
                Positioned.fill(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 96),
                          // Title
                          SizedBox(
                            width: 336,
                            height: 84,
                            child: Text(
                              'Sign Up YugaiPay Partner',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF1A1D3A),
                                height: 42 / 32,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20), // Spacing between Title and Card top (200 - 96 - 84 = 20)
                          
                          // Internal Form Container
                          Container(
                            width: 345,
                            padding: const EdgeInsets.only(top: 12), // Aligning content to top: 32 relative to Card (200)
                            child: Column(
                              children: [
                                // First Form Section (345 x 232, 26px gap)
                                SizedBox(
                                  width: 345,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Enter Your Aadhar-Linked\nMobile Number',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF1A1D3A),
                                          height: 1.2,
                                        ),
                                      ),
                                      const SizedBox(height: 26),
                                      // Custom Input Field with SVG
                                      Container(
                                        width: 345,
                                        height: 61,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24),
                                          border: Border.all(
                                            color: const Color(0xFF64748B),
                                            width: 1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withValues(alpha: 0.08),
                                              blurRadius: 4,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: 19,
                                              left: 16,
                                              child: Text(
                                                '+91 00000 00000',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color(0xFF94A3B8),
                                                  height: 1.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 26),
                                    ],
                                  ),
                                ),
                                
                                // Action Button
                                const SizedBox(height: 24),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const OTPVerificationScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 345,
                                    height: 61,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(24),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.08),
                                          blurRadius: 4,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Get OTP',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          height: 1.0,
                                        ),
                                      ),
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
                ),
        
                // Tagline (538px from card top 200 = 738px absolute)
                Positioned(
                  top: 738,
                  left: 0,
                  right: 0,
                  child: Text(
                    'Secure, Fast, Inclusive, & Digital',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF64748B),
                      height: 1.0,
                    ),
                  ),
                ),
        
                // Background Decorative Shape (Moved to front for visibility)
                Positioned(
                  top: 700,
                  left: -186,
                  width: 295,
                  height: 295,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1419, 0.9045],
                        colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                      ),
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
