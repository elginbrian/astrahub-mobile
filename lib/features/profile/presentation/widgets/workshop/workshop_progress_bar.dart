import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class WorkshopProgressBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final double percentage;

  const WorkshopProgressBar({
    super.key,
    this.currentStep = 2,
    this.totalSteps = 2,
    this.percentage = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Langkah $currentStep dari $totalSteps',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: const Color(0xFF4B5563),
              ),
            ),
            Text(
              '${(percentage * 100).toInt()}%',
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
          child: LinearProgressIndicator(
            value: percentage,
            backgroundColor: Color(0xFFE5E7EB),
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.astraBlue),
            minHeight: 4,
          ),
        ),
      ],
    );
  }
}
