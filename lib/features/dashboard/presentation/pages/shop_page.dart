import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/shop/shop_app_bar.dart';
import '../widgets/shop/shop_search_bar.dart';
import '../widgets/shop/shop_filter_chips.dart';
import '../widgets/shop/shop_promo_banner.dart';
import '../widgets/shop/shop_product_grid.dart';
import '../widgets/shop/shop_floating_cart.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ShopAppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.only(top: 20, bottom: 220),
              children: [
                const ShopSearchBar(),
                const SizedBox(height: 16),
                const ShopFilterChips(),
                const SizedBox(height: 24),
                const ShopPromoBanner(),
                const SizedBox(height: 24),
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
                const ShopProductGrid(),
              ],
            ),
          ),
          const Positioned(
            left: 24,
            right: 24,
            bottom: 18, // Moved up to account for navbar (60 + padding)
            child: ShopFloatingCart(),
          ),
        ],
      ),
    );
  }
}