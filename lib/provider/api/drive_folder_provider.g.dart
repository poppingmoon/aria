// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_folder_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFolderHash() => r'26b085d970a50384fd0e10933616d48d4365391b';

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

/// See also [driveFolder].
@ProviderFor(driveFolder)
const driveFolderProvider = DriveFolderFamily();

/// See also [driveFolder].
class DriveFolderFamily extends Family<AsyncValue<DriveFolder>> {
  /// See also [driveFolder].
  const DriveFolderFamily();

  /// See also [driveFolder].
  DriveFolderProvider call(
    Account account,
    String folderId,
  ) {
    return DriveFolderProvider(
      account,
      folderId,
    );
  }

  @override
  DriveFolderProvider getProviderOverride(
    covariant DriveFolderProvider provider,
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
  String? get name => r'driveFolderProvider';
}

/// See also [driveFolder].
class DriveFolderProvider extends AutoDisposeFutureProvider<DriveFolder> {
  /// See also [driveFolder].
  DriveFolderProvider(
    Account account,
    String folderId,
  ) : this._internal(
          (ref) => driveFolder(
            ref as DriveFolderRef,
            account,
            folderId,
          ),
          from: driveFolderProvider,
          name: r'driveFolderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFolderHash,
          dependencies: DriveFolderFamily._dependencies,
          allTransitiveDependencies:
              DriveFolderFamily._allTransitiveDependencies,
          account: account,
          folderId: folderId,
        );

  DriveFolderProvider._internal(
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
  final String folderId;

  @override
  Override overrideWith(
    FutureOr<DriveFolder> Function(DriveFolderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DriveFolderProvider._internal(
        (ref) => create(ref as DriveFolderRef),
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
  AutoDisposeFutureProviderElement<DriveFolder> createElement() {
    return _DriveFolderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFolderProvider &&
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
mixin DriveFolderRef on AutoDisposeFutureProviderRef<DriveFolder> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `folderId` of this provider.
  String get folderId;
}

class _DriveFolderProviderElement
    extends AutoDisposeFutureProviderElement<DriveFolder> with DriveFolderRef {
  _DriveFolderProviderElement(super.provider);

  @override
  Account get account => (origin as DriveFolderProvider).account;
  @override
  String get folderId => (origin as DriveFolderProvider).folderId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
