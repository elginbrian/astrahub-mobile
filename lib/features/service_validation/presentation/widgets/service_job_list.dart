import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../cashier/domain/entities/service_detail_entity.dart';
import '../../../cashier/presentation/viewmodels/service_detail_viewmodel.dart';
import 'service_job_item.dart';
import 'stock_selector_sheet.dart';

class ServiceJobList extends ConsumerWidget {
  final ServiceDetailEntity detail;
  
  const ServiceJobList({super.key, required this.detail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pekerjaan & Suku Cadang',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        const SizedBox(height: 12),
        if (detail.items.isEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              'Belum ada pekerjaan atau suku cadang ditambahkan.',
              style: GoogleFonts.plusJakartaSans(
                color: Colors.grey.shade600,
                fontSize: 13,
              ),
            ),
          )
        else
          ...detail.items.map((item) {
            final isPart = item.itemType == 'part';
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ServiceJobItem(
                icon: isPart ? Icons.inventory_2 : Icons.build,
                iconBgColor: AppColors.astraBlue50,
                iconColor: AppColors.astraBlue500,
                name: item.name,
                category: isPart ? 'Suku Cadang' : 'Labor / Jasa',
                price: currencyFormatter.format(item.price),
                onDelete: () {
                  ref
                      .read(serviceDetailViewModelProvider(detail.id).notifier)
                      .deleteItem(item.id);
                },
              ),
            );
          }),
        const SizedBox(height: 12),
        OutlinedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (ctx) => StockSelectorSheet(serviceId: detail.id),
            );
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.astraBlue,
            side: const BorderSide(color: Color(0xFFD1D5DB)),
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, size: 18),
              const SizedBox(width: 6),
              Text(
                'Tambah Pekerjaan (Stok)',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
