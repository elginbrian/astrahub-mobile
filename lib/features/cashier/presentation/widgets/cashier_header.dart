import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class CashierHeader extends StatelessWidget {
  const CashierHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kasir',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Hari ini, 31 Mei',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: const Color(0xFF6B7280),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.astraBlue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.history, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
