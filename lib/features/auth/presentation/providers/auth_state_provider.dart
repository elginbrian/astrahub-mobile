import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user_entity.dart';
import 'current_user_provider.dart';

enum AuthStateStatus {
  initial,
  unauthenticated,
  authenticated,
}

class AuthState {
  final AuthStateStatus status;
  final UserEntity? user;

  const AuthState({
    this.status = AuthStateStatus.initial,
    this.user,
  });

  AuthState copyWith({
    AuthStateStatus? status,
    UserEntity? user,
  }) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }
}

class AuthNotifier extends Notifier<AuthState> implements Listenable {

  @override
  AuthState build() {
    _init();
    return const AuthState();
  }

  Future<void> _init() async {
    // Wait for the splash screen animation to finish
    await Future.delayed(const Duration(milliseconds: 1500));

    final secureStorage = getIt<SecureStorage>();
    final token = await secureStorage.getAccessToken();

    if (token != null && token.isNotEmpty) {
      final repository = ref.read(authRepositoryProvider);
      final result = await repository.getCurrentUser();
      
      result.fold(
        (failure) {
          secureStorage.clearAll();
          state = const AuthState(status: AuthStateStatus.unauthenticated);
        },
        (user) {
          state = AuthState(status: AuthStateStatus.authenticated, user: user);
        },
      );
    } else {
      state = const AuthState(status: AuthStateStatus.unauthenticated);
    }
    _notify();
  }

  void login(UserEntity user) {
    state = AuthState(status: AuthStateStatus.authenticated, user: user);
    _notify();
  }

  Future<void> logout() async {
    final secureStorage = getIt<SecureStorage>();
    await secureStorage.clearAll();
    state = const AuthState(status: AuthStateStatus.unauthenticated);
    _notify();
  }

  void updateProfile(UserEntity user) {
    state = state.copyWith(user: user);
    _notify();
  }

  // --- Listenable Implementation for GoRouter ---
  final List<VoidCallback> _listeners = [];

  @override
  void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);
  }

  void _notify() {
    for (final listener in List<VoidCallback>.from(_listeners)) {
      listener.call();
    }
  }
}

final authStateProvider = NotifierProvider<AuthNotifier, AuthState>(() {
  return AuthNotifier();
});
