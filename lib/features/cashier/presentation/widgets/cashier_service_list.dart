import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cashier_service_card.dart';

class CashierServiceList extends StatelessWidget {
  const CashierServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'title': 'Ganti Oli, Kampas dan lainnya',
        'vehicle': 'Honda BeAT • BM 3421 XY',
        'time': '08:15',
        'price': 'Rp 85.000',
        'status': 'Selesai',
      },
      {
        'title': 'Tune Up Rutin',
        'vehicle': 'Yamaha Mio • BM 7711 AB',
        'time': '09:30',
        'price': 'Rp 65.000',
        'status': 'Selesai',
      },
      {
        'title': 'Ganti Busi , Filter',
        'vehicle': 'Honda Vario • BM 1234 ZZ',
        'time': '10:45',
        'price': 'Rp 72.000',
        'status': 'Proses',
      },
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
          ...services.map((s) => CashierServiceCard(
                title: s['title']!,
                vehicle: s['vehicle']!,
                time: s['time']!,
                price: s['price']!,
                status: s['status']!,
              )),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
