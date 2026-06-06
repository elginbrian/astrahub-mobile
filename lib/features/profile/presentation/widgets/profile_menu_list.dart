import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/router/app_routes.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        children: [
          _buildMenuItem(
            icon: Icons.receipt_long_outlined,
            title: 'Riwayat Transaksi',
            onTap: () {},
          ),
          const Divider(height: 1, color: Color(0xFFE5E7EB)),
          _buildMenuItem(
            icon: Icons.map_outlined,
            title: 'Kelola Alamat',
            onTap: () {},
          ),
          const Divider(height: 1, color: Color(0xFFE5E7EB)),
          _buildMenuItem(
            icon: Icons.business_center_outlined,
            title: 'Data Usaha',
            onTap: () {
              context.push(AppRoutes.workshopActivation);
            },
          ),
          const Divider(height: 1, color: Color(0xFFE5E7EB)),
          _buildMenuItem(
            icon: Icons.help_outline,
            title: 'Bantuan',
            onTap: () {},
          ),
          const Divider(height: 1, color: Color(0xFFE5E7EB)),
          _buildMenuItem(
            icon: Icons.privacy_tip_outlined,
            title: 'Kebijakan Privasi',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF6B7280), size: 24),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: const Color(0xFF374151),
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Color(0xFF9CA3AF), size: 20),
          ],
        ),
      ),
    );
  }
}
