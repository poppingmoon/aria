// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_channels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredChannelsHash() => r'ac273d56e2784bcd565e57130ea78c9e54809b8c';

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

/// See also [featuredChannels].
@ProviderFor(featuredChannels)
const featuredChannelsProvider = FeaturedChannelsFamily();

/// See also [featuredChannels].
class FeaturedChannelsFamily
    extends Family<AsyncValue<List<CommunityChannel>>> {
  /// See also [featuredChannels].
  const FeaturedChannelsFamily();

  /// See also [featuredChannels].
  FeaturedChannelsProvider call(Account account) {
    return FeaturedChannelsProvider(account);
  }

  @override
  FeaturedChannelsProvider getProviderOverride(
    covariant FeaturedChannelsProvider provider,
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
  String? get name => r'featuredChannelsProvider';
}

/// See also [featuredChannels].
class FeaturedChannelsProvider
    extends AutoDisposeFutureProvider<List<CommunityChannel>> {
  /// See also [featuredChannels].
  FeaturedChannelsProvider(Account account)
    : this._internal(
        (ref) => featuredChannels(ref as FeaturedChannelsRef, account),
        from: featuredChannelsProvider,
        name: r'featuredChannelsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$featuredChannelsHash,
        dependencies: FeaturedChannelsFamily._dependencies,
        allTransitiveDependencies:
            FeaturedChannelsFamily._allTransitiveDependencies,
        account: account,
      );

  FeaturedChannelsProvider._internal(
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
    FutureOr<List<CommunityChannel>> Function(FeaturedChannelsRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeaturedChannelsProvider._internal(
        (ref) => create(ref as FeaturedChannelsRef),
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
    return _FeaturedChannelsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedChannelsProvider && other.account == account;
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
mixin FeaturedChannelsRef
    on AutoDisposeFutureProviderRef<List<CommunityChannel>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FeaturedChannelsProviderElement
    extends AutoDisposeFutureProviderElement<List<CommunityChannel>>
    with FeaturedChannelsRef {
  _FeaturedChannelsProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedChannelsProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
