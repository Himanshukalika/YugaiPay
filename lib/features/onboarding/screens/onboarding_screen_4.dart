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
    // Figma spec: After delay -> Navigate with Smart Animate (Spring: mass: 1, stiffness: 115.2, damping: 24)
    // Increased delay from 1ms to 1.5 seconds so "Let's begin." is visible
    Timer(const Duration(milliseconds: 1500), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 800),
            reverseTransitionDuration: const Duration(milliseconds: 800),
            pageBuilder: (context, animation, secondaryAnimation) => const SignUpScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              // Creating a custom curve to mimic the provided Spring behavior
              // approximating { mass: 1, stiffness: 115.2, damping: 24 }
              final curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic, 
              );
              return FadeTransition(
                opacity: curvedAnimation,
                child: child,
              );
            },
          ),
        );
      }
    });
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
          ),
        ),
      ),
    );
  }
}
