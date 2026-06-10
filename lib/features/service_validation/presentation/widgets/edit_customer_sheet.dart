import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../cashier/domain/entities/service_detail_entity.dart';
import '../../../cashier/presentation/viewmodels/service_detail_viewmodel.dart';

class EditCustomerSheet extends ConsumerStatefulWidget {
  final ServiceDetailEntity detail;

  const EditCustomerSheet({super.key, required this.detail});

  @override
  ConsumerState<EditCustomerSheet> createState() => _EditCustomerSheetState();
}

class _EditCustomerSheetState extends ConsumerState<EditCustomerSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _plateController;
  late final TextEditingController _typeController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.detail.customerName);
    _plateController = TextEditingController(text: widget.detail.plateNumber);
    _typeController = TextEditingController(text: widget.detail.vehicleType);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _plateController.dispose();
    _typeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ubah Data Pelanggan',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF111827),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 24),
          AppTextField(
            label: 'Nama Pelanggan',
            hint: 'Masukkan nama pelanggan',
            controller: _nameController,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'Plat Nomor',
            hint: 'Contoh: B 1234 ABC',
            controller: _plateController,
          ),
          const SizedBox(height: 16),
          AppTextField(
            label: 'Tipe Kendaraan',
            hint: 'Contoh: Honda Beat',
            controller: _typeController,
          ),
          const SizedBox(height: 32),
          AppButton(
            label: 'Simpan Perubahan',
            onPressed: () async {
              if (_nameController.text.isEmpty ||
                  _plateController.text.isEmpty ||
                  _typeController.text.isEmpty) {
                return;
              }
              await ref
                  .read(serviceDetailViewModelProvider(widget.detail.id).notifier)
                  .updateServiceInfo(
                    customerName: _nameController.text,
                    vehicleType: _typeController.text,
                    plateNumber: _plateController.text,
                  );
              if (mounted) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
