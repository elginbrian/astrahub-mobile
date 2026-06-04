import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

/// Animated success checkmark, amount, title, and timestamp.
class PaymentSuccessHeader extends StatefulWidget {
  const PaymentSuccessHeader({super.key});

  @override
  State<PaymentSuccessHeader> createState() => _PaymentSuccessHeaderState();
}

class _PaymentSuccessHeaderState extends State<PaymentSuccessHeader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();

    _scale = CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut);
    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fade,
      child: Column(
        children: [
          const SizedBox(height: 40),

          // ── Checkmark circle ────────────────────────────────────────
          ScaleTransition(
            scale: _scale,
            child: Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: AppColors.astraBlue.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: const BoxDecoration(
                    color: AppColors.astraBlue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // ── Amount ──────────────────────────────────────────────────
          Text(
            'Rp 180.000',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: AppColors.astraBlue,
            ),
          ),
          const SizedBox(height: 4),

          // ── Title ───────────────────────────────────────────────────
          Text(
            'Pembayaran Berhasil',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 4),

          // ── Timestamp ────────────────────────────────────────────────
          Text(
            '10 November 2023, 10:45 WIB',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF9CA3AF),
            ),
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}
