// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mutingsNotifierHash() => r'92fc7ab2e0152e40bcf4e285375c58ece0b1aa29';

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

abstract class _$MutingsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Muting>> {
  late final Account account;

  FutureOr<PaginationState<Muting>> build(Account account);
}

/// See also [MutingsNotifier].
@ProviderFor(MutingsNotifier)
const mutingsNotifierProvider = MutingsNotifierFamily();

/// See also [MutingsNotifier].
class MutingsNotifierFamily
    extends Family<AsyncValue<PaginationState<Muting>>> {
  /// See also [MutingsNotifier].
  const MutingsNotifierFamily();

  /// See also [MutingsNotifier].
  MutingsNotifierProvider call(Account account) {
    return MutingsNotifierProvider(account);
  }

  @override
  MutingsNotifierProvider getProviderOverride(
    covariant MutingsNotifierProvider provider,
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
  String? get name => r'mutingsNotifierProvider';
}

/// See also [MutingsNotifier].
class MutingsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          MutingsNotifier,
          PaginationState<Muting>
        > {
  /// See also [MutingsNotifier].
  MutingsNotifierProvider(Account account)
    : this._internal(
        () => MutingsNotifier()..account = account,
        from: mutingsNotifierProvider,
        name: r'mutingsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$mutingsNotifierHash,
        dependencies: MutingsNotifierFamily._dependencies,
        allTransitiveDependencies:
            MutingsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  MutingsNotifierProvider._internal(
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
  FutureOr<PaginationState<Muting>> runNotifierBuild(
    covariant MutingsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(MutingsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MutingsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
    MutingsNotifier,
    PaginationState<Muting>
  >
  createElement() {
    return _MutingsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MutingsNotifierProvider && other.account == account;
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
mixin MutingsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Muting>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _MutingsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          MutingsNotifier,
          PaginationState<Muting>
        >
    with MutingsNotifierRef {
  _MutingsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MutingsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
