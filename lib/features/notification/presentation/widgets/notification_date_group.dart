import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notification_item.dart';

class NotificationDateGroup extends StatelessWidget {
  final String date;
  final List<NotificationItem> items;

  const NotificationDateGroup({
    super.key,
    required this.date,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            date,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF6B7280),
            ),
          ),
        ),
        ...items,
      ],
    );
  }
}
