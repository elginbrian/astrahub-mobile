import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

class StockProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String brand;
  final String price;
  final int stock;

  const StockProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.brand,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    Color stockColor;
    if (stock <= 3) {
      stockColor = const Color(0xFFEF4444); // Red
    } else if (stock <= 10) {
      stockColor = AppColors.warning; // Orange/Yellow
    } else {
      stockColor = const Color(0xFF10B981); // Green
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 90,
              height: 65,
              color: const Color(0xFFF3F4F6),
              child: Image.asset(
                imageUrl,
                width: 90,
                height: 65,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.image_outlined,
                  color: Color(0xFF9CA3AF),
                  size: 32,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF111827),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.more_vert,
                      color: Color(0xFF9CA3AF),
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  price,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.astraBlue,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: stockColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Stok: $stock',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        color: stockColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
