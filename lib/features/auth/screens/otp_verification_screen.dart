import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loading_screen.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main Form Card
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
              height: 652,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(64),
                  topRight: Radius.circular(64),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Internal Form Container
                  Positioned(
                    top: 64,
                    left: 24,
                    width: 345,
                    height: 284,
                    child: Column(
                      children: [
                        // OTP Input Row
                        SizedBox(
                          width: 322,
                          height: 67,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4, (index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  right: index == 3 ? 0 : 18,
                                ),
                                width: 67,
                                height: 67,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: const Color(0xFF64748B),
                                    width: 1,
                                  ),
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
                                    '', // Empty for input
                                    style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF1A1D3A),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        
                        const SizedBox(height: 52), // Using the 52px gap provided earlier
                        
                        // Action Button
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoadingScreen(),
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
                                'Verify',
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
                        
                        const SizedBox(height: 24), // Spacer before the resend section
                        
                        // Resend OTP Section
                        SizedBox(
                          width: 345, // Increased width to fit text on one line
                          height: 52,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't receive the code?",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF94A3B8),
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              GestureDetector(
                                onTap: () {
                                  // Add resend logic here
                                },
                                child: Text(
                                  'Resend OTP',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF64748B),
                                    height: 1.0,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xFF64748B),
                                  ),
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

          // Title
          Positioned(
            top: 96,
            left: 78,
            width: 233,
            height: 48,
            child: Text(
              'Enter OTP',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1A1D3A),
                height: 1.0,
              ),
            ),
          ),
          
          // Sub-text
          Positioned(
            top: 156,
            left: 78,
            width: 233,
            height: 40,
            child: Opacity(
              opacity: 0.8,
              child: Text(
                'We’ve sent a 4-digit code to +91 00000 00000',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF4A5568),
                  height: 1.5,
                ),
              ),
            ),
          ),
          
          // Background Decorative Shape
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
    );
  }
}
