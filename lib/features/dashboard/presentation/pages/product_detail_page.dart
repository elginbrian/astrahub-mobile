import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_detail/product_bottom_bar.dart';
import '../widgets/product_detail/product_description_section.dart';
import '../widgets/product_detail/product_header_bar.dart';
import '../widgets/product_detail/product_info_section.dart';
import '../widgets/product_detail/product_logistics_section.dart';
import '../widgets/product_detail/product_referral_banner.dart';
import '../widgets/product_detail/product_reviews_section.dart';
import '../widgets/product_detail/product_shop_info_section.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          ThemeData.light().textTheme,
        ),
        dividerColor: const Color(0xFFE5E7EB),
        dividerTheme: const DividerThemeData(
          color: Color(0xFFE5E7EB),
          thickness: 1,
          space: 1,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // ── Scrollable Content ──────────────────────────────────────────
            Positioned.fill(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 120),
                children: [
                  Image.asset(
                    'assets/images/mock-product-image.jpeg',
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 16),
                  const ProductInfoSection(),
                  _buildDivider(),
                  const ProductLogisticsSection(),
                  _buildDivider(),
                  const ProductReferralBanner(),
                  _buildDivider(),
                  const ProductReviewsSection(),
                  _buildDivider(),
                  const ProductShopInfoSection(),
                  _buildDivider(),
                  const ProductDescriptionSection(),
                ],
              ),
            ),

            // ── Header Bar (Overlaid) ───────────────────────────────────────
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ProductHeaderBar(),
            ),

            // ── Bottom Action Bar ───────────────────────────────────────────
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ProductBottomBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 6,
      color: const Color(0xFFF3F4F6),
      margin: const EdgeInsets.symmetric(vertical: 16),
    );
  }
}
