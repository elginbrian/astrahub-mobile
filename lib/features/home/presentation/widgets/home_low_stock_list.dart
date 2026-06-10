import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../stock/presentation/viewmodels/stock_viewmodel.dart';

class HomeLowStockList extends ConsumerWidget {
  const HomeLowStockList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockState = ref.watch(stockViewModelProvider);
    
    // Ambil maksimal 3 stok yang jumlahnya <= 10, urutkan dari yang paling sedikit
    final lowStocks = stockState.stocks.where((s) => s.quantity <= 10).toList();
    lowStocks.sort((a, b) => a.quantity.compareTo(b.quantity));
    final displayStocks = lowStocks.take(3).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Stok Menipis',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push(AppRoutes.stock);
                },
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
          if (stockState.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (displayStocks.isEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFFE5E7EB)),
              ),
              child: Text(
                'Semua stok barang aman',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  color: const Color(0xFF6B7280),
                ),
              ),
            )
          else
            ...displayStocks.map((stock) {
              Color badgeBg;
              Color badgeText;
              Color? dotColor;

              if (stock.quantity <= 3) {
                badgeBg = const Color(0xFFFEE2E2);
                badgeText = const Color(0xFFEF4444);
              } else {
                badgeBg = AppColors.astraYellow200;
                badgeText = AppColors.astraYellow800;
                dotColor = AppColors.astraYellow600;
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: _buildItem(
                  stock.name,
                  '${stock.quantity} Pcs',
                  badgeBg,
                  badgeText,
                  dotColor: dotColor,
                ),
              );
            }),
        ],
      ),
    );
  }

  Widget _buildItem(String name, String stock, Color badgeBg, Color badgeText, {Color? dotColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: dotColor ?? badgeText,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF374151),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: badgeBg,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              stock,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: badgeText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
