// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_push_key_set_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$webPushKeySetNotifierNotifierHash() =>
    r'b498be4c3fccaf0eb6bb5df4701af403634699f8';

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

abstract class _$WebPushKeySetNotifierNotifier
    extends BuildlessAsyncNotifier<WebPushKeySet?> {
  late final Account account;

  FutureOr<WebPushKeySet?> build(
    Account account,
  );
}

/// See also [WebPushKeySetNotifierNotifier].
@ProviderFor(WebPushKeySetNotifierNotifier)
const webPushKeySetNotifierNotifierProvider =
    WebPushKeySetNotifierNotifierFamily();

/// See also [WebPushKeySetNotifierNotifier].
class WebPushKeySetNotifierNotifierFamily
    extends Family<AsyncValue<WebPushKeySet?>> {
  /// See also [WebPushKeySetNotifierNotifier].
  const WebPushKeySetNotifierNotifierFamily();

  /// See also [WebPushKeySetNotifierNotifier].
  WebPushKeySetNotifierNotifierProvider call(
    Account account,
  ) {
    return WebPushKeySetNotifierNotifierProvider(
      account,
    );
  }

  @override
  WebPushKeySetNotifierNotifierProvider getProviderOverride(
    covariant WebPushKeySetNotifierNotifierProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'webPushKeySetNotifierNotifierProvider';
}

/// See also [WebPushKeySetNotifierNotifier].
class WebPushKeySetNotifierNotifierProvider extends AsyncNotifierProviderImpl<
    WebPushKeySetNotifierNotifier, WebPushKeySet?> {
  /// See also [WebPushKeySetNotifierNotifier].
  WebPushKeySetNotifierNotifierProvider(
    Account account,
  ) : this._internal(
          () => WebPushKeySetNotifierNotifier()..account = account,
          from: webPushKeySetNotifierNotifierProvider,
          name: r'webPushKeySetNotifierNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$webPushKeySetNotifierNotifierHash,
          dependencies: WebPushKeySetNotifierNotifierFamily._dependencies,
          allTransitiveDependencies:
              WebPushKeySetNotifierNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  WebPushKeySetNotifierNotifierProvider._internal(
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
    covariant WebPushKeySetNotifierNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(WebPushKeySetNotifierNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: WebPushKeySetNotifierNotifierProvider._internal(
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
  AsyncNotifierProviderElement<WebPushKeySetNotifierNotifier, WebPushKeySet?>
      createElement() {
    return _WebPushKeySetNotifierNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WebPushKeySetNotifierNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WebPushKeySetNotifierNotifierRef
    on AsyncNotifierProviderRef<WebPushKeySet?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _WebPushKeySetNotifierNotifierProviderElement
    extends AsyncNotifierProviderElement<WebPushKeySetNotifierNotifier,
        WebPushKeySet?> with WebPushKeySetNotifierNotifierRef {
  _WebPushKeySetNotifierNotifierProviderElement(super.provider);

  @override
  Account get account =>
      (origin as WebPushKeySetNotifierNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
