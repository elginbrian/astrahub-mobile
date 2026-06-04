import 'package:flutter/material.dart';

import '../widgets/login/login_header.dart';
import '../widgets/login/login_form.dart';
import '../widgets/login/login_footer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 24),
              LoginHeader(),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginForm(),
              ),
              SizedBox(height: 32),
              LoginFooter(),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
