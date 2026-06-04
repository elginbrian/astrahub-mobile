import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductHeaderBar extends StatelessWidget {
  const ProductHeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildHeaderButton(Icons.arrow_back, () => context.pop()),
            Row(
              children: [
                _buildHeaderButton(Icons.search, () {}),
                const SizedBox(width: 8),
                _buildHeaderButton(Icons.share_outlined, () {}),
                const SizedBox(width: 8),
                _buildHeaderButton(Icons.shopping_cart_outlined, () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.black87, size: 24),
      ),
    );
  }
}
