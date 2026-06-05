import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../auth/data/datasources/auth_api_service.dart';
import '../../../auth/data/repositories/auth_repository_impl.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Profile Page (Coming Soon)',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () async {
                // Logout logic
                final apiService = AuthApiService(getIt<DioClient>().instance);
                final repository = AuthRepositoryImpl(
                  apiService: apiService,
                  secureStorage: getIt<SecureStorage>(),
                );
                await repository.logout();
                
                if (context.mounted) {
                  context.goNamed(AppRoutes.onboarding1Name);
                }
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.astraBlue,
                foregroundColor: Colors.white,
                elevation: 4,
                shadowColor: AppColors.astraBlue.withOpacity(0.5),
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
