import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/user_entity.dart';

final authRepositoryProvider = Provider<AuthRepositoryImpl>((ref) {
  return AuthRepositoryImpl(
    apiService: AuthApiService(getIt<DioClient>().instance),
    secureStorage: getIt<SecureStorage>(),
  );
});

final currentUserProvider = FutureProvider<UserEntity?>((ref) async {
  final repository = ref.read(authRepositoryProvider);
  final result = await repository.getCurrentUser();
  return result.fold(
    (failure) => null,
    (user) => user,
  );
});
