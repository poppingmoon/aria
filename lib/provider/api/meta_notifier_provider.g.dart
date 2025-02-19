// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$metaNotifierHash() => r'e34b01c7ec22300cbbf7cc15a59972678f73df36';

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

abstract class _$MetaNotifier
    extends BuildlessAutoDisposeStreamNotifier<MetaResponse> {
  late final String host;

  Stream<MetaResponse> build(String host);
}

/// See also [MetaNotifier].
@ProviderFor(MetaNotifier)
const metaNotifierProvider = MetaNotifierFamily();

/// See also [MetaNotifier].
class MetaNotifierFamily extends Family<AsyncValue<MetaResponse>> {
  /// See also [MetaNotifier].
  const MetaNotifierFamily();

  /// See also [MetaNotifier].
  MetaNotifierProvider call(String host) {
    return MetaNotifierProvider(host);
  }

  @override
  MetaNotifierProvider getProviderOverride(
    covariant MetaNotifierProvider provider,
  ) {
    return call(provider.host);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'metaNotifierProvider';
}

/// See also [MetaNotifier].
class MetaNotifierProvider
    extends AutoDisposeStreamNotifierProviderImpl<MetaNotifier, MetaResponse> {
  /// See also [MetaNotifier].
  MetaNotifierProvider(String host)
    : this._internal(
        () => MetaNotifier()..host = host,
        from: metaNotifierProvider,
        name: r'metaNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$metaNotifierHash,
        dependencies: MetaNotifierFamily._dependencies,
        allTransitiveDependencies:
            MetaNotifierFamily._allTransitiveDependencies,
        host: host,
      );

  MetaNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
  }) : super.internal();

  final String host;

  @override
  Stream<MetaResponse> runNotifierBuild(covariant MetaNotifier notifier) {
    return notifier.build(host);
  }

  @override
  Override overrideWith(MetaNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MetaNotifierProvider._internal(
        () => create()..host = host,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<MetaNotifier, MetaResponse>
  createElement() {
    return _MetaNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MetaNotifierProvider && other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MetaNotifierRef on AutoDisposeStreamNotifierProviderRef<MetaResponse> {
  /// The parameter `host` of this provider.
  String get host;
}

class _MetaNotifierProviderElement
    extends AutoDisposeStreamNotifierProviderElement<MetaNotifier, MetaResponse>
    with MetaNotifierRef {
  _MetaNotifierProviderElement(super.provider);

  @override
  String get host => (origin as MetaNotifierProvider).host;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
