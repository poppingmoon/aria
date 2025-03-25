// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_url_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serverUrlNotifierHash() => r'f1d26cd49ffae5fe9cf7cd15eae5387d3160ceb7';

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

abstract class _$ServerUrlNotifier extends BuildlessAutoDisposeNotifier<Uri> {
  late final String host;

  Uri build(String host);
}

/// See also [ServerUrlNotifier].
@ProviderFor(ServerUrlNotifier)
const serverUrlNotifierProvider = ServerUrlNotifierFamily();

/// See also [ServerUrlNotifier].
class ServerUrlNotifierFamily extends Family<Uri> {
  /// See also [ServerUrlNotifier].
  const ServerUrlNotifierFamily();

  /// See also [ServerUrlNotifier].
  ServerUrlNotifierProvider call(String host) {
    return ServerUrlNotifierProvider(host);
  }

  @override
  ServerUrlNotifierProvider getProviderOverride(
    covariant ServerUrlNotifierProvider provider,
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
  String? get name => r'serverUrlNotifierProvider';
}

/// See also [ServerUrlNotifier].
class ServerUrlNotifierProvider
    extends AutoDisposeNotifierProviderImpl<ServerUrlNotifier, Uri> {
  /// See also [ServerUrlNotifier].
  ServerUrlNotifierProvider(String host)
    : this._internal(
        () => ServerUrlNotifier()..host = host,
        from: serverUrlNotifierProvider,
        name: r'serverUrlNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$serverUrlNotifierHash,
        dependencies: ServerUrlNotifierFamily._dependencies,
        allTransitiveDependencies:
            ServerUrlNotifierFamily._allTransitiveDependencies,
        host: host,
      );

  ServerUrlNotifierProvider._internal(
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
  Uri runNotifierBuild(covariant ServerUrlNotifier notifier) {
    return notifier.build(host);
  }

  @override
  Override overrideWith(ServerUrlNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServerUrlNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<ServerUrlNotifier, Uri> createElement() {
    return _ServerUrlNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServerUrlNotifierProvider && other.host == host;
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
mixin ServerUrlNotifierRef on AutoDisposeNotifierProviderRef<Uri> {
  /// The parameter `host` of this provider.
  String get host;
}

class _ServerUrlNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ServerUrlNotifier, Uri>
    with ServerUrlNotifierRef {
  _ServerUrlNotifierProviderElement(super.provider);

  @override
  String get host => (origin as ServerUrlNotifierProvider).host;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
