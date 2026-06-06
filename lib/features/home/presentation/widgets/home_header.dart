import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../auth/presentation/providers/current_user_provider.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(currentUserProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFFE5E7EB),
            child: Icon(Icons.person, color: Color(0xFF9CA3AF), size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: userAsyncValue.when(
              data: (user) {
                final firstName = user?.fullName.split(' ').first ?? 'User';
                final workshopName = user?.workshopName ?? 'Belum ada Bengkel';
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat pagi, $firstName',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                    Text(
                      workshopName,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF111827),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              },
              loading: () => const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14,
                    width: 100,
                    child: DecoratedBox(decoration: BoxDecoration(color: Color(0xFFE5E7EB))),
                  ),
                  SizedBox(height: 4),
                  SizedBox(
                    height: 18,
                    width: 150,
                    child: DecoratedBox(decoration: BoxDecoration(color: Color(0xFFE5E7EB))),
                  ),
                ],
              ),
              error: (_, __) => const Text('Gagal memuat profil'),
            ),
          ),
          IconButton(
            onPressed: () => context.pushNamed(AppRoutes.notificationName),
            icon: const Icon(Icons.notifications_none, color: AppColors.astraBlue),
          ),
        ],
      ),
    );
  }
}
