import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

class HomeAlertBanner extends StatelessWidget {
  const HomeAlertBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFDE047),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: AppColors.astraYellow200,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.warning_amber_rounded, size: 20, color: AppColors.astraYellow800),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Stok oli SPX menipis — 3 kaleng tersisa',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF422006),
                height: 1.4,
              ),
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.astraYellow800),
        ],
      ),
    );
  }
}
