import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/dashboard/presentation/pages/main_navigation_page.dart';
import '../../features/dashboard/presentation/pages/shop_page.dart';
import '../../features/dashboard/presentation/pages/product_detail_page.dart';
import '../../features/cart/presentation/pages/cart_page.dart';
import '../../features/checkout/presentation/pages/checkout_page.dart';
import '../../features/payment_success/presentation/pages/payment_success_page.dart';
import '../../features/profile/presentation/pages/workshop_activation_page.dart';
import '../../features/profile/presentation/pages/personal_data_activation_page.dart';
import '../../features/purchase_status/presentation/pages/purchase_status_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_1_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_2_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_3_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_4_page.dart';
import '../../features/new_service/presentation/pages/new_service_page.dart';
import '../../features/service_validation/presentation/pages/service_validation_page.dart';
import '../../features/service_payment_success/presentation/pages/service_payment_success_page.dart';
import '../../features/notification/presentation/pages/notification_page.dart';
import '../../features/stock/presentation/pages/stock_page.dart';
import '../../features/auth/presentation/providers/auth_state_provider.dart';
import 'app_routes.dart';
import 'route_guard.dart';

final globalNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider<GoRouter>((ref) {
  final guard = RouteGuard(ref);

  return GoRouter(
    navigatorKey: globalNavigatorKey,
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,
    refreshListenable: ref.read(authStateProvider.notifier),
    redirect: guard.redirect,
    routes: [
      // ── Splash ──────────────────────────────────────────────────────
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splashName,
        builder: (_, __) => const SplashPage(),
      ),

      // ── Onboarding (4 separate screens) ─────────────────────────────
      GoRoute(
        path: AppRoutes.onboarding1,
        name: AppRoutes.onboarding1Name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const Onboarding1Page(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.onboarding2,
        name: AppRoutes.onboarding2Name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const Onboarding2Page(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.onboarding3,
        name: AppRoutes.onboarding3Name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const Onboarding3Page(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.onboarding4,
        name: AppRoutes.onboarding4Name,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const Onboarding4Page(),
          transitionsBuilder: _slideTransition,
        ),
      ),

      // ── Auth ────────────────────────────────────────────────────────
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.loginName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.registerName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const RegisterPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      
      // ── Main Shell ──────────────────────────────────────────────────
      GoRoute(
        path: AppRoutes.main,
        name: AppRoutes.mainName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const MainNavigationPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      
      GoRoute(
        path: AppRoutes.shop,
        name: AppRoutes.shopName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ShopPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.productDetail,
        name: AppRoutes.productDetailName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ProductDetailPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.cart,
        name: AppRoutes.cartName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const CartPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.checkout,
        name: AppRoutes.checkoutName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const CheckoutPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.paymentSuccess,
        name: AppRoutes.paymentSuccessName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const PaymentSuccessPage(),
          transitionsBuilder: _scaleFadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.purchaseStatus,
        name: AppRoutes.purchaseStatusName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const PurchaseStatusPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.newService,
        name: AppRoutes.newServiceName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const NewServicePage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.serviceValidation,
        name: AppRoutes.serviceValidationName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ServiceValidationPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.servicePaymentSuccess,
        name: AppRoutes.servicePaymentSuccessName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const ServicePaymentSuccessPage(),
          transitionsBuilder: _scaleFadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.notification,
        name: AppRoutes.notificationName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const NotificationPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.workshopActivation,
        name: AppRoutes.workshopActivationName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const WorkshopActivationPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.personalDataActivation,
        name: AppRoutes.personalDataActivationName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const PersonalDataActivationPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.stock,
        name: AppRoutes.stockName,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const StockPage(),
          transitionsBuilder: _slideTransition,
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('Route not found: ${state.error}')),
    ),
  );
});

// ── Transitions ───────────────────────────────────────────────────────────────

Widget _slideTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
    child: child,
  );
}

Widget _fadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(opacity: animation, child: child);
}

Widget _scaleFadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(
    opacity: animation,
    child: ScaleTransition(
      scale: Tween<double>(begin: 0.92, end: 1.0)
          .animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
      child: child,
    ),
  );
}