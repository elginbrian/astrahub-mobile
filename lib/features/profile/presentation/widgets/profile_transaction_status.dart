import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../viewmodels/profile_viewmodel.dart';

class ProfileTransactionStatus extends ConsumerWidget {
  const ProfileTransactionStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileViewModelProvider);
    final txs = state.transactions;

    final hasDibayar = txs.any((tx) => tx.status.toLowerCase() == 'dibayar' || tx.status.toLowerCase() == 'paid');
    final hasDiproses = txs.any((tx) => tx.status.toLowerCase() == 'diproses' || tx.status.toLowerCase() == 'processing');
    final hasDikirim = txs.any((tx) => tx.status.toLowerCase() == 'dikirim' || tx.status.toLowerCase() == 'shipped');
    final hasSelesai = txs.any((tx) => tx.status.toLowerCase() == 'selesai' || tx.status.toLowerCase() == 'completed');
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaksi',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF374151),
                ),
              ),
              const Icon(Icons.chevron_right, size: 20, color: Color(0xFF9CA3AF)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatusItem(Icons.account_balance_wallet_outlined, 'Dibayar', hasDibayar),
              _buildStatusItem(Icons.assignment_outlined, 'Diproses', hasDiproses),
              _buildStatusItem(Icons.local_shipping_outlined, 'Dikirim', hasDikirim),
              _buildStatusItem(Icons.check_circle_outline, 'Selesai', hasSelesai),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(IconData icon, String label, bool hasBadge) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: AppColors.astraBlue, size: 28),
            if (hasBadge)
              Positioned(
                right: -2,
                bottom: -2,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: AppColors.astraBlue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.access_time, size: 8, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: const Color(0xFF4B5563),
          ),
        ),
      ],
    );
  }
}
