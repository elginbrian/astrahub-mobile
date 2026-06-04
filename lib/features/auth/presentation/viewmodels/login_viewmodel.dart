import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/usecases/login_usecase.dart';
import 'login_state.dart';

part 'login_viewmodel.g.dart';
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

final loginUseCaseProvider = Provider<LoginUseCase>((ref) {
  throw UnimplementedError('Register AuthRepository in injection.dart');
});
