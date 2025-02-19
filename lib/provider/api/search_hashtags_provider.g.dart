// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hashtags_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHashtagsHash() => r'66e02a032f6fff9930f0d6ebf3697308e2f97799';

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

/// See also [searchHashtags].
@ProviderFor(searchHashtags)
const searchHashtagsProvider = SearchHashtagsFamily();

/// See also [searchHashtags].
class SearchHashtagsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [searchHashtags].
  const SearchHashtagsFamily();

  /// See also [searchHashtags].
  SearchHashtagsProvider call(Account account, String query) {
    return SearchHashtagsProvider(account, query);
  }

  @override
  SearchHashtagsProvider getProviderOverride(
    covariant SearchHashtagsProvider provider,
  ) {
    return call(provider.account, provider.query);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchHashtagsProvider';
}

/// See also [searchHashtags].
class SearchHashtagsProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [searchHashtags].
  SearchHashtagsProvider(Account account, String query)
    : this._internal(
        (ref) => searchHashtags(ref as SearchHashtagsRef, account, query),
        from: searchHashtagsProvider,
        name: r'searchHashtagsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$searchHashtagsHash,
        dependencies: SearchHashtagsFamily._dependencies,
        allTransitiveDependencies:
            SearchHashtagsFamily._allTransitiveDependencies,
        account: account,
        query: query,
      );

  SearchHashtagsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.query,
  }) : super.internal();

  final Account account;
  final String query;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(SearchHashtagsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchHashtagsProvider._internal(
        (ref) => create(ref as SearchHashtagsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _SearchHashtagsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchHashtagsProvider &&
        other.account == account &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchHashtagsRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `query` of this provider.
  String get query;
}

class _SearchHashtagsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with SearchHashtagsRef {
  _SearchHashtagsProviderElement(super.provider);

  @override
  Account get account => (origin as SearchHashtagsProvider).account;
  @override
  String get query => (origin as SearchHashtagsProvider).query;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
