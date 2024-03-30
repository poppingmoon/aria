// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_requests_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$followRequestsNotifierHash() =>
    r'fae2e55552cbf62d0e91d197f54729920d22c2cd';

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

abstract class _$FollowRequestsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<FollowRequest>> {
  late final Account account;

  FutureOr<PaginationState<FollowRequest>> build(
    Account account,
  );
}

/// See also [FollowRequestsNotifier].
@ProviderFor(FollowRequestsNotifier)
const followRequestsNotifierProvider = FollowRequestsNotifierFamily();

/// See also [FollowRequestsNotifier].
class FollowRequestsNotifierFamily
    extends Family<AsyncValue<PaginationState<FollowRequest>>> {
  /// See also [FollowRequestsNotifier].
  const FollowRequestsNotifierFamily();

  /// See also [FollowRequestsNotifier].
  FollowRequestsNotifierProvider call(
    Account account,
  ) {
    return FollowRequestsNotifierProvider(
      account,
    );
  }

  @override
  FollowRequestsNotifierProvider getProviderOverride(
    covariant FollowRequestsNotifierProvider provider,
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
  String? get name => r'followRequestsNotifierProvider';
}

/// See also [FollowRequestsNotifier].
class FollowRequestsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FollowRequestsNotifier,
        PaginationState<FollowRequest>> {
  /// See also [FollowRequestsNotifier].
  FollowRequestsNotifierProvider(
    Account account,
  ) : this._internal(
          () => FollowRequestsNotifier()..account = account,
          from: followRequestsNotifierProvider,
          name: r'followRequestsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$followRequestsNotifierHash,
          dependencies: FollowRequestsNotifierFamily._dependencies,
          allTransitiveDependencies:
              FollowRequestsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  FollowRequestsNotifierProvider._internal(
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
  FutureOr<PaginationState<FollowRequest>> runNotifierBuild(
    covariant FollowRequestsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(FollowRequestsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FollowRequestsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FollowRequestsNotifier,
      PaginationState<FollowRequest>> createElement() {
    return _FollowRequestsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FollowRequestsNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FollowRequestsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<FollowRequest>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _FollowRequestsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FollowRequestsNotifier,
        PaginationState<FollowRequest>> with FollowRequestsNotifierRef {
  _FollowRequestsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FollowRequestsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
