// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$broadcastHash() => r'dcce507f57465bff0eb6e2689e28095fe24bee60';

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

/// See also [broadcast].
@ProviderFor(broadcast)
const broadcastProvider = BroadcastFamily();

/// See also [broadcast].
class BroadcastFamily extends Family<AsyncValue<Broadcast>> {
  /// See also [broadcast].
  const BroadcastFamily();

  /// See also [broadcast].
  BroadcastProvider call(
    Account account,
  ) {
    return BroadcastProvider(
      account,
    );
  }

  @override
  BroadcastProvider getProviderOverride(
    covariant BroadcastProvider provider,
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
  String? get name => r'broadcastProvider';
}

/// See also [broadcast].
class BroadcastProvider extends AutoDisposeStreamProvider<Broadcast> {
  /// See also [broadcast].
  BroadcastProvider(
    Account account,
  ) : this._internal(
          (ref) => broadcast(
            ref as BroadcastRef,
            account,
          ),
          from: broadcastProvider,
          name: r'broadcastProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$broadcastHash,
          dependencies: BroadcastFamily._dependencies,
          allTransitiveDependencies: BroadcastFamily._allTransitiveDependencies,
          account: account,
        );

  BroadcastProvider._internal(
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
    Stream<Broadcast> Function(BroadcastRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BroadcastProvider._internal(
        (ref) => create(ref as BroadcastRef),
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
  AutoDisposeStreamProviderElement<Broadcast> createElement() {
    return _BroadcastProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BroadcastProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BroadcastRef on AutoDisposeStreamProviderRef<Broadcast> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _BroadcastProviderElement
    extends AutoDisposeStreamProviderElement<Broadcast> with BroadcastRef {
  _BroadcastProviderElement(super.provider);

  @override
  Account get account => (origin as BroadcastProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
