import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';

import 'new_service_voice_card.dart';

class NewServiceForm extends StatefulWidget {
  const NewServiceForm({super.key});

  @override
  State<NewServiceForm> createState() => _NewServiceFormState();
}

class _NewServiceFormState extends State<NewServiceForm> {
  final _customerNameController = TextEditingController();
  final _motorTypeController = TextEditingController();
  final _notesController = TextEditingController();
  String? _selectedService;

  final List<String> _serviceOptions = [
    'Ganti Oli',
    'Tune Up Rutin',
    'Ganti Kampas Rem',
    'Ganti Busi',
    'Servis Lengkap',
  ];

  @override
  void dispose() {
    _customerNameController.dispose();
    _motorTypeController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF374151),
        ),
      ),
    );
  }

  InputDecoration _fieldDecoration({
    required String hint,
    required Widget prefix,
    Widget? suffix,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: GoogleFonts.plusJakartaSans(
        color: const Color(0xFF9CA3AF),
        fontSize: 14,
      ),
      prefixIcon: prefix,
      suffixIcon: suffix,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      fillColor: Colors.white,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.astraBlue600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ── Nama Pelanggan ──────────────────────────────────────────────
        _buildLabel('Nama Pelanggan'),
        TextFormField(
          controller: _customerNameController,
          style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
          decoration: _fieldDecoration(
            hint: 'Pak Budi',
            prefix: const Icon(Icons.person_outline, color: Color(0xFF9CA3AF), size: 20),
          ),
        ),
        const SizedBox(height: 20),

        // ── Tipe Motor & Plat ───────────────────────────────────────────
        _buildLabel('Tipe Motor & Plat'),
        TextFormField(
          controller: _motorTypeController,
          style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
          decoration: _fieldDecoration(
            hint: 'Honda Beat • BM 3421 XY',
            prefix: const Icon(Icons.two_wheeler_outlined, color: Color(0xFF9CA3AF), size: 20),
          ),
        ),
        const SizedBox(height: 20),

        // ── Layanan Pelanggan ───────────────────────────────────────────
        _buildLabel('Layanan Pelanggan'),
        DropdownButtonFormField<String>(
          value: _selectedService,
          dropdownColor: Colors.white,
          hint: Row(
            children: [
              const Icon(Icons.build_outlined, color: Color(0xFF9CA3AF), size: 20),
              const SizedBox(width: 12),
              Text(
                'Pilih Layanan',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF9CA3AF),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFF6B7280)),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.astraBlue600),
            ),
          ),
          items: _serviceOptions.map((service) {
            return DropdownMenuItem(
              value: service,
              child: Text(
                service,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: const Color(0xFF111827),
                ),
              ),
            );
          }).toList(),
          onChanged: (val) => setState(() => _selectedService = val),
        ),
        const SizedBox(height: 20),

        // ── Catatan Tambahan ────────────────────────────────────────────
        _buildLabel('Catatan Tambahan'),
        TextFormField(
          controller: _notesController,
          maxLines: 4,
          style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
          decoration: InputDecoration(
            hintText: 'Masukkan keluhan atau catatan servis...',
            hintStyle: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF9CA3AF),
              fontSize: 14,
            ),
            contentPadding: const EdgeInsets.all(16),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.astraBlue600),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // ── Voice Recording Card ────────────────────────────────────────
        const NewServiceVoiceCard(),
        const SizedBox(height: 100), // Space for fixed bottom button
      ],
    );
  }
}
