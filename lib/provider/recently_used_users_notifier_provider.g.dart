// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_used_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentlyUsedUsersNotifierHash() =>
    r'ea41f47e10730d7d1256432d81744fe823a29e0d';

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

abstract class _$RecentlyUsedUsersNotifier
    extends BuildlessAsyncNotifier<List<UserDetailed>> {
  late final Account account;

  FutureOr<List<UserDetailed>> build(Account account);
}

/// See also [RecentlyUsedUsersNotifier].
@ProviderFor(RecentlyUsedUsersNotifier)
const recentlyUsedUsersNotifierProvider = RecentlyUsedUsersNotifierFamily();

/// See also [RecentlyUsedUsersNotifier].
class RecentlyUsedUsersNotifierFamily
    extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [RecentlyUsedUsersNotifier].
  const RecentlyUsedUsersNotifierFamily();

  /// See also [RecentlyUsedUsersNotifier].
  RecentlyUsedUsersNotifierProvider call(Account account) {
    return RecentlyUsedUsersNotifierProvider(account);
  }

  @override
  RecentlyUsedUsersNotifierProvider getProviderOverride(
    covariant RecentlyUsedUsersNotifierProvider provider,
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
  String? get name => r'recentlyUsedUsersNotifierProvider';
}

/// See also [RecentlyUsedUsersNotifier].
class RecentlyUsedUsersNotifierProvider
    extends
        AsyncNotifierProviderImpl<
          RecentlyUsedUsersNotifier,
          List<UserDetailed>
        > {
  /// See also [RecentlyUsedUsersNotifier].
  RecentlyUsedUsersNotifierProvider(Account account)
    : this._internal(
        () => RecentlyUsedUsersNotifier()..account = account,
        from: recentlyUsedUsersNotifierProvider,
        name: r'recentlyUsedUsersNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$recentlyUsedUsersNotifierHash,
        dependencies: RecentlyUsedUsersNotifierFamily._dependencies,
        allTransitiveDependencies:
            RecentlyUsedUsersNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  RecentlyUsedUsersNotifierProvider._internal(
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
  FutureOr<List<UserDetailed>> runNotifierBuild(
    covariant RecentlyUsedUsersNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(RecentlyUsedUsersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RecentlyUsedUsersNotifierProvider._internal(
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
  AsyncNotifierProviderElement<RecentlyUsedUsersNotifier, List<UserDetailed>>
  createElement() {
    return _RecentlyUsedUsersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecentlyUsedUsersNotifierProvider &&
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
mixin RecentlyUsedUsersNotifierRef
    on AsyncNotifierProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _RecentlyUsedUsersNotifierProviderElement
    extends
        AsyncNotifierProviderElement<
          RecentlyUsedUsersNotifier,
          List<UserDetailed>
        >
    with RecentlyUsedUsersNotifierRef {
  _RecentlyUsedUsersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as RecentlyUsedUsersNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
