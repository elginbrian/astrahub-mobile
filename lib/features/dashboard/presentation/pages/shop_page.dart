import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/product_card.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _selectedFilterIndex = 0;
  final List<String> _filters = ['Semua', 'Oli', 'Kampas', 'Filter'];

  Widget _buildAppBarBadge(String assetPath, String count) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          assetPath,
          width: 24,
          height: 24,
          color: AppColors.astraBlue,
        ),
        Positioned(
          right: -4,
          top: -4,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: AppColors.astraBlue,
              shape: BoxShape.circle,
            ),
            child: Text(
              count,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 24,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pesan Suku Cadang',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.astraBlue,
              ),
            ),
            Text(
              'Harga grosir resmi Astra',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF6B7280),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                _buildAppBarBadge('assets/images/shop-header-1-icon.png', '2'),
                const SizedBox(width: 16),
                _buildAppBarBadge('assets/images/shop-header-2-icon.png', '2'),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: const Color(0xFFF3F4F6), height: 1),
        ),
      ),
      body: Stack(
        children: [
          // ── Scrollable content ────────────────────────────────────────
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(top: 20, bottom: 120),
              children: [
                // ── Search Bar ──────────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFE5E7EB)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.search,
                            color: Color(0xFF9CA3AF), size: 20),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              color: const Color(0xFF111827),
                            ),
                            decoration: InputDecoration(
                              filled: false,
                              hintText: 'Cari suku cadang Astra...',
                              hintStyle: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF9CA3AF),
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              isDense: true,                    // ← removes extra vertical space
                              contentPadding: EdgeInsets.zero,  // ← removes internal padding
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // ── Filter Chips ────────────────────────────────────────
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: List.generate(_filters.length, (index) {
                      final isSelected = _selectedFilterIndex == index;
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: GestureDetector(
                          onTap: () =>
                              setState(() => _selectedFilterIndex = index),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.astraBlue
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.astraBlue
                                    : const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: Text(
                              _filters[index],
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                                color: isSelected
                                    ? Colors.white
                                    : const Color(0xFF6B7280),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 24),

                // ── Recommendation Banner (Promo) ───────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF0F41BE), // darker AstraBlue
                            Color(0xFF2E6FF2), // lighter AstraBlue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Decoration: Bottom Right Graphic
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/shop-ai-decoration.png',
                              width: 140,
                              fit: BoxFit.contain,
                            ),
                          ),
                          // Decoration: Top Right Sparkle
                          const Positioned(
                            top: 16,
                            right: 16,
                            child: Icon(
                              Icons.auto_awesome,
                              color: Color(0xFFFFE066),
                              size: 24,
                            ),
                          ),
                          // Content
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Promo Guncang 6.6',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                SizedBox(
                                  width: 220,
                                  child: Text(
                                    'Diskon hingga 50% untuk\npelumas & ban resmi.',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.9),
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: AppColors.astraBlue,
                                    elevation: 0,
                                    minimumSize: Size.zero,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: Text(
                                    'Lihat Koleksi',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // ── Catalog Title ───────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Katalog Produk',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF111827),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // ── Product Grid (manual rows) ──────────────────────────
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      _buildProductRow(
                        const ProductCard(
                          title: 'Oli Astra SPX 0.8L 5 W 30 4 Liter',
                          rating: 4.9,
                          soldCount: '100+',
                          price: 'Rp 32.500',
                          discountBadge: '12% OFF',
                        ),
                        const ProductCard(
                          title: 'Kampas Rem Honda Beat',
                          rating: 4.9,
                          soldCount: '100+',
                          price: 'Rp 18.000',
                          isFlashSale: true,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildProductRow(
                        const ProductCard(
                          title: 'Oli Astra SPX 0.8L 5 W 30 4 Liter',
                          rating: 4.9,
                          soldCount: '100+',
                          price: 'Rp 32.500',
                        ),
                        const ProductCard(
                          title: 'Kampas Rem Honda Beat',
                          rating: 4.9,
                          soldCount: '100+',
                          price: 'Rp 18.000',
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildProductRow(
                        const ProductCard(
                          title: 'Oli Mesin MPX 2 0.8L',
                          rating: 4.8,
                          soldCount: '250+',
                          price: 'Rp 45.000',
                          discountBadge: '5% OFF',
                        ),
                        const ProductCard(
                          title: 'Busi NGK CPR9EA-9',
                          rating: 5.0,
                          soldCount: '500+',
                          price: 'Rp 15.000',
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildProductRow(
                        const ProductCard(
                          title: 'V-Belt Honda Beat FI',
                          rating: 4.9,
                          soldCount: '50+',
                          price: 'Rp 120.000',
                        ),
                        const ProductCard(
                          title: 'Filter Udara Vario 125',
                          rating: 4.7,
                          soldCount: '20+',
                          price: 'Rp 25.000',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ── Floating Bottom Cart Summary ────────────────────────────────
          Positioned(
            left: 24,
            right: 24,
            bottom: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: const Offset(0, 8),
                        blurRadius: 30,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEEF2FF),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.shopping_bag_rounded,
                          color: AppColors.astraBlue,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2 Produk Dipilih',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF6B7280),
                              ),
                            ),
                            Text(
                              'Rp 50.500',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.astraBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.astraBlue,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          minimumSize: Size.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                        child: Text(
                          'Lihat Keranjang',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductRow(Widget left, Widget right) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: left),
        const SizedBox(width: 16),
        Expanded(child: right),
      ],
    );
  }
}