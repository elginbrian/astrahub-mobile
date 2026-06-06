import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../viewmodels/cashier_viewmodel.dart';

class CashierSummaryCards extends ConsumerWidget {
  const CashierSummaryCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cashierViewModelProvider);
    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    int totalRevenue = 0;
    int completedCount = 0;
    for (var service in state.todayServices) {
      if (service.paymentStatus == 'paid' || service.status == 'selesai') {
        totalRevenue += service.total;
        completedCount++;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: _buildCard(
              icon: Icons.trending_up,
              title: 'Pendapatan Hari Ini',
              value: currencyFormatter.format(totalRevenue),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildCard(
              icon: Icons.build_outlined,
              title: 'Servis Selesai',
              value: completedCount.toString(),
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
