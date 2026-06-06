import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

class ServicePaymentTransactionCard extends StatelessWidget {
  const ServicePaymentTransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Detail Transaksi',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.astraYellow400,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  'QRIS',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF111827),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Pelanggan', 'Pak Budi'),
          const SizedBox(height: 10),
          _buildInfoRow('Kendaraan', 'Honda Vario 125\nB 1234 ABC', multiline: true),
          const SizedBox(height: 16),
          _buildDashedDivider(),
          const SizedBox(height: 16),
          _buildPriceRow('Servis Rutin', 'Rp 50.000'),
          const SizedBox(height: 8),
          _buildPriceRow('Oli Astra SPX', 'Rp 55.000'),
          const SizedBox(height: 8),
          _buildPriceRow('Kampas Rem Depan', 'Rp 35.000'),
          const SizedBox(height: 8),
          _buildPriceRow('Biaya Penanganan', 'Rp 40.000'),
          const SizedBox(height: 16),
          _buildDashedDivider(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF111827),
                ),
              ),
              Text(
                'Rp 180.000',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.astraBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool multiline = false}) {
    return Row(
      crossAxisAlignment: multiline ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            label,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFF6B7280),
            ),
          ),
        ),
        Text(
          value,
          textAlign: TextAlign.right,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF111827),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceRow(String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: const Color(0xFF374151),
          ),
        ),
        Text(
          price,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: const Color(0xFF111827),
          ),
        ),
      ],
    );
  }

  Widget _buildDashedDivider() {
    return LayoutBuilder(
      builder: (context, constraints) {
        const dashWidth = 6.0;
        const dashSpace = 4.0;
        final dashCount = (constraints.maxWidth / (dashWidth + dashSpace)).floor();
        return Row(
          children: List.generate(dashCount, (_) {
            return Padding(
              padding: const EdgeInsets.only(right: dashSpace),
              child: Container(
                width: dashWidth,
                height: 1,
                color: const Color(0xFFD1D5DB),
              ),
            );
          }),
        );
      },
    );
  }
}
