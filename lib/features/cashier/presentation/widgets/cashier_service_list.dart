import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../viewmodels/cashier_viewmodel.dart';
import 'cashier_service_card.dart';

class CashierServiceList extends ConsumerWidget {
  const CashierServiceList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Backend integration temporarily disconnected
    // final state = ref.watch(cashierViewModelProvider);
    final currencyFormatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    // Dummy data
    final dummyServices = [
      {'title': 'Servis Berkala & Ganti Oli', 'vehicle': 'Honda Beat • B 1234 ABC', 'time': '10:30', 'price': 150000, 'status': 'selesai'},
      {'title': 'Ganti Kampas Rem', 'vehicle': 'Yamaha NMAX • B 5678 DEF', 'time': '11:45', 'price': 85000, 'status': 'proses'},
      {'title': 'Servis CVT', 'vehicle': 'Honda Vario • B 9012 GHI', 'time': '13:00', 'price': 250000, 'status': 'menunggu'},
      {'title': 'Ganti Aki', 'vehicle': 'Honda Scoopy • B 3456 JKL', 'time': '13:30', 'price': 300000, 'status': 'menunggu'},
      {'title': 'Ganti Ban Belakang', 'vehicle': 'Yamaha Aerox • B 7890 MNO', 'time': '14:15', 'price': 350000, 'status': 'menunggu'},
      {'title': 'Servis Injeksi', 'vehicle': 'Honda PCX • B 1122 PQR', 'time': '15:00', 'price': 200000, 'status': 'menunggu'},
    ];

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
          ...dummyServices.map((s) {
            return CashierServiceCard(
              title: s['title'] as String,
              vehicle: s['vehicle'] as String,
              time: s['time'] as String,
              price: currencyFormatter.format(s['price']),
              status: s['status'] as String,
            );
          }),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
