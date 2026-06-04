/// Central registry of all named routes.
///
/// Use [AppRoutes.loginName] with [context.goNamed] for type-safe navigation.
abstract class AppRoutes {
  // ── Paths ──────────────────────────────────────────────────────────
  static const splash = '/';
  static const login = '/login';
  static const dashboard = '/dashboard';

  // ── Names ──────────────────────────────────────────────────────────
  static const splashName = 'splash';
  static const loginName = 'login';
  static const dashboardName = 'dashboard';
}
