import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/dio_client.dart';
import '../network/api_interceptor.dart';
import '../storage/local_storage.dart';
import '../storage/secure_storage.dart';

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
  // TODO: register repositories and services per feature
}
