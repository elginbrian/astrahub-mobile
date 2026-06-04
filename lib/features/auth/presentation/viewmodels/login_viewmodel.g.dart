// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginViewModelHash() => r'3fbd00d4504a5652bba8b4ad27d8185fea1e1e64';

/// MVVM ViewModel – bridges the domain use case with the UI.
///
/// The UI reads [loginViewModelProvider] and calls [login].
/// It NEVER imports use cases or repositories directly.
///
/// Copied from [LoginViewModel].
@ProviderFor(LoginViewModel)
final loginViewModelProvider =
    AutoDisposeNotifierProvider<LoginViewModel, LoginState>.internal(
      LoginViewModel.new,
      name: r'loginViewModelProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$loginViewModelHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LoginViewModel = AutoDisposeNotifier<LoginState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
