// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteClipsNotifierHash() => r'249c0fb33eadcd7aee3353afd9b07507596bf6f2';

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

abstract class _$NoteClipsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Clip>> {
  late final Account account;
  late final String noteId;

  FutureOr<List<Clip>> build(Account account, String noteId);
}

/// See also [NoteClipsNotifier].
@ProviderFor(NoteClipsNotifier)
const noteClipsNotifierProvider = NoteClipsNotifierFamily();

/// See also [NoteClipsNotifier].
class NoteClipsNotifierFamily extends Family<AsyncValue<List<Clip>>> {
  /// See also [NoteClipsNotifier].
  const NoteClipsNotifierFamily();

  /// See also [NoteClipsNotifier].
  NoteClipsNotifierProvider call(Account account, String noteId) {
    return NoteClipsNotifierProvider(account, noteId);
  }

  @override
  NoteClipsNotifierProvider getProviderOverride(
    covariant NoteClipsNotifierProvider provider,
  ) {
    return call(provider.account, provider.noteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'noteClipsNotifierProvider';
}

/// See also [NoteClipsNotifier].
class NoteClipsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<NoteClipsNotifier, List<Clip>> {
  /// See also [NoteClipsNotifier].
  NoteClipsNotifierProvider(Account account, String noteId)
    : this._internal(
        () =>
            NoteClipsNotifier()
              ..account = account
              ..noteId = noteId,
        from: noteClipsNotifierProvider,
        name: r'noteClipsNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$noteClipsNotifierHash,
        dependencies: NoteClipsNotifierFamily._dependencies,
        allTransitiveDependencies:
            NoteClipsNotifierFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  NoteClipsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
  }) : super.internal();

  final Account account;
  final String noteId;

  @override
  FutureOr<List<Clip>> runNotifierBuild(covariant NoteClipsNotifier notifier) {
    return notifier.build(account, noteId);
  }

  @override
  Override overrideWith(NoteClipsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoteClipsNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..noteId = noteId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<NoteClipsNotifier, List<Clip>>
  createElement() {
    return _NoteClipsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteClipsNotifierProvider &&
        other.account == account &&
        other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin NoteClipsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Clip>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteClipsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<NoteClipsNotifier, List<Clip>>
    with NoteClipsNotifierRef {
  _NoteClipsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NoteClipsNotifierProvider).account;
  @override
  String get noteId => (origin as NoteClipsNotifierProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
