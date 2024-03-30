// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$followingChannelsNotifierHash() =>
    r'847b810bf9a101b133b751f47b144bee8cf191e3';

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

abstract class _$FollowingChannelsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<
        PaginationState<CommunityChannel>> {
  late final Account account;

  FutureOr<PaginationState<CommunityChannel>> build(
    Account account,
  );
}

/// See also [FollowingChannelsNotifier].
@ProviderFor(FollowingChannelsNotifier)
const followingChannelsNotifierProvider = FollowingChannelsNotifierFamily();

/// See also [FollowingChannelsNotifier].
class FollowingChannelsNotifierFamily
    extends Family<AsyncValue<PaginationState<CommunityChannel>>> {
  /// See also [FollowingChannelsNotifier].
  const FollowingChannelsNotifierFamily();

  /// See also [FollowingChannelsNotifier].
  FollowingChannelsNotifierProvider call(
    Account account,
  ) {
    return FollowingChannelsNotifierProvider(
      account,
    );
  }

  @override
  FollowingChannelsNotifierProvider getProviderOverride(
    covariant FollowingChannelsNotifierProvider provider,
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
  String? get name => r'followingChannelsNotifierProvider';
}

/// See also [FollowingChannelsNotifier].
class FollowingChannelsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FollowingChannelsNotifier,
        PaginationState<CommunityChannel>> {
  /// See also [FollowingChannelsNotifier].
  FollowingChannelsNotifierProvider(
    Account account,
  ) : this._internal(
          () => FollowingChannelsNotifier()..account = account,
          from: followingChannelsNotifierProvider,
          name: r'followingChannelsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$followingChannelsNotifierHash,
          dependencies: FollowingChannelsNotifierFamily._dependencies,
          allTransitiveDependencies:
              FollowingChannelsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  FollowingChannelsNotifierProvider._internal(
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
    covariant FollowingChannelsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(FollowingChannelsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FollowingChannelsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FollowingChannelsNotifier,
      PaginationState<CommunityChannel>> createElement() {
    return _FollowingChannelsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FollowingChannelsNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FollowingChannelsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<CommunityChannel>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FollowingChannelsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FollowingChannelsNotifier,
        PaginationState<CommunityChannel>> with FollowingChannelsNotifierRef {
  _FollowingChannelsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FollowingChannelsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
