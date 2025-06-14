// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchChannelsNotifierHash() =>
    r'41044bf6ed530505db087e4dea7984a23d1927c4';

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

abstract class _$SearchChannelsNotifier
    extends
        BuildlessAutoDisposeStreamNotifier<PaginationState<CommunityChannel>> {
  late final Account account;
  late final String query;
  late final bool includeDescription;

  Stream<PaginationState<CommunityChannel>> build(
    Account account,
    String query, {
    bool includeDescription = true,
  });
}

/// See also [SearchChannelsNotifier].
@ProviderFor(SearchChannelsNotifier)
const searchChannelsNotifierProvider = SearchChannelsNotifierFamily();

/// See also [SearchChannelsNotifier].
class SearchChannelsNotifierFamily
    extends Family<AsyncValue<PaginationState<CommunityChannel>>> {
  /// See also [SearchChannelsNotifier].
  const SearchChannelsNotifierFamily();

  /// See also [SearchChannelsNotifier].
  SearchChannelsNotifierProvider call(
    Account account,
    String query, {
    bool includeDescription = true,
  }) {
    return SearchChannelsNotifierProvider(
      account,
      query,
      includeDescription: includeDescription,
    );
  }

  @override
  SearchChannelsNotifierProvider getProviderOverride(
    covariant SearchChannelsNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.query,
      includeDescription: provider.includeDescription,
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
  String? get name => r'searchChannelsNotifierProvider';
}

/// See also [SearchChannelsNotifier].
class SearchChannelsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          SearchChannelsNotifier,
          PaginationState<CommunityChannel>
        > {
  /// See also [SearchChannelsNotifier].
  SearchChannelsNotifierProvider(
    Account account,
    String query, {
    bool includeDescription = true,
  }) : this._internal(
         () => SearchChannelsNotifier()
           ..account = account
           ..query = query
           ..includeDescription = includeDescription,
         from: searchChannelsNotifierProvider,
         name: r'searchChannelsNotifierProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$searchChannelsNotifierHash,
         dependencies: SearchChannelsNotifierFamily._dependencies,
         allTransitiveDependencies:
             SearchChannelsNotifierFamily._allTransitiveDependencies,
         account: account,
         query: query,
         includeDescription: includeDescription,
       );

  SearchChannelsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.query,
    required this.includeDescription,
  }) : super.internal();

  final Account account;
  final String query;
  final bool includeDescription;

  @override
  Stream<PaginationState<CommunityChannel>> runNotifierBuild(
    covariant SearchChannelsNotifier notifier,
  ) {
    return notifier.build(
      account,
      query,
      includeDescription: includeDescription,
    );
  }

  @override
  Override overrideWith(SearchChannelsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchChannelsNotifierProvider._internal(
        () => create()
          ..account = account
          ..query = query
          ..includeDescription = includeDescription,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        query: query,
        includeDescription: includeDescription,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    SearchChannelsNotifier,
    PaginationState<CommunityChannel>
  >
  createElement() {
    return _SearchChannelsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchChannelsNotifierProvider &&
        other.account == account &&
        other.query == query &&
        other.includeDescription == includeDescription;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, includeDescription.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchChannelsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<CommunityChannel>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `includeDescription` of this provider.
  bool get includeDescription;
}

class _SearchChannelsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          SearchChannelsNotifier,
          PaginationState<CommunityChannel>
        >
    with SearchChannelsNotifierRef {
  _SearchChannelsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as SearchChannelsNotifierProvider).account;
  @override
  String get query => (origin as SearchChannelsNotifierProvider).query;
  @override
  bool get includeDescription =>
      (origin as SearchChannelsNotifierProvider).includeDescription;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
