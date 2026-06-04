import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/router/app_routes.dart';
import '../../../../../core/theme/app_colors.dart';

/// App bar with search field, cart badge, and hamburger menu.
class PurchaseStatusAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PurchaseStatusAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(72);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
      toolbarHeight: 72,
      leading: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827), size: 22),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.goNamed(AppRoutes.shopName);
            }
          },
        ),
      ),
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 8, right: 4),
        child: Container(
          height: 40,
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFE5E7EB)),
          ),
          child: TextField(
            readOnly: true,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFF111827),
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF9CA3AF), size: 20),
              hintText: 'Cari pesanan suku cadang',
              hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF9CA3AF),
              ),
            ),
          ),
        ),
      ),
      actions: [
        // Cart with badge
        Stack(
          clipBehavior: Clip.none,
          children: [
            IconButton(
              onPressed: () => context.pushNamed(AppRoutes.cartName),
              icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF111827), size: 22),
            ),
            Positioned(
              top: 8,
              right: 6,
              child: Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  color: AppColors.astraBlue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '2',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Color(0xFF111827), size: 22),
        ),
        const SizedBox(width: 4),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: const Color(0xFFF3F4F6)),
      ),
    );
  }
}
