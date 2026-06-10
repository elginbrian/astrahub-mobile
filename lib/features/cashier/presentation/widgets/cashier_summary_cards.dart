import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/router/app_routes.dart';
import '../viewmodels/cashier_viewmodel.dart';
import '../../../stock/presentation/viewmodels/stock_viewmodel.dart';

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

    int totalRevenue = state.revenue;
    int completedCount = state.completedServices;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
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
          const SizedBox(height: 16),
          _buildStockCard(context, ref),
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
        border: Border.all(color: AppColors.astraBlue),
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

  Widget _buildStockCard(BuildContext context, WidgetRef ref) {
    final stockState = ref.watch(stockViewModelProvider);
    
    int total = stockState.stocks.length;
    int aman = 0;
    int hampirHabis = 0;
    int tidakAman = 0;

    for (final s in stockState.stocks) {
      if (s.quantity <= 3) {
        tidakAman++;
      } else if (s.quantity <= 10) {
        hampirHabis++;
      } else {
        aman++;
      }
    }

    // Hitung persentase kesehatan stok secara berbobot agar bar tidak kosong
    // Aman = 100% (1.0), Hampir Habis = 50% (0.5), Kritis = 10% (0.1)
    double healthPercentage = total > 0 
      ? ((aman * 1.0) + (hampirHabis * 0.5) + (tidakAman * 0.1)) / total 
      : 0;
    
    // Determine color based on health
    Color healthColor = AppColors.success; 
    Color healthBg = AppColors.success.withOpacity(0.15);
    String healthText = 'Aman';
    
    if (total == 0) {
      healthColor = const Color(0xFF9CA3AF); // Gray
      healthBg = const Color(0xFFF3F4F6);
      healthText = 'Kosong';
    } else if (tidakAman > 0) {
      healthColor = AppColors.errorDark; // Bright red
      healthBg = AppColors.errorDark.withOpacity(0.15);
      healthText = 'Kritis';
    } else if (hampirHabis > 0) {
      healthColor = AppColors.warning; 
      healthBg = AppColors.warning.withOpacity(0.15);
      healthText = 'Hampir Habis';
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.astraBlue),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/images/stock-assets.png',
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stok Bengkel',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF111827),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: healthBg,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              healthText,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: healthColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context.push(AppRoutes.stock),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.astraBlue,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        minimumSize: Size.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Lihat Stok',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: healthPercentage,
                    backgroundColor: const Color(0xFFE5E7EB),
                    color: healthColor,
                    minHeight: 6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
