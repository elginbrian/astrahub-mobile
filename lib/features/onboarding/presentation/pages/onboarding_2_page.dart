import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/app_routes.dart';
import '../widgets/onboarding_layout.dart';

/// Onboarding screen 2 of 4.
/// Design: "Catat Servis dalam Hitungan Detik" — mechanic with motorcycle & service chips.
/// Next → Onboarding 3
class Onboarding2Page extends ConsumerWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OnboardingLayout(
      assetPath: 'assets/images/onboarding-2-assets.png',
      title: 'Catat Servis dalam\nHitungan Detik',
      subtitle:
          'Input servis, suku cadang, dan data pelanggan dengan lebih cepat tanpa pencatatan manual.',
      currentPage: 2,
      totalPages: 4,
      buttonLabel: 'Selanjutnya',
      textAlign: TextAlign.center,
      onNext: () => context.goNamed(AppRoutes.onboarding3Name),
      onSkip: () => context.goNamed(AppRoutes.loginName),
    );
  }
}
