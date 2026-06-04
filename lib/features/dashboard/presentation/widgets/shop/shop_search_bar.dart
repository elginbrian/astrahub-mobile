import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            const Icon(Icons.search, color: Color(0xFF9CA3AF), size: 20),
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
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
