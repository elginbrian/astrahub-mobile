// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceDetailViewModelHash() =>
    r'c732420eb47cceac0e2887f316f1bc24b4d470e5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ServiceDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<ServiceDetailEntity?> {
  late final String serviceId;

  FutureOr<ServiceDetailEntity?> build(String serviceId);
}

/// See also [ServiceDetailViewModel].
@ProviderFor(ServiceDetailViewModel)
const serviceDetailViewModelProvider = ServiceDetailViewModelFamily();

/// See also [ServiceDetailViewModel].
class ServiceDetailViewModelFamily
    extends Family<AsyncValue<ServiceDetailEntity?>> {
  /// See also [ServiceDetailViewModel].
  const ServiceDetailViewModelFamily();

  /// See also [ServiceDetailViewModel].
  ServiceDetailViewModelProvider call(String serviceId) {
    return ServiceDetailViewModelProvider(serviceId);
  }

  @override
  ServiceDetailViewModelProvider getProviderOverride(
    covariant ServiceDetailViewModelProvider provider,
  ) {
    return call(provider.serviceId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'serviceDetailViewModelProvider';
}

/// See also [ServiceDetailViewModel].
class ServiceDetailViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ServiceDetailViewModel,
          ServiceDetailEntity?
        > {
  /// See also [ServiceDetailViewModel].
  ServiceDetailViewModelProvider(String serviceId)
    : this._internal(
        () => ServiceDetailViewModel()..serviceId = serviceId,
        from: serviceDetailViewModelProvider,
        name: r'serviceDetailViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$serviceDetailViewModelHash,
        dependencies: ServiceDetailViewModelFamily._dependencies,
        allTransitiveDependencies:
            ServiceDetailViewModelFamily._allTransitiveDependencies,
        serviceId: serviceId,
      );

  ServiceDetailViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.serviceId,
  }) : super.internal();

  final String serviceId;

  @override
  FutureOr<ServiceDetailEntity?> runNotifierBuild(
    covariant ServiceDetailViewModel notifier,
  ) {
    return notifier.build(serviceId);
  }

  @override
  Override overrideWith(ServiceDetailViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServiceDetailViewModelProvider._internal(
        () => create()..serviceId = serviceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        serviceId: serviceId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ServiceDetailViewModel,
    ServiceDetailEntity?
  >
  createElement() {
    return _ServiceDetailViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServiceDetailViewModelProvider &&
        other.serviceId == serviceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, serviceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ServiceDetailViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<ServiceDetailEntity?> {
  /// The parameter `serviceId` of this provider.
  String get serviceId;
}

class _ServiceDetailViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ServiceDetailViewModel,
          ServiceDetailEntity?
        >
    with ServiceDetailViewModelRef {
  _ServiceDetailViewModelProviderElement(super.provider);

  @override
  String get serviceId => (origin as ServiceDetailViewModelProvider).serviceId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
