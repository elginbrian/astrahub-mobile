import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/usecases/login_usecase.dart';
import 'login_state.dart';

part 'login_viewmodel.g.dart';

/// MVVM ViewModel – bridges the domain use case with the UI.
///
/// The UI reads [loginViewModelProvider] and calls [login].
/// It NEVER imports use cases or repositories directly.
@riverpod
class LoginViewModel extends _$LoginViewModel {
  @override
  LoginState build() => const LoginState.initial();

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const LoginState.loading();

    final useCase = ref.read(loginUseCaseProvider);
    final result = await useCase(
      LoginParams(email: email, password: password),
    );

    result.fold(
      (failure) => state = LoginState.error(failure.message),
      (user) => state = LoginState.success(user),
    );
  }
}

// ── Dependency providers ──────────────────────────────────────────────────────

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  // TODO: inject from GetIt / override in tests
  throw UnimplementedError('Register AuthRepository in injection.dart');
});
