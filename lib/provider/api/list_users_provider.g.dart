// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listUsersHash() => r'608aa09594a5531c5767ecc04f8b7e5fc2cf243d';

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

/// See also [listUsers].
@ProviderFor(listUsers)
const listUsersProvider = ListUsersFamily();

/// See also [listUsers].
class ListUsersFamily extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [listUsers].
  const ListUsersFamily();

  /// See also [listUsers].
  ListUsersProvider call(
    Account account,
    String listId, {
    bool? forPublic,
  }) {
    return ListUsersProvider(
      account,
      listId,
      forPublic: forPublic,
    );
  }

  @override
  ListUsersProvider getProviderOverride(
    covariant ListUsersProvider provider,
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
  String? get name => r'listUsersProvider';
}

/// See also [listUsers].
class ListUsersProvider extends AutoDisposeFutureProvider<List<UserDetailed>> {
  /// See also [listUsers].
  ListUsersProvider(
    Account account,
    String listId, {
    bool? forPublic,
  }) : this._internal(
          (ref) => listUsers(
            ref as ListUsersRef,
            account,
            listId,
            forPublic: forPublic,
          ),
          from: listUsersProvider,
          name: r'listUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$listUsersHash,
          dependencies: ListUsersFamily._dependencies,
          allTransitiveDependencies: ListUsersFamily._allTransitiveDependencies,
          account: account,
          listId: listId,
          forPublic: forPublic,
        );

  ListUsersProvider._internal(
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
  Override overrideWith(
    FutureOr<List<UserDetailed>> Function(ListUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListUsersProvider._internal(
        (ref) => create(ref as ListUsersRef),
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
  AutoDisposeFutureProviderElement<List<UserDetailed>> createElement() {
    return _ListUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListUsersProvider &&
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

mixin ListUsersRef on AutoDisposeFutureProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `listId` of this provider.
  String get listId;

  /// The parameter `forPublic` of this provider.
  bool? get forPublic;
}

class _ListUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<UserDetailed>>
    with ListUsersRef {
  _ListUsersProviderElement(super.provider);

  @override
  Account get account => (origin as ListUsersProvider).account;
  @override
  String get listId => (origin as ListUsersProvider).listId;
  @override
  bool? get forPublic => (origin as ListUsersProvider).forPublic;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
