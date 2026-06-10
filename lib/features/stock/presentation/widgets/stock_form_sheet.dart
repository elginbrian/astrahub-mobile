import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../domain/entities/stock_entity.dart';
import '../viewmodels/stock_viewmodel.dart';

class StockFormSheet extends ConsumerStatefulWidget {
  final StockEntity? initialStock;

  const StockFormSheet({super.key, this.initialStock});

  @override
  ConsumerState<StockFormSheet> createState() => _StockFormSheetState();
}

class _StockFormSheetState extends ConsumerState<StockFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _priceController;
  late final TextEditingController _qtyController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialStock?.name);
    _priceController = TextEditingController(text: widget.initialStock?.price.toString() ?? '');
    _qtyController = TextEditingController(text: widget.initialStock?.quantity.toString() ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _qtyController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    
    final name = _nameController.text.trim();
    final price = int.tryParse(_priceController.text.trim()) ?? 0;
    final qty = int.tryParse(_qtyController.text.trim()) ?? 0;

    final viewmodel = ref.read(stockViewModelProvider.notifier);
    bool success;
    
    if (widget.initialStock == null) {
      success = await viewmodel.createStock(name, price, qty);
    } else {
      success = await viewmodel.updateStock(widget.initialStock!.id, name, price, qty);
    }

    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            widget.initialStock != null ? 'Stok berhasil diperbarui' : 'Stok berhasil ditambahkan',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(stockViewModelProvider);
    final isEditing = widget.initialStock != null;

    return Container(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5E7EB),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              isEditing ? 'Edit Stok Barang' : 'Tambah Stok Baru',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF111827),
              ),
            ),
            const SizedBox(height: 24),
            AppTextField(
              label: 'Nama Barang',
              hint: 'Contoh: Oli Mesin AHM',
              controller: _nameController,
              validator: (v) => v == null || v.isEmpty ? 'Nama barang harus diisi' : null,
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AppTextField(
                    label: 'Harga (Rp)',
                    hint: '0',
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    validator: (v) => v == null || v.isEmpty ? 'Isi harga' : null,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppTextField(
                    label: 'Kuantitas',
                    hint: '0',
                    controller: _qtyController,
                    keyboardType: TextInputType.number,
                    validator: (v) => v == null || v.isEmpty ? 'Isi kuantitas' : null,
                  ),
                ),
              ],
            ),
            if (state.error != null) ...[
              const SizedBox(height: 16),
              Text(
                state.error!,
                style: GoogleFonts.plusJakartaSans(color: AppColors.error, fontSize: 12),
              ),
            ],
            const SizedBox(height: 32),
            AppButton(
              label: isEditing ? 'Simpan Perubahan' : 'Tambahkan Stok',
              onPressed: state.isSubmitting ? null : _submit,
              isLoading: state.isSubmitting,
            ),
          ],
        ),
      ),
    );
  }
}
