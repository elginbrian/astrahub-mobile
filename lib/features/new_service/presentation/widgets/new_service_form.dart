import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/router/app_routes.dart';
import '../../../cashier/presentation/viewmodels/cashier_viewmodel.dart';
import 'new_service_voice_card.dart';

class NewServiceForm extends ConsumerStatefulWidget {
  const NewServiceForm({super.key});

  @override
  ConsumerState<NewServiceForm> createState() => _NewServiceFormState();
}

class _NewServiceFormState extends ConsumerState<NewServiceForm> {
  final _formKey = GlobalKey<FormState>();
  final _customerNameController = TextEditingController();
  final _motorTypeController = TextEditingController();
  final _plateController = TextEditingController();
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
    _plateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    
    final viewmodel = ref.read(cashierViewModelProvider.notifier);
    
    String combinedNotes = _notesController.text.trim();
    if (_selectedService != null) {
      combinedNotes = 'Layanan: $_selectedService\n$combinedNotes';
    }

    final serviceId = await viewmodel.createService(
      customerName: _customerNameController.text.trim(),
      vehicleType: _motorTypeController.text.trim(),
      plateNumber: _plateController.text.trim(),
      notes: combinedNotes,
    );

    if (serviceId != null && mounted) {
      context.pushNamed(
        AppRoutes.serviceValidationName,
        extra: serviceId,
      );
    }
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
    final state = ref.watch(cashierViewModelProvider);

    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
        // ── Nama Pelanggan ──────────────────────────────────────────────
        _buildLabel('Nama Pelanggan'),
        TextFormField(
          controller: _customerNameController,
          validator: (v) => v == null || v.isEmpty ? 'Wajib diisi' : null,
          style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
          decoration: _fieldDecoration(
            hint: 'Pak Budi',
            prefix: const Icon(Icons.person_outline, color: Color(0xFF9CA3AF), size: 20),
          ),
        ),
        const SizedBox(height: 20),

        // ── Kendaraan ───────────────────────────────────────────
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLabel('Tipe Motor'),
                  TextFormField(
                    controller: _motorTypeController,
                    validator: (v) => v == null || v.isEmpty ? 'Wajib' : null,
                    style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
                    decoration: _fieldDecoration(
                      hint: 'Honda Beat',
                      prefix: const Icon(Icons.two_wheeler_outlined, color: Color(0xFF9CA3AF), size: 20),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLabel('Plat Nomor'),
                  TextFormField(
                    controller: _plateController,
                    validator: (v) => v == null || v.isEmpty ? 'Wajib' : null,
                    style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF111827)),
                    decoration: _fieldDecoration(
                      hint: 'B 1234 CD',
                      prefix: const Icon(Icons.pin_outlined, color: Color(0xFF9CA3AF), size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
        const SizedBox(height: 32),
        
        // ── Submit Button ───────────────────────────────────────────────
        if (state.error != null) ...[
          Text(
            state.error!,
            style: GoogleFonts.plusJakartaSans(color: AppColors.errorDark, fontSize: 13),
          ),
          const SizedBox(height: 8),
        ],
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: state.isLoading ? null : _submit,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.astraBlue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              elevation: 0,
            ),
            child: state.isLoading
              ? const SizedBox(
                  width: 24, height: 24,
                  child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lanjut Buat Nota',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    ),
   );
  }
}
