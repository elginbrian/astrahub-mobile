import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../core/theme/app_colors.dart';

class ProductLogisticsSection extends StatelessWidget {
  const ProductLogisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildLogisticsRow(
            Icons.local_shipping_outlined,
            'Gratis Ongkir ',
            '(Rp14.000)',
            'Est. tiba 8 - 10 Jun',
          ),
          const SizedBox(height: 16),
          _buildLogisticsRow(
            Icons.verified_user_outlined,
            'Gratis pengembalian',
            '',
            'Pengembalian 6 hari',
          ),
        ],
      ),
    );
  }

  Widget _buildLogisticsRow(IconData icon, String title, String subtitle, String desc) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.astraBlue, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                    if (subtitle.isNotEmpty)
                      TextSpan(
                        text: subtitle,
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                desc,
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.chevron_right, color: Colors.grey),
      ],
    );
  }
}
