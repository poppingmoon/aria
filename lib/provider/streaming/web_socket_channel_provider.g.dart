// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_channel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webSocketChannelHash() => r'e30b2364f99bb94031a62ae01df616e5e260b12a';

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

/// See also [webSocketChannel].
@ProviderFor(webSocketChannel)
const webSocketChannelProvider = WebSocketChannelFamily();

/// See also [webSocketChannel].
class WebSocketChannelFamily extends Family<(WebSocketChannel, DateTime)> {
  /// See also [webSocketChannel].
  const WebSocketChannelFamily();

  /// See also [webSocketChannel].
  WebSocketChannelProvider call(Account account) {
    return WebSocketChannelProvider(account);
  }

  @override
  WebSocketChannelProvider getProviderOverride(
    covariant WebSocketChannelProvider provider,
  ) {
    return call(provider.account);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'webSocketChannelProvider';
}

/// See also [webSocketChannel].
class WebSocketChannelProvider
    extends AutoDisposeProvider<(WebSocketChannel, DateTime)> {
  /// See also [webSocketChannel].
  WebSocketChannelProvider(Account account)
    : this._internal(
        (ref) => webSocketChannel(ref as WebSocketChannelRef, account),
        from: webSocketChannelProvider,
        name: r'webSocketChannelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$webSocketChannelHash,
        dependencies: WebSocketChannelFamily._dependencies,
        allTransitiveDependencies:
            WebSocketChannelFamily._allTransitiveDependencies,
        account: account,
      );

  WebSocketChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Override overrideWith(
    (WebSocketChannel, DateTime) Function(WebSocketChannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WebSocketChannelProvider._internal(
        (ref) => create(ref as WebSocketChannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<(WebSocketChannel, DateTime)> createElement() {
    return _WebSocketChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebSocketChannelProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WebSocketChannelRef
    on AutoDisposeProviderRef<(WebSocketChannel, DateTime)> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _WebSocketChannelProviderElement
    extends AutoDisposeProviderElement<(WebSocketChannel, DateTime)>
    with WebSocketChannelRef {
  _WebSocketChannelProviderElement(super.provider);

  @override
  Account get account => (origin as WebSocketChannelProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
