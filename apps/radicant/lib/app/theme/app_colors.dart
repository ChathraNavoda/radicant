import 'package:flutter/material.dart';

abstract final class AppColors {
  const AppColors._();

  // Brand
  static const Color primary = Color(0xFF1F5C3A);
  static const Color primaryContainer = Color(0xFFDDEEE3);

  // Secondary
  static const Color secondary = Color(0xFF7A8F7A);

  // Accent
  static const Color accent = Color(0xFFC89B3C);

  // Neutral
  static const Color background = Color(0xFFF7F6F2);
  static const Color surface = Colors.white;

  // Text
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);

  // Feedback
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFD97706);
  static const Color error = Color(0xFFB3261E);
}
