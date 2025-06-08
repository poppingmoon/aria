// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$announcementsNotifierHash() =>
    r'9fe22e1a301df5e687f725fa7702c374e8c9c2bc';

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

abstract class _$AnnouncementsNotifier
    extends
        BuildlessAutoDisposeStreamNotifier<
          PaginationState<AnnouncementsResponse>
        > {
  late final Account account;
  late final bool isActive;

  Stream<PaginationState<AnnouncementsResponse>> build(
    Account account, {
    bool isActive = true,
  });
}

/// See also [AnnouncementsNotifier].
@ProviderFor(AnnouncementsNotifier)
const announcementsNotifierProvider = AnnouncementsNotifierFamily();

/// See also [AnnouncementsNotifier].
class AnnouncementsNotifierFamily
    extends Family<AsyncValue<PaginationState<AnnouncementsResponse>>> {
  /// See also [AnnouncementsNotifier].
  const AnnouncementsNotifierFamily();

  /// See also [AnnouncementsNotifier].
  AnnouncementsNotifierProvider call(Account account, {bool isActive = true}) {
    return AnnouncementsNotifierProvider(account, isActive: isActive);
  }

  @override
  AnnouncementsNotifierProvider getProviderOverride(
    covariant AnnouncementsNotifierProvider provider,
  ) {
    return call(provider.account, isActive: provider.isActive);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'announcementsNotifierProvider';
}

/// See also [AnnouncementsNotifier].
class AnnouncementsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          AnnouncementsNotifier,
          PaginationState<AnnouncementsResponse>
        > {
  /// See also [AnnouncementsNotifier].
  AnnouncementsNotifierProvider(Account account, {bool isActive = true})
    : this._internal(
        () => AnnouncementsNotifier()
          ..account = account
          ..isActive = isActive,
        from: announcementsNotifierProvider,
        name: r'announcementsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$announcementsNotifierHash,
        dependencies: AnnouncementsNotifierFamily._dependencies,
        allTransitiveDependencies:
            AnnouncementsNotifierFamily._allTransitiveDependencies,
        account: account,
        isActive: isActive,
      );

  AnnouncementsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.isActive,
  }) : super.internal();

  final Account account;
  final bool isActive;

  @override
  Stream<PaginationState<AnnouncementsResponse>> runNotifierBuild(
    covariant AnnouncementsNotifier notifier,
  ) {
    return notifier.build(account, isActive: isActive);
  }

  @override
  Override overrideWith(AnnouncementsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AnnouncementsNotifierProvider._internal(
        () => create()
          ..account = account
          ..isActive = isActive,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        isActive: isActive,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    AnnouncementsNotifier,
    PaginationState<AnnouncementsResponse>
  >
  createElement() {
    return _AnnouncementsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AnnouncementsNotifierProvider &&
        other.account == account &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, isActive.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AnnouncementsNotifierRef
    on
        AutoDisposeStreamNotifierProviderRef<
          PaginationState<AnnouncementsResponse>
        > {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `isActive` of this provider.
  bool get isActive;
}

class _AnnouncementsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          AnnouncementsNotifier,
          PaginationState<AnnouncementsResponse>
        >
    with AnnouncementsNotifierRef {
  _AnnouncementsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AnnouncementsNotifierProvider).account;
  @override
  bool get isActive => (origin as AnnouncementsNotifierProvider).isActive;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
