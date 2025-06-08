// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_queries_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchedQueriesNotifierHash() =>
    r'1b32cc72895e422e8c03d9d0d97566a3917fc46a';

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

abstract class _$SearchedQueriesNotifier
    extends BuildlessAutoDisposeNotifier<List<String>> {
  late final Account account;

  List<String> build(Account account);
}

/// See also [SearchedQueriesNotifier].
@ProviderFor(SearchedQueriesNotifier)
const searchedQueriesNotifierProvider = SearchedQueriesNotifierFamily();

/// See also [SearchedQueriesNotifier].
class SearchedQueriesNotifierFamily extends Family<List<String>> {
  /// See also [SearchedQueriesNotifier].
  const SearchedQueriesNotifierFamily();

  /// See also [SearchedQueriesNotifier].
  SearchedQueriesNotifierProvider call(Account account) {
    return SearchedQueriesNotifierProvider(account);
  }

  @override
  SearchedQueriesNotifierProvider getProviderOverride(
    covariant SearchedQueriesNotifierProvider provider,
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
  String? get name => r'searchedQueriesNotifierProvider';
}

/// See also [SearchedQueriesNotifier].
class SearchedQueriesNotifierProvider
    extends
        AutoDisposeNotifierProviderImpl<SearchedQueriesNotifier, List<String>> {
  /// See also [SearchedQueriesNotifier].
  SearchedQueriesNotifierProvider(Account account)
    : this._internal(
        () => SearchedQueriesNotifier()..account = account,
        from: searchedQueriesNotifierProvider,
        name: r'searchedQueriesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$searchedQueriesNotifierHash,
        dependencies: SearchedQueriesNotifierFamily._dependencies,
        allTransitiveDependencies:
            SearchedQueriesNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  SearchedQueriesNotifierProvider._internal(
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
  List<String> runNotifierBuild(covariant SearchedQueriesNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(SearchedQueriesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchedQueriesNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<SearchedQueriesNotifier, List<String>>
  createElement() {
    return _SearchedQueriesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchedQueriesNotifierProvider && other.account == account;
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
mixin SearchedQueriesNotifierRef
    on AutoDisposeNotifierProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _SearchedQueriesNotifierProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          SearchedQueriesNotifier,
          List<String>
        >
    with SearchedQueriesNotifierRef {
  _SearchedQueriesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as SearchedQueriesNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
