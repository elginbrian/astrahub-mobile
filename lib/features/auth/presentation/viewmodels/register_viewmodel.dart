import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/usecases/register_usecase.dart';
import 'register_state.dart';

part 'register_viewmodel.g.dart';

@riverpod
class RegisterViewModel extends _$RegisterViewModel {
  @override
  RegisterState build() => const RegisterState.initial();

  Future<void> register({
    required String fullName,
    required String phone,
    String? email,
    required String password,
    required String passwordConfirmation,
    required bool agreeTerms,
  }) async {
    state = const RegisterState.loading();

    final useCase = ref.read(registerUseCaseProvider);
    final result = await useCase(
      RegisterParams(
        fullName: fullName,
        phone: phone,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
        agreeTerms: agreeTerms,
      ),
    );

    result.fold(
      (failure) => state = RegisterState.error(failure.message),
      (user) => state = RegisterState.success(user),
    );
  }
}

final registerUseCaseProvider = Provider<RegisterUseCase>((ref) {
  final apiService = AuthApiService(getIt<DioClient>().instance);
  final repository = AuthRepositoryImpl(
    apiService: apiService,
    secureStorage: getIt<SecureStorage>(),
  );
  return RegisterUseCase(repository);
});
