import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

import '../../../home/presentation/widgets/home_header.dart';
import '../../../home/presentation/widgets/home_low_stock_list.dart';
import '../../../home/presentation/widgets/home_promo_banner.dart';
import '../../../home/presentation/widgets/home_carousel_banner.dart';
import '../../../home/presentation/widgets/home_summary_cards.dart';
import '../../../home/presentation/widgets/home_recent_activities.dart';
import '../../../home/presentation/widgets/home_action_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Gradient
            Container(
              height: 350,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.astraBlue, Colors.white],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            const SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  HomeHeader(),
                  SizedBox(height: 24),
                  HomeSummaryCards(),
                  SizedBox(height: 24),
                  HomeActionMenu(),
                  SizedBox(height: 24),
                  HomeCarouselBanner(),
                  SizedBox(height: 24),
                  HomeLowStockList(),
                  SizedBox(height: 24),
                  HomeRecentActivities(),
                  SizedBox(height: 24),
                  HomePromoBanner(),
                  SizedBox(height: 120), // Padding for navbar
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
