// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$playsNotifierHash() => r'0806317c5a590a3c2c5814a3d01818a71181eb70';

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

abstract class _$PlaysNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Flash>> {
  late final Account account;

  FutureOr<PaginationState<Flash>> build(
    Account account,
  );
}

/// See also [PlaysNotifier].
@ProviderFor(PlaysNotifier)
const playsNotifierProvider = PlaysNotifierFamily();

/// See also [PlaysNotifier].
class PlaysNotifierFamily extends Family<AsyncValue<PaginationState<Flash>>> {
  /// See also [PlaysNotifier].
  const PlaysNotifierFamily();

  /// See also [PlaysNotifier].
  PlaysNotifierProvider call(
    Account account,
  ) {
    return PlaysNotifierProvider(
      account,
    );
  }

  @override
  PlaysNotifierProvider getProviderOverride(
    covariant PlaysNotifierProvider provider,
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
  String? get name => r'playsNotifierProvider';
}

/// See also [PlaysNotifier].
class PlaysNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PlaysNotifier, PaginationState<Flash>> {
  /// See also [PlaysNotifier].
  PlaysNotifierProvider(
    Account account,
  ) : this._internal(
          () => PlaysNotifier()..account = account,
          from: playsNotifierProvider,
          name: r'playsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$playsNotifierHash,
          dependencies: PlaysNotifierFamily._dependencies,
          allTransitiveDependencies:
              PlaysNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  PlaysNotifierProvider._internal(
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
  FutureOr<PaginationState<Flash>> runNotifierBuild(
    covariant PlaysNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(PlaysNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlaysNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PlaysNotifier, PaginationState<Flash>>
      createElement() {
    return _PlaysNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaysNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlaysNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Flash>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PlaysNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlaysNotifier,
        PaginationState<Flash>> with PlaysNotifierRef {
  _PlaysNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PlaysNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
