import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

class ShopAppBarBadge extends StatelessWidget {
  final String assetPath;
  final String count;

  const ShopAppBarBadge({
    super.key,
    required this.assetPath,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          assetPath,
          width: 24,
          height: 24,
          color: AppColors.astraBlue,
        ),
        Positioned(
          right: -4,
          top: -4,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: AppColors.astraBlue,
              shape: BoxShape.circle,
            ),
            child: Text(
              count,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
