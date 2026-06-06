import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportInsightCard extends StatelessWidget {
  const ReportInsightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFBFDBFE)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.auto_awesome, color: Color(0xFF3B5BDB), size: 18),
              const SizedBox(width: 8),
              Text(
                'Insight Keuangan',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E3A8A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF374151),
                height: 1.5,
              ),
              children: const [
                TextSpan(text: 'Pendapatan QRIS meningkat '),
                TextSpan(
                  text: '18%',
                  style: TextStyle(
                    color: Color(0xFF22C55E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' dibanding minggu lalu. Saldo AstraPay masih cukup untuk pembelian stok berikutnya.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
