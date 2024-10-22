// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteStateNotifierHash() => r'441f21bb6f65661e1ff65f066bf8bb182a705d00';

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

abstract class _$NoteStateNotifier
    extends BuildlessAutoDisposeAsyncNotifier<NotesStateResponse> {
  late final Account account;
  late final String noteId;

  FutureOr<NotesStateResponse> build(
    Account account,
    String noteId,
  );
}

/// See also [NoteStateNotifier].
@ProviderFor(NoteStateNotifier)
const noteStateNotifierProvider = NoteStateNotifierFamily();

/// See also [NoteStateNotifier].
class NoteStateNotifierFamily extends Family<AsyncValue<NotesStateResponse>> {
  /// See also [NoteStateNotifier].
  const NoteStateNotifierFamily();

  /// See also [NoteStateNotifier].
  NoteStateNotifierProvider call(
    Account account,
    String noteId,
  ) {
    return NoteStateNotifierProvider(
      account,
      noteId,
    );
  }

  @override
  NoteStateNotifierProvider getProviderOverride(
    covariant NoteStateNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.noteId,
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
  String? get name => r'noteStateNotifierProvider';
}

/// See also [NoteStateNotifier].
class NoteStateNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NoteStateNotifier, NotesStateResponse> {
  /// See also [NoteStateNotifier].
  NoteStateNotifierProvider(
    Account account,
    String noteId,
  ) : this._internal(
          () => NoteStateNotifier()
            ..account = account
            ..noteId = noteId,
          from: noteStateNotifierProvider,
          name: r'noteStateNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteStateNotifierHash,
          dependencies: NoteStateNotifierFamily._dependencies,
          allTransitiveDependencies:
              NoteStateNotifierFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
        );

  NoteStateNotifierProvider._internal(
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
  FutureOr<NotesStateResponse> runNotifierBuild(
    covariant NoteStateNotifier notifier,
  ) {
    return notifier.build(
      account,
      noteId,
    );
  }

  @override
  Override overrideWith(NoteStateNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoteStateNotifierProvider._internal(
        () => create()
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
  AutoDisposeAsyncNotifierProviderElement<NoteStateNotifier, NotesStateResponse>
      createElement() {
    return _NoteStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteStateNotifierProvider &&
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
mixin NoteStateNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<NotesStateResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteStateNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NoteStateNotifier,
        NotesStateResponse> with NoteStateNotifierRef {
  _NoteStateNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NoteStateNotifierProvider).account;
  @override
  String get noteId => (origin as NoteStateNotifierProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
