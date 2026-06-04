import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// "Ringkasan Transaksi" — itemised cost breakdown card.
class CheckoutSummaryCard extends StatelessWidget {
  const CheckoutSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ringkasan Transaksi',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 14),

          // Line items
          _SummaryRow(label: 'Total Harga (1 Barang)', value: 'Rp65.000'),
          const SizedBox(height: 10),
          _SummaryRowWithStrike(
            label: 'Total Ongkos Kirim',
            strikeValue: 'Rp15.000',
            value: 'Rp0',
          ),
          const SizedBox(height: 10),
          _SummaryRow(label: 'Asuransi & Proteksi', value: 'Rp1.200'),
          const SizedBox(height: 10),
          _SummaryRow(label: 'Biaya Layanan', value: 'Rp1.000'),
          const SizedBox(height: 12),

          // Divider
          const Divider(height: 1, color: Color(0xFFF3F4F6)),
          const SizedBox(height: 12),

          // Discount total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Diskon',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFDC2626),
                ),
              ),
              Text(
                '-Rp15.000',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFDC2626),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ── Helper row widgets ─────────────────────────────────────────────────────────

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF6B7280),
          ),
        ),
        Text(
          value,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF111827),
          ),
        ),
      ],
    );
  }
}

class _SummaryRowWithStrike extends StatelessWidget {
  final String label;
  final String strikeValue;
  final String value;

  const _SummaryRowWithStrike({
    required this.label,
    required this.strikeValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF6B7280),
          ),
        ),
        Row(
          children: [
            Text(
              strikeValue,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF9CA3AF),
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              value,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF111827),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
