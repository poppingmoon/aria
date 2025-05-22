// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$featuredNotesNotifierHash() =>
    r'd3ec3b91e7271db992894ea7a05a9122fa9f71a6';

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

abstract class _$FeaturedNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String? channelId;

  FutureOr<PaginationState<Note>> build(Account account, {String? channelId});
}

/// See also [FeaturedNotesNotifier].
@ProviderFor(FeaturedNotesNotifier)
const featuredNotesNotifierProvider = FeaturedNotesNotifierFamily();

/// See also [FeaturedNotesNotifier].
class FeaturedNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [FeaturedNotesNotifier].
  const FeaturedNotesNotifierFamily();

  /// See also [FeaturedNotesNotifier].
  FeaturedNotesNotifierProvider call(Account account, {String? channelId}) {
    return FeaturedNotesNotifierProvider(account, channelId: channelId);
  }

  @override
  FeaturedNotesNotifierProvider getProviderOverride(
    covariant FeaturedNotesNotifierProvider provider,
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
  String? get name => r'featuredNotesNotifierProvider';
}

/// See also [FeaturedNotesNotifier].
class FeaturedNotesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          FeaturedNotesNotifier,
          PaginationState<Note>
        > {
  /// See also [FeaturedNotesNotifier].
  FeaturedNotesNotifierProvider(Account account, {String? channelId})
    : this._internal(
        () => FeaturedNotesNotifier()
          ..account = account
          ..channelId = channelId,
        from: featuredNotesNotifierProvider,
        name: r'featuredNotesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$featuredNotesNotifierHash,
        dependencies: FeaturedNotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            FeaturedNotesNotifierFamily._allTransitiveDependencies,
        account: account,
        channelId: channelId,
      );

  FeaturedNotesNotifierProvider._internal(
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
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant FeaturedNotesNotifier notifier,
  ) {
    return notifier.build(account, channelId: channelId);
  }

  @override
  Override overrideWith(FeaturedNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeaturedNotesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
    FeaturedNotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _FeaturedNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedNotesNotifierProvider &&
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
mixin FeaturedNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `channelId` of this provider.
  String? get channelId;
}

class _FeaturedNotesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          FeaturedNotesNotifier,
          PaginationState<Note>
        >
    with FeaturedNotesNotifierRef {
  _FeaturedNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as FeaturedNotesNotifierProvider).account;
  @override
  String? get channelId => (origin as FeaturedNotesNotifierProvider).channelId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
