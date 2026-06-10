abstract class ApiConstants {
  // ── Base URL ─────────────────────────────────────────────────────
  static const String baseUrl = 'https://astrahub-backend.elginbrian.com/v1';

  // ── Timeouts ─────────────────────────────────────────────────────
  static const int connectTimeoutSeconds = 30;
  static const int receiveTimeoutSeconds = 30;

  // ── Auth Endpoints ────────────────────────────────────────────────
  static const String login = '/auth/login';
  static const String logout = '/auth/logout';
  static const String refresh = '/auth/refresh';
  static const String register = '/auth/register';
  static const String googleLogin = '/auth/google/login';
  static const String googleRegister = '/auth/google/register';

  // ── Profile Endpoints ──────────────────────────────────────────────
  static const String userProfile = '/user/profile';
  static const String profile = '/profile';
  static const String businessScore = '/profile/business-score';
  static const String businessData = '/profile/business-data';
  static const String profileTransactions = '/profile/transactions';

  // ── Cashier (Kasir) Endpoints ─────────────────────────────────────
  static const String cashierDashboard = '/kasir/dashboard';
  static const String cashierServices = '/kasir/services';
  static const String cashierServicesVoice = '/kasir/services/voice';
  static const String cashierHistory = '/kasir/history';
  static const String cashierPayment = '/kasir/services/pay';
  static const String cashierWorkItems = '/kasir/work-items';

  // ── Shop (E-Commerce) Endpoints ───────────────────────────────────
  static const String shopProducts = '/shop/products';
  static const String shopRecommendations = '/shop/recommendations';
  static const String shopCart = '/shop/cart';
  static const String shopCartItems = '/shop/cart/items';
  static const String shopCartItemsBulk = '/shop/cart/items/bulk';
  static const String shopCheckoutSummary = '/shop/checkout/summary';
  static const String shopOrders = '/shop/orders';
  static const String shopAddresses = '/shop/addresses'; // Profile alias
  static const String shopWishlistToggle = '/shop/wishlist/toggle';

  // ── Report (Laporan) Endpoints ────────────────────────────────────
  static const String reportSummary = '/laporan/summary';
  static const String reportStock = '/laporan/stock';
  static const String reportTopServices = '/laporan/top-services';
  static const String reportTransactions = '/laporan/transactions';
  static const String reportInsight = '/laporan/insight';

  // ── Stock Endpoints ───────────────────────────────────────────────
  static const String stok = '/stok';

  // ── Headers ───────────────────────────────────────────────────────
  static const String authorizationHeader = 'Authorization';
  static const String contentTypeHeader = 'Content-Type';
  static const String applicationJson = 'application/json';
}
