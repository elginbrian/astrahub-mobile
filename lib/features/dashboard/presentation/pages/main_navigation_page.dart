import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../cashier/presentation/pages/cashier_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'report_page.dart';
import 'shop_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // 1. Home
    const HomePage(),
    // 2. Cashier
    const CashierPage(),
    // 3. Shop
    const ShopPage(),
    // 4. Report
    const ReportPage(),
    // 5. Profile
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              blurRadius: 16,
              spreadRadius: 0,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: AppColors.astraBlue,
          unselectedItemColor: const Color(0xFF9CA3AF),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 24),
              activeIcon: Icon(Icons.home, size: 24),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.point_of_sale_outlined, size: 24),
              activeIcon: Icon(Icons.point_of_sale, size: 24),
              label: 'Kasir',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, size: 24),
              activeIcon: Icon(Icons.shopping_cart, size: 24),
              label: 'Pesan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined, size: 24),
              activeIcon: Icon(Icons.insert_chart, size: 24),
              label: 'Lapran',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 24),
              activeIcon: Icon(Icons.person, size: 24),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
