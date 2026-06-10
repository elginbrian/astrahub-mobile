import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/router/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/new_service_app_bar.dart';
import '../widgets/new_service_form.dart';

class NewServicePage extends StatelessWidget {
  const NewServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      appBar: NewServiceAppBar(),
      body: NewServiceForm(),
    );
  }
}
