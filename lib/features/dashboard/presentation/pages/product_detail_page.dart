import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';

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
                _buildProductImage(),
                const SizedBox(height: 16),
                _buildPriceAndTitle(),
                _buildDivider(),
                _buildLogisticsInfo(),
                _buildDivider(),
                _buildReferralBanner(),
                _buildDivider(),
                _buildReviewsSection(),
                _buildDivider(),
                _buildShopInfo(),
                _buildDivider(),
                _buildProductDescription(),
              ],
            ),
          ),

          // ── Header Bar (Overlaid) ───────────────────────────────────────
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
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
            ),
          ),

          // ── Bottom Action Bar ───────────────────────────────────────────
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey.shade200)),
              ),
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 32, left: 16, right: 16),
                  child: Row(
                    children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.astraBlue,
                          side: const BorderSide(color: AppColors.astraBlue),
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Beli Pakai Promo',
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.astraBlue,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.shopping_cart_checkout, size: 18),
                            const SizedBox(width: 8),
                            Text(
                              '+ Keranjang',
                              style: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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

  Widget _buildProductImage() {
    return Image.asset(
      'assets/images/mock-product-image.jpeg',
      width: double.infinity,
      height: 350,
      fit: BoxFit.cover,
    );
  }

  Widget _buildPriceAndTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Rp379.000',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: AppColors.error, // Red price
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  'Rp429.000',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                margin: const EdgeInsets.only(bottom: 4),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.error.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '12%',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: AppColors.error,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildBadge('Diskon 12% (50rb)', AppColors.error.withOpacity(0.1), AppColors.error),
              _buildBadge('Belanja Rp500rb, Diskon 5%', AppColors.error.withOpacity(0.1), AppColors.error),
              _buildBadge('Bonus 250rb', const Color(0xFFFEF08A), const Color(0xFFB45309)),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.astraBlue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.verified, color: Colors.white, size: 10),
                              const SizedBox(width: 4),
                              Text(
                                'Power Shop',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'Promo paket filter oli & oli epro gold honda sae 0w -20 galon',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.favorite_border, color: Colors.black54),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xFFFBBF24), size: 16),
              const SizedBox(width: 4),
              Text(
                '4.9',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              Text(
                ' (140)  •  29 Foto ulasan  •  244 Terjual',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildLogisticsInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildLogisticsRow(
            Icons.local_shipping_outlined,
            'Gratis Ongkir ',
            '(Rp14.000)',
            'Est. tiba 8 - 10 Jun',
          ),
          const SizedBox(height: 16),
          _buildLogisticsRow(
            Icons.verified_user_outlined,
            'Gratis pengembalian',
            '',
            'Pengembalian 6 hari',
          ),
        ],
      ),
    );
  }

  Widget _buildLogisticsRow(IconData icon, String title, String subtitle, String desc) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.astraBlue, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                    if (subtitle.isNotEmpty)
                      TextSpan(
                        text: subtitle,
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                desc,
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.chevron_right, color: Colors.grey),
      ],
    );
  }

  Widget _buildReferralBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.astraBlue.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.astraBlue.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.vpn_key_outlined, color: AppColors.astraBlue, size: 20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dapetin kunci setiap teman gabung',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Ajak teman sebanyak mungkin',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColors.astraBlue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    '🔑 +700',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Kumpulin lebih banyak kunci >',
            style: GoogleFonts.plusJakartaSans(
              color: AppColors.astraBlue,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviewsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ulasan Pembeli',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Lihat Semua',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.astraBlue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: Color(0xFFFBBF24), size: 16),
              const SizedBox(width: 4),
              Text(
                '4.9',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '140 rating • 55 ulasan',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _buildReviewImage(),
              const SizedBox(width: 8),
              _buildReviewImage(),
              const SizedBox(width: 8),
              _buildReviewImage(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReviewImage() {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/mock-product-image.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildShopInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade700,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.storefront, color: Colors.white),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.verified, color: AppColors.astraBlue, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          'POWER SHOP',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.astraBlue,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Auto mobile oil',
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Kab. Bogor',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.astraBlue,
                  side: const BorderSide(color: AppColors.astraBlue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(80, 32),
                ),
                child: const Text('Follow'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFFEF3C7), // Light amber
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.thumb_up, color: Color(0xFFB45309), size: 16),
                const SizedBox(width: 8),
                Text(
                  'Pilihan tepat! 98% pembeli merasa puas!',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF92400E),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi Produk',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Penjelasan & Kegunaan',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Oli Epro Gold 0W-20 dirancang khusus untuk memberikan perlindungan maksimal pada mesin modern. Dengan teknologi sintetik penuh, oli ini memastikan gesekan minimal, efisiensi bahan bakar yang lebih baik, dan menjaga mesin tetap bersih dari endapan karbon bahkan pada suhu ekstrem.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'Spesifikasi',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          _buildSpecRow('Volume', '4 Liter'),
          _buildSpecRow('SAE', '0W-20'),
          _buildSpecRow('API Service', 'SN'),
          _buildSpecRow('Tipe', 'Full Synthetic'),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          Text(
            'Cara Pakai',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          _buildBulletText('Pastikan mesin dalam kondisi dingin sebelum mengganti oli.'),
          _buildBulletText('Kuras oli lama sepenuhnya dan ganti filter oli dengan yang baru.'),
          _buildBulletText('Tuangkan Oli Epro Gold sesuai kapasitas mesin dan periksa level stik oli.'),
        ],
      ),
    );
  }

  Widget _buildSpecRow(String key, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              key,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  ', style: TextStyle(fontSize: 14, color: Colors.black87)),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
