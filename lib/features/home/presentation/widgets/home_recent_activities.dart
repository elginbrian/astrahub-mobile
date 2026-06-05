import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';

class HomeRecentActivities extends StatelessWidget {
  const HomeRecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Aktivitas Terbaru',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              GestureDetector(
                onTap: () => context.pushNamed(AppRoutes.notificationName),
                child: Text(
                  'Lihat Semua',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.astraBlue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildActivityCard(
            icon: Icons.check_circle,
            iconColor: AppColors.astraBlue,
            iconBgColor: const Color(0xFFEFF6FF),
            title: 'Servis Honda Beat selesai',
            subtitle: 'Pengerjaan: Ganti Oli & CVT',
            time: '10:30',
          ),
          const SizedBox(height: 12),
          _buildActivityCard(
            icon: Icons.qr_code_2,
            iconColor: const Color(0xFFC2410C),
            iconBgColor: const Color(0xFFFFEDD5),
            title: 'Pembayaran QRIS berhasil',
            subtitle: 'Dari: Pelanggan #1029',
            time: '09:15',
          ),
          const SizedBox(height: 12),
          _buildActivityCard(
            icon: Icons.local_shipping_outlined,
            iconColor: const Color(0xFF4B5563),
            iconBgColor: const Color(0xFFF3F4F6),
            title: 'Pesanan suku cadang dikirim',
            subtitle: 'Logistik: Astra Part Express',
            time: 'Kemarin',
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF111827),
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: const Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    );
  }
}
