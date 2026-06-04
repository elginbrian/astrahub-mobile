import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

/// Horizontally-scrollable order status filter tabs.
class PurchaseStatusFilterTabs extends StatefulWidget {
  const PurchaseStatusFilterTabs({super.key});

  @override
  State<PurchaseStatusFilterTabs> createState() => _PurchaseStatusFilterTabsState();
}

class _PurchaseStatusFilterTabsState extends State<PurchaseStatusFilterTabs> {
  int _selected = 0;
  final _tabs = const ['Semua', 'Diproses', 'Dikirim', 'Selesai', 'Dibatalkan'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: List.generate(_tabs.length, (index) {
          final isSelected = _selected == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => setState(() => _selected = index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.astraBlue : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isSelected ? AppColors.astraBlue : const Color(0xFFE5E7EB),
                  ),
                ),
                child: Text(
                  _tabs[index],
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                    color: isSelected ? Colors.white : const Color(0xFF6B7280),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
