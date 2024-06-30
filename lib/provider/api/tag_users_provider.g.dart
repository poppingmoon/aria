// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagUsersHash() => r'55e6e7821a3b59551f880d82d7bb34871351223f';

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

/// See also [tagUsers].
@ProviderFor(tagUsers)
const tagUsersProvider = TagUsersFamily();

/// See also [tagUsers].
class TagUsersFamily extends Family<AsyncValue<List<UserDetailed>>> {
  /// See also [tagUsers].
  const TagUsersFamily();

  /// See also [tagUsers].
  TagUsersProvider call(
    Account account,
    String tag, {
    UsersSortType sort = UsersSortType.followerDescendant,
    Origin? userOrigin,
  }) {
    return TagUsersProvider(
      account,
      tag,
      sort: sort,
      userOrigin: userOrigin,
    );
  }

  @override
  TagUsersProvider getProviderOverride(
    covariant TagUsersProvider provider,
  ) {
    return call(
      provider.account,
      provider.tag,
      sort: provider.sort,
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
  String? get name => r'tagUsersProvider';
}

/// See also [tagUsers].
class TagUsersProvider extends AutoDisposeFutureProvider<List<UserDetailed>> {
  /// See also [tagUsers].
  TagUsersProvider(
    Account account,
    String tag, {
    UsersSortType sort = UsersSortType.followerDescendant,
    Origin? userOrigin,
  }) : this._internal(
          (ref) => tagUsers(
            ref as TagUsersRef,
            account,
            tag,
            sort: sort,
            userOrigin: userOrigin,
          ),
          from: tagUsersProvider,
          name: r'tagUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tagUsersHash,
          dependencies: TagUsersFamily._dependencies,
          allTransitiveDependencies: TagUsersFamily._allTransitiveDependencies,
          account: account,
          tag: tag,
          sort: sort,
          userOrigin: userOrigin,
        );

  TagUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.tag,
    required this.sort,
    required this.userOrigin,
  }) : super.internal();

  final Account account;
  final String tag;
  final UsersSortType sort;
  final Origin? userOrigin;

  @override
  Override overrideWith(
    FutureOr<List<UserDetailed>> Function(TagUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TagUsersProvider._internal(
        (ref) => create(ref as TagUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        tag: tag,
        sort: sort,
        userOrigin: userOrigin,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UserDetailed>> createElement() {
    return _TagUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TagUsersProvider &&
        other.account == account &&
        other.tag == tag &&
        other.sort == sort &&
        other.userOrigin == userOrigin;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);
    hash = _SystemHash.combine(hash, userOrigin.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TagUsersRef on AutoDisposeFutureProviderRef<List<UserDetailed>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `tag` of this provider.
  String get tag;

  /// The parameter `sort` of this provider.
  UsersSortType get sort;

  /// The parameter `userOrigin` of this provider.
  Origin? get userOrigin;
}

class _TagUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<UserDetailed>>
    with TagUsersRef {
  _TagUsersProviderElement(super.provider);

  @override
  Account get account => (origin as TagUsersProvider).account;
  @override
  String get tag => (origin as TagUsersProvider).tag;
  @override
  UsersSortType get sort => (origin as TagUsersProvider).sort;
  @override
  Origin? get userOrigin => (origin as TagUsersProvider).userOrigin;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
