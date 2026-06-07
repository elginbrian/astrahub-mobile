import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/router/app_routes.dart';
import '../widgets/workshop/workshop_progress_bar.dart';
import '../widgets/workshop/workshop_form_fields.dart';
import '../widgets/workshop/workshop_upload_button.dart';
import '../widgets/workshop/workshop_info_sections.dart';

class PersonalDataActivationPage extends StatefulWidget {
  const PersonalDataActivationPage({super.key});

  @override
  State<PersonalDataActivationPage> createState() => _PersonalDataActivationPageState();
}

class _PersonalDataActivationPageState extends State<PersonalDataActivationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Form Pengajuan',
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
                const WorkshopProgressBar(
                  currentStep: 1,
                  totalSteps: 2,
                  percentage: 0.5,
                ),
                const SizedBox(height: 24),
                Text(
                  'Lengkapi Data Diri',
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
                  label: 'Nama Pengaju',
                  hint: 'Rudi Hartono',
                ),
                const SizedBox(height: 16),
                const WorkshopTextField(
                  label: 'Nomor Telepon Pribadi',
                  hint: '+62 812xxxxxxx',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                const WorkshopTextField(
                  label: 'Nomor NIK',
                  hint: '35 xxxxxxx',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                Text(
                  'Foto KTP',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF4B5563),
                  ),
                ),
                const SizedBox(height: 8),
                const WorkshopLargeUploadButton(),
                const SizedBox(height: 16),
                Text(
                  'Foto Selfie',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF4B5563),
                  ),
                ),
                const SizedBox(height: 8),
                const WorkshopLargeUploadButton(),
                const SizedBox(height: 24),
                // Info Box
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.astraBlue50, // very light blue
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.astraBlue200),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.info,
                        color: AppColors.astraBlue,
                        size: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Setelah verifikasi, bengkel Anda dapat mengakses ekosistem AstraPay dan kemudahan PayLater B2B FIFGROUP.',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 12,
                            color: AppColors.astraBlue900,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // Navigate to step 2 (Lengkapi Data Bengkel)
                        context.push(AppRoutes.workshopActivation);
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selanjutnya',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
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
