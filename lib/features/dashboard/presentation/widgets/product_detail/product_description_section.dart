import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
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
