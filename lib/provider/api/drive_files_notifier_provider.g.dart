// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_files_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFilesNotifierHash() =>
    r'fdbd5e32cabf0f1c8b6c9d8580fe83c39fff7f29';

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

abstract class _$DriveFilesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<DriveFile>> {
  late final Account account;
  late final String? folderId;

  FutureOr<PaginationState<DriveFile>> build(
    Account account,
    String? folderId,
  );
}

/// See also [DriveFilesNotifier].
@ProviderFor(DriveFilesNotifier)
const driveFilesNotifierProvider = DriveFilesNotifierFamily();

/// See also [DriveFilesNotifier].
class DriveFilesNotifierFamily
    extends Family<AsyncValue<PaginationState<DriveFile>>> {
  /// See also [DriveFilesNotifier].
  const DriveFilesNotifierFamily();

  /// See also [DriveFilesNotifier].
  DriveFilesNotifierProvider call(
    Account account,
    String? folderId,
  ) {
    return DriveFilesNotifierProvider(
      account,
      folderId,
    );
  }

  @override
  DriveFilesNotifierProvider getProviderOverride(
    covariant DriveFilesNotifierProvider provider,
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
  String? get name => r'driveFilesNotifierProvider';
}

/// See also [DriveFilesNotifier].
class DriveFilesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    DriveFilesNotifier, PaginationState<DriveFile>> {
  /// See also [DriveFilesNotifier].
  DriveFilesNotifierProvider(
    Account account,
    String? folderId,
  ) : this._internal(
          () => DriveFilesNotifier()
            ..account = account
            ..folderId = folderId,
          from: driveFilesNotifierProvider,
          name: r'driveFilesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFilesNotifierHash,
          dependencies: DriveFilesNotifierFamily._dependencies,
          allTransitiveDependencies:
              DriveFilesNotifierFamily._allTransitiveDependencies,
          account: account,
          folderId: folderId,
        );

  DriveFilesNotifierProvider._internal(
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
  FutureOr<PaginationState<DriveFile>> runNotifierBuild(
    covariant DriveFilesNotifier notifier,
  ) {
    return notifier.build(
      account,
      folderId,
    );
  }

  @override
  Override overrideWith(DriveFilesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DriveFilesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<DriveFilesNotifier,
      PaginationState<DriveFile>> createElement() {
    return _DriveFilesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFilesNotifierProvider &&
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
mixin DriveFilesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<DriveFile>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `folderId` of this provider.
  String? get folderId;
}

class _DriveFilesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DriveFilesNotifier,
        PaginationState<DriveFile>> with DriveFilesNotifierRef {
  _DriveFilesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as DriveFilesNotifierProvider).account;
  @override
  String? get folderId => (origin as DriveFilesNotifierProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
