import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/router/app_routes.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/error/failures.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnim = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    _navigate();
  }

  Future<void> _navigate() async {
    // Wait for the animation
    await Future.delayed(const Duration(milliseconds: 1500));
    
    // Check if component is still mounted and AuthState is resolved
    if (!mounted) return;

    // The GoRouter's redirect logic inside RouteGuard will automatically
    // route the user to login or main once authState resolves.
    // If it's already resolved by the time we get here, GoRouter might not
    // re-trigger redirect if location doesn't change. We can force it by going
    // to a dummy splash action or we just let it be. But actually,
    // if AuthNotifier resolves while we are on splash, RouteGuard's redirect
    // will be invoked because refreshListenable notifies the router!
    
    // We don't need manual context.goNamed() anymore because RouteGuard
    // forces redirect when AuthState changes from initial to authenticated/unauthenticated.
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.astraBlue,
      body: FadeTransition(
        opacity: _fadeAnim,
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.hub_rounded, size: 72, color: AppColors.white),
              SizedBox(height: 16),
              Text(
                'AstraHub',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
