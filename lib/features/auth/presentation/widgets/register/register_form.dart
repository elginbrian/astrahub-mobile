import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/router/app_routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../viewmodels/register_viewmodel.dart';
import '../../viewmodels/register_state.dart';

class RegisterForm extends ConsumerStatefulWidget {
  const RegisterForm({super.key});

  @override
  ConsumerState<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends ConsumerState<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _agreedToTerms = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onRegister() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (!_agreedToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Anda harus menyetujui Syarat & Ketentuan',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 8,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
        ),
      );
      return;
    }

    ref.read(registerViewModelProvider.notifier).register(
          fullName: _nameController.text,
          phone: _phoneController.text,
          email: _emailController.text,
          password: _passwordController.text,
        );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData prefixIcon,
    required TextEditingController controller,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? suffixIcon,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF374151),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            color: const Color(0xFF111827),
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hint,
            hintStyle: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF9CA3AF),
              fontSize: 14,
            ),
            prefixIcon: Icon(prefixIcon, color: const Color(0xFF6B7280), size: 20),
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
              borderSide: BorderSide(color: AppColors.astraBlue),
            ),
          ),
          validator: validator,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<RegisterState>(registerViewModelProvider, (previous, next) {
      next.maybeWhen(
        success: (user) {
          context.goNamed(AppRoutes.mainName);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                message,
                style: const TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
              elevation: 8,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(20),
            ),
          );
        },
        orElse: () {},
      );
    });

    final registerState = ref.watch(registerViewModelProvider);
    final isLoading = registerState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextField(
            label: 'Nama Lengkap',
            hint: 'Contoh: Budi Setiawan',
            prefixIcon: Icons.person_outline,
            controller: _nameController,
            validator: (v) => v != null && v.isNotEmpty
                ? null
                : 'Nama Lengkap tidak boleh kosong',
          ),
          _buildTextField(
            label: 'Nomor HP',
            hint: '0812xxxx',
            prefixIcon: Icons.phone_outlined,
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            validator: (v) => v != null && v.isNotEmpty
                ? null
                : 'Nomor HP tidak boleh kosong',
          ),
          _buildTextField(
            label: 'Email',
            hint: 'nama@bengkel.com',
            prefixIcon: Icons.email_outlined,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (v) => v != null && v.isNotEmpty
                ? null
                : 'Email tidak boleh kosong',
          ),
          _buildTextField(
            label: 'Password',
            hint: 'Min. 8 Karakter',
            prefixIcon: Icons.lock_outline,
            controller: _passwordController,
            obscureText: _obscurePassword,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: const Color(0xFF6B7280),
                size: 20,
              ),
              onPressed: () =>
                  setState(() => _obscurePassword = !_obscurePassword),
            ),
            validator: (v) => (v?.length ?? 0) >= 8
                ? null
                : 'Password min. 8 karakter',
          ),
          _buildTextField(
            label: 'Konfirmasi Password',
            hint: 'Ulangi Password',
            prefixIcon: Icons.lock_clock_outlined,
            controller: _confirmPasswordController,
            obscureText: _obscureConfirmPassword,
            suffixIcon: IconButton(
              icon: Icon(
                _obscureConfirmPassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: const Color(0xFF6B7280),
                size: 20,
              ),
              onPressed: () =>
                  setState(() => _obscureConfirmPassword = !_obscureConfirmPassword),
            ),
            validator: (v) {
              if (v == null || v.isEmpty) return 'Konfirmasi Password tidak boleh kosong';
              if (v != _passwordController.text) return 'Password tidak cocok';
              return null;
            },
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: _agreedToTerms,
                  onChanged: (v) => setState(() => _agreedToTerms = v ?? false),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  side: const BorderSide(color: Color(0xFFD1D5DB)),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      color: const Color(0xFF4B5563),
                      height: 1.5,
                    ),
                    children: [
                      const TextSpan(text: 'Saya menyetujui '),
                      TextSpan(
                        text: 'Syarat & Ketentuan',
                        style: TextStyle(color: AppColors.astraBlue),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(text: ' serta '),
                      TextSpan(
                        text: 'Kebijakan Privasi',
                        style: TextStyle(color: AppColors.astraBlue),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(text: ' AstraMechanic-Hub.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: isLoading ? null : _onRegister,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.astraBlue,
                disabledBackgroundColor: Colors.grey,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      'Lanjutkan',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
