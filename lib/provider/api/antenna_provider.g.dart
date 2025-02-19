// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antenna_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$antennaHash() => r'b34a56473eb124ebe5dbc928c338650f26d513c6';

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

/// See also [antenna].
@ProviderFor(antenna)
const antennaProvider = AntennaFamily();

/// See also [antenna].
class AntennaFamily extends Family<AsyncValue<Antenna>> {
  /// See also [antenna].
  const AntennaFamily();

  /// See also [antenna].
  AntennaProvider call(Account account, String antennaId) {
    return AntennaProvider(account, antennaId);
  }

  @override
  AntennaProvider getProviderOverride(covariant AntennaProvider provider) {
    return call(provider.account, provider.antennaId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'antennaProvider';
}

/// See also [antenna].
class AntennaProvider extends AutoDisposeFutureProvider<Antenna> {
  /// See also [antenna].
  AntennaProvider(Account account, String antennaId)
    : this._internal(
        (ref) => antenna(ref as AntennaRef, account, antennaId),
        from: antennaProvider,
        name: r'antennaProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$antennaHash,
        dependencies: AntennaFamily._dependencies,
        allTransitiveDependencies: AntennaFamily._allTransitiveDependencies,
        account: account,
        antennaId: antennaId,
      );

  AntennaProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.antennaId,
  }) : super.internal();

  final Account account;
  final String antennaId;

  @override
  Override overrideWith(
    FutureOr<Antenna> Function(AntennaRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AntennaProvider._internal(
        (ref) => create(ref as AntennaRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        antennaId: antennaId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Antenna> createElement() {
    return _AntennaProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AntennaProvider &&
        other.account == account &&
        other.antennaId == antennaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, antennaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AntennaRef on AutoDisposeFutureProviderRef<Antenna> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `antennaId` of this provider.
  String get antennaId;
}

class _AntennaProviderElement extends AutoDisposeFutureProviderElement<Antenna>
    with AntennaRef {
  _AntennaProviderElement(super.provider);

  @override
  Account get account => (origin as AntennaProvider).account;
  @override
  String get antennaId => (origin as AntennaProvider).antennaId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
