// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteUpdateEventHash() => r'4b07c4472790fbf502b442ddfcd9754e1104f057';

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

/// See also [noteUpdateEvent].
@ProviderFor(noteUpdateEvent)
const noteUpdateEventProvider = NoteUpdateEventFamily();

/// See also [noteUpdateEvent].
class NoteUpdateEventFamily extends Family<AsyncValue<NoteUpdateEvent>> {
  /// See also [noteUpdateEvent].
  const NoteUpdateEventFamily();

  /// See also [noteUpdateEvent].
  NoteUpdateEventProvider call(Account account, String noteId) {
    return NoteUpdateEventProvider(account, noteId);
  }

  @override
  NoteUpdateEventProvider getProviderOverride(
    covariant NoteUpdateEventProvider provider,
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
  String? get name => r'noteUpdateEventProvider';
}

/// See also [noteUpdateEvent].
class NoteUpdateEventProvider
    extends AutoDisposeStreamProvider<NoteUpdateEvent> {
  /// See also [noteUpdateEvent].
  NoteUpdateEventProvider(Account account, String noteId)
    : this._internal(
        (ref) => noteUpdateEvent(ref as NoteUpdateEventRef, account, noteId),
        from: noteUpdateEventProvider,
        name: r'noteUpdateEventProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$noteUpdateEventHash,
        dependencies: NoteUpdateEventFamily._dependencies,
        allTransitiveDependencies:
            NoteUpdateEventFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  NoteUpdateEventProvider._internal(
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
    Stream<NoteUpdateEvent> Function(NoteUpdateEventRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteUpdateEventProvider._internal(
        (ref) => create(ref as NoteUpdateEventRef),
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
  AutoDisposeStreamProviderElement<NoteUpdateEvent> createElement() {
    return _NoteUpdateEventProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteUpdateEventProvider &&
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
mixin NoteUpdateEventRef on AutoDisposeStreamProviderRef<NoteUpdateEvent> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteUpdateEventProviderElement
    extends AutoDisposeStreamProviderElement<NoteUpdateEvent>
    with NoteUpdateEventRef {
  _NoteUpdateEventProviderElement(super.provider);

  @override
  Account get account => (origin as NoteUpdateEventProvider).account;
  @override
  String get noteId => (origin as NoteUpdateEventProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
