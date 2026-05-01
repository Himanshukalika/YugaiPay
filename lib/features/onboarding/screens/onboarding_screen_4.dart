import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
  @override
  void initState() {
    super.initState();
    _completeOnboarding();
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);

    // Figma spec: After delay -> Navigate with Smart Animate
    Timer(const Duration(milliseconds: 1500), () {
      if (mounted) {
        context.go(AppRoutes.home); // Navigate to Home as requested
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
