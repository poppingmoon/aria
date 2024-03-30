// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clipsNotifierHash() => r'bee5e8efa7aabde5f50029db8865a00a00430add';

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

abstract class _$ClipsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Clip>> {
  late final Account account;

  FutureOr<List<Clip>> build(
    Account account,
  );
}

/// See also [ClipsNotifier].
@ProviderFor(ClipsNotifier)
const clipsNotifierProvider = ClipsNotifierFamily();

/// See also [ClipsNotifier].
class ClipsNotifierFamily extends Family<AsyncValue<List<Clip>>> {
  /// See also [ClipsNotifier].
  const ClipsNotifierFamily();

  /// See also [ClipsNotifier].
  ClipsNotifierProvider call(
    Account account,
  ) {
    return ClipsNotifierProvider(
      account,
    );
  }

  @override
  ClipsNotifierProvider getProviderOverride(
    covariant ClipsNotifierProvider provider,
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
  String? get name => r'clipsNotifierProvider';
}

/// See also [ClipsNotifier].
class ClipsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ClipsNotifier, List<Clip>> {
  /// See also [ClipsNotifier].
  ClipsNotifierProvider(
    Account account,
  ) : this._internal(
          () => ClipsNotifier()..account = account,
          from: clipsNotifierProvider,
          name: r'clipsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clipsNotifierHash,
          dependencies: ClipsNotifierFamily._dependencies,
          allTransitiveDependencies:
              ClipsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  ClipsNotifierProvider._internal(
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
  FutureOr<List<Clip>> runNotifierBuild(
    covariant ClipsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(ClipsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClipsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ClipsNotifier, List<Clip>>
      createElement() {
    return _ClipsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClipsNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClipsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Clip>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ClipsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ClipsNotifier, List<Clip>>
    with ClipsNotifierRef {
  _ClipsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ClipsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
