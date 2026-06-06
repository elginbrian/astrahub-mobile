import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class WorkshopUploadButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const WorkshopUploadButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: const RoundedRectDottedBorderOptions(
        color: Color(0xFFD1D5DB),
        strokeWidth: 1.5,
        dashPattern: [6, 4],
        radius: Radius.circular(8),
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 8),
            Text(
              label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF111827),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
