// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_push_key_set_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webPushKeySetNotifierHash() =>
    r'd1740faccd1248acc40b5045ef15f1dbcb215252';

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

abstract class _$WebPushKeySetNotifier
    extends BuildlessAsyncNotifier<WebPushKeySet?> {
  late final Account account;

  FutureOr<WebPushKeySet?> build(Account account);
}

/// See also [WebPushKeySetNotifier].
@ProviderFor(WebPushKeySetNotifier)
const webPushKeySetNotifierProvider = WebPushKeySetNotifierFamily();

/// See also [WebPushKeySetNotifier].
class WebPushKeySetNotifierFamily extends Family<AsyncValue<WebPushKeySet?>> {
  /// See also [WebPushKeySetNotifier].
  const WebPushKeySetNotifierFamily();

  /// See also [WebPushKeySetNotifier].
  WebPushKeySetNotifierProvider call(Account account) {
    return WebPushKeySetNotifierProvider(account);
  }

  @override
  WebPushKeySetNotifierProvider getProviderOverride(
    covariant WebPushKeySetNotifierProvider provider,
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
  String? get name => r'webPushKeySetNotifierProvider';
}

/// See also [WebPushKeySetNotifier].
class WebPushKeySetNotifierProvider
    extends AsyncNotifierProviderImpl<WebPushKeySetNotifier, WebPushKeySet?> {
  /// See also [WebPushKeySetNotifier].
  WebPushKeySetNotifierProvider(Account account)
    : this._internal(
        () => WebPushKeySetNotifier()..account = account,
        from: webPushKeySetNotifierProvider,
        name: r'webPushKeySetNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$webPushKeySetNotifierHash,
        dependencies: WebPushKeySetNotifierFamily._dependencies,
        allTransitiveDependencies:
            WebPushKeySetNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  WebPushKeySetNotifierProvider._internal(
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
  FutureOr<WebPushKeySet?> runNotifierBuild(
    covariant WebPushKeySetNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(WebPushKeySetNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: WebPushKeySetNotifierProvider._internal(
        () => create()..account = account,
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
  AsyncNotifierProviderElement<WebPushKeySetNotifier, WebPushKeySet?>
  createElement() {
    return _WebPushKeySetNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebPushKeySetNotifierProvider && other.account == account;
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
mixin WebPushKeySetNotifierRef on AsyncNotifierProviderRef<WebPushKeySet?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _WebPushKeySetNotifierProviderElement
    extends AsyncNotifierProviderElement<WebPushKeySetNotifier, WebPushKeySet?>
    with WebPushKeySetNotifierRef {
  _WebPushKeySetNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as WebPushKeySetNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
