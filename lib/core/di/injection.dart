import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/dio_client.dart';
import '../network/api_interceptor.dart';
import '../storage/local_storage.dart';
import '../storage/secure_storage.dart';
import '../../features/cashier/data/datasources/cashier_api_service.dart';
import '../../features/cashier/data/repositories/cashier_repository_impl.dart';
import '../../features/cashier/domain/repositories/cashier_repository.dart';
import '../../features/shop/data/datasources/shop_api_service.dart';
import '../../features/shop/data/repositories/shop_repository_impl.dart';
import '../../features/shop/domain/repositories/shop_repository.dart';
import '../../features/report/data/datasources/report_api_service.dart';
import '../../features/report/data/repositories/report_repository_impl.dart';
import '../../features/report/domain/repositories/report_repository.dart';
import '../../features/profile/data/datasources/profile_api_service.dart';
import '../../features/profile/data/repositories/profile_repository_impl.dart';
import '../../features/profile/domain/repositories/profile_repository.dart';
import '../../features/stock/data/datasources/stock_api_service.dart';
import '../../features/stock/data/repositories/stock_repository_impl.dart';
import '../../features/stock/domain/repositories/stock_repository.dart';
import '../../features/home/data/datasources/home_api_service.dart';
import '../../features/home/data/repositories/home_repository_impl.dart';
import '../../features/home/domain/repositories/home_repository.dart';
import '../../features/notification/data/datasources/notification_api_service.dart';
import '../../features/notification/data/repositories/notification_repository_impl.dart';
import '../../features/notification/domain/repositories/notification_repository.dart';
import '../../features/finance/data/datasources/finance_api_service.dart';
import '../../features/finance/data/repositories/finance_repository_impl.dart';
import '../../features/finance/domain/repositories/finance_repository.dart';

final getIt = GetIt.instance;

/// Top-level DI bootstrap. Call once in [main] before [runApp].
Future<void> setupDependencies() async {
  // ── External ─────────────────────────────────────────────────────
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPrefs);

  // ── Storage ───────────────────────────────────────────────────────
  getIt.registerLazySingleton<LocalStorage>(
    () => LocalStorageImpl(getIt()),
  );
  getIt.registerLazySingleton<SecureStorage>(
    () => SecureStorageImpl(),
  );

  // ── Network ───────────────────────────────────────────────────────
  getIt.registerLazySingleton<ApiInterceptor>(
    () => ApiInterceptor(getIt<SecureStorage>()),
  );
  getIt.registerLazySingleton<DioClient>(
    () => DioClient(getIt<ApiInterceptor>()),
  );

  // ── Register Feature Dependencies ─────────────────────────────────
  
  // Home Feature
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(apiService: getIt<HomeApiService>()),
  );

  // Notification Feature
  getIt.registerLazySingleton<NotificationApiService>(
    () => NotificationApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(apiService: getIt<NotificationApiService>()),
  );

  // Profile Feature
  getIt.registerLazySingleton<ProfileApiService>(
    () => ProfileApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(apiService: getIt<ProfileApiService>()),
  );

  // Cashier Feature
  getIt.registerLazySingleton<CashierApiService>(
    () => CashierApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<CashierRepository>(
    () => CashierRepositoryImpl(apiService: getIt<CashierApiService>()),
  );

  // Shop Feature
  getIt.registerLazySingleton<ShopApiService>(
    () => ShopApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<ShopRepository>(
    () => ShopRepositoryImpl(apiService: getIt<ShopApiService>()),
  );

  // Report Feature
  getIt.registerLazySingleton<ReportApiService>(
    () => ReportApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<ReportRepository>(
    () => ReportRepositoryImpl(apiService: getIt<ReportApiService>()),
  );

  // Stock Feature
  getIt.registerLazySingleton<StockApiService>(
    () => StockApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<StockRepository>(
    () => StockRepositoryImpl(apiService: getIt<StockApiService>()),
  );

  // Finance Feature
  getIt.registerLazySingleton<FinanceApiService>(
    () => FinanceApiService(getIt<DioClient>().instance),
  );
  
  getIt.registerLazySingleton<FinanceRepository>(
    () => FinanceRepositoryImpl(apiService: getIt<FinanceApiService>()),
  );
}
