import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/theme/app_colors.dart';

/// Payment method selector card with radio-button options.
class CheckoutPaymentSection extends StatefulWidget {
  const CheckoutPaymentSection({super.key});

  @override
  State<CheckoutPaymentSection> createState() => _CheckoutPaymentSectionState();
}

class _CheckoutPaymentSectionState extends State<CheckoutPaymentSection> {
  int _selected = 0;

  static const _methods = [
    _PaymentMethod(
      icon: Icons.account_balance_wallet_outlined,
      title: 'AstraPay',
      subtitle: 'Saldo: Rp1.250.000',
      badge: null,
    ),
    _PaymentMethod(
      icon: Icons.calendar_today_outlined,
      title: 'PayLater B2B by FIFGROUP',
      subtitle: 'Limit: Rp 5.000.000',
      badge: '0% Biaya Admin',
    ),
    _PaymentMethod(
      icon: Icons.account_balance_outlined,
      title: 'Transfer Bank (Mandiri/BCA)',
      subtitle: null,
      badge: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Metode Pembayaran',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF111827),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Lihat Semua',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.astraBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),

          // Payment options
          ...List.generate(_methods.length, (index) {
            final method = _methods[index];
            final isSelected = _selected == index;
            final isLast = index == _methods.length - 1;

            return Column(
              children: [
                InkWell(
                  onTap: () => setState(() => _selected = index),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    child: Row(
                      crossAxisAlignment: (method.badge != null || method.subtitle != null)
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        // Icon container
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            method.icon,
                            color: const Color(0xFF374151),
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Title + subtitle — expands and wraps freely
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                method.title,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF111827),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              ),
                              if (method.subtitle != null) ...[
                                const SizedBox(height: 2),
                                Text(
                                  method.subtitle!,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF6B7280),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Badge — top-right, only when present
                        if (method.badge != null)
                          Container(
                            margin: const EdgeInsets.only(top: 2),
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD1FAE5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              method.badge!,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF059669),
                              ),
                            ),
                          ),
                        if (method.badge != null) const SizedBox(width: 8),
                        // Radio button
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected ? AppColors.astraBlue : const Color(0xFFD1D5DB),
                              width: isSelected ? 6 : 1.5,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (!isLast)
                  const Divider(height: 1, color: Color(0xFFF3F4F6), indent: 16, endIndent: 16),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class _PaymentMethod {
  final IconData icon;
  final String title;
  final String? subtitle;
  final String? badge;

  const _PaymentMethod({
    required this.icon,
    required this.title,
    this.subtitle,
    this.badge,
  });
}
