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
    // 0. Home
    const HomePage(),
    // 1. Shop (Belanja)
    const ShopPage(),
    // 2. Cashier (Center FAB)
    const CashierPage(),
    // 3. Report (Laporan)
    const ReportPage(),
    // 4. Profile (Profil)
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _currentIndex = 2; // Cashier / Add
            });
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          highlightElevation: 0,
          focusElevation: 0,
          hoverElevation: 0,
          shape: const CircleBorder(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF003399),
                  Color(0xFF001A4D),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF003399).withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Center(
              child: Icon(Icons.add, color: Colors.white, size: 32),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNavItem(0, 'Home', 'home-inactive-assets.png', 'home-active-assets.png'),
              _buildNavItem(1, 'Belanja', 'shop-inactive-assets.png', 'shop-active-assets.png'),
              const SizedBox(width: 48), // Space for FAB
              _buildNavItem(3, 'Laporan', 'laporan-inactive-assets.png', 'laporan-active-assets.png'),
              _buildNavItem(4, 'Profil', 'profile-inactive-assets.png', 'profile-active-assets.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String label, String inactiveIcon, String activeIcon) {
    final isSelected = _currentIndex == index;
    final color = isSelected ? const Color(0xFF0044CC) : const Color(0xFF6B7280);
    
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${isSelected ? activeIcon : inactiveIcon}',
              width: 24,
              height: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
