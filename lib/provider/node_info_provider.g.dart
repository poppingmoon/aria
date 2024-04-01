// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$nodeInfoHash() => r'f288eddf05a0f3473fdf1733957b0dd7d47c0578';

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

/// See also [nodeInfo].
@ProviderFor(nodeInfo)
const nodeInfoProvider = NodeInfoFamily();

/// See also [nodeInfo].
class NodeInfoFamily extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [nodeInfo].
  const NodeInfoFamily();

  /// See also [nodeInfo].
  NodeInfoProvider call(
    String host,
  ) {
    return NodeInfoProvider(
      host,
    );
  }

  @override
  NodeInfoProvider getProviderOverride(
    covariant NodeInfoProvider provider,
  ) {
    return call(
      provider.host,
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
  String? get name => r'nodeInfoProvider';
}

/// See also [nodeInfo].
class NodeInfoProvider extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [nodeInfo].
  NodeInfoProvider(
    String host,
  ) : this._internal(
          (ref) => nodeInfo(
            ref as NodeInfoRef,
            host,
          ),
          from: nodeInfoProvider,
          name: r'nodeInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$nodeInfoHash,
          dependencies: NodeInfoFamily._dependencies,
          allTransitiveDependencies: NodeInfoFamily._allTransitiveDependencies,
          host: host,
        );

  NodeInfoProvider._internal(
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
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(NodeInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NodeInfoProvider._internal(
        (ref) => create(ref as NodeInfoRef),
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
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _NodeInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NodeInfoProvider && other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NodeInfoRef on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `host` of this provider.
  String get host;
}

class _NodeInfoProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with NodeInfoRef {
  _NodeInfoProviderElement(super.provider);

  @override
  String get host => (origin as NodeInfoProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
