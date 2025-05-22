// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_ads_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mutedAdsNotifierHash() => r'0bb501756e6c19ce365a1e3ff636799c7ff3ddf7';

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

abstract class _$MutedAdsNotifier extends BuildlessNotifier<List<String>> {
  late final Account account;

  List<String> build(Account account);
}

/// See also [MutedAdsNotifier].
@ProviderFor(MutedAdsNotifier)
const mutedAdsNotifierProvider = MutedAdsNotifierFamily();

/// See also [MutedAdsNotifier].
class MutedAdsNotifierFamily extends Family<List<String>> {
  /// See also [MutedAdsNotifier].
  const MutedAdsNotifierFamily();

  /// See also [MutedAdsNotifier].
  MutedAdsNotifierProvider call(Account account) {
    return MutedAdsNotifierProvider(account);
  }

  @override
  MutedAdsNotifierProvider getProviderOverride(
    covariant MutedAdsNotifierProvider provider,
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
  String? get name => r'mutedAdsNotifierProvider';
}

/// See also [MutedAdsNotifier].
class MutedAdsNotifierProvider
    extends NotifierProviderImpl<MutedAdsNotifier, List<String>> {
  /// See also [MutedAdsNotifier].
  MutedAdsNotifierProvider(Account account)
    : this._internal(
        () => MutedAdsNotifier()..account = account,
        from: mutedAdsNotifierProvider,
        name: r'mutedAdsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mutedAdsNotifierHash,
        dependencies: MutedAdsNotifierFamily._dependencies,
        allTransitiveDependencies:
            MutedAdsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  MutedAdsNotifierProvider._internal(
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
  List<String> runNotifierBuild(covariant MutedAdsNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(MutedAdsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MutedAdsNotifierProvider._internal(
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
  NotifierProviderElement<MutedAdsNotifier, List<String>> createElement() {
    return _MutedAdsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MutedAdsNotifierProvider && other.account == account;
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
mixin MutedAdsNotifierRef on NotifierProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MutedAdsNotifierProviderElement
    extends NotifierProviderElement<MutedAdsNotifier, List<String>>
    with MutedAdsNotifierRef {
  _MutedAdsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MutedAdsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
