import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/app_routes.dart';
import '../widgets/onboarding_layout.dart';
class Onboarding1Page extends ConsumerWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OnboardingLayout(
      assetPath: 'assets/images/onboarding-1-assets.png',
      title: 'Pesan Suku Cadang Resmi Astra',
      subtitle:
          'Cari stok, pesan produk, dan pantau pengiriman langsung dari aplikasi.',
      currentPage: 1,
      totalPages: 4,
      buttonLabel: 'Selanjutnya',
      onNext: () => context.goNamed(AppRoutes.onboarding2Name),
      onSkip: () => context.goNamed(AppRoutes.loginName),
    );
  }
}
