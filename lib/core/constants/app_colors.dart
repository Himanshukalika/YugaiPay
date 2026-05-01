import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary palette — deep indigo/violet
  static const Color primary = Color(0xFF5C4EFA);
  static const Color primaryLight = Color(0xFF8B7FFC);
  static const Color primaryDark = Color(0xFF3B2FD8);

  // Accent — teal/cyan
  static const Color accent = Color(0xFF00D4C8);
  static const Color accentLight = Color(0xFF4DEDE7);

  // Neutrals
  static const Color background = Color(0xFF0E0F1A);
  static const Color surface = Color(0xFF1A1B2E);
  static const Color surfaceVariant = Color(0xFF252640);
  static const Color border = Color(0xFF2E2F4A);

  // Text
  static const Color textPrimary = Color(0xFFF0F1FF);
  static const Color textSecondary = Color(0xFF9A9BB8);
  static const Color textDisabled = Color(0xFF5A5B78);

  // Semantic
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryLight, primary, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF252640), Color(0xFF1A1B2E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFF0E0F1A), Color(0xFF151629)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
