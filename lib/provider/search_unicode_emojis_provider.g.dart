// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_unicode_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchUnicodeEmojisHash() =>
    r'3fefff2af4f2e13236c85b11d9977219d72c035b';

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

/// See also [searchUnicodeEmojis].
@ProviderFor(searchUnicodeEmojis)
const searchUnicodeEmojisProvider = SearchUnicodeEmojisFamily();

/// See also [searchUnicodeEmojis].
class SearchUnicodeEmojisFamily extends Family<AsyncValue<Set<String>>> {
  /// See also [searchUnicodeEmojis].
  const SearchUnicodeEmojisFamily();

  /// See also [searchUnicodeEmojis].
  SearchUnicodeEmojisProvider call(
    String query,
  ) {
    return SearchUnicodeEmojisProvider(
      query,
    );
  }

  @override
  SearchUnicodeEmojisProvider getProviderOverride(
    covariant SearchUnicodeEmojisProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'searchUnicodeEmojisProvider';
}

/// See also [searchUnicodeEmojis].
class SearchUnicodeEmojisProvider
    extends AutoDisposeFutureProvider<Set<String>> {
  /// See also [searchUnicodeEmojis].
  SearchUnicodeEmojisProvider(
    String query,
  ) : this._internal(
          (ref) => searchUnicodeEmojis(
            ref as SearchUnicodeEmojisRef,
            query,
          ),
          from: searchUnicodeEmojisProvider,
          name: r'searchUnicodeEmojisProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchUnicodeEmojisHash,
          dependencies: SearchUnicodeEmojisFamily._dependencies,
          allTransitiveDependencies:
              SearchUnicodeEmojisFamily._allTransitiveDependencies,
          query: query,
        );

  SearchUnicodeEmojisProvider._internal(
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
    FutureOr<Set<String>> Function(SearchUnicodeEmojisRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchUnicodeEmojisProvider._internal(
        (ref) => create(ref as SearchUnicodeEmojisRef),
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
  AutoDisposeFutureProviderElement<Set<String>> createElement() {
    return _SearchUnicodeEmojisProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUnicodeEmojisProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchUnicodeEmojisRef on AutoDisposeFutureProviderRef<Set<String>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchUnicodeEmojisProviderElement
    extends AutoDisposeFutureProviderElement<Set<String>>
    with SearchUnicodeEmojisRef {
  _SearchUnicodeEmojisProviderElement(super.provider);

  @override
  String get query => (origin as SearchUnicodeEmojisProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
