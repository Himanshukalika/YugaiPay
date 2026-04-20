import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import '../../auth/screens/signup_screen.dart';
import 'dart:async';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
  @override
  void initState() {
    super.initState();
    // Navigate to Sign Up screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // Large Background Circle
          Positioned(
            top: -30,
            left: -536,
            width: 997,
            height: 997,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                  stops: [0.1655, 0.8531],
                ),
              ),
            ),
          ),

          // Title: Let's begin.
          Positioned(
            top: 449,
            left: 0,
            right: 0,
            height: 45,
            child: Text(
              "Let's begin.",
              textAlign: TextAlign.center,
              style: GoogleFonts.kavoon(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                height: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
