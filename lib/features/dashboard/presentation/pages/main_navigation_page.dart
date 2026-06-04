import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import 'cashier_page.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.astraBlue,
        unselectedItemColor: const Color(0xFF9CA3AF),
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.point_of_sale_outlined),
            activeIcon: Icon(Icons.point_of_sale),
            label: 'Kasir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.store),
            label: 'Belanja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined),
            activeIcon: Icon(Icons.insert_chart),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
