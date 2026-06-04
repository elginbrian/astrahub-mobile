import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// "Rincian Pembelian" — itemised list of purchased products.
class PaymentSuccessItemsCard extends StatelessWidget {
  const PaymentSuccessItemsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Rincian Pembelian',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF111827),
            ),
          ),
        ),
        const SizedBox(height: 10),

        // Items card
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: Column(
            children: [
              _OrderItem(
                imagePath: 'assets/images/mock-product-image.jpeg',
                name: 'Oli Astra SPX 2 0.8L',
                qtyLabel: '2 x Rp 62.500',
                totalPrice: 'Rp 125.000',
              ),
              const Divider(height: 1, color: Color(0xFFF3F4F6), indent: 16, endIndent: 16),
              _OrderItem(
                imagePath: 'assets/images/mock-product-image.jpeg',
                name: 'Kampas Rem Depan',
                qtyLabel: '1 x Rp 250.000',
                totalPrice: 'Rp250.000',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _OrderItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String qtyLabel;
  final String totalPrice;

  const _OrderItem({
    required this.imagePath,
    required this.name,
    required this.qtyLabel,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          // Product image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 52,
              height: 52,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: const Color(0xFF1E2D4E),
                  child: const Icon(Icons.image_outlined, color: Colors.white54, size: 24),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),

          // Name + qty
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  qtyLabel,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),

          // Total price
          Text(
            totalPrice,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }
}
