import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        'Keranjang',
        style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF111827),
        ),
      ),
      actions: [
        Center(
          child: Text(
            '3 Item',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF6B7280),
            ),
          ),
        ),
        const SizedBox(width: 16),
        const Icon(Icons.chat_bubble_outline, color: Color(0xFF374151), size: 22),
        const SizedBox(width: 12),
        const Icon(Icons.more_vert, color: Color(0xFF374151), size: 24),
        const SizedBox(width: 16),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: const Color(0xFFE5E7EB), height: 1),
      ),
    );
  }
}
