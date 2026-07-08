import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../viewmodels/notification_viewmodel.dart';
import '../../domain/entities/notification_entity.dart';

import '../widgets/notification_app_bar.dart';
import '../widgets/notification_date_group.dart';
import '../widgets/notification_item.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(notificationViewModelProvider);

    // Group notifications by date
    final Map<String, List<NotificationEntity>> groupedNotifications = {};
    for (var notif in state.notifications) {
      final date = DateTime(notif.createdAt.year, notif.createdAt.month, notif.createdAt.day);
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final yesterday = today.subtract(const Duration(days: 1));
      
      String key;
      if (date == today) {
        key = 'Hari Ini, ${DateFormat('d MMMM yyyy', 'id_ID').format(date)}';
      } else if (date == yesterday) {
        key = 'Kemarin, ${DateFormat('d MMMM yyyy', 'id_ID').format(date)}';
      } else {
        key = DateFormat('d MMMM yyyy', 'id_ID').format(date);
      }

      if (!groupedNotifications.containsKey(key)) {
        groupedNotifications[key] = [];
      }
      groupedNotifications[key]!.add(notif);
    }
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: const NotificationAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.isLoading)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: CircularProgressIndicator(),
                  ),
                )
              else if (state.notifications.isEmpty)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.notifications_off_outlined, size: 48, color: Colors.grey.shade400),
                        const SizedBox(height: 16),
                        Text(
                          'Belum ada notifikasi',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Semua pemberitahuan sistem akan muncul di sini',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              else
                ...groupedNotifications.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: NotificationDateGroup(
                      date: entry.key,
                      items: entry.value.map<Widget>((notif) {
                        IconData icon = Icons.info_outline;
                        Color iconColor = AppColors.astraBlue;
                        Color iconBgColor = AppColors.astraBlue50;

                        if (notif.type == 'service_completed') {
                          icon = Icons.check_circle;
                          iconColor = const Color(0xFF059669);
                          iconBgColor = const Color(0xFFD1FAE5);
                        } else if (notif.type == 'payment_received') {
                          icon = Icons.qr_code_2;
                          iconColor = const Color(0xFFC2410C);
                          iconBgColor = const Color(0xFFFFEDD5);
                        } else if (notif.type == 'stock_alert') {
                          icon = Icons.warning_amber_rounded;
                          iconColor = const Color(0xFFDC2626);
                          iconBgColor = const Color(0xFFFEE2E2);
                        }

                        return GestureDetector(
                          onTap: () {
                            if (!notif.isRead) {
                              ref.read(notificationViewModelProvider.notifier).markAsRead(notif.id);
                            }
                          },
                          child: Opacity(
                            opacity: notif.isRead ? 0.6 : 1.0,
                            child: NotificationItem(
                              icon: icon,
                              iconColor: iconColor,
                              iconBgColor: iconBgColor,
                              title: notif.title,
                              subtitle: notif.message,
                              time: DateFormat('HH:mm').format(notif.createdAt.toLocal()),
                              isAlert: notif.type == 'stock_alert',
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  );
                }),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
