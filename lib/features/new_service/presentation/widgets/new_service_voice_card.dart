import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewServiceVoiceCard extends StatelessWidget {
  const NewServiceVoiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (_) {
        // TODO: start audio recording
      },
      onLongPressEnd: (_) {
        // TODO: stop audio recording
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        decoration: BoxDecoration(
          color: const Color(0xFFFCD34D),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.mic,
                color: Color(0xFF111827),
                size: 28,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Tahan untuk Rekam Suara',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Contoh: Ganti oli dan kampas rem Honda BeAT',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                color: const Color(0xFF4B5563),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
