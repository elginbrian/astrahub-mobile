import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/router/app_routes.dart';

class CheckoutAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CheckoutAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color(0xFF111827), size: 22),
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.goNamed(AppRoutes.cartName);
          }
        },
      ),
      title: Text(
        'Checkout',
        style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF111827),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: const Color(0xFFF3F4F6)),
      ),
    );
  }
}
