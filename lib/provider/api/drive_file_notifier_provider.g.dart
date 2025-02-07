// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_file_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$driveFileNotifierHash() => r'089739ee8d5b2d93121b4049441aac475c55c466';

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

abstract class _$DriveFileNotifier
    extends BuildlessAutoDisposeAsyncNotifier<DriveFile> {
  late final Account account;
  late final String fileId;

  FutureOr<DriveFile> build(
    Account account,
    String fileId,
  );
}

/// See also [DriveFileNotifier].
@ProviderFor(DriveFileNotifier)
const driveFileNotifierProvider = DriveFileNotifierFamily();

/// See also [DriveFileNotifier].
class DriveFileNotifierFamily extends Family<AsyncValue<DriveFile>> {
  /// See also [DriveFileNotifier].
  const DriveFileNotifierFamily();

  /// See also [DriveFileNotifier].
  DriveFileNotifierProvider call(
    Account account,
    String fileId,
  ) {
    return DriveFileNotifierProvider(
      account,
      fileId,
    );
  }

  @override
  DriveFileNotifierProvider getProviderOverride(
    covariant DriveFileNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.fileId,
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
  String? get name => r'driveFileNotifierProvider';
}

/// See also [DriveFileNotifier].
class DriveFileNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<DriveFileNotifier, DriveFile> {
  /// See also [DriveFileNotifier].
  DriveFileNotifierProvider(
    Account account,
    String fileId,
  ) : this._internal(
          () => DriveFileNotifier()
            ..account = account
            ..fileId = fileId,
          from: driveFileNotifierProvider,
          name: r'driveFileNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$driveFileNotifierHash,
          dependencies: DriveFileNotifierFamily._dependencies,
          allTransitiveDependencies:
              DriveFileNotifierFamily._allTransitiveDependencies,
          account: account,
          fileId: fileId,
        );

  DriveFileNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.fileId,
  }) : super.internal();

  final Account account;
  final String fileId;

  @override
  FutureOr<DriveFile> runNotifierBuild(
    covariant DriveFileNotifier notifier,
  ) {
    return notifier.build(
      account,
      fileId,
    );
  }

  @override
  Override overrideWith(DriveFileNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DriveFileNotifierProvider._internal(
        () => create()
          ..account = account
          ..fileId = fileId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        fileId: fileId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<DriveFileNotifier, DriveFile>
      createElement() {
    return _DriveFileNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFileNotifierProvider &&
        other.account == account &&
        other.fileId == fileId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, fileId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DriveFileNotifierRef on AutoDisposeAsyncNotifierProviderRef<DriveFile> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `fileId` of this provider.
  String get fileId;
}

class _DriveFileNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<DriveFileNotifier,
        DriveFile> with DriveFileNotifierRef {
  _DriveFileNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as DriveFileNotifierProvider).account;
  @override
  String get fileId => (origin as DriveFileNotifierProvider).fileId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
