import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../data/datasources/auth_api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/google_login_usecase.dart';
import 'package:google_sign_in/google_sign_in.dart';
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

  Future<void> loginWithGoogle() async {
    state = const LoginState.loading();
    try {
      final googleSignIn = GoogleSignIn.instance;
      try {
        await googleSignIn.initialize();
      } catch (_) {
        // Ignore if already initialized
      }

      final googleUser = await googleSignIn.authenticate();
      final googleAuth = googleUser.authentication;
      final idToken = googleAuth.idToken;

      if (idToken == null) {
        state = const LoginState.error('Gagal mendapatkan token Google');
        return;
      }

      final useCase = ref.read(googleLoginUseCaseProvider);
      final result = await useCase(idToken);

      result.fold(
        (failure) {
          googleSignIn.signOut();
          state = LoginState.error(failure.message);
        },
        (googleResult) {
          if (googleResult.needsRegistration) {
            state = LoginState.error('Pendaftaran akun Google belum selesai. Fitur ini masih dikembangkan.');
            // TODO: Route to Google Register page to complete phone number
          } else {
            state = LoginState.success(googleResult.user!);
          }
        },
      );
    } catch (e) {
      if (e is GoogleSignInException && e.code == GoogleSignInExceptionCode.canceled) {
        state = const LoginState.initial();
      } else {
        state = LoginState.error('Gagal masuk dengan Google: $e');
      }
    }
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

final googleLoginUseCaseProvider = Provider<GoogleLoginUseCase>((ref) {
  final apiService = AuthApiService(getIt<DioClient>().instance);
  final repository = AuthRepositoryImpl(
    apiService: apiService,
    secureStorage: getIt<SecureStorage>(),
  );
  return GoogleLoginUseCase(repository);
});
