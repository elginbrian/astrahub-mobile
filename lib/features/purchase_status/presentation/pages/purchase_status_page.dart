import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/app_routes.dart';

import '../widgets/purchase_status_app_bar.dart';
import '../widgets/purchase_status_filter_tabs.dart';
import '../widgets/purchase_order_card.dart';
import '../widgets/purchase_recommendations.dart';

class PurchaseStatusPage extends StatelessWidget {
  const PurchaseStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: const PurchaseStatusAppBar(),
      body: ListView(
        children: [
          // ── Filter tabs ──────────────────────────────────────────────
          const ColoredBox(
            color: Colors.white,
            child: PurchaseStatusFilterTabs(),
          ),
          const SizedBox(height: 12),

          // ── Order card 1: Belanja ────────────────────────────────────
          PurchaseOrderCard(
            categoryIcon: Icons.shopping_bag_outlined,
            categoryLabel: 'Belanja',
            date: '02 Jun 2024',
            statusLabel: 'SELESAI',
            imagePath: 'assets/images/mock-product-image.jpeg',
            productName: 'Oli Astra SPX 2 0.8L (Box...)',
            itemCount: '1 barang',
            totalLabel: 'Total Belanja',
            totalAmount: 'Rp 750.000',
            action: PurchaseOrderAction.buyAgain,
            onAction: () => context.pushNamed(AppRoutes.cartName),
          ),

          // ── Order card 2: Pembelian Oli ──────────────────────────────
          PurchaseOrderCard(
            categoryIcon: Icons.build_outlined,
            categoryLabel: 'Pembelian Oli',
            date: '01 Jun 2024',
            statusLabel: 'SELESAI',
            imagePath: 'assets/images/mock-product-image.jpeg',
            productName: 'Ban Luar Federal 80/90–14 (5 pcs)',
            itemCount: '10 Botol Oli Astra SPX 2',
            totalLabel: 'Total Biaya',
            totalAmount: 'Rp 925.000',
            action: PurchaseOrderAction.detail,
            onAction: () => context.pushNamed(AppRoutes.productDetailName),
          ),
          const SizedBox(height: 20),

          // ── Recommendations ──────────────────────────────────────────
          const PurchaseRecommendations(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
