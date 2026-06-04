import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../dashboard/presentation/widgets/product_card.dart';

/// "Rekomendasi untukmu" section with 2-column product grid.
class PurchaseRecommendations extends StatelessWidget {
  const PurchaseRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rekomendasi untukmu',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Lihat Semua',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF104BDD),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),

        // Horizontal scrollable product cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'Astra Otoparts Chain Lube 200ml',
                    rating: 5.0,
                    soldCount: '100rb+',
                    price: 'Rp 25.000',
                    discountBadge: '>40%',
                  ),
                ),
                const SizedBox(width: 12),
                const SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'Kampas Rem Depan Honda Vario (OEM)',
                    rating: 4.9,
                    soldCount: '90+',
                    price: 'Rp 18.000',
                    discountBadge: '>5%',
                  ),
                ),
                const SizedBox(width: 12),
                const SizedBox(
                  width: 160,
                  child: ProductCard(
                    title: 'Filter Oli Honda PCX 150 Original',
                    rating: 4.8,
                    soldCount: '200+',
                    price: 'Rp 12.500',
                    discountBadge: '>10%',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}
