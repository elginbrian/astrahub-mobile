import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/workshop/workshop_progress_bar.dart';
import '../widgets/workshop/workshop_form_fields.dart';
import '../widgets/workshop/workshop_upload_button.dart';
import '../widgets/workshop/workshop_info_sections.dart';

class WorkshopActivationPage extends StatefulWidget {
  const WorkshopActivationPage({super.key});

  @override
  State<WorkshopActivationPage> createState() => _WorkshopActivationPageState();
}

class _WorkshopActivationPageState extends State<WorkshopActivationPage> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedProvinsi;
  String? _selectedKota;
  String? _selectedJenis;
  String? _selectedMekanik;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.astraBlue),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Lengkapi Data Bengkel',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WorkshopProgressBar(),
                const SizedBox(height: 24),
                Text(
                  'Lengkapi Data Bengkel',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF111827),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Informasi ini digunakan untuk aktivasi AstraPay dan layanan pengadaan suku cadang secara profesional.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    color: const Color(0xFF6B7280),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),
                const WorkshopTextField(
                  label: 'Nama Bengkel',
                  hint: 'Bengkel Maju Jaya',
                ),
                const SizedBox(height: 16),
                const WorkshopTextField(
                  label: 'Nama Pemilik',
                  hint: 'Rudi Hartono',
                ),
                const SizedBox(height: 16),
                const WorkshopTextField(
                  label: 'Nomor Telepon Bengkel',
                  hint: '+62 812xxxxxx',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                const WorkshopTextField(
                  label: 'Alamat Lengkap Bengkel',
                  hint: 'Jl. Raya Otista No. 12...',
                  maxLines: 3,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: WorkshopDropdown(
                        label: 'Provinsi',
                        hint: 'Pilih Provinsi',
                        items: const ['DKI Jakarta', 'Jawa Barat', 'Banten'],
                        value: _selectedProvinsi,
                        onChanged: (val) => setState(() => _selectedProvinsi = val),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: WorkshopDropdown(
                        label: 'Kota/Kabupaten',
                        hint: 'Pilih Kota',
                        items: const ['Jakarta Selatan', 'Jakarta Timur', 'Bandung'],
                        value: _selectedKota,
                        onChanged: (val) => setState(() => _selectedKota = val),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                WorkshopDropdown(
                  label: 'Jenis Bengkel',
                  hint: 'Bengkel Motor Umum',
                  items: const ['Bengkel Motor Umum', 'Bengkel Mobil', 'Bengkel Resmi'],
                  value: _selectedJenis,
                  onChanged: (val) => setState(() => _selectedJenis = val),
                ),
                const SizedBox(height: 16),
                WorkshopDropdown(
                  label: 'Jumlah Mekanik',
                  hint: '1-2 Orang',
                  items: const ['1-2 Orang', '3-5 Orang', '> 5 Orang'],
                  value: _selectedMekanik,
                  onChanged: (val) => setState(() => _selectedMekanik = val),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: WorkshopUploadButton(
                        icon: Icons.add_a_photo_outlined,
                        label: 'Foto Bengkel',
                        iconColor: AppColors.astraBlue,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: WorkshopUploadButton(
                        icon: Icons.image_outlined,
                        label: 'Logo (Opsional)',
                        iconColor: Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const WorkshopAstrapayInfo(),
                const SizedBox(height: 16),
                const WorkshopInfoBanner(),
                const SizedBox(height: 24),
                const WorkshopBenefits(),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Submit logic here
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.astraBlue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Aktivasi Bengkel',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
