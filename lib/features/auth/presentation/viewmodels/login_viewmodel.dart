import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/usecases/login_usecase.dart';
import 'login_state.dart';

part 'login_viewmodel.g.dart';
@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => const LoginState.initial();

  Future<void> login({
    required String phone,
    required String password,
    bool rememberMe = false,
  }) async {
    state = const LoginState.loading();

    final useCase = ref.read(loginUseCaseProvider);
    final result = await useCase(
      LoginParams(phone: phone, password: password, rememberMe: rememberMe),
    );

    result.fold(
      (failure) => state = LoginState.error(failure.message),
      (user) => state = LoginState.success(user),
    );
  }
}

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  final apiService = AuthApiService(getIt<DioClient>().instance);
  final repository = AuthRepositoryImpl(
    apiService: apiService,
    secureStorage: getIt<SecureStorage>(),
  );
  return LoginUseCase(repository);
});
