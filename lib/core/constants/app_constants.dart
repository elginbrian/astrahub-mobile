abstract class AppConstants {
  // ── App Info ──────────────────────────────────────────────────────
  static const String appName = 'AstraHub';
  static const String version = '1.0.0';

  // ── Storage Keys ──────────────────────────────────────────────────
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String userKey = 'current_user';
  static const String themeKey = 'app_theme';
  static const String localeKey = 'app_locale';

  // ── Pagination ────────────────────────────────────────────────────
  static const int defaultPageSize = 20;
  static const int firstPage = 1;

  // ── Animation Durations ───────────────────────────────────────────
  static const Duration animFast = Duration(milliseconds: 200);
  static const Duration animMedium = Duration(milliseconds: 350);
  static const Duration animSlow = Duration(milliseconds: 500);
}
