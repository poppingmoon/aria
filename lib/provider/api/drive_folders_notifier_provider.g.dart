// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_folders_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFoldersNotifierHash() =>
    r'a36765471c587ad38ae84e2587342cb16870f47b';

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

abstract class _$DriveFoldersNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<DriveFolder>> {
  late final Account account;
  late final String? folderId;

  FutureOr<PaginationState<DriveFolder>> build(
    Account account,
    String? folderId,
  );
}

/// See also [DriveFoldersNotifier].
@ProviderFor(DriveFoldersNotifier)
const driveFoldersNotifierProvider = DriveFoldersNotifierFamily();

/// See also [DriveFoldersNotifier].
class DriveFoldersNotifierFamily
    extends Family<AsyncValue<PaginationState<DriveFolder>>> {
  /// See also [DriveFoldersNotifier].
  const DriveFoldersNotifierFamily();

  /// See also [DriveFoldersNotifier].
  DriveFoldersNotifierProvider call(
    Account account,
    String? folderId,
  ) {
    return DriveFoldersNotifierProvider(
      account,
      folderId,
    );
  }

  @override
  DriveFoldersNotifierProvider getProviderOverride(
    covariant DriveFoldersNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.folderId,
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
  String? get name => r'driveFoldersNotifierProvider';
}

/// See also [DriveFoldersNotifier].
class DriveFoldersNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DriveFoldersNotifier, PaginationState<DriveFolder>> {
  /// See also [DriveFoldersNotifier].
  DriveFoldersNotifierProvider(
    Account account,
    String? folderId,
  ) : this._internal(
          () => DriveFoldersNotifier()
            ..account = account
            ..folderId = folderId,
          from: driveFoldersNotifierProvider,
          name: r'driveFoldersNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFoldersNotifierHash,
          dependencies: DriveFoldersNotifierFamily._dependencies,
          allTransitiveDependencies:
              DriveFoldersNotifierFamily._allTransitiveDependencies,
          account: account,
          folderId: folderId,
        );

  DriveFoldersNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.folderId,
  }) : super.internal();

  final Account account;
  final String? folderId;

  @override
  FutureOr<PaginationState<DriveFolder>> runNotifierBuild(
    covariant DriveFoldersNotifier notifier,
  ) {
    return notifier.build(
      account,
      folderId,
    );
  }

  @override
  Override overrideWith(DriveFoldersNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DriveFoldersNotifierProvider._internal(
        () => create()
          ..account = account
          ..folderId = folderId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        folderId: folderId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DriveFoldersNotifier,
      PaginationState<DriveFolder>> createElement() {
    return _DriveFoldersNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFoldersNotifierProvider &&
        other.account == account &&
        other.folderId == folderId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, folderId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DriveFoldersNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<DriveFolder>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `folderId` of this provider.
  String? get folderId;
}

class _DriveFoldersNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DriveFoldersNotifier,
        PaginationState<DriveFolder>> with DriveFoldersNotifierRef {
  _DriveFoldersNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as DriveFoldersNotifierProvider).account;
  @override
  String? get folderId => (origin as DriveFoldersNotifierProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
