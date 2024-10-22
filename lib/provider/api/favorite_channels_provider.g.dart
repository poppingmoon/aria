// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_channels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteChannelsHash() => r'92da3075cd96c7e85ca280ee2fe3db24465d6615';

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

/// See also [favoriteChannels].
@ProviderFor(favoriteChannels)
const favoriteChannelsProvider = FavoriteChannelsFamily();

/// See also [favoriteChannels].
class FavoriteChannelsFamily
    extends Family<AsyncValue<List<CommunityChannel>>> {
  /// See also [favoriteChannels].
  const FavoriteChannelsFamily();

  /// See also [favoriteChannels].
  FavoriteChannelsProvider call(
    Account account,
  ) {
    return FavoriteChannelsProvider(
      account,
    );
  }

  @override
  FavoriteChannelsProvider getProviderOverride(
    covariant FavoriteChannelsProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'favoriteChannelsProvider';
}

/// See also [favoriteChannels].
class FavoriteChannelsProvider
    extends AutoDisposeFutureProvider<List<CommunityChannel>> {
  /// See also [favoriteChannels].
  FavoriteChannelsProvider(
    Account account,
  ) : this._internal(
          (ref) => favoriteChannels(
            ref as FavoriteChannelsRef,
            account,
          ),
          from: favoriteChannelsProvider,
          name: r'favoriteChannelsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoriteChannelsHash,
          dependencies: FavoriteChannelsFamily._dependencies,
          allTransitiveDependencies:
              FavoriteChannelsFamily._allTransitiveDependencies,
          account: account,
        );

  FavoriteChannelsProvider._internal(
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
  Override overrideWith(
    FutureOr<List<CommunityChannel>> Function(FavoriteChannelsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FavoriteChannelsProvider._internal(
        (ref) => create(ref as FavoriteChannelsRef),
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
  AutoDisposeFutureProviderElement<List<CommunityChannel>> createElement() {
    return _FavoriteChannelsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteChannelsProvider && other.account == account;
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
mixin FavoriteChannelsRef
    on AutoDisposeFutureProviderRef<List<CommunityChannel>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FavoriteChannelsProviderElement
    extends AutoDisposeFutureProviderElement<List<CommunityChannel>>
    with FavoriteChannelsRef {
  _FavoriteChannelsProviderElement(super.provider);

  @override
  Account get account => (origin as FavoriteChannelsProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
