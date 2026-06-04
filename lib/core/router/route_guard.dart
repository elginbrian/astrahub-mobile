import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

/// Handles authentication-based redirect logic for GoRouter.
class RouteGuard {
  RouteGuard(this._ref);

  final Ref _ref;

  /// Called by GoRouter on every navigation event.
  Future<String?> redirect(_, GoRouterState state) async {
    // TODO: replace with real auth state from Riverpod provider
    const isAuthenticated = false;

    final isSplash = state.matchedLocation == AppRoutes.splash;
    final isLogin = state.matchedLocation == AppRoutes.login;

    if (!isAuthenticated && !isLogin && !isSplash) {
      return AppRoutes.login;
    }
    if (isAuthenticated && isLogin) {
      return AppRoutes.dashboard;
    }
    return null;
  }
}
