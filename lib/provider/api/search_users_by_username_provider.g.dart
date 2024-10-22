// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_by_username_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchUsersByUsernameHash() =>
    r'c2d893883e74d15f335931cf6fc0616906c771dc';

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

/// See also [searchUsersByUsername].
@ProviderFor(searchUsersByUsername)
const searchUsersByUsernameProvider = SearchUsersByUsernameFamily();

/// See also [searchUsersByUsername].
class SearchUsersByUsernameFamily
    extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [searchUsersByUsername].
  const SearchUsersByUsernameFamily();

  /// See also [searchUsersByUsername].
  SearchUsersByUsernameProvider call(
    Account account,
    String? username,
    String? host,
  ) {
    return SearchUsersByUsernameProvider(
      account,
      username,
      host,
    );
  }

  @override
  SearchUsersByUsernameProvider getProviderOverride(
    covariant SearchUsersByUsernameProvider provider,
  ) {
    return call(
      provider.account,
      provider.username,
      provider.host,
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
  String? get name => r'searchUsersByUsernameProvider';
}

/// See also [searchUsersByUsername].
class SearchUsersByUsernameProvider
    extends AutoDisposeFutureProvider<List<UserDetailed>> {
  /// See also [searchUsersByUsername].
  SearchUsersByUsernameProvider(
    Account account,
    String? username,
    String? host,
  ) : this._internal(
          (ref) => searchUsersByUsername(
            ref as SearchUsersByUsernameRef,
            account,
            username,
            host,
          ),
          from: searchUsersByUsernameProvider,
          name: r'searchUsersByUsernameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchUsersByUsernameHash,
          dependencies: SearchUsersByUsernameFamily._dependencies,
          allTransitiveDependencies:
              SearchUsersByUsernameFamily._allTransitiveDependencies,
          account: account,
          username: username,
          host: host,
        );

  SearchUsersByUsernameProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.username,
    required this.host,
  }) : super.internal();

  final Account account;
  final String? username;
  final String? host;

  @override
  Override overrideWith(
    FutureOr<List<UserDetailed>> Function(SearchUsersByUsernameRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchUsersByUsernameProvider._internal(
        (ref) => create(ref as SearchUsersByUsernameRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        username: username,
        host: host,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UserDetailed>> createElement() {
    return _SearchUsersByUsernameProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUsersByUsernameProvider &&
        other.account == account &&
        other.username == username &&
        other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchUsersByUsernameRef
    on AutoDisposeFutureProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `username` of this provider.
  String? get username;

  /// The parameter `host` of this provider.
  String? get host;
}

class _SearchUsersByUsernameProviderElement
    extends AutoDisposeFutureProviderElement<List<UserDetailed>>
    with SearchUsersByUsernameRef {
  _SearchUsersByUsernameProviderElement(super.provider);

  @override
  Account get account => (origin as SearchUsersByUsernameProvider).account;
  @override
  String? get username => (origin as SearchUsersByUsernameProvider).username;
  @override
  String? get host => (origin as SearchUsersByUsernameProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
