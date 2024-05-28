// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antennas_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$antennasNotifierHash() => r'ebd21ad2d92785cd070a1dd717b069b7f2e97d9c';

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

abstract class _$AntennasNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Antenna>> {
  late final Account account;

  FutureOr<List<Antenna>> build(
    Account account,
  );
}

/// See also [AntennasNotifier].
@ProviderFor(AntennasNotifier)
const antennasNotifierProvider = AntennasNotifierFamily();

/// See also [AntennasNotifier].
class AntennasNotifierFamily extends Family<AsyncValue<List<Antenna>>> {
  /// See also [AntennasNotifier].
  const AntennasNotifierFamily();

  /// See also [AntennasNotifier].
  AntennasNotifierProvider call(
    Account account,
  ) {
    return AntennasNotifierProvider(
      account,
    );
  }

  @override
  AntennasNotifierProvider getProviderOverride(
    covariant AntennasNotifierProvider provider,
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
  String? get name => r'antennasNotifierProvider';
}

/// See also [AntennasNotifier].
class AntennasNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AntennasNotifier, List<Antenna>> {
  /// See also [AntennasNotifier].
  AntennasNotifierProvider(
    Account account,
  ) : this._internal(
          () => AntennasNotifier()..account = account,
          from: antennasNotifierProvider,
          name: r'antennasNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$antennasNotifierHash,
          dependencies: AntennasNotifierFamily._dependencies,
          allTransitiveDependencies:
              AntennasNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  AntennasNotifierProvider._internal(
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
  FutureOr<List<Antenna>> runNotifierBuild(
    covariant AntennasNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(AntennasNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AntennasNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AntennasNotifier, List<Antenna>>
      createElement() {
    return _AntennasNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AntennasNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AntennasNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Antenna>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _AntennasNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AntennasNotifier,
        List<Antenna>> with AntennasNotifierRef {
  _AntennasNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AntennasNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
