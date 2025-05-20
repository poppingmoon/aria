// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_collapse_reason_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteCollapseReasonHash() =>
    r'84a1cc2d6ac623dc91b4289d9948759c32ded006';

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

/// See also [noteCollapseReason].
@ProviderFor(noteCollapseReason)
const noteCollapseReasonProvider = NoteCollapseReasonFamily();

/// See also [noteCollapseReason].
class NoteCollapseReasonFamily extends Family<CollapseReason?> {
  /// See also [noteCollapseReason].
  const NoteCollapseReasonFamily();

  /// See also [noteCollapseReason].
  NoteCollapseReasonProvider call(Account account, String noteId) {
    return NoteCollapseReasonProvider(account, noteId);
  }

  @override
  NoteCollapseReasonProvider getProviderOverride(
    covariant NoteCollapseReasonProvider provider,
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
  String? get name => r'noteCollapseReasonProvider';
}

/// See also [noteCollapseReason].
class NoteCollapseReasonProvider extends AutoDisposeProvider<CollapseReason?> {
  /// See also [noteCollapseReason].
  NoteCollapseReasonProvider(Account account, String noteId)
    : this._internal(
        (ref) =>
            noteCollapseReason(ref as NoteCollapseReasonRef, account, noteId),
        from: noteCollapseReasonProvider,
        name: r'noteCollapseReasonProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$noteCollapseReasonHash,
        dependencies: NoteCollapseReasonFamily._dependencies,
        allTransitiveDependencies:
            NoteCollapseReasonFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  NoteCollapseReasonProvider._internal(
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
  Override overrideWith(
    CollapseReason? Function(NoteCollapseReasonRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteCollapseReasonProvider._internal(
        (ref) => create(ref as NoteCollapseReasonRef),
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
  AutoDisposeProviderElement<CollapseReason?> createElement() {
    return _NoteCollapseReasonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteCollapseReasonProvider &&
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
mixin NoteCollapseReasonRef on AutoDisposeProviderRef<CollapseReason?> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteCollapseReasonProviderElement
    extends AutoDisposeProviderElement<CollapseReason?>
    with NoteCollapseReasonRef {
  _NoteCollapseReasonProviderElement(super.provider);

  @override
  Account get account => (origin as NoteCollapseReasonProvider).account;
  @override
  String get noteId => (origin as NoteCollapseReasonProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
