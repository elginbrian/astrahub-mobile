import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceJobItem extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  final String name;
  final String category;
  final String price;
  final VoidCallback? onDelete;

  const ServiceJobItem({
    super.key,
    required this.icon,
    required this.iconBgColor,
    required this.iconColor,
    required this.name,
    required this.category,
    required this.price,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 18),
          ),
          const SizedBox(width: 12),
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
                Text(
                  category,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 11,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onDelete,
            child: const Icon(Icons.delete_outline, color: Color(0xFFEF4444), size: 20),
          ),
        ],
      ),
    );
  }
}
