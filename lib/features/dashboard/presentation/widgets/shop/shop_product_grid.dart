import 'package:flutter/material.dart';
import '../product_card.dart';

class ShopProductGrid extends StatelessWidget {
  const ShopProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          _buildProductRow(
            const ProductCard(
              title: 'Oli Astra SPX 0.8L 5 W 30 4 Liter',
              rating: 4.9,
              soldCount: '100+',
              price: 'Rp 32.500',
              discountBadge: '12% OFF',
            ),
            const ProductCard(
              title: 'Kampas Rem Honda Beat',
              rating: 4.9,
              soldCount: '100+',
              price: 'Rp 18.000',
              isFlashSale: true,
            ),
          ),
          const SizedBox(height: 16),
          _buildProductRow(
            const ProductCard(
              title: 'Oli Astra SPX 0.8L 5 W 30 4 Liter',
              rating: 4.9,
              soldCount: '100+',
              price: 'Rp 32.500',
            ),
            const ProductCard(
              title: 'Kampas Rem Honda Beat',
              rating: 4.9,
              soldCount: '100+',
              price: 'Rp 18.000',
            ),
          ),
          const SizedBox(height: 16),
          _buildProductRow(
            const ProductCard(
              title: 'Oli Mesin MPX 2 0.8L',
              rating: 4.8,
              soldCount: '250+',
              price: 'Rp 45.000',
              discountBadge: '5% OFF',
            ),
            const ProductCard(
              title: 'Busi NGK CPR9EA-9',
              rating: 5.0,
              soldCount: '500+',
              price: 'Rp 15.000',
            ),
          ),
          const SizedBox(height: 16),
          _buildProductRow(
            const ProductCard(
              title: 'V-Belt Honda Beat FI',
              rating: 4.9,
              soldCount: '50+',
              price: 'Rp 120.000',
            ),
            const ProductCard(
              title: 'Filter Udara Vario 125',
              rating: 4.7,
              soldCount: '20+',
              price: 'Rp 25.000',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductRow(Widget left, Widget right) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: left),
        const SizedBox(width: 16),
        Expanded(child: right),
      ],
    );
  }
}
