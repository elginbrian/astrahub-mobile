import 'package:flutter/material.dart';

import '../widgets/register/register_header.dart';
import '../widgets/register/register_form.dart';
import '../widgets/register/register_security_notice.dart';
import '../widgets/register/register_footer.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              RegisterHeader(),
              SizedBox(height: 32),
              RegisterForm(),
              SizedBox(height: 24),
              RegisterSecurityNotice(),
              SizedBox(height: 32),
              RegisterFooter(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
