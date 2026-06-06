import 'package:flutter/material.dart';

/// Design system color tokens.
abstract class AppColors {
  // Brand Blue Palette
  static const astraBlue50 = Color(0xFFEEF6FF);
  static const astraBlue100 = Color(0xFFD9EAFF);
  static const astraBlue200 = Color(0xFFBBDBFF);
  static const astraBlue300 = Color(0xFF8CC5FF);
  static const astraBlue400 = Color(0xFF56A6FF);
  static const astraBlue500 = Color(0xFF2F83FF);
  static const astraBlue600 = Color(0xFF1864F8);
  static const astraBlue700 = Color(0xFF104BDD); // Primary Blue
  static const astraBlue800 = Color(0xFF143FB9);
  static const astraBlue900 = Color(0xFF173A91);
  static const astraBlue950 = Color(0xFF132558);

  // Brand Yellow Palette
  static const astraYellow50 = Color(0xFFFCFCEA);
  static const astraYellow100 = Color(0xFFF9F9C9);
  static const astraYellow200 = Color(0xFFF5F396);
  static const astraYellow300 = Color(0xFFEDE54E); // Accent Yellow
  static const astraYellow400 = Color(0xFFE6D82C);
  static const astraYellow500 = Color(0xFFD3C11B);
  static const astraYellow600 = Color(0xFFB39914);
  static const astraYellow700 = Color(0xFF8D7213);
  static const astraYellow800 = Color(0xFF755B16);
  static const astraYellow900 = Color(0xFF634D19);
  static const astraYellow950 = Color(0xFF39290A);

  // Core Aliases
  static const astraBlue = astraBlue700;
  static const astraYellow = astraYellow300;
  static const primaryLight = astraBlue500;
  static const secondary = Color(0xFF7C3AED);     // violet-600
  static const error = Color(0xFFDC2626);
  static const errorDark = Color(0xFFEF4444);
  static const success = Color(0xFF16A34A);
  static const warning = Color(0xFFD97706);
  static const info = Color(0xFF0284C7);
  static const backgroundLight = Color(0xFFF8FAFC);
  static const surfaceLight = Color(0xFFFFFFFF);
  static const inputFillLight = Color(0xFFF1F5F9);
  static const borderLight = Color(0xFFE2E8F0);
  static const textPrimaryLight = Color(0xFF0F172A);
  static const textSecondaryLight = Color(0xFF64748B);
  static const backgroundDark = Color(0xFF0F172A);
  static const surfaceDark = Color(0xFF1E293B);
  static const inputFillDark = Color(0xFF334155);
  static const borderDark = Color(0xFF334155);
  static const textPrimaryDark = Color(0xFFF8FAFC);
  static const textSecondaryDark = Color(0xFF94A3B8);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Colors.transparent;
}
