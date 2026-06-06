import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeActionMenu extends StatelessWidget {
  const HomeActionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionItem(
            imagePath: 'assets/images/tarik-saldo-assets.png',
            label: 'Tarik Saldo',
            onTap: () {},
          ),
          _buildActionItem(
            imagePath: 'assets/images/topup-assets.png',
            label: 'Top Up',
            onTap: () {},
          ),
          _buildActionItem(
            imagePath: 'assets/images/bayar-tagihan-assets.png',
            label: 'Bayar Tagihan',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildActionItem({
    required String imagePath,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF4B5563),
            ),
          ),
        ],
      ),
    );
  }
}
