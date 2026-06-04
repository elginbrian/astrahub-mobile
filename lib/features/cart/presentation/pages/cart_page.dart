import 'package:flutter/material.dart';

import '../widgets/cart/cart_app_bar.dart';
import '../widgets/cart/cart_selection_bar.dart';
import '../widgets/cart/cart_store_section.dart';
import '../widgets/cart/cart_item_row.dart';
import '../widgets/cart/cart_recommendations.dart';
import '../widgets/cart/cart_bottom_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: const CartAppBar(),
      body: ListView(
        children: const [
          CartSelectionBar(),
          CartStoreSection(
            storeName: 'Astra Otoparts Official',
            badgeText: 'Pusat',
            isFreeShipping: true,
            promoBannerText: 'Kamu dapat s.d. Rp50rb Gratis Ongkir!',
            items: [
              CartItemRow(
                title: 'Oli Astra SPX 0.8L - Pelumas Motor Matic Bergaransi',
                badge: '8% lebih murah!',
                price: 'Rp32.500',
                originalPrice: 'Rp42.000',
                discountPercent: '23%',
                qty: 6,
                imagePath: 'assets/images/mock-product-image.jpeg',
              ),
            ],
          ),
          CartStoreSection(
            storeName: 'Astra Official Bandung',
            badgeText: 'Cabang',
            isFreeShipping: true,
            promoBannerText: 'Kamu dapat s.d. Rp20rb Gratis Ongkir!',
            items: [
              CartItemRow(
                title: 'Kampas Rem Depan Honda BeAT/Vario - Kualitas OEM',
                badge: '',
                price: 'Rp18.000',
                originalPrice: 'Rp25.000',
                discountPercent: '28%',
                qty: 10,
                imagePath: 'assets/images/mock-product-image.jpeg',
              ),
            ],
          ),
          CartRecommendations(),
        ],
      ),
      bottomNavigationBar: const CartBottomBar(),
    );
  }
}
