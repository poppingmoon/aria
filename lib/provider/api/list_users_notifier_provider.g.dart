// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listUsersNotifierHash() => r'88bc7e6093f6d80982952ab5e0bce435bae2dc7d';

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

abstract class _$ListUsersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<UserDetailed>> {
  late final Account account;
  late final String listId;
  late final bool? forPublic;

  FutureOr<List<UserDetailed>> build(
    Account account,
    String listId, {
    bool? forPublic,
  });
}

/// See also [ListUsersNotifier].
@ProviderFor(ListUsersNotifier)
const listUsersNotifierProvider = ListUsersNotifierFamily();

/// See also [ListUsersNotifier].
class ListUsersNotifierFamily extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [ListUsersNotifier].
  const ListUsersNotifierFamily();

  /// See also [ListUsersNotifier].
  ListUsersNotifierProvider call(
    Account account,
    String listId, {
    bool? forPublic,
  }) {
    return ListUsersNotifierProvider(account, listId, forPublic: forPublic);
  }

  @override
  ListUsersNotifierProvider getProviderOverride(
    covariant ListUsersNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.listId,
      forPublic: provider.forPublic,
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
  String? get name => r'listUsersNotifierProvider';
}

/// See also [ListUsersNotifier].
class ListUsersNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ListUsersNotifier,
          List<UserDetailed>
        > {
  /// See also [ListUsersNotifier].
  ListUsersNotifierProvider(Account account, String listId, {bool? forPublic})
    : this._internal(
        () =>
            ListUsersNotifier()
              ..account = account
              ..listId = listId
              ..forPublic = forPublic,
        from: listUsersNotifierProvider,
        name: r'listUsersNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$listUsersNotifierHash,
        dependencies: ListUsersNotifierFamily._dependencies,
        allTransitiveDependencies:
            ListUsersNotifierFamily._allTransitiveDependencies,
        account: account,
        listId: listId,
        forPublic: forPublic,
      );

  ListUsersNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.listId,
    required this.forPublic,
  }) : super.internal();

  final Account account;
  final String listId;
  final bool? forPublic;

  @override
  FutureOr<List<UserDetailed>> runNotifierBuild(
    covariant ListUsersNotifier notifier,
  ) {
    return notifier.build(account, listId, forPublic: forPublic);
  }

  @override
  Override overrideWith(ListUsersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ListUsersNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..listId = listId
              ..forPublic = forPublic,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        listId: listId,
        forPublic: forPublic,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ListUsersNotifier, List<UserDetailed>>
  createElement() {
    return _ListUsersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListUsersNotifierProvider &&
        other.account == account &&
        other.listId == listId &&
        other.forPublic == forPublic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);
    hash = _SystemHash.combine(hash, forPublic.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListUsersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `listId` of this provider.
  String get listId;

  /// The parameter `forPublic` of this provider.
  bool? get forPublic;
}

class _ListUsersNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ListUsersNotifier,
          List<UserDetailed>
        >
    with ListUsersNotifierRef {
  _ListUsersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ListUsersNotifierProvider).account;
  @override
  String get listId => (origin as ListUsersNotifierProvider).listId;
  @override
  bool? get forPublic => (origin as ListUsersNotifierProvider).forPublic;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
