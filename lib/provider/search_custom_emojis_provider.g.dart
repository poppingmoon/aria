// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_custom_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchCustomEmojisHash() =>
    r'90b7d6e0f82b378a19bb71937eb1cb2b8eed747f';

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

/// See also [searchCustomEmojis].
@ProviderFor(searchCustomEmojis)
const searchCustomEmojisProvider = SearchCustomEmojisFamily();

/// See also [searchCustomEmojis].
class SearchCustomEmojisFamily extends Family<Set<Emoji>> {
  /// See also [searchCustomEmojis].
  const SearchCustomEmojisFamily();

  /// See also [searchCustomEmojis].
  SearchCustomEmojisProvider call(
    String host,
    String query,
  ) {
    return SearchCustomEmojisProvider(
      host,
      query,
    );
  }

  @override
  SearchCustomEmojisProvider getProviderOverride(
    covariant SearchCustomEmojisProvider provider,
  ) {
    return call(
      provider.host,
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
  String? get name => r'searchCustomEmojisProvider';
}

/// See also [searchCustomEmojis].
class SearchCustomEmojisProvider extends Provider<Set<Emoji>> {
  /// See also [searchCustomEmojis].
  SearchCustomEmojisProvider(
    String host,
    String query,
  ) : this._internal(
          (ref) => searchCustomEmojis(
            ref as SearchCustomEmojisRef,
            host,
            query,
          ),
          from: searchCustomEmojisProvider,
          name: r'searchCustomEmojisProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchCustomEmojisHash,
          dependencies: SearchCustomEmojisFamily._dependencies,
          allTransitiveDependencies:
              SearchCustomEmojisFamily._allTransitiveDependencies,
          host: host,
          query: query,
        );

  SearchCustomEmojisProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.query,
  }) : super.internal();

  final String host;
  final String query;

  @override
  Override overrideWith(
    Set<Emoji> Function(SearchCustomEmojisRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchCustomEmojisProvider._internal(
        (ref) => create(ref as SearchCustomEmojisRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        query: query,
      ),
    );
  }

  @override
  ProviderElement<Set<Emoji>> createElement() {
    return _SearchCustomEmojisProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchCustomEmojisProvider &&
        other.host == host &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchCustomEmojisRef on ProviderRef<Set<Emoji>> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `query` of this provider.
  String get query;
}

class _SearchCustomEmojisProviderElement extends ProviderElement<Set<Emoji>>
    with SearchCustomEmojisRef {
  _SearchCustomEmojisProviderElement(super.provider);

  @override
  String get host => (origin as SearchCustomEmojisProvider).host;
  @override
  String get query => (origin as SearchCustomEmojisProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
