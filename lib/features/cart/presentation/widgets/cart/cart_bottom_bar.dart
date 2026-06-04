import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFE5E7EB)),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            SizedBox(
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
            const SizedBox(width: 8),
            Text(
              'Semua',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF111827),
              ),
            ),
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'Rp375.000',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF111827),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.local_offer, color: Color(0xFFDC2626), size: 14),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total Diskon\nRp98.500',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFB91C1C),
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down, color: Color(0xFF6B7280), size: 14),
                  ],
                )
              ],
            ),
            const SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.astraBlue,
                foregroundColor: Colors.white,
                elevation: 0,
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Beli (2)',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
