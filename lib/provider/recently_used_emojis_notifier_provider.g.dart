// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_used_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentlyUsedEmojisNotifierHash() =>
    r'7503fbc4429196d128494af9286b2aa5c26c4b90';

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

abstract class _$RecentlyUsedEmojisNotifier
    extends BuildlessNotifier<List<String>> {
  late final Account account;

  List<String> build(Account account);
}

/// See also [RecentlyUsedEmojisNotifier].
@ProviderFor(RecentlyUsedEmojisNotifier)
const recentlyUsedEmojisNotifierProvider = RecentlyUsedEmojisNotifierFamily();

/// See also [RecentlyUsedEmojisNotifier].
class RecentlyUsedEmojisNotifierFamily extends Family<List<String>> {
  /// See also [RecentlyUsedEmojisNotifier].
  const RecentlyUsedEmojisNotifierFamily();

  /// See also [RecentlyUsedEmojisNotifier].
  RecentlyUsedEmojisNotifierProvider call(Account account) {
    return RecentlyUsedEmojisNotifierProvider(account);
  }

  @override
  RecentlyUsedEmojisNotifierProvider getProviderOverride(
    covariant RecentlyUsedEmojisNotifierProvider provider,
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
  String? get name => r'recentlyUsedEmojisNotifierProvider';
}

/// See also [RecentlyUsedEmojisNotifier].
class RecentlyUsedEmojisNotifierProvider
    extends NotifierProviderImpl<RecentlyUsedEmojisNotifier, List<String>> {
  /// See also [RecentlyUsedEmojisNotifier].
  RecentlyUsedEmojisNotifierProvider(Account account)
    : this._internal(
        () => RecentlyUsedEmojisNotifier()..account = account,
        from: recentlyUsedEmojisNotifierProvider,
        name: r'recentlyUsedEmojisNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$recentlyUsedEmojisNotifierHash,
        dependencies: RecentlyUsedEmojisNotifierFamily._dependencies,
        allTransitiveDependencies:
            RecentlyUsedEmojisNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  RecentlyUsedEmojisNotifierProvider._internal(
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
  List<String> runNotifierBuild(covariant RecentlyUsedEmojisNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(RecentlyUsedEmojisNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RecentlyUsedEmojisNotifierProvider._internal(
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
  NotifierProviderElement<RecentlyUsedEmojisNotifier, List<String>>
  createElement() {
    return _RecentlyUsedEmojisNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecentlyUsedEmojisNotifierProvider &&
        other.account == account;
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
mixin RecentlyUsedEmojisNotifierRef on NotifierProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _RecentlyUsedEmojisNotifierProviderElement
    extends NotifierProviderElement<RecentlyUsedEmojisNotifier, List<String>>
    with RecentlyUsedEmojisNotifierRef {
  _RecentlyUsedEmojisNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as RecentlyUsedEmojisNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
