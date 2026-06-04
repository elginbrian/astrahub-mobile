
part of 'login_viewmodel.dart';

String _$loginViewModelHash() => r'3fbd00d4504a5652bba8b4ad27d8185fea1e1e64';
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
