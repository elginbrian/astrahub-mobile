import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';

class CashierSummaryCards extends StatelessWidget {
  const CashierSummaryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: _buildCard(
              icon: Icons.trending_up,
              title: 'Pendapatan Hari Ini',
              value: 'Rp 427.000',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildCard(
              icon: Icons.build_outlined,
              title: 'Servis Selesai',
              value: '7',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title, required String value}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.astraBlue, size: 20),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: const Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }
}
