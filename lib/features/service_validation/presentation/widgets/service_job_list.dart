import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import 'service_job_item.dart';

class ServiceJobList extends StatelessWidget {
  const ServiceJobList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pekerjaan & Suku Cadang',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        ServiceJobItem(
          icon: Icons.build,
          iconBgColor: AppColors.astraBlue50,
          iconColor: AppColors.astraBlue500,
          name: 'Servis Rutin',
          category: 'Labor / Jasa',
          price: 'Rp 50.000',
          onDelete: () {},
        ),
        const SizedBox(height: 8),
        ServiceJobItem(
          icon: Icons.opacity,
          iconBgColor: AppColors.astraBlue50,
          iconColor: AppColors.astraBlue500,
          name: 'Oli Astra SPX 2 0.8L',
          category: 'Suku Cadang',
          price: 'Rp 55.000',
          onDelete: () {},
        ),
        const SizedBox(height: 8),
        ServiceJobItem(
          icon: Icons.rotate_left,
          iconBgColor: AppColors.astraBlue50,
          iconColor: AppColors.astraBlue500,
          name: 'Kampas Rem Depan',
          category: 'Suku Cadang',
          price: 'Rp 35.000',
          onDelete: () {},
        ),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.astraBlue,
            side: const BorderSide(color: Color(0xFFD1D5DB)),
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, size: 18),
              const SizedBox(width: 6),
              Text(
                'Tambah Pekerjaan',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
