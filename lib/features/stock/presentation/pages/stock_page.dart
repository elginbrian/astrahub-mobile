import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../viewmodels/stock_viewmodel.dart';
import '../../domain/entities/stock_entity.dart';
import '../viewmodels/stock_state.dart';
import '../widgets/stock_form_sheet.dart';
import '../widgets/stock_search_bar.dart';
import '../widgets/stock_product_card.dart';

class StockPage extends ConsumerWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stockViewModelProvider);
    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    final displayStocks = state.filteredAndSortedStocks;

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
                  PopupMenuButton<StockSortType>(
                    icon: const Icon(Icons.filter_list, color: Color(0xFF4B5563), size: 24),
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    initialValue: state.sortType,
                    onSelected: (value) {
                      ref.read(stockViewModelProvider.notifier).setSortType(value);
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: StockSortType.nameAsc,
                        child: Text('Nama (A-Z)', style: GoogleFonts.plusJakartaSans()),
                      ),
                      PopupMenuItem(
                        value: StockSortType.nameDesc,
                        child: Text('Nama (Z-A)', style: GoogleFonts.plusJakartaSans()),
                      ),
                      PopupMenuItem(
                        value: StockSortType.stockAsc,
                        child: Text('Stok (Paling Sedikit)', style: GoogleFonts.plusJakartaSans()),
                      ),
                      PopupMenuItem(
                        value: StockSortType.stockDesc,
                        child: Text('Stok (Paling Banyak)', style: GoogleFonts.plusJakartaSans()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => ref.read(stockViewModelProvider.notifier).loadStocks(),
                color: AppColors.astraBlue,
                child: state.isLoading 
                  ? const Center(child: CircularProgressIndicator()) 
                  : displayStocks.isEmpty 
                    ? ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.inventory_2_outlined, size: 48, color: Colors.grey.shade400),
                                const SizedBox(height: 16),
                                Text(
                                  'Belum ada data stok',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Tambahkan produk agar dapat digunakan di Kasir',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : ListView.separated(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        itemCount: displayStocks.length + 1,
                        separatorBuilder: (context, index) => const SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          if (index == displayStocks.length) {
                            return const SizedBox(height: 24);
                          }
                          final stock = displayStocks[index];
                          return StockProductCard(
                            imageUrl: 'assets/images/mock-product-image.jpeg',
                            title: stock.name,
                            brand: 'Otomotif',
                            price: currencyFormatter.format(stock.price),
                            stock: stock.quantity,
                            onEdit: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (context) => StockFormSheet(initialStock: stock),
                              );
                            },
                            onDelete: () {
                              _showDeleteConfirmation(context, ref, stock);
                            },
                          );
                        },
                      ),
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
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const StockFormSheet(),
                );
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

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref, StockEntity stock) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.error.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.delete_outline,
                  color: AppColors.error,
                  size: 32,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Hapus Barang?',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: const Color(0xFF111827),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Apakah Anda yakin ingin menghapus "${stock.name}"? Data yang dihapus tidak dapat dikembalikan.',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF6B7280),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => context.pop(),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(color: Color(0xFFD1D5DB)), // Colors.grey.shade300
                        foregroundColor: const Color(0xFF374151),
                      ),
                      child: Text(
                        'Batal',
                        style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.error,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () async {
                        context.pop(); // Tutup dialog konfirmasi
                        final success = await ref.read(stockViewModelProvider.notifier).deleteStock(stock.id);
                        if (success && context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Stok "${stock.name}" berhasil dihapus',
                              ),
                            ),
                          );
                        }
                      },
                      child: Text('Hapus', style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
