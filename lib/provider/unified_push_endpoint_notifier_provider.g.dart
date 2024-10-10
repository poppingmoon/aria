// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unified_push_endpoint_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unifiedPushEndpointNotifierHash() =>
    r'3f75d1fc1b47935113c253744f1e1aac307dac9a';

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
    extends BuildlessNotifier<String?> {
  late final String instance;

  String? build(
    String instance,
  );
}

/// See also [UnifiedPushEndpointNotifier].
@ProviderFor(UnifiedPushEndpointNotifier)
const unifiedPushEndpointNotifierProvider = UnifiedPushEndpointNotifierFamily();

/// See also [UnifiedPushEndpointNotifier].
class UnifiedPushEndpointNotifierFamily extends Family<String?> {
  /// See also [UnifiedPushEndpointNotifier].
  const UnifiedPushEndpointNotifierFamily();

  /// See also [UnifiedPushEndpointNotifier].
  UnifiedPushEndpointNotifierProvider call(
    String instance,
  ) {
    return UnifiedPushEndpointNotifierProvider(
      instance,
    );
  }

  @override
  UnifiedPushEndpointNotifierProvider getProviderOverride(
    covariant UnifiedPushEndpointNotifierProvider provider,
  ) {
    return call(
      provider.instance,
    );
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
    extends NotifierProviderImpl<UnifiedPushEndpointNotifier, String?> {
  /// See also [UnifiedPushEndpointNotifier].
  UnifiedPushEndpointNotifierProvider(
    String instance,
  ) : this._internal(
          () => UnifiedPushEndpointNotifier()..instance = instance,
          from: unifiedPushEndpointNotifierProvider,
          name: r'unifiedPushEndpointNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
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
  String? runNotifierBuild(
    covariant UnifiedPushEndpointNotifier notifier,
  ) {
    return notifier.build(
      instance,
    );
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
  NotifierProviderElement<UnifiedPushEndpointNotifier, String?>
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

mixin UnifiedPushEndpointNotifierRef on NotifierProviderRef<String?> {
  /// The parameter `instance` of this provider.
  String get instance;
}

class _UnifiedPushEndpointNotifierProviderElement
    extends NotifierProviderElement<UnifiedPushEndpointNotifier, String?>
    with UnifiedPushEndpointNotifierRef {
  _UnifiedPushEndpointNotifierProviderElement(super.provider);

  @override
  String get instance =>
      (origin as UnifiedPushEndpointNotifierProvider).instance;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
