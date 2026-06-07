import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/stock_search_bar.dart';
import '../widgets/stock_product_card.dart';

class StockPage extends StatelessWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Stok Bengkel',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: const Color(0xFFE5E7EB), height: 1),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Expanded(child: StockSearchBar()),
                  const SizedBox(width: 16),
                  const Icon(Icons.filter_list, color: Color(0xFF4B5563), size: 24),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  StockProductCard(
                    imageUrl: 'assets/images/mock-product-image.jpeg',
                    title: 'Oli AHM SPX2 0.8L',
                    brand: 'Astra Otoparts',
                    price: 'Rp 65.000',
                    stock: 2,
                  ),
                  SizedBox(height: 16),
                  StockProductCard(
                    imageUrl: 'assets/images/mock-product-image.jpeg',
                    title: 'Ban Luar Federal 80/90-14',
                    brand: 'Federal Tire',
                    price: 'Rp 210.000',
                    stock: 12,
                  ),
                  SizedBox(height: 16),
                  StockProductCard(
                    imageUrl: 'assets/images/mock-product-image.jpeg',
                    title: 'Shell Advance AX7 10W-40',
                    brand: 'Shell Indonesia',
                    price: 'Rp 58.000',
                    stock: 5,
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: FloatingActionButton(
          onPressed: () => _showAddStockBottomSheet(context),
          backgroundColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          focusElevation: 0,
          hoverElevation: 0,
          shape: const CircleBorder(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.astraBlue800,
                  AppColors.astraBlue950,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.astraBlue800.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Center(
              child: Icon(Icons.add, color: Colors.white, size: 32),
            ),
          ),
        ),
      ),
    );
  }

  void _showAddStockBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFF9CA3AF),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 24),
            _buildBottomSheetButton(
              icon: Icons.add_circle_outline,
              label: 'Tambah manual',
              onTap: () {
                context.pop();
              },
            ),
            const SizedBox(height: 12),
            _buildBottomSheetButton(
              icon: Icons.create_new_folder_outlined,
              label: 'Tambah dari Pesanan',
              onTap: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheetButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.astraBlue50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.astraBlue, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.astraBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
