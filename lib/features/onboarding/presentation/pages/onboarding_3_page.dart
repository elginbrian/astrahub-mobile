import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/app_routes.dart';
import '../widgets/onboarding_layout.dart';

/// Onboarding screen 3 of 4.
/// Design: "Pantau Keuangan Bengkel dengan Mudah" — man with tablet, bar chart & payment chips.
/// Next → Onboarding 4
class Onboarding3Page extends ConsumerWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OnboardingLayout(
      assetPath: 'assets/images/onboarding-3-assets.png',
      title: 'Pantau Keuangan Bengkel\ndengan Mudah',
      subtitle:
          'Terima pembayaran QRIS, gunakan AstraPay, dan akses PayLater untuk menjaga operasional bengkel tetap lancar.',
      currentPage: 3,
      totalPages: 4,
      buttonLabel: 'Selanjutnya',
      textAlign: TextAlign.center,
      onNext: () => context.goNamed(AppRoutes.onboarding4Name),
      onSkip: () => context.goNamed(AppRoutes.loginName),
    );
  }
}
