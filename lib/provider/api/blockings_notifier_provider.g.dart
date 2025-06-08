// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$blockingsNotifierHash() => r'7b434f8b5e089cf71a34f0a794df3aeec351b83a';

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

abstract class _$BlockingsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Blocking>> {
  late final Account account;

  Stream<PaginationState<Blocking>> build(Account account);
}

/// See also [BlockingsNotifier].
@ProviderFor(BlockingsNotifier)
const blockingsNotifierProvider = BlockingsNotifierFamily();

/// See also [BlockingsNotifier].
class BlockingsNotifierFamily
    extends Family<AsyncValue<PaginationState<Blocking>>> {
  /// See also [BlockingsNotifier].
  const BlockingsNotifierFamily();

  /// See also [BlockingsNotifier].
  BlockingsNotifierProvider call(Account account) {
    return BlockingsNotifierProvider(account);
  }

  @override
  BlockingsNotifierProvider getProviderOverride(
    covariant BlockingsNotifierProvider provider,
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
  String? get name => r'blockingsNotifierProvider';
}

/// See also [BlockingsNotifier].
class BlockingsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          BlockingsNotifier,
          PaginationState<Blocking>
        > {
  /// See also [BlockingsNotifier].
  BlockingsNotifierProvider(Account account)
    : this._internal(
        () => BlockingsNotifier()..account = account,
        from: blockingsNotifierProvider,
        name: r'blockingsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$blockingsNotifierHash,
        dependencies: BlockingsNotifierFamily._dependencies,
        allTransitiveDependencies:
            BlockingsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  BlockingsNotifierProvider._internal(
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
  Stream<PaginationState<Blocking>> runNotifierBuild(
    covariant BlockingsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(BlockingsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: BlockingsNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<
    BlockingsNotifier,
    PaginationState<Blocking>
  >
  createElement() {
    return _BlockingsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BlockingsNotifierProvider && other.account == account;
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
mixin BlockingsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Blocking>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _BlockingsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          BlockingsNotifier,
          PaginationState<Blocking>
        >
    with BlockingsNotifierRef {
  _BlockingsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as BlockingsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
