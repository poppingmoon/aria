// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ownedChannelsNotifierHash() =>
    r'fbf80f3c0ac4b999cf1eb1597dc1822335f902f5';

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

abstract class _$OwnedChannelsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<
        PaginationState<CommunityChannel>> {
  late final Account account;

  FutureOr<PaginationState<CommunityChannel>> build(
    Account account,
  );
}

/// See also [OwnedChannelsNotifier].
@ProviderFor(OwnedChannelsNotifier)
const ownedChannelsNotifierProvider = OwnedChannelsNotifierFamily();

/// See also [OwnedChannelsNotifier].
class OwnedChannelsNotifierFamily
    extends Family<AsyncValue<PaginationState<CommunityChannel>>> {
  /// See also [OwnedChannelsNotifier].
  const OwnedChannelsNotifierFamily();

  /// See also [OwnedChannelsNotifier].
  OwnedChannelsNotifierProvider call(
    Account account,
  ) {
    return OwnedChannelsNotifierProvider(
      account,
    );
  }

  @override
  OwnedChannelsNotifierProvider getProviderOverride(
    covariant OwnedChannelsNotifierProvider provider,
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
  String? get name => r'ownedChannelsNotifierProvider';
}

/// See also [OwnedChannelsNotifier].
class OwnedChannelsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<OwnedChannelsNotifier,
        PaginationState<CommunityChannel>> {
  /// See also [OwnedChannelsNotifier].
  OwnedChannelsNotifierProvider(
    Account account,
  ) : this._internal(
          () => OwnedChannelsNotifier()..account = account,
          from: ownedChannelsNotifierProvider,
          name: r'ownedChannelsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ownedChannelsNotifierHash,
          dependencies: OwnedChannelsNotifierFamily._dependencies,
          allTransitiveDependencies:
              OwnedChannelsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  OwnedChannelsNotifierProvider._internal(
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
  FutureOr<PaginationState<CommunityChannel>> runNotifierBuild(
    covariant OwnedChannelsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(OwnedChannelsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: OwnedChannelsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<OwnedChannelsNotifier,
      PaginationState<CommunityChannel>> createElement() {
    return _OwnedChannelsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OwnedChannelsNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OwnedChannelsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<CommunityChannel>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _OwnedChannelsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OwnedChannelsNotifier,
        PaginationState<CommunityChannel>> with OwnedChannelsNotifierRef {
  _OwnedChannelsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as OwnedChannelsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
