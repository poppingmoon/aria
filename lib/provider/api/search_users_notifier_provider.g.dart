// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchUsersNotifierHash() =>
    r'c95c70d4448c08622dc1ad5f1412b3b57ae908f1';

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

abstract class _$SearchUsersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<UserDetailed>> {
  late final Account account;
  late final String query;
  late final Origin? userOrigin;

  FutureOr<PaginationState<UserDetailed>> build(
    Account account,
    String query, {
    Origin? userOrigin,
  });
}

/// See also [SearchUsersNotifier].
@ProviderFor(SearchUsersNotifier)
const searchUsersNotifierProvider = SearchUsersNotifierFamily();

/// See also [SearchUsersNotifier].
class SearchUsersNotifierFamily
    extends Family<AsyncValue<PaginationState<UserDetailed>>> {
  /// See also [SearchUsersNotifier].
  const SearchUsersNotifierFamily();

  /// See also [SearchUsersNotifier].
  SearchUsersNotifierProvider call(
    Account account,
    String query, {
    Origin? userOrigin,
  }) {
    return SearchUsersNotifierProvider(
      account,
      query,
      userOrigin: userOrigin,
    );
  }

  @override
  SearchUsersNotifierProvider getProviderOverride(
    covariant SearchUsersNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.query,
      userOrigin: provider.userOrigin,
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
  String? get name => r'searchUsersNotifierProvider';
}

/// See also [SearchUsersNotifier].
class SearchUsersNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SearchUsersNotifier, PaginationState<UserDetailed>> {
  /// See also [SearchUsersNotifier].
  SearchUsersNotifierProvider(
    Account account,
    String query, {
    Origin? userOrigin,
  }) : this._internal(
          () => SearchUsersNotifier()
            ..account = account
            ..query = query
            ..userOrigin = userOrigin,
          from: searchUsersNotifierProvider,
          name: r'searchUsersNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchUsersNotifierHash,
          dependencies: SearchUsersNotifierFamily._dependencies,
          allTransitiveDependencies:
              SearchUsersNotifierFamily._allTransitiveDependencies,
          account: account,
          query: query,
          userOrigin: userOrigin,
        );

  SearchUsersNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.query,
    required this.userOrigin,
  }) : super.internal();

  final Account account;
  final String query;
  final Origin? userOrigin;

  @override
  FutureOr<PaginationState<UserDetailed>> runNotifierBuild(
    covariant SearchUsersNotifier notifier,
  ) {
    return notifier.build(
      account,
      query,
      userOrigin: userOrigin,
    );
  }

  @override
  Override overrideWith(SearchUsersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchUsersNotifierProvider._internal(
        () => create()
          ..account = account
          ..query = query
          ..userOrigin = userOrigin,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        query: query,
        userOrigin: userOrigin,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchUsersNotifier,
      PaginationState<UserDetailed>> createElement() {
    return _SearchUsersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUsersNotifierProvider &&
        other.account == account &&
        other.query == query &&
        other.userOrigin == userOrigin;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, userOrigin.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchUsersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `userOrigin` of this provider.
  Origin? get userOrigin;
}

class _SearchUsersNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchUsersNotifier,
        PaginationState<UserDetailed>> with SearchUsersNotifierRef {
  _SearchUsersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as SearchUsersNotifierProvider).account;
  @override
  String get query => (origin as SearchUsersNotifierProvider).query;
  @override
  Origin? get userOrigin => (origin as SearchUsersNotifierProvider).userOrigin;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
