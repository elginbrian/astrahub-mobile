import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import 'report_transaction_item.dart';

class ReportTransactionList extends StatelessWidget {
  const ReportTransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Riwayat Transaksi',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              Text(
                'Lihat Semua',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.astraBlue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Transaction items container
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE5E7EB)),
            ),
            child: const Column(
              children: [
                ReportTransactionItem(
                  icon: Icons.qr_code_2,
                  iconBgColor: Color(0xFFD1FAE5),
                  iconColor: Color(0xFF059669),
                  title: 'QRIS dari Pelanggan',
                  subtitle: 'Hari ini • 10:32',
                  amount: '+Rp 85.000',
                  isIncome: true,
                ),
                Divider(color: Color(0xFFE5E7EB), height: 1),
                ReportTransactionItem(
                  icon: Icons.shopping_cart_outlined,
                  iconBgColor: Color(0xFFFEE2E2),
                  iconColor: Color(0xFFEF4444),
                  title: 'Bayar Pesanan Suku Cadang',
                  subtitle: 'Hari ini • 09:45',
                  amount: '-Rp 55.000',
                  isIncome: false,
                ),
                Divider(color: Color(0xFFE5E7EB), height: 1),
                ReportTransactionItem(
                  icon: Icons.qr_code_2,
                  iconBgColor: Color(0xFFD1FAE5),
                  iconColor: Color(0xFF059669),
                  title: 'QRIS dari Pelanggan',
                  subtitle: 'Kemarin • 16:20',
                  amount: '+Rp 65.000',
                  isIncome: true,
                ),
                Divider(color: Color(0xFFE5E7EB), height: 1),
                ReportTransactionItem(
                  icon: Icons.account_balance_wallet_outlined,
                  iconBgColor: Color(0xFFD1FAE5),
                  iconColor: Color(0xFF059669),
                  title: 'Top Up AstraPay',
                  subtitle: 'Kemarin • 08:00',
                  amount: '+Rp 2.000.000',
                  isIncome: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Show more button
          Center(
            child: Text(
              'Tampilkan Lebih Banyak',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.astraBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
