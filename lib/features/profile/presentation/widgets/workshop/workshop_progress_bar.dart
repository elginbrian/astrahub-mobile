import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class WorkshopProgressBar extends StatelessWidget {
  const WorkshopProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Langkah 2 dari 2',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: const Color(0xFF4B5563),
              ),
            ),
            Text(
              '100%',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppColors.astraBlue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: const LinearProgressIndicator(
            value: 1.0,
            backgroundColor: Color(0xFFE5E7EB),
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.astraBlue),
            minHeight: 4,
          ),
        ),
      ],
    );
  }
}
