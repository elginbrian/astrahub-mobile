import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class RouteGuard {
  RouteGuard(this._ref);

  final Ref _ref;

  // All onboarding screens + auth screens are public (no login required)
  static const _publicRoutes = {
    AppRoutes.splash,
    AppRoutes.onboarding1,
    AppRoutes.onboarding2,
    AppRoutes.onboarding3,
    AppRoutes.onboarding4,
    AppRoutes.login,
    AppRoutes.register,
    AppRoutes.shop,
    AppRoutes.productDetail,
    AppRoutes.cart,
    AppRoutes.checkout,
    AppRoutes.paymentSuccess,
    AppRoutes.purchaseStatus,
  };

  Future<String?> redirect(_, GoRouterState state) async {
    // TODO: replace with real auth state from Riverpod provider
    const isAuthenticated = false;

    final isPublic = _publicRoutes.contains(state.matchedLocation);

    if (!isAuthenticated && !isPublic) {
      return AppRoutes.login;
    }
    if (isAuthenticated && state.matchedLocation == AppRoutes.login) {
      return AppRoutes.shop;
    }
    return null;
  }
}
