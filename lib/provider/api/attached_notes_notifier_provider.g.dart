// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attachedNotesNotifierHash() =>
    r'2a60edbb1115c67d9ce7bd6bba621deb7fb50ea6';

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

abstract class _$AttachedNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String fileId;

  FutureOr<PaginationState<Note>> build(
    Account account,
    String fileId,
  );
}

/// See also [AttachedNotesNotifier].
@ProviderFor(AttachedNotesNotifier)
const attachedNotesNotifierProvider = AttachedNotesNotifierFamily();

/// See also [AttachedNotesNotifier].
class AttachedNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [AttachedNotesNotifier].
  const AttachedNotesNotifierFamily();

  /// See also [AttachedNotesNotifier].
  AttachedNotesNotifierProvider call(
    Account account,
    String fileId,
  ) {
    return AttachedNotesNotifierProvider(
      account,
      fileId,
    );
  }

  @override
  AttachedNotesNotifierProvider getProviderOverride(
    covariant AttachedNotesNotifierProvider provider,
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
  String? get name => r'attachedNotesNotifierProvider';
}

/// See also [AttachedNotesNotifier].
class AttachedNotesNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AttachedNotesNotifier,
        PaginationState<Note>> {
  /// See also [AttachedNotesNotifier].
  AttachedNotesNotifierProvider(
    Account account,
    String fileId,
  ) : this._internal(
          () => AttachedNotesNotifier()
            ..account = account
            ..fileId = fileId,
          from: attachedNotesNotifierProvider,
          name: r'attachedNotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$attachedNotesNotifierHash,
          dependencies: AttachedNotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              AttachedNotesNotifierFamily._allTransitiveDependencies,
          account: account,
          fileId: fileId,
        );

  AttachedNotesNotifierProvider._internal(
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
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant AttachedNotesNotifier notifier,
  ) {
    return notifier.build(
      account,
      fileId,
    );
  }

  @override
  Override overrideWith(AttachedNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AttachedNotesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AttachedNotesNotifier,
      PaginationState<Note>> createElement() {
    return _AttachedNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AttachedNotesNotifierProvider &&
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
mixin AttachedNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `fileId` of this provider.
  String get fileId;
}

class _AttachedNotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AttachedNotesNotifier,
        PaginationState<Note>> with AttachedNotesNotifierRef {
  _AttachedNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AttachedNotesNotifierProvider).account;
  @override
  String get fileId => (origin as AttachedNotesNotifierProvider).fileId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
