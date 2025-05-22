// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unified_push_endpoint_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unifiedPushEndpointNotifierHash() =>
    r'4d2342848f3cba07157455b2567deb5afa5a81d1';

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

abstract class _$UnifiedPushEndpointNotifier
    extends BuildlessNotifier<PushEndpoint?> {
  late final String instance;

  PushEndpoint? build(String instance);
}

/// See also [UnifiedPushEndpointNotifier].
@ProviderFor(UnifiedPushEndpointNotifier)
const unifiedPushEndpointNotifierProvider = UnifiedPushEndpointNotifierFamily();

/// See also [UnifiedPushEndpointNotifier].
class UnifiedPushEndpointNotifierFamily extends Family<PushEndpoint?> {
  /// See also [UnifiedPushEndpointNotifier].
  const UnifiedPushEndpointNotifierFamily();

  /// See also [UnifiedPushEndpointNotifier].
  UnifiedPushEndpointNotifierProvider call(String instance) {
    return UnifiedPushEndpointNotifierProvider(instance);
  }

  @override
  UnifiedPushEndpointNotifierProvider getProviderOverride(
    covariant UnifiedPushEndpointNotifierProvider provider,
  ) {
    return call(provider.instance);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'unifiedPushEndpointNotifierProvider';
}

/// See also [UnifiedPushEndpointNotifier].
class UnifiedPushEndpointNotifierProvider
    extends NotifierProviderImpl<UnifiedPushEndpointNotifier, PushEndpoint?> {
  /// See also [UnifiedPushEndpointNotifier].
  UnifiedPushEndpointNotifierProvider(String instance)
    : this._internal(
        () => UnifiedPushEndpointNotifier()..instance = instance,
        from: unifiedPushEndpointNotifierProvider,
        name: r'unifiedPushEndpointNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$unifiedPushEndpointNotifierHash,
        dependencies: UnifiedPushEndpointNotifierFamily._dependencies,
        allTransitiveDependencies:
            UnifiedPushEndpointNotifierFamily._allTransitiveDependencies,
        instance: instance,
      );

  UnifiedPushEndpointNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.instance,
  }) : super.internal();

  final String instance;

  @override
  PushEndpoint? runNotifierBuild(
    covariant UnifiedPushEndpointNotifier notifier,
  ) {
    return notifier.build(instance);
  }

  @override
  Override overrideWith(UnifiedPushEndpointNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UnifiedPushEndpointNotifierProvider._internal(
        () => create()..instance = instance,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        instance: instance,
      ),
    );
  }

  @override
  NotifierProviderElement<UnifiedPushEndpointNotifier, PushEndpoint?>
  createElement() {
    return _UnifiedPushEndpointNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnifiedPushEndpointNotifierProvider &&
        other.instance == instance;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, instance.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UnifiedPushEndpointNotifierRef on NotifierProviderRef<PushEndpoint?> {
  /// The parameter `instance` of this provider.
  String get instance;
}

class _UnifiedPushEndpointNotifierProviderElement
    extends NotifierProviderElement<UnifiedPushEndpointNotifier, PushEndpoint?>
    with UnifiedPushEndpointNotifierRef {
  _UnifiedPushEndpointNotifierProviderElement(super.provider);

  @override
  String get instance =>
      (origin as UnifiedPushEndpointNotifierProvider).instance;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
