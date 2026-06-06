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
          'Detail Servis',
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
              child: Column(
                children: [
                  const StockSearchBar(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daftar Produk',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF111827),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.filter_list, color: const Color(0xFF4B5563), size: 24),
                          const SizedBox(width: 12),
                          Icon(Icons.sort, color: const Color(0xFF4B5563), size: 24),
                        ],
                      ),
                    ],
                  ),
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
    );
  }
}
