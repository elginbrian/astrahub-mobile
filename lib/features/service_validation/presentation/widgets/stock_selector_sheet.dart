import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../stock/presentation/viewmodels/stock_viewmodel.dart';
import '../../../cashier/presentation/viewmodels/service_detail_viewmodel.dart';

class StockSelectorSheet extends ConsumerWidget {
  final String serviceId;

  const StockSelectorSheet({super.key, required this.serviceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockState = ref.watch(stockViewModelProvider);
    final currencyFormatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12, bottom: 16),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Pilih Suku Cadang',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF111827),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: stockState.isLoading
                ? const Center(child: CircularProgressIndicator())
                : stockState.error != null
                    ? Center(child: Text(stockState.error!))
                    : stockState.stocks.isEmpty
                        ? Center(
                            child: Text(
                              'Stok kosong',
                              style: GoogleFonts.plusJakartaSans(color: Colors.grey),
                            ),
                          )
                        : ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            itemCount: stockState.stocks.length,
                            separatorBuilder: (context, index) => const Divider(height: 1, color: Color(0xFFE5E7EB)),
                            itemBuilder: (context, index) {
                              final item = stockState.stocks[index];
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.astraBlue50,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(Icons.inventory_2, color: AppColors.astraBlue),
                                ),
                                title: Text(
                                  item.name,
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xFF111827),
                                  ),
                                ),
                                subtitle: Text(
                                  'Sisa stok: ${item.quantity}',
                                  style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                trailing: Text(
                                  currencyFormatter.format(item.price),
                                  style: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.astraBlue,
                                  ),
                                ),
                                onTap: item.quantity <= 0
                                    ? null
                                    : () async {
                                        Navigator.of(context).pop();
                                        try {
                                          await ref
                                              .read(serviceDetailViewModelProvider(serviceId).notifier)
                                              .addPart(item.id.toString(), item.name, item.price);
                                          // Refresh detail
                                          ref.invalidate(serviceDetailViewModelProvider(serviceId));
                                        } catch (e) {
                                          if (context.mounted) {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text('Gagal: $e')),
                                            );
                                          }
                                        }
                                      },
                              );
                            },
                          ),
          ),
        ],
      ),
    );
  }
}
