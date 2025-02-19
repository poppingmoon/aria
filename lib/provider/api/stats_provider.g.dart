// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$statsHash() => r'4e64b5ecfcad20ee44fdb3329fd8e801c53a2cd4';

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

/// See also [stats].
@ProviderFor(stats)
const statsProvider = StatsFamily();

/// See also [stats].
class StatsFamily extends Family<AsyncValue<StatsResponse>> {
  /// See also [stats].
  const StatsFamily();

  /// See also [stats].
  StatsProvider call(Account account) {
    return StatsProvider(account);
  }

  @override
  StatsProvider getProviderOverride(covariant StatsProvider provider) {
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
  String? get name => r'statsProvider';
}

/// See also [stats].
class StatsProvider extends AutoDisposeFutureProvider<StatsResponse> {
  /// See also [stats].
  StatsProvider(Account account)
    : this._internal(
        (ref) => stats(ref as StatsRef, account),
        from: statsProvider,
        name: r'statsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$statsHash,
        dependencies: StatsFamily._dependencies,
        allTransitiveDependencies: StatsFamily._allTransitiveDependencies,
        account: account,
      );

  StatsProvider._internal(
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
    FutureOr<StatsResponse> Function(StatsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StatsProvider._internal(
        (ref) => create(ref as StatsRef),
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
  AutoDisposeFutureProviderElement<StatsResponse> createElement() {
    return _StatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StatsProvider && other.account == account;
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
mixin StatsRef on AutoDisposeFutureProviderRef<StatsResponse> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _StatsProviderElement
    extends AutoDisposeFutureProviderElement<StatsResponse>
    with StatsRef {
  _StatsProviderElement(super.provider);

  @override
  Account get account => (origin as StatsProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
