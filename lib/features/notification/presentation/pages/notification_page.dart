import 'package:flutter/material.dart';

import '../widgets/notification_app_bar.dart';
import '../widgets/notification_date_group.dart';
import '../widgets/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: const NotificationAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              NotificationDateGroup(
                date: 'Hari Ini, 4 Juni 2024',
                items: [
                  const NotificationItem(
                    icon: Icons.check_circle,
                    iconColor: Color(0xFF059669),
                    iconBgColor: Color(0xFFD1FAE5),
                    title: 'Servis Honda Beat Selesai',
                    subtitle: 'Mekanik: Budi • Total: Rp 150.000',
                    time: '14:30',
                  ),
                  const NotificationItem(
                    icon: Icons.qr_code_2,
                    iconColor: Color(0xFF1D4ED8),
                    iconBgColor: Color(0xFFDBEAFE),
                    title: 'Pembayaran QRIS Berhasil',
                    subtitle: 'Pelanggan: Andi • Ref: #ASTR-8821',
                    time: '14:15',
                  ),
                  const NotificationItem(
                    icon: Icons.local_shipping,
                    iconColor: Color(0xFFC2410C),
                    iconBgColor: Color(0xFFFFEDD5),
                    title: 'Pesanan Suku Cadang Dikirim',
                    subtitle: 'Oli Astra SPX 2 (10 pcs) • Kurir: Astra Express',
                    time: '13:00',
                  ),
                  const NotificationItem(
                    icon: Icons.build,
                    iconColor: Color(0xFF4B5563),
                    iconBgColor: Color(0xFFE5E7EB),
                    title: 'Servis Yamaha NMAX Dimulai',
                    subtitle: 'Mekanik: Slamet • Estimasi Selesai: 16:00',
                    time: '12:45',
                  ),
                  const NotificationItem(
                    icon: Icons.warning_amber_rounded,
                    iconColor: Color(0xFFDC2626),
                    iconBgColor: Color(0xFFFEE2E2),
                    title: 'Stok Hampir Habis',
                    subtitle: 'Kampas Rem Depan (Sisa 2 pcs)',
                    time: '11:00',
                    isAlert: true,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              NotificationDateGroup(
                date: 'Kemarin, 3 Juni 2024',
                items: [
                  const NotificationItem(
                    icon: Icons.check_circle_outline,
                    iconColor: Color(0xFF059669),
                    iconBgColor: Color(0xFFD1FAE5),
                    title: 'Tutup Kasir Berhasil',
                    subtitle: 'Total Omzet: Rp 4.250.000',
                    time: '21:00',
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
