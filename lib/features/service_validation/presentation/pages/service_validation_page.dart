import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../cashier/presentation/viewmodels/service_detail_viewmodel.dart';
import '../widgets/service_info_card.dart';
import '../widgets/service_job_list.dart';
import '../widgets/service_payment_info.dart';
import '../widgets/service_payment_method.dart';

class ServiceValidationPage extends ConsumerWidget {
  final String? serviceId;

  const ServiceValidationPage({super.key, this.serviceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (serviceId == null) {
      return const Scaffold(body: Center(child: Text('Service ID not found')));
    }

    final asyncDetail = ref.watch(serviceDetailViewModelProvider(serviceId!));

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF111827)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Servis Baru',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF111827),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, color: Color(0xFFE5E7EB)),
        ),
      ),
      body: asyncDetail.when(
        data: (detail) {
          if (detail == null) return const Center(child: Text('Detail not found'));
          return SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ServiceInfoCard(detail: detail),
                const SizedBox(height: 24),
                ServiceJobList(detail: detail),
                const SizedBox(height: 24),
                ServicePaymentInfo(detail: detail),
                const SizedBox(height: 24),
                const ServicePaymentMethod(),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(AppRoutes.servicePaymentSuccessName);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.astraBlue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
          ),
          child: Text(
            'Bayar Sekarang',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
