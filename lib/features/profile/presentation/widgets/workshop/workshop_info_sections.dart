import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class WorkshopAstrapayInfo extends StatelessWidget {
  const WorkshopAstrapayInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nomor AstraPay',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF374151),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFE5E7EB),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFD1D5DB)),
            ),
            child: Text(
              'Akan dibuat otomatis melalui verifikasi data',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF6B7280),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkshopInfoBanner extends StatelessWidget {
  const WorkshopInfoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.astraBlue50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.astraBlue200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info, color: AppColors.astraBlue, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Setelah verifikasi, bengkel Anda dapat mengakses ekosistem AstraPay dan kemudahan PayLater B2B FIFGROUP.',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: AppColors.astraBlue900,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkshopBenefits extends StatelessWidget {
  const WorkshopBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Keuntungan Bergabung:',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 12),
          _buildCheckItem('Catat Servis Digital & Database Pelanggan'),
          const SizedBox(height: 8),
          _buildCheckItem('Terima Pembayaran QRIS AstraPay'),
          const SizedBox(height: 8),
          _buildCheckItem('Pesan Suku Cadang Astra via Apps'),
          const SizedBox(height: 8),
          _buildCheckItem('Akses Modal Kerja PayLater FIFGROUP'),
        ],
      ),
    );
  }

  Widget _buildCheckItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 2),
          child: Icon(Icons.check_circle, color: AppColors.astraBlue, size: 16),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: const Color(0xFF4B5563),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
