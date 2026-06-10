import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/app_routes.dart';
import '../viewmodels/cashier_viewmodel.dart';
import 'cashier_service_card.dart';

class CashierServiceList extends ConsumerWidget {
  const CashierServiceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cashierViewModelProvider);
    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Servis Hari Ini',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          if (state.isLoading)
            const Center(child: CircularProgressIndicator())
          else if (state.todayServices.isEmpty) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inbox_outlined, size: 48, color: Colors.grey.shade400),
                  const SizedBox(height: 16),
                  Text(
                    'Belum ada servis hari ini',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Semua transaksi servis bengkel akan muncul di sini',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ] else
            ...state.todayServices.map((s) {
              DateTime? date;
              try {
                date = DateTime.parse(s.createdAt).toLocal();
              } catch (_) {}
              final timeString = date != null ? DateFormat('HH:mm').format(date) : '-';
              
              String displayStatus = s.status;
              if (displayStatus.toLowerCase() == 'done') {
                displayStatus = 'Selesai';
              } else if (displayStatus.toLowerCase() == 'progress') {
                displayStatus = 'Proses';
              } else if (displayStatus.toLowerCase() == 'waiting') {
                displayStatus = 'Menunggu';
              }

              return CashierServiceCard(
                title: s.customerName,
                vehicle: '${s.vehicleType} • ${s.plateNumber}',
                time: timeString,
                price: currencyFormatter.format(s.total),
                status: displayStatus,
                onTap: s.status.toLowerCase() == 'pending' 
                    ? () {
                        context.pushNamed(
                          AppRoutes.serviceValidationName,
                          extra: s.id,
                        );
                      }
                    : null,
              );
            }),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
