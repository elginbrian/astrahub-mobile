import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../dashboard/presentation/widgets/product_card.dart';

class CartRecommendations extends StatelessWidget {
  const CartRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Kamu sempat lihat-lihat ini',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'Kampas Rem Honda Beat',
                    rating: 4.9,
                    soldCount: '100+',
                    price: 'Rp 18.000',
                    isFlashSale: false,
                  ),
                ),
                SizedBox(width: 12),
                SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'Oli Astra SPX 0.8L 5 W 30 4 Liter',
                    rating: 4.9,
                    soldCount: '100+',
                    price: 'Rp 32.500',
                  ),
                ),
                SizedBox(width: 12),
                SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'V-Belt Khusus Honda Beat FI',
                    rating: 4.9,
                    soldCount: '50+',
                    price: 'Rp 120.000',
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
