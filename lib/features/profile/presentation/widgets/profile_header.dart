import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../auth/presentation/providers/auth_state_provider.dart';
import '../viewmodels/profile_viewmodel.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider).user;
    final state = ref.watch(profileViewModelProvider);
    final businessData = state.businessData;

    final hasWorkshop = user?.workshopName != null && user!.workshopName!.isNotEmpty;
    final topText = hasWorkshop ? user!.workshopName! : (user?.fullName ?? 'Nama Pengguna');
    final bottomText = hasWorkshop ? (user?.fullName ?? 'Nama Pemilik') : 'Belum ada bengkel';
    
    String locationText = 'Belum ada lokasi';
    if (hasWorkshop && businessData != null && businessData.city != null && businessData.province != null) {
      locationText = '${businessData.city}, ${businessData.province}';
    }

    final badgeText = hasWorkshop ? 'Mitra Astra Terverifikasi' : 'Belum terverifikasi';
    final badgeColor = hasWorkshop ? AppColors.astraBlue : const Color(0xFF9CA3AF);
    final avatarBorderColor = AppColors.astraBlue;
    return Column(
      children: [
        // Avatar with border and badge
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: avatarBorderColor, width: 2),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFFE5E7EB),
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
            ),
            if (hasWorkshop)
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.verified,
                  color: badgeColor,
                  size: 24,
                ),
              ),
          ],
        ),
        const SizedBox(height: 16),
        // Name and Title
        Text(
          topText,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          bottomText,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            color: const Color(0xFF6B7280),
          ),
        ),
        const SizedBox(height: 8),
        // Location
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on_outlined, color: Color(0xFF6B7280), size: 16),
            const SizedBox(width: 4),
            Text(
              locationText,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: const Color(0xFF6B7280),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Verified Badge Pill
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: badgeColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.stars, color: Colors.white, size: 16),
              const SizedBox(width: 6),
              Text(
                badgeText,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
