import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../home/presentation/widgets/home_alert_banner.dart';
import '../../../home/presentation/widgets/home_header.dart';
import '../../../home/presentation/widgets/home_low_stock_list.dart';
import '../../../home/presentation/widgets/home_promo_banner.dart';
import '../../../home/presentation/widgets/home_quick_stats.dart';
import '../../../home/presentation/widgets/home_recent_activities.dart';
import '../../../home/presentation/widgets/home_action_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              HomeHeader(),
              SizedBox(height: 20),
              HomeAlertBanner(),
              SizedBox(height: 20),
              HomeQuickStats(),
              SizedBox(height: 24),
              HomeActionMenu(),
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
      ),
    );
  }
}
