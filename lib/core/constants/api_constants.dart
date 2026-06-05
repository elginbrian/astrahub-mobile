abstract class ApiConstants {
  // ── Base URL ─────────────────────────────────────────────────────
  static const String baseUrl = 'https://astrahub-backend.elginbrian.com/api/v1';

  // ── Timeouts ─────────────────────────────────────────────────────
  static const int connectTimeoutSeconds = 30;
  static const int receiveTimeoutSeconds = 30;

  // ── Auth Endpoints ────────────────────────────────────────────────
  static const String login = '/auth/login';
  static const String logout = '/auth/logout';
  static const String refresh = '/auth/refresh';
  static const String register = '/auth/register';

  // ── Headers ───────────────────────────────────────────────────────
  static const String authorizationHeader = 'Authorization';
  static const String contentTypeHeader = 'Content-Type';
  static const String applicationJson = 'application/json';
}
