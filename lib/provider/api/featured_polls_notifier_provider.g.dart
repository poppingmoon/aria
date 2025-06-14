// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_polls_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredPollsNotifierHash() =>
    r'daf0d0cf4a58398f3a652b7d138acb33b115cb20';

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

abstract class _$FeaturedPollsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Note>> {
  late final Account account;
  late final String? channelId;

  Stream<PaginationState<Note>> build(Account account, {String? channelId});
}

/// See also [FeaturedPollsNotifier].
@ProviderFor(FeaturedPollsNotifier)
const featuredPollsNotifierProvider = FeaturedPollsNotifierFamily();

/// See also [FeaturedPollsNotifier].
class FeaturedPollsNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [FeaturedPollsNotifier].
  const FeaturedPollsNotifierFamily();

  /// See also [FeaturedPollsNotifier].
  FeaturedPollsNotifierProvider call(Account account, {String? channelId}) {
    return FeaturedPollsNotifierProvider(account, channelId: channelId);
  }

  @override
  FeaturedPollsNotifierProvider getProviderOverride(
    covariant FeaturedPollsNotifierProvider provider,
  ) {
    return call(provider.account, channelId: provider.channelId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'featuredPollsNotifierProvider';
}

/// See also [FeaturedPollsNotifier].
class FeaturedPollsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          FeaturedPollsNotifier,
          PaginationState<Note>
        > {
  /// See also [FeaturedPollsNotifier].
  FeaturedPollsNotifierProvider(Account account, {String? channelId})
    : this._internal(
        () => FeaturedPollsNotifier()
          ..account = account
          ..channelId = channelId,
        from: featuredPollsNotifierProvider,
        name: r'featuredPollsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$featuredPollsNotifierHash,
        dependencies: FeaturedPollsNotifierFamily._dependencies,
        allTransitiveDependencies:
            FeaturedPollsNotifierFamily._allTransitiveDependencies,
        account: account,
        channelId: channelId,
      );

  FeaturedPollsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.channelId,
  }) : super.internal();

  final Account account;
  final String? channelId;

  @override
  Stream<PaginationState<Note>> runNotifierBuild(
    covariant FeaturedPollsNotifier notifier,
  ) {
    return notifier.build(account, channelId: channelId);
  }

  @override
  Override overrideWith(FeaturedPollsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeaturedPollsNotifierProvider._internal(
        () => create()
          ..account = account
          ..channelId = channelId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        channelId: channelId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    FeaturedPollsNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _FeaturedPollsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedPollsNotifierProvider &&
        other.account == account &&
        other.channelId == channelId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, channelId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FeaturedPollsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `channelId` of this provider.
  String? get channelId;
}

class _FeaturedPollsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          FeaturedPollsNotifier,
          PaginationState<Note>
        >
    with FeaturedPollsNotifierRef {
  _FeaturedPollsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedPollsNotifierProvider).account;
  @override
  String? get channelId => (origin as FeaturedPollsNotifierProvider).channelId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
