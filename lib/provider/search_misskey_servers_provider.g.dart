// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_misskey_servers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchMisskeyServersHash() =>
    r'5d85ae53e7d9115ab65f50045b3c445f3d3703e9';

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

/// See also [searchMisskeyServers].
@ProviderFor(searchMisskeyServers)
const searchMisskeyServersProvider = SearchMisskeyServersFamily();

/// See also [searchMisskeyServers].
class SearchMisskeyServersFamily
    extends Family<AsyncValue<List<JoinMisskeyInstanceInfo>>> {
  /// See also [searchMisskeyServers].
  const SearchMisskeyServersFamily();

  /// See also [searchMisskeyServers].
  SearchMisskeyServersProvider call(String query) {
    return SearchMisskeyServersProvider(query);
  }

  @override
  SearchMisskeyServersProvider getProviderOverride(
    covariant SearchMisskeyServersProvider provider,
  ) {
    return call(provider.query);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchMisskeyServersProvider';
}

/// See also [searchMisskeyServers].
class SearchMisskeyServersProvider
    extends AutoDisposeFutureProvider<List<JoinMisskeyInstanceInfo>> {
  /// See also [searchMisskeyServers].
  SearchMisskeyServersProvider(String query)
    : this._internal(
        (ref) => searchMisskeyServers(ref as SearchMisskeyServersRef, query),
        from: searchMisskeyServersProvider,
        name: r'searchMisskeyServersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$searchMisskeyServersHash,
        dependencies: SearchMisskeyServersFamily._dependencies,
        allTransitiveDependencies:
            SearchMisskeyServersFamily._allTransitiveDependencies,
        query: query,
      );

  SearchMisskeyServersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<JoinMisskeyInstanceInfo>> Function(
      SearchMisskeyServersRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchMisskeyServersProvider._internal(
        (ref) => create(ref as SearchMisskeyServersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<JoinMisskeyInstanceInfo>>
  createElement() {
    return _SearchMisskeyServersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMisskeyServersProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchMisskeyServersRef
    on AutoDisposeFutureProviderRef<List<JoinMisskeyInstanceInfo>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchMisskeyServersProviderElement
    extends AutoDisposeFutureProviderElement<List<JoinMisskeyInstanceInfo>>
    with SearchMisskeyServersRef {
  _SearchMisskeyServersProviderElement(super.provider);

  @override
  String get query => (origin as SearchMisskeyServersProvider).query;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
