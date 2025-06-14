// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renote_mutings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$renoteMutingsNotifierHash() =>
    r'370dc2e750e9af580b7a2a26e01ccd621a410dc1';

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

abstract class _$RenoteMutingsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<RenoteMuting>> {
  late final Account account;

  Stream<PaginationState<RenoteMuting>> build(Account account);
}

/// See also [RenoteMutingsNotifier].
@ProviderFor(RenoteMutingsNotifier)
const renoteMutingsNotifierProvider = RenoteMutingsNotifierFamily();

/// See also [RenoteMutingsNotifier].
class RenoteMutingsNotifierFamily
    extends Family<AsyncValue<PaginationState<RenoteMuting>>> {
  /// See also [RenoteMutingsNotifier].
  const RenoteMutingsNotifierFamily();

  /// See also [RenoteMutingsNotifier].
  RenoteMutingsNotifierProvider call(Account account) {
    return RenoteMutingsNotifierProvider(account);
  }

  @override
  RenoteMutingsNotifierProvider getProviderOverride(
    covariant RenoteMutingsNotifierProvider provider,
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
  String? get name => r'renoteMutingsNotifierProvider';
}

/// See also [RenoteMutingsNotifier].
class RenoteMutingsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          RenoteMutingsNotifier,
          PaginationState<RenoteMuting>
        > {
  /// See also [RenoteMutingsNotifier].
  RenoteMutingsNotifierProvider(Account account)
    : this._internal(
        () => RenoteMutingsNotifier()..account = account,
        from: renoteMutingsNotifierProvider,
        name: r'renoteMutingsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$renoteMutingsNotifierHash,
        dependencies: RenoteMutingsNotifierFamily._dependencies,
        allTransitiveDependencies:
            RenoteMutingsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  RenoteMutingsNotifierProvider._internal(
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
  Stream<PaginationState<RenoteMuting>> runNotifierBuild(
    covariant RenoteMutingsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(RenoteMutingsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RenoteMutingsNotifierProvider._internal(
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
    RenoteMutingsNotifier,
    PaginationState<RenoteMuting>
  >
  createElement() {
    return _RenoteMutingsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RenoteMutingsNotifierProvider && other.account == account;
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
mixin RenoteMutingsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<RenoteMuting>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _RenoteMutingsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          RenoteMutingsNotifier,
          PaginationState<RenoteMuting>
        >
    with RenoteMutingsNotifierRef {
  _RenoteMutingsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as RenoteMutingsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
