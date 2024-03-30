// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_plays_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredPlaysHash() => r'3a023535d19fa286a2ae0d3c6dfb32bc09ba8027';

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

/// See also [featuredPlays].
@ProviderFor(featuredPlays)
const featuredPlaysProvider = FeaturedPlaysFamily();

/// See also [featuredPlays].
class FeaturedPlaysFamily extends Family<AsyncValue<List<Flash>>> {
  /// See also [featuredPlays].
  const FeaturedPlaysFamily();

  /// See also [featuredPlays].
  FeaturedPlaysProvider call(
    Account account,
  ) {
    return FeaturedPlaysProvider(
      account,
    );
  }

  @override
  FeaturedPlaysProvider getProviderOverride(
    covariant FeaturedPlaysProvider provider,
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
  String? get name => r'featuredPlaysProvider';
}

/// See also [featuredPlays].
class FeaturedPlaysProvider extends AutoDisposeFutureProvider<List<Flash>> {
  /// See also [featuredPlays].
  FeaturedPlaysProvider(
    Account account,
  ) : this._internal(
          (ref) => featuredPlays(
            ref as FeaturedPlaysRef,
            account,
          ),
          from: featuredPlaysProvider,
          name: r'featuredPlaysProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$featuredPlaysHash,
          dependencies: FeaturedPlaysFamily._dependencies,
          allTransitiveDependencies:
              FeaturedPlaysFamily._allTransitiveDependencies,
          account: account,
        );

  FeaturedPlaysProvider._internal(
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
    FutureOr<List<Flash>> Function(FeaturedPlaysRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeaturedPlaysProvider._internal(
        (ref) => create(ref as FeaturedPlaysRef),
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
  AutoDisposeFutureProviderElement<List<Flash>> createElement() {
    return _FeaturedPlaysProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedPlaysProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FeaturedPlaysRef on AutoDisposeFutureProviderRef<List<Flash>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FeaturedPlaysProviderElement
    extends AutoDisposeFutureProviderElement<List<Flash>>
    with FeaturedPlaysRef {
  _FeaturedPlaysProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedPlaysProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
