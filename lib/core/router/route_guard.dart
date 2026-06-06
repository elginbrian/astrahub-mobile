import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/providers/auth_state_provider.dart';
import 'app_routes.dart';

class RouteGuard {
  RouteGuard(this._ref);

  final Ref _ref;

  // Routes that do NOT require authentication
  static const _publicRoutes = {
    AppRoutes.splash,
    AppRoutes.onboarding1,
    AppRoutes.onboarding2,
    AppRoutes.onboarding3,
    AppRoutes.onboarding4,
    AppRoutes.login,
    AppRoutes.register,
  };

  String? redirect(BuildContext context, GoRouterState state) {
    final authState = _ref.read(authStateProvider);
    final status = authState.status;

    // While initializing, keep on splash screen
    if (status == AuthStateStatus.initial) {
      if (state.matchedLocation != AppRoutes.splash) {
        return AppRoutes.splash;
      }
      return null;
    }

    // If we are on the splash screen but no longer initializing, redirect
    if (state.matchedLocation == AppRoutes.splash) {
      if (status == AuthStateStatus.authenticated) {
        return AppRoutes.main;
      } else {
        return AppRoutes.onboarding1;
      }
    }

    final isPublicRoute = _publicRoutes.contains(state.matchedLocation);

    // If unauthenticated, redirect to login unless on a public route
    if (status == AuthStateStatus.unauthenticated) {
      if (!isPublicRoute) {
        return AppRoutes.login;
      }
      return null;
    }

    // If authenticated, prevent access to auth/public pages
    if (status == AuthStateStatus.authenticated) {
      if (isPublicRoute || state.matchedLocation == AppRoutes.login || state.matchedLocation == AppRoutes.register) {
        return AppRoutes.main;
      }

      // Specific guard for workshop activation
      if (state.matchedLocation == AppRoutes.workshopActivation) {
        final hasWorkshop = authState.user?.workshopId != null;
        if (hasWorkshop) {
          return AppRoutes.main;
        }
      }
    }

    return null;
  }
}
