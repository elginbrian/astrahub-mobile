import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class CartItemRow extends StatelessWidget {
  final String title;
  final String badge;
  final String price;
  final String originalPrice;
  final String discountPercent;
  final int qty;
  final String imagePath;

  const CartItemRow({
    super.key,
    required this.title,
    required this.badge,
    required this.price,
    required this.originalPrice,
    required this.discountPercent,
    required this.qty,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: true,
                activeColor: AppColors.astraBlue,
                onChanged: (v) {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(color: Color(0xFFD1D5DB)),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFF3F4F6),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(Icons.image_outlined, color: Color(0xFF9CA3AF), size: 32),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF111827),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if (badge.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE4E6),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      badge,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFE11D48),
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 6),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE4E6),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '%',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFE11D48),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      price,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFB91C1C),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 32,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFD1D5DB)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 32,
                            child: IconButton(
                              icon: Icon(
                                qty > 1 ? Icons.remove : Icons.delete_outline,
                                color: const Color(0xFF6B7280),
                                size: 16,
                              ),
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            width: 1,
                            height: double.infinity,
                            color: const Color(0xFFD1D5DB),
                          ),
                          SizedBox(
                            width: 36,
                            child: Center(
                              child: Text(
                                qty.toString(),
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF111827),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: double.infinity,
                            color: const Color(0xFFD1D5DB),
                          ),
                          SizedBox(
                            width: 32,
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xFF6B7280),
                                size: 16,
                              ),
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (originalPrice.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        originalPrice,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF9CA3AF),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        discountPercent,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFB91C1C),
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
