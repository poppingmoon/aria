// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pushSubscriptionNotifierHash() =>
    r'74f91dcac8231f897d5854fda5234edf7e271ff1';

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

abstract class _$PushSubscriptionNotifier
    extends BuildlessAutoDisposeNotifier<String?> {
  late final Account account;

  String? build(
    Account account,
  );
}

/// See also [PushSubscriptionNotifier].
@ProviderFor(PushSubscriptionNotifier)
const pushSubscriptionNotifierProvider = PushSubscriptionNotifierFamily();

/// See also [PushSubscriptionNotifier].
class PushSubscriptionNotifierFamily extends Family<String?> {
  /// See also [PushSubscriptionNotifier].
  const PushSubscriptionNotifierFamily();

  /// See also [PushSubscriptionNotifier].
  PushSubscriptionNotifierProvider call(
    Account account,
  ) {
    return PushSubscriptionNotifierProvider(
      account,
    );
  }

  @override
  PushSubscriptionNotifierProvider getProviderOverride(
    covariant PushSubscriptionNotifierProvider provider,
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
  String? get name => r'pushSubscriptionNotifierProvider';
}

/// See also [PushSubscriptionNotifier].
class PushSubscriptionNotifierProvider
    extends AutoDisposeNotifierProviderImpl<PushSubscriptionNotifier, String?> {
  /// See also [PushSubscriptionNotifier].
  PushSubscriptionNotifierProvider(
    Account account,
  ) : this._internal(
          () => PushSubscriptionNotifier()..account = account,
          from: pushSubscriptionNotifierProvider,
          name: r'pushSubscriptionNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pushSubscriptionNotifierHash,
          dependencies: PushSubscriptionNotifierFamily._dependencies,
          allTransitiveDependencies:
              PushSubscriptionNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  PushSubscriptionNotifierProvider._internal(
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
  String? runNotifierBuild(
    covariant PushSubscriptionNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(PushSubscriptionNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PushSubscriptionNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<PushSubscriptionNotifier, String?>
      createElement() {
    return _PushSubscriptionNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PushSubscriptionNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PushSubscriptionNotifierRef on AutoDisposeNotifierProviderRef<String?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PushSubscriptionNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<PushSubscriptionNotifier,
        String?> with PushSubscriptionNotifierRef {
  _PushSubscriptionNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PushSubscriptionNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
