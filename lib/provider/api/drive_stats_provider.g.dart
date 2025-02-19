// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_stats_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveStatsHash() => r'2701f57fe05b2ecc070d5510abb4b0d56d9616f7';

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

/// See also [driveStats].
@ProviderFor(driveStats)
const driveStatsProvider = DriveStatsFamily();

/// See also [driveStats].
class DriveStatsFamily extends Family<AsyncValue<DriveResponse>> {
  /// See also [driveStats].
  const DriveStatsFamily();

  /// See also [driveStats].
  DriveStatsProvider call(Account account) {
    return DriveStatsProvider(account);
  }

  @override
  DriveStatsProvider getProviderOverride(
    covariant DriveStatsProvider provider,
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
  String? get name => r'driveStatsProvider';
}

/// See also [driveStats].
class DriveStatsProvider extends AutoDisposeFutureProvider<DriveResponse> {
  /// See also [driveStats].
  DriveStatsProvider(Account account)
    : this._internal(
        (ref) => driveStats(ref as DriveStatsRef, account),
        from: driveStatsProvider,
        name: r'driveStatsProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$driveStatsHash,
        dependencies: DriveStatsFamily._dependencies,
        allTransitiveDependencies: DriveStatsFamily._allTransitiveDependencies,
        account: account,
      );

  DriveStatsProvider._internal(
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
    FutureOr<DriveResponse> Function(DriveStatsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DriveStatsProvider._internal(
        (ref) => create(ref as DriveStatsRef),
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
  AutoDisposeFutureProviderElement<DriveResponse> createElement() {
    return _DriveStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveStatsProvider && other.account == account;
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
mixin DriveStatsRef on AutoDisposeFutureProviderRef<DriveResponse> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _DriveStatsProviderElement
    extends AutoDisposeFutureProviderElement<DriveResponse>
    with DriveStatsRef {
  _DriveStatsProviderElement(super.provider);

  @override
  Account get account => (origin as DriveStatsProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
