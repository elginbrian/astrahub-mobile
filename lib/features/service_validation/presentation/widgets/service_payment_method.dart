import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

class ServicePaymentMethod extends StatefulWidget {
  const ServicePaymentMethod({super.key});

  @override
  State<ServicePaymentMethod> createState() => _ServicePaymentMethodState();
}

class _ServicePaymentMethodState extends State<ServicePaymentMethod> {
  int _selectedMethod = 0;

  final List<Map<String, dynamic>> _methods = [
    {'label': 'Tunai', 'icon': Icons.wallet_outlined},
    {'label': 'QRIS', 'icon': Icons.qr_code_2},
    {'label': 'Transfer Bank', 'icon': Icons.account_balance_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Metode Pembayaran',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 8),
        ...List.generate(_methods.length, (index) {
          final isSelected = _selectedMethod == index;
          return Column(
            children: [
              InkWell(
                onTap: () => setState(() => _selectedMethod = index),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: Row(
                    children: [
                      Radio<int>(
                        value: index,
                        groupValue: _selectedMethod,
                        onChanged: (val) => setState(() => _selectedMethod = val!),
                        activeColor: AppColors.astraBlue,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        _methods[index]['icon'] as IconData,
                        size: 20,
                        color: isSelected ? AppColors.astraBlue : const Color(0xFF6B7280),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        _methods[index]['label'] as String,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                          color: isSelected ? AppColors.astraBlue : const Color(0xFF374151),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (index < _methods.length - 1)
                const Divider(height: 1, color: Color(0xFFE5E7EB)),
            ],
          );
        }),
      ],
    );
  }
}
